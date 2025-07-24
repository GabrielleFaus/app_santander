import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class Request {
  String BASE_URL = "http://10.0.2.15:8000/api";

  methodRequest(
    String route,
    String method, {
    dynamic body,
    dynamic parameters,
  }) async {
    if (method == "GET") {
      await http
          .post(
            Uri.parse("$BASE_URL/$Route"),
            headers: {
              "Accept": "application/json",
              "Content-Type": "application/json",
            },
            body: jsonEncode(body),
          )
          .then((http.Response response) {});
    }
  }
}
