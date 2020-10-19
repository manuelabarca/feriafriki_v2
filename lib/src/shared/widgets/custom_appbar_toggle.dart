import 'package:flutter/material.dart';

class CustomAppbarToggle extends StatelessWidget
    implements PreferredSizeWidget {
  final double height;
  final Widget leading;
  final Widget title;
  final Color color;
  final List<Widget> trailing;

  const CustomAppbarToggle(
      {Key key,
      this.height = 68.0,
      this.leading,
      this.title,
      this.trailing,
      this.color = const Color(0xffE93C95)})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Container(
        height: height,
        decoration: BoxDecoration(
            color: color, border: Border(bottom: BorderSide(width: 0.1))),
        width: size.width,
        child: Row(
          children: <Widget>[
            if (leading != null)
              Container(
                alignment: Alignment.centerLeft,
                width: size.width * 0.30,
                child: leading,
              ),
            Container(
              width: size.width * 0.05,
              child: title,
            ),
            if (trailing != null)
              Container(
                  width: size.width * 0.65,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [...trailing],
                  )),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
