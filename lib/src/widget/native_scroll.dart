import 'dart:collection';

import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'dart:html';
import 'dart:ui' as ui;

typedef void OnWidgetSizeChange(Size size);

class HtmlScrollView extends StatefulWidget {
  final List<Widget> children;

  HtmlScrollView({
    Key? key,
    required this.children,
  }) : super(key: key);

  @override
  _HtmlScrollViewState createState() =>
      _HtmlScrollViewState();
}

class _HtmlScrollViewState extends State<HtmlScrollView> {
  static int _index = 0;

  late final List<Widget> _children;

  final String _viewId = 'native-scroll-view-${_index++}';
  final ScrollController _scrollController = ScrollController();
  final DivElement _heightDiv = DivElement();

  final HashMap<int, double> _sizes = HashMap();

  @override
  void initState() {
    _children = widget.children
        .map((child) => child.key == null ? Container(key: GlobalKey(), child: child) : child)
        .toList();
    _setupHtml();
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            children: [
              ScrollConfiguration(
                behavior: ScrollConfiguration.of(context).copyWith(
                    scrollbars: false
                ),
                child: NotificationListener<OverscrollIndicatorNotification>(
                  onNotification: (e) {
                    e.disallowIndicator();
                    return false;
                  },
                  child: ListView(
                      controller: _scrollController,
                      cacheExtent: double.maxFinite,
                      dragStartBehavior: DragStartBehavior.down,
                      children: _measurableChildren
                  ),
                ),
              ),

              IgnorePointer(
                  ignoringSemantics: true,
                  child: HtmlElementView(
                      viewType: _viewId,
                  )
              )
            ],
          );
        }
    );
  }

  List<Widget> get _measurableChildren {
    var result = <Widget>[];
    for(var index = 0; index < _children.length; index++){
      result.add(_MeasureSize(
          onChange: (size) {
            _sizes[index] = size.height;
            _setHtmlHeight();
          },
          child: _children[index]
      ));
    }

    return result;
}

  void _setupHtml() {
    var wrapper = DivElement()
      ..id = _viewId
      ..style.overflowX = "hidden"
      ..style.overflowY = 'auto'
      ..style.width = '100%'
      ..style.height = '100%'
      ..scrollTop = 0
      ..onWheel.listen((event) => event.stopPropagation())
      ..onMouseWheel.listen((event) => event.stopPropagation())
      ..onSelect.listen(_syncFlutterScrollable)
      ..onScroll.listen(_syncFlutterScrollable)
      ..append(_heightDiv);

    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
        _viewId,
            (_) => wrapper
    );

    _scrollController.addListener(() => wrapper.scrollTop = _scrollController.position.pixels.toInt());
  }

  void _syncFlutterScrollable(Event event) {
    var element = event.target as DivElement;
    _scrollController.jumpTo(element.scrollTop.toDouble());
  }

  void _setHtmlHeight() async{
    await Future.delayed(Duration.zero);
    var height = _sizes.values.fold(0.0, (double a, double b) => a + b);
    _heightDiv.style.height = '${height}px';
  }
}

class _MeasureSize extends SingleChildRenderObjectWidget {
  final OnWidgetSizeChange onChange;

  const _MeasureSize({
    Key? key,
    required this.onChange,
    required Widget child,
  }) : super(key: key, child: child);

  @override
  RenderObject createRenderObject(BuildContext context) {
    return _MeasureSizeRenderObject(onChange);
  }
}

class _MeasureSizeRenderObject extends RenderProxyBox {
  final OnWidgetSizeChange onChange;
  Size? oldSize;

  _MeasureSizeRenderObject(this.onChange);

  @override
  void performLayout() {
    super.performLayout();
    var newSize = child?.size;
    if (oldSize == newSize) {
      return;
    }

    oldSize = newSize!;
    WidgetsBinding.instance
        .addPostFrameCallback((_) => onChange(newSize));
  }
}
