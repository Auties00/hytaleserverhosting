import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'dart:html';
import 'dart:ui' as ui;

typedef void OnWidgetSizeChange(Size size);

class SingleChildHtmlScrollView extends StatefulWidget {
  final Widget child;

  const SingleChildHtmlScrollView({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  _SingleChildHtmlScrollViewState createState() =>
      _SingleChildHtmlScrollViewState();
}

class _SingleChildHtmlScrollViewState extends State<SingleChildHtmlScrollView> {
  static int _index = 0;

  final String _viewId = 'native-scroll-view-${_index++}';
  final ScrollController _scrollController = ScrollController();
  final DivElement _heightDiv = DivElement();

  @override
  void initState() {
    super.initState();

    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
        _viewId,
        (_) => DivElement()
          ..id = _viewId
          ..style.overflowX = "hidden"
          ..style.overflowY = 'auto'
          ..style.width = '100%'
          ..style.height = '100%'
          ..onWheel.listen((event) => event.stopPropagation())
          ..onMouseWheel.listen((event) => event.stopPropagation())
          ..onScroll.listen((event) => _scrollController.jumpTo((event.target as DivElement).scrollTop.toDouble()))
          ..append(_heightDiv)
    );

    _scrollController.addListener(() => _heightDiv.scrollTop = _scrollController.position.pixels.toInt());
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
          child: SingleChildScrollView(
              controller: _scrollController,
              child: _MeasureSize(
                  onChange: (size) => _heightDiv.style.height = '${size.height.toInt()}px',
                  child: widget.child
              )
          ),
        ),

        IgnorePointer(
          child: HtmlElementView(viewType: _viewId)
        )
      ],
    );
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
