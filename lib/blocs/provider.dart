import 'bloc.dart';
import 'package:flutter/material.dart';

class Provider extends InheritedWidget
{
  final bloc = Bloc();

  Provider({Key  key ,Widget child}):super(key:key,child:child);


  bool updateShouldNotify(_) => true; // (_) underscore means we don't care about the parameter anymore

  static Bloc of(BuildContext context)
  {
    return (context.inheritFromWidgetOfExactType(Provider) as Provider).bloc;
  }


}