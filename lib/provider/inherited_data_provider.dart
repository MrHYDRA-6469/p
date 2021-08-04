import 'package:flutter/material.dart';

class InheritedDataProvider extends InheritedWidget {
  final PageController pageController;
  const InheritedDataProvider({
    required Widget child,
    required this.pageController,
  }) : super(child: child);
  @override
  bool updateShouldNotify(InheritedDataProvider oldWidget) =>
      pageController != oldWidget.pageController;
  static InheritedDataProvider of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<InheritedDataProvider>()!;
}
