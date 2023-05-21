import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppView extends StatelessWidget {
  /// BaseView widget is used as core template widget which provides
  /// functional selection of safe area and status bar color
  /// safeAreaColor: Color of the safe area
  /// child: Widget to be wrapped
  /// bottomNavigationBar: Bottom navigation bar implementation
  const AppView({
    Key? key,
    this.safeAreaColor,
    required this.child,
    this.bottomNavigationBar,
    this.top = true,
    this.bottom = true,
    this.left = true,
    this.right = true,
    this.appBar,
    this.bottomSheet,
    this.backgroundColor,
  }) : super(key: key);

  final Color? safeAreaColor;
  final Color? backgroundColor;
  final PreferredSizeWidget? appBar;
  final Widget child;
  final Widget? bottomSheet;
  final Widget? bottomNavigationBar;

  final bool top;
  final bool bottom;
  final bool left;
  final bool right;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light.copyWith(
          statusBarColor: safeAreaColor,
        ),
        child: SafeArea(
            top: top,
            bottom: bottom,
            left: left,
            right: right,
            child: Container(
              color: backgroundColor ?? Colors.black,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: child,
            )),
      ),
      bottomSheet: bottomSheet,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
