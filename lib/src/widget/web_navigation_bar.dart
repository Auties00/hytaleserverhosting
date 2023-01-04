import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hosting/src/dialog/login_dialog.dart';
import 'package:hosting/src/dialog/mutable_dialog.dart';
import 'package:hosting/src/util/dimension.dart';
import 'package:hosting/src/util/screen.dart';
import 'package:hosting/src/widget/web_image.dart';
import 'package:hosting/src/widget/web_navigation_item.dart';

class WebNavigationBar extends StatefulWidget {
  final List<GlobalKey>? keys;
  final bool showItems;

  const WebNavigationBar({Key? key, this.keys, this.showItems = true}) : super(key: key);

  @override
  _WebNavigationBarState createState() => _WebNavigationBarState();
}

class _WebNavigationBarState extends State<WebNavigationBar> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return LayoutBuilder(builder: (var context, var constraints) {
      var mobile = !widget.showItems || isMedium(constraints);
      return Container(
        color: Theme.of(context).colorScheme.background,
        child: Row(
          mainAxisAlignment: widget.showItems ? MainAxisAlignment.spaceEvenly : MainAxisAlignment.start,
          children: [
            if (!widget.showItems)
              SizedBox(
                width: setWidth(15.0),
              ),

            Padding(
              padding: const EdgeInsets.all(4.0),
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                    onTap: () => Navigator.pushNamed(context, "/"),
                    child: SizedBox(
                      height: setHeight(50.0),
                      child: WebImage(
                        'logo-full.png',
                        fit: BoxFit.cover,
                      ),
                    )
                )
              )
            ),

            WebNavigationItem(
                name: 'HOME',
                onClick: () => _animateTo(0),
                mobile: mobile
            ),
            WebNavigationItem(
                name: 'QUICK START',
                onClick: () => _animateTo(3),
                mobile: mobile
            ),
            WebNavigationItem(
                name: 'FEATURES',
                onClick: () => _animateTo(4),
                mobile: mobile
            ),
            WebNavigationItem(
              name: 'PRICING',
                onClick: () => _animateTo(5),
                mobile: mobile
            ),
            if (widget.showItems)
              ElevatedButton(
                onPressed: () => showDialog(
                    context: context,
                    builder: (context) => MutableDialog(register: false)
                ),
                child: Text('GET STARTED',
                    style: GoogleFonts.barlow(
                        color: Colors.white, fontWeight: FontWeight.bold
                    )
                ),
              )
          ],
        ),
      );
    });
  }

  Future<void> _animateTo(int index) async {
    if(widget.keys == null){
      return;
    }

    Scrollable.ensureVisible(
        widget.keys!.elementAt(index).currentContext!,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeIn
    );
  }

  @override
  bool get wantKeepAlive => true;
}
