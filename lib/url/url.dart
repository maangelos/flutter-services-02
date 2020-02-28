import 'dart:async';
import 'package:http/http.dart' as http;

const url = "http:/ip:5000/";

class URL {
  static Future getUsuarios() {
    return http.get(url);
  }
}

//conseguir ip via ipconfig e add no lugar de ip
