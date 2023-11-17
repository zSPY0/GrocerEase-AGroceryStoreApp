import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CheckoutPage extends StatefulWidget {
  final String sessionId;

  const CheckoutPage({Key? key, required this.sessionId}) : super(key: key);

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  late WebViewController _controller;
String checkoutSuccessUrl= "http://localhost:8080/payment?result=success";
  String checkoutFailureUrl= "http://localhost:8080/payment?result=failure";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: const EdgeInsets.only(top: 30),
        child: WebView(
          initialUrl: initialUrl,
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (controller) => _controller = controller,
          onPageFinished: (String url) {
            if (url == initialUrl) {
              _redirectToStripe();
            }
          },
          navigationDelegate: (NavigationRequest request) {
            if (request.url.startsWith(checkoutSuccessUrl)) {
              Navigator.of(context).pop('success'); // <-- Handle success case
            } else if (request.url.startsWith(checkoutFailureUrl)) {
              Navigator.of(context).pop('cancel'); // <-- Handle cancel case
            }
            return NavigationDecision.navigate;
          },
        ),
      ),
    );
  }


  // String get initialUrl => 'data:text/html;base64,${base64Encode(const Utf8Encoder().convert(stripeHtmlPageScaffold))}';

  String get initialUrl => 'http://localhost:8080/getStripeCheckoutLoadingPage';


  void _redirectToStripe() {
    final redirectToCheckoutJs = '''
      var stripe = Stripe(\'pk_test_51NSz2dApvHDrAeiFaVg6rCNpEAXytrXyKaZnO4J7CdepvPJJslWXj8BlH90MCNAoaDi9KWKQBArEJ7i92uW53RQc00htzTLoaJ\');
      stripe.redirectToCheckout({
        sessionId: '${widget.sessionId}'
      }).then(function (result) {
        result.error.message = 'Error'
      });
    ''';
    _controller.evaluateJavascript(redirectToCheckoutJs); //<--- call the JS function on controller
  }
}