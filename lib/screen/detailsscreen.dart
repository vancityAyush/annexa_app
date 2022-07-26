import 'package:annexa_app/Widget/reuseable_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widget/back_button.dart';
import '../Widget/details_widget.dart';
import 'kyc/kycupdatefirstscreen.dart';

class DetailsScreen extends StatefulWidget {
  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff150c3f),
      appBar: AppBar(
        leading: navBack(),
        backgroundColor: Color(0xff29214d),
        title: Text("Account Setting"),
      ),
      body: ListView(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => KycUpdate()),
              );
            },
            child: DetailsReuseable(
              icon: const Icon(
                Icons.people,
                color: Colors.white,
                size: 50,
              ),
              text: 'KYC Details',
              subtext: 'Manage your KYC,Bank Details etc',
              icons: const Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.blue,
              ),
              subsubtext: 'KYC PENDING',
            ),
          ),
          const Divider(
            thickness: .5,
            color: Colors.white60,
          ),
          ListTile(
            leading: Icon(
              Icons.people,
              color: Colors.white,
              size: 50,
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                ReuseableText(
                    text: "Profile Details",
                    size: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    wordSpacing: 0),
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: ReuseableText(
                      text: "Manage details,password & security",
                      size: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.white70,
                      wordSpacing: 0),
                ),
              ],
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.white,
            ),
          ),
          const Divider(
            thickness: .5,
            color: Colors.white60,
          ),
          ListTile(
            leading: Icon(
              Icons.people,
              color: Colors.white,
              size: 50,
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                ReuseableText(
                    text: "Bank Account",
                    size: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    wordSpacing: 0),
                Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: ReuseableText(
                      text: "Manage bank details",
                      size: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.white70,
                      wordSpacing: 0),
                ),
              ],
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios_outlined,
              color: Colors.white,
            ),
          ),
          const Divider(
            thickness: .5,
            color: Colors.white60,
          ),
        ],
      ),
    );
  }
}
