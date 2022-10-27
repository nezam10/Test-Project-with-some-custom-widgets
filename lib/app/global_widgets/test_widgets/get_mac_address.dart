import 'dart:io';

import 'package:flutter/material.dart';
import 'package:network_info_plus/network_info_plus.dart';

class GetMacAddress extends StatefulWidget {
  const GetMacAddress({Key? key}) : super(key: key);

  @override
  State<GetMacAddress> createState() => _GetMacAddressState();
}

class _GetMacAddressState extends State<GetMacAddress> {
  final info = NetworkInfo();
  static Future<String?> getLocalIpAddress() async {
    final interfaces = await NetworkInterface.list(
        type: InternetAddressType.IPv4, includeLinkLocal: true);
    print("interfaces===== = ${interfaces.first.addresses.first.address}");

    try {
      // Try VPN connection first
      NetworkInterface vpnInterface =
          interfaces.firstWhere((element) => element.name == "tun0");
      print(
          "vpnInterface.addresses.first.address = ${vpnInterface.addresses.first.address}");
      return vpnInterface.addresses.first.address;
    } on StateError {
      // Try wlan connection next
      try {
        NetworkInterface interface =
            interfaces.firstWhere((element) => element.name == "wlan0");
        print(
            "interface.addresses.first.address1 = ${interface.addresses.first.address}");
        return interface.addresses.first.address;
      } catch (ex) {
        // Try any other connection next
        try {
          NetworkInterface interface = interfaces.firstWhere((element) =>
              !(element.name == "tun0" || element.name == "wlan0"));
          print(
              "interface.addresses.first.address2 = ${interface.addresses.first.address}");
          return interface.addresses.first.address;
        } catch (ex) {
          return null;
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MAC address of a device'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: () async {
                print("wifiName =${await info.getWifiName()}");
                print("getWifiBSSID =${await info.getWifiBSSID()}");
                print("getWifiIP =${await info.getWifiIP()}");
                print("getWifiIPv6 =${await info.getWifiIPv6()}");
                print("getWifiSubmask =${await info.getWifiSubmask()}");
                print("getWifiBroadcast =${await info.getWifiBroadcast()}");
                print("getWifiGatewayIP =${await info.getWifiGatewayIP()}");
                print("test");
                getLocalIpAddress();
              },
              child: const Text("Get ip Address"),
            ),
          ],
        ),
      ),
    );
  }
}
