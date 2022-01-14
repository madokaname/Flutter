// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// ignore_for_file: unused_field

import 'package:flutter/material.dart';

// TODO: Check if we need to import anything
import 'package:task_03_category_route/category.dart';
// TODO: Define any constants

/// Category Route (screen).
///
/// This is the 'home' screen of the Unit Converter. It shows a header and
/// a list of [Categories].
///
/// While it is named CategoryRoute, a more apt name would be CategoryScreen,
/// because it is responsible for the UI at the route's destination.
class CategoryRoute extends StatelessWidget {
  const CategoryRoute({Key? key}) : super(key: key);

  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];

  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: Create a list of the eight Categories, using the names and colors
    // from above. Use a placeholder icon, such as `Icons.cake` for each
    // Category. We'll add custom icons later.

    final test = <Widget>[
      Category(
          name: _categoryNames[0], color: _baseColors[0], icon: Icons.cake),
      Category(
          name: _categoryNames[1], color: _baseColors[1], icon: Icons.cake),
      Category(
          name: _categoryNames[2], color: _baseColors[2], icon: Icons.cake),
      Category(
          name: _categoryNames[3], color: _baseColors[3], icon: Icons.cake),
      Category(
          name: _categoryNames[4], color: _baseColors[4], icon: Icons.cake),
      Category(
          name: _categoryNames[5], color: _baseColors[5], icon: Icons.cake),
      Category(
          name: _categoryNames[6], color: _baseColors[6], icon: Icons.cake),
      Category(
          name: _categoryNames[7], color: _baseColors[7], icon: Icons.cake),
    ];

    // TODO: Create a list view of the Categories
    final listView = ListView(
      children: test,
    );

    // TODO: Create an App Bar
    final appBar = AppBar(
      elevation: 0.0,
      backgroundColor: Colors.green[100],
      centerTitle: true,
      title: Text('Unit Converter',
          style: TextStyle(fontSize: 30, color: Colors.black)),
    );

    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: appBar,
      body: listView,
    );
  }
}
