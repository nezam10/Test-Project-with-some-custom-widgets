import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileNumberReload extends StatefulWidget {
  const MobileNumberReload({Key? key}) : super(key: key);

  @override
  _MobileNumberReloadState createState() => _MobileNumberReloadState();
}

class _MobileNumberReloadState extends State<MobileNumberReload> {
  TextStyle greyTextStyle = const TextStyle(
      fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xff706F6F));
  List<Contact>? contacts;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getContact();
  }

  void getContact() async {
    if (await FlutterContacts.requestPermission()) {
      contacts = await FlutterContacts.getContacts(
          withProperties: true, withPhoto: true);
      print(contacts);
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "***  App Name  ***",
            style: TextStyle(color: Colors.blue),
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Card(
          child: Container(
            padding: EdgeInsets.all(15),
            height: Get.height * 0.8,
            width: Get.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Prepaid", style: greyTextStyle),
                const SizedBox(height: 10),
                Container(
                  height: 56,
                  width: Get.width,
                  color: const Color(0xffF3F5F7),
                ),
                const SizedBox(height: 10),
                Align(
                    alignment: Alignment.center,
                    child: Text("Select Country & Mobile Number",
                        style: greyTextStyle)),
                const SizedBox(height: 10),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        (contacts) == null
                            ? Center(child: CircularProgressIndicator())
                            : ListView.builder(
                                itemCount: contacts!.length,
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemBuilder: (BuildContext context, int index) {
                                  Uint8List? image = contacts![index].photo;
                                  String num = (contacts![index]
                                          .phones
                                          .isNotEmpty)
                                      ? (contacts![index].phones.first.number)
                                      : "--";
                                  return Card(
                                    child: ListTile(
                                        leading:
                                            (contacts![index].photo == null)
                                                ? const CircleAvatar(
                                                    child: Icon(Icons.person))
                                                : CircleAvatar(
                                                    backgroundImage:
                                                        MemoryImage(image!)),
                                        title: Text(
                                            "${contacts![index].name.first} ${contacts![index].name.last}"),
                                        subtitle: Text(num),
                                        onTap: () {
                                          if (contacts![index]
                                              .phones
                                              .isNotEmpty) {
                                            //launch('tel: ${num}');
                                            print(num);
                                          }
                                        }),
                                  );
                                },
                              ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
