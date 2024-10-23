import 'package:flutter/material.dart';

abstract class GlobalRepository {
  Future<Locale?> getLocale();
}
