import 'package:flutter/material.dart';
import 'package:test_project/app/global_widgets/test_widgets/paypal_serices.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PaypalPayment extends StatefulWidget {
  final Function? onFinish;
  const PaypalPayment({super.key, this.onFinish});

  @override
  State<PaypalPayment> createState() => _PaypalPaymentState();
}

class _PaypalPaymentState extends State<PaypalPayment> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  var checkoutUrl;
  var executeUrl;
  var accessToken;
  PayPalService service = PayPalService();

  @override
  void initState() {
    super.initState();
    PayPalService().getAccessToken();
    Future.delayed(Duration.zero, () async {
      try {
        accessToken = await service.getAccessToken();
        print("accesstoken ======== : ${accessToken.toString()}");
        final res = await service.createPaypalPayment(accessToken);
        if (res != null) {
          setState(() {
            checkoutUrl = res["approvalUrl"];
            executeUrl = res["executeUrl"];
            print("setState========: ${checkoutUrl}");
          });
        }
      } catch (e) {
        print("execption=======:" + e.toString());
      }
    });
  }

  String returnURL = "return.example.com";
  String cancelURL = "cancel.example.com";
  //.....
  Map<String, dynamic> temp = {
    "intent": "sale",
  };

  @override
  Widget build(BuildContext context) {
    print("checkoutUrl========: ${checkoutUrl}");
    if (checkoutUrl != null) {
      return Scaffold(
        appBar: AppBar(
          title: const Text("PayPal"),
        ),
        body: WebView(
          initialUrl: checkoutUrl,
          javascriptMode: JavascriptMode.unrestricted,
          navigationDelegate: (NavigationRequest request) {
            if (request.url.contains(request.url)) {
              final uri = Uri.parse(request.url);
              final payerId = uri.queryParameters["PayerID"];
              if (payerId != null) {
                service
                    .executePayment(executeUrl, payerId, accessToken)
                    .then((id) {
                  widget.onFinish!(id);
                  Navigator.pop(context);
                });
              } else {
                Navigator.of(context).pop();
              }
              Navigator.of(context).pop();
            }
            if (request.url.contains(cancelURL)) {
              Navigator.of(context).pop();
            }
            return NavigationDecision.navigate;
          },
        ),
      );
    } else {
      return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: const Text("data"),
        ),
        body: Center(
          child: Container(child: CircularProgressIndicator()),
        ),
      );
    }
  }
}
