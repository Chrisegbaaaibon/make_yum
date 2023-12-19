import 'package:flutter/material.dart';
import 'package:make_yum/src/views/categories_view.dart';
import 'package:make_yum/src/views/grid_view_home.dart';
import 'package:make_yum/src/views/profile_view.dart';
import 'package:make_yum/src/views/search_view.dart';

final List<Widget> baseWidgets = <Widget>[
  const GridViewBuilderView(),
  const SearchView(),
  const ProfileView(),
  const CategoryView(),
];
