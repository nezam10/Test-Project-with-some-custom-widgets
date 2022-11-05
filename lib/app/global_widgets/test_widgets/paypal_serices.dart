import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http_auth/http_auth.dart';
import 'dart:convert' as convert;

class PayPalService {
  String domain = "https://api.sandbox.paypal.com";
  String clientId =
      "AbZKh8XjlNEwS-5yKboFZvWj8avYlK6po2GBLW4oVZ4bTqo2HMUBrpxsf1rjAP_eRwiPLCSTEHWaQ8rhv";
  String secret =
      "EHrlTEOE6sQ-KAnjEtCAYwLCKr-hEuzAloZvuuhh68698ZoHn-_AkdFlpKcLXXJCotiSCZo1vPxtk9ih";
  Future<String> getAccessToken() async {
    try {
      var client = BasicAuthClient(clientId, secret);
      var response = await client.post(
          Uri.parse("$domain/v1/oauth2/token?grant_type=client_credentials"));
      print("response.body =========== : ${response.body}");
      print("response.statusCode =========== : ${response.statusCode}");
      if (response.statusCode == 200) {
        print("response.body ===== : ${response.body}");
        final body = convert.jsonDecode(response.body);
        return body["access_token"];
      }
      return "0";
    } catch (e) {
      rethrow;
    }
  }

  Future<Map<String, String>> createPaypalPayment(accesstoken) async {
    try {
      var response = await http.post(Uri.parse("$domain/v1/payments/payment"),
          headers: {
            "content-type": "application/json",
            "Authorization": "Bearer" + accesstoken
          });
      final body = convert.jsonDecode(response.body);
      if (response.statusCode == 201) {
        if (body["links"] != null && body["links"].length > 0) {
          List links = body["links"];
          String executeUrl = "";
          String approvalUrl = "";
          final item = links.firstWhere((o) => o["rel"] == "approval_rul",
              orElse: () => null);
          if (item != null) {
            approvalUrl = item["href"];
          }
          final item1 = links.firstWhere((o) => o["rel"] == "approval_rul",
              orElse: () => null);
          if (item != null) {
            approvalUrl = item1["href"];
          }
          return {"executeUrl": executeUrl, "approvalUrl": approvalUrl};
        }
        throw Exception("0");
      } else {
        throw Exception(body["message"]);
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<String> executePayment(url, payerId, accesToken) async {
    try {
      var response = await http.post(url,
          body: convert.jsonEncode({"payer_id": payerId}),
          headers: {
            "content-type": "application/json",
            "Authorization": "Bearer" + accesToken
          });
      final body = convert.jsonDecode(response.body);
      if (response.statusCode == 200) {
        return body["id"];
      }
      return "0";
    } catch (e) {
      rethrow;
    }
  }
}
