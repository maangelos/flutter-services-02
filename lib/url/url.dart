import 'dart:async';
import 'package:http/http.dart' as http;

const url = "http://192.112.1.4:5000/";

class URL {
  static Future getUsuarios() {
    return http.get(url);
  }
}