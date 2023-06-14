import 'package:flutter/material.dart';

const Color _customColor = Color.fromRGBO(73, 162, 207, 1);

const List<Color> _colorThemes = [
  _customColor,
  Colors.black,
  Colors.teal,
  Colors.green,
  Colors.blueAccent,
  Colors.green,
  Colors.pink
];

class AppTheme {
  final int selectedColor;

  ///assert para evitar errores en otros desarrolladores al usar el selected color
  AppTheme({this.selectedColor = 1})
      : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length - 1,
            'Colors must be between 0 and ${_colorThemes.length}');
  //metodo return themedata para el theme
  ThemeData theme() {
    return ThemeData(
        useMaterial3: true, colorSchemeSeed: _colorThemes[selectedColor]);
  }
}
