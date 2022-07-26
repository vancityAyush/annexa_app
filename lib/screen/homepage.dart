import 'package:annexa_app/main.dart';
import 'package:annexa_app/network/api_client.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final ApiClient _apiClient = getIt<ApiClient>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff150c3f),
      appBar: AppBar(
          centerTitle: true,
          toolbarHeight: 60,
          backgroundColor: Color(0xff29214d),
          title: Image.asset(
            "assets/images/png/Annexlogo.png",
            height: 60,
            width: 120,
            fit: BoxFit.cover,
          )),
      body: Container(),
      // FutureBuilder<List<CryptoEntity>>(
      //     future: _apiClient.getCryptoData(),
      //     builder: (context, snapshots) {
      //       if (!snapshots.hasData) {
      //         return const Center(
      //           child: CircularProgressIndicator(),
      //         );
      //       }
      //
      //       return ChangeNotifierProvider<CryptoProvider>(
      //         create: (_) => CryptoProvider(data: snapshots.data!),
      //         child: ListView(
      //           children: [
      //             Column(
      //               crossAxisAlignment: CrossAxisAlignment.start,
      //               children: [
      //                 const Center(
      //                   child: Padding(
      //                     padding: EdgeInsets.only(left: 16, top: 10),
      //                     child: Text(
      //                       "Welcome to AnnexTrading",
      //                       style: TextStyle(
      //                           color: Colors.white,
      //                           fontWeight: FontWeight.bold,
      //                           fontSize: 20),
      //                     ),
      //                   ),
      //                 ),
      //                 const Center(
      //                   child: Text(
      //                     "Make your first invesment",
      //                     style: TextStyle(
      //                         color: Colors.white60,
      //                         fontSize: 14,
      //                         fontWeight: FontWeight.normal),
      //                   ),
      //                 ),
      //                 const Padding(
      //                   padding: EdgeInsets.only(left: 20, top: 10),
      //                   child: homepagecard(),
      //                 ),
      //                 Container(
      //                   margin: EdgeInsets.only(top: 15, left: 20, right: 20),
      //                   child: Image.asset(
      //                     "assets/images/jpg/foto.jpg",
      //                     fit: BoxFit.contain,
      //                   ),
      //                 ),
      //                 const Padding(
      //                   padding: const EdgeInsets.only(left: 25, top: 30),
      //                   child: Text(
      //                     "Top Gainers",
      //                     style: TextStyle(
      //                         color: Colors.white,
      //                         fontSize: 20,
      //                         fontWeight: FontWeight.bold),
      //                   ),
      //                 ),
      //                 const Padding(
      //                   padding: const EdgeInsets.only(left: 25, top: 10),
      //                   child: Text(
      //                     "Coin that have gained the most in 24 hours ",
      //                     style: TextStyle(
      //                         color: Colors.white,
      //                         fontWeight: FontWeight.normal,
      //                         fontSize: 14),
      //                   ),
      //                 ),
      //                 Consumer<CryptoProvider>(
      //                   builder: (context, provider, _) => TopGainers(
      //                     data: provider.sortedList,
      //                   ),
      //                 ),
      //                 const Padding(
      //                   padding: const EdgeInsets.only(left: 25, top: 30),
      //                   child: Text(
      //                     "Top Losers",
      //                     style: TextStyle(
      //                         color: Colors.white,
      //                         fontSize: 20,
      //                         fontWeight: FontWeight.bold),
      //                   ),
      //                 ),
      //                 const Padding(
      //                   padding: const EdgeInsets.only(left: 25, top: 10),
      //                   child: Text(
      //                     "Coin that have lost the most in 24 hours ",
      //                     style: TextStyle(
      //                         color: Colors.white,
      //                         fontWeight: FontWeight.normal,
      //                         fontSize: 14),
      //                   ),
      //                 ),
      //                 Consumer<CryptoProvider>(
      //                   builder: (context, provider, _) => TopGainers(
      //                     data: provider.sortedList,
      //                   ),
      //                 ),
      //                 Container(
      //                   margin: EdgeInsets.only(top: 20, left: 10),
      //                   width: MediaQuery.of(context).size.width * 2,
      //                   child: const ReuseableText(
      //                     size: 20,
      //                     text: "Watch the Beginner's Guide to Go App! ",
      //                     wordSpacing: 3,
      //                     color: Colors.white,
      //                     fontWeight: FontWeight.bold,
      //                   ),
      //                 ),
      //                 const Padding(
      //                   padding: EdgeInsets.all(8.0),
      //                   child: ReuseableText(
      //                     size: 16,
      //                     text:
      //                         "Worried about how to getting started?Watch this video and learn the basics",
      //                     wordSpacing: 3,
      //                     color: Colors.white,
      //                     fontWeight: FontWeight.normal,
      //                   ),
      //                 ),
      //                 ClipRRect(
      //                     borderRadius: BorderRadius.circular(20),
      //                     child: Container(
      //                         height: MediaQuery.of(context).size.height / 3.5,
      //                         width: MediaQuery.of(context).size.width / 1,
      //                         child: Stack(
      //                           children: [
      //                             Image.asset("assets/images/jpg/visa.jpg",
      //                                 fit: BoxFit.cover,
      //                                 height:
      //                                     MediaQuery.of(context).size.height /
      //                                         3,
      //                                 width: MediaQuery.of(context).size.width /
      //                                     1),
      //                             Container(
      //                               margin: EdgeInsets.only(left: 15, top: 10),
      //                               width:
      //                                   MediaQuery.of(context).size.width * .3,
      //                               child: const ReuseableText(
      //                                   text: "Connecting the world to crypto",
      //                                   size: 16,
      //                                   fontWeight: FontWeight.bold,
      //                                   color: Colors.white,
      //                                   wordSpacing: 0),
      //                             )
      //                           ],
      //                         ))),
      //                 Row(
      //                   crossAxisAlignment: CrossAxisAlignment.start,
      //                   children: [
      //                     Padding(
      //                       padding: const EdgeInsets.all(14.0),
      //                       child: Image.asset(
      //                         "assets/images/png/chatapp.png",
      //                         height: 50,
      //                         width: 50,
      //                       ),
      //                     ),
      //                     Column(
      //                       crossAxisAlignment: CrossAxisAlignment.start,
      //                       children: [
      //                         Container(
      //                           padding: EdgeInsets.only(top: 15, left: 10),
      //                           child: const ReuseableText(
      //                               text: "Need Help?We are here for you",
      //                               size: 14,
      //                               fontWeight: FontWeight.normal,
      //                               color: Colors.white,
      //                               wordSpacing: 0),
      //                         ),
      //                         Container(
      //                           padding: EdgeInsets.only(left: 10),
      //                           child: const ReuseableText(
      //                               text: "24*7 Customer Support",
      //                               size: 10,
      //                               fontWeight: FontWeight.normal,
      //                               color: Colors.white60,
      //                               wordSpacing: 0),
      //                         ),
      //                         Container(
      //                           padding: EdgeInsets.only(left: 10),
      //                           child: const ReuseableText(
      //                               text: "Visit Help Center",
      //                               size: 14,
      //                               fontWeight: FontWeight.normal,
      //                               color: Colors.green,
      //                               wordSpacing: 0),
      //                         )
      //                       ],
      //                     ),
      //                   ],
      //                 )
      //               ],
      //             ),
      //           ],
      //         ),
      //       );
      //     }),
    );
  }
}
