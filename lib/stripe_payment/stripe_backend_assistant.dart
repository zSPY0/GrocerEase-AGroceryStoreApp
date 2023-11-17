import 'dart:convert';
import 'package:http/http.dart' as http;


class CheckoutSessionResponse {
  late Map<String, dynamic> session;

  CheckoutSessionResponse(this.session);
}

class StripeBackendService {
  static String checkOutUrl = 'http://localhost:8080/checkout';
  static Map<String, String> headers = {'Content-Type': 'application/json'};



  static Future<CheckoutSessionResponse> payOnline(double charges) async {
    var url = "${StripeBackendService.checkOutUrl}?&amount=$charges&currency=PKR";
    Uri parsedUrl = Uri.parse(url);
    var response = await http.get(parsedUrl, headers: StripeBackendService.headers);
    Map<String, dynamic> body = jsonDecode(response.body);
    return CheckoutSessionResponse(body['session']);
  }
}
