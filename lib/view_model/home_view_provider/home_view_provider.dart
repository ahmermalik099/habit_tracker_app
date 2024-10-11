

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import '../../configs/constants/colors/app_colors.dart';

class ColorProvider with ChangeNotifier {
  void updateColors(Map<String, String> colors) {
    ConfigurableColors.updateColors(colors);
    notifyListeners();
  }

  Future<void> fetchAndApplyColors() async {
    //   final response = await http.get(Uri.parse('https://your-api-url/colors'));
    //
    //   if (response.statusCode == 200) {
    //     final colors = json.decode(response.body) as Map<String, String>;
    //     updateColors(colors);
    //   } else {
    //     throw Exception('Failed to load colors');
    //   }
  }
}
