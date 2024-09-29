import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';

double convertCelsiusToFahrenheit(double? celsiusTemperature) {
  if (celsiusTemperature == null) {
    return 0.0;
  }
  return (celsiusTemperature * 9 / 5) + 32;
}

double? convertFahrenheitToCelsius(double? fahrenheitTemperature) {
  if (fahrenheitTemperature == null) {
    return 0;
  }
  return (fahrenheitTemperature - 32) * 5 / 9;
}

String? appendCelciusMeasurment(double? fahrenheitTemperature) {
  if (fahrenheitTemperature == null) {
    return "0°C";
  }
  double celsiusTemperature =
      convertFahrenheitToCelsius(fahrenheitTemperature)!;
  return '${celsiusTemperature.toStringAsFixed(1)}°C';
}

String? appendFahrenheiMeasurment(double? fahrenheitMeasurment) {
  if (fahrenheitMeasurment == null) {
    return "0°F";
  }
  double fahrenheitTemperature =
      convertCelsiusToFahrenheit(fahrenheitMeasurment);
  return '${fahrenheitTemperature.toStringAsFixed(1)}°F';
}
