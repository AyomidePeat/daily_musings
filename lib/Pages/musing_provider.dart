import 'package:daily_musings/musing_model.dart';
import 'package:flutter/material.dart';

class MusingProvider extends InheritedWidget {
  final List<Musing> musingData;
 
  const MusingProvider( {
   
    required this.musingData,
    super.key,
    required this.child,
  }) : super(child: child);

  final Widget child;

  static MusingProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MusingProvider>();
  }

  @override
  bool updateShouldNotify(MusingProvider oldWidget) {
    return musingData != oldWidget.musingData;
  }
}
