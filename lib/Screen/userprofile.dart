import 'package:annexa_app/Screen/Transaction.dart';
import 'package:annexa_app/Screen/withdrawal.dart';
import 'package:annexa_app/Widget/reuseable_text.dart';
import 'package:annexa_app/main.dart';
import 'package:annexa_app/models/OAuthUser.dart';
import 'package:annexa_app/network/api_client.dart';
import 'package:flutter/material.dart';

import '../Widget/reuseableprofilecard.dart';
import '../Widget/userprofile.dart';
import 'addfund.dart';
import 'detailsscreen.dart';
import 'inviteandearn.dart';
import 'onlinesupport.dart';

class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  final _user = getIt<User>();
  final apiClient = getIt<ApiClient>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff150c3f),
      appBar: AppBar(
          elevation: 2,
          backgroundColor: Color(0xff29214d),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                _user.name,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                _user.email,
                style: TextStyle(
                    color: Colors.white60,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ],
          )),
      body: ListView(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => AddFund()));
            },
            child: Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 10),
              height: MediaQuery.of(context).size.height / 9,
              width: MediaQuery.of(context).size.width / 1,
              child: Card(
                color: Color(0xff29214d),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(left: 10, top: 25),
                          child: ReuseableText(
                              text: "Available to Invest",
                              size: 14,
                              fontWeight: FontWeight.normal,
                              color: Colors.white,
                              wordSpacing: 0),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 18),
                          child: Text(
                            '\u{20B9}${_user.wallet_balance ?? 0.0}',
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.white,
                        size: 20,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailsScreen()));
            },
            child: userProfileCard(
              text: 'Account settings',
              subicon: const Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.white,
                size: 22,
              ),
              subtext: 'Manage Your KYC,Bank Details etc',
              icon: const Icon(
                Icons.people,
                color: Colors.white,
                size: 25,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Withdrawal()));
            },
            child: ReuseableProfileCard(
              text: 'Withdraw',
              icon: const Icon(
                Icons.eighteen_mp,
                color: Colors.white,
                size: 30,
              ),
              icons: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Transaction()));
            },
            child: ReuseableProfileCard(
              text: 'Transaction',
              icon: Icon(
                Icons.eighteen_mp,
                color: Colors.white,
                size: 30,
              ),
              icons: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 20,
              ),
            ),
          ),
          ReuseableProfileCard(
            text: 'Tutorials',
            icon: Icon(
              Icons.eighteen_mp,
              color: Colors.white,
              size: 30,
            ),
            icons: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
              size: 20,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => InviteAndEarn()));
            },
            child: userProfileCard(
              text: 'Invite Friends',
              subicon: const Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.white,
                size: 20,
              ),
              subtext: 'Invite Your Friends and earn Reward',
              icon: const Icon(
                Icons.people,
                color: Colors.white,
                size: 25,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => OnlineSupport()));
            },
            child: userProfileCard(
              text: 'Online Support',
              subicon: const Icon(
                Icons.arrow_forward_ios_outlined,
                color: Colors.white,
                size: 20,
              ),
              subtext: 'Get help with your account',
              icon: const Icon(
                Icons.people,
                color: Colors.white,
                size: 25,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
