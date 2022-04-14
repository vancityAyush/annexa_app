import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Widget/reuseable_text.dart';

class AddMoney extends StatefulWidget {
  const AddMoney({Key? key}) : super(key: key);

  @override
  _AddMoneyState createState() => _AddMoneyState();
}

class _AddMoneyState extends State<AddMoney> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurpleAccent,
        appBar: AppBar(
            backgroundColor: Colors.deepPurple,
            leading: IconButton(
                onPressed: () {}, icon: const Icon(Icons.arrow_back)),
            title: const ReuseableText(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              size: 16,
              wordSpacing: 0,
              text: 'Add Money',
            )),
        body: GestureDetector(
          /*onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => AddMoney()));
          },*/
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: const ReuseableText(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    wordSpacing: 0,
                    size: 18,
                    text: "Add Money"),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                child: const ReuseableText(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    wordSpacing: 0,
                    size: 12,
                    text: "Current Balance:"),
              ),
              Container(
                  width: MediaQuery.of(context).size.width / 1.1,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                        fillColor: Colors.deepPurple,
                        filled: true,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 20),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(
                              color: Colors.blueAccent, width: 2.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(
                              color: Colors.deepPurple, width: 1.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide:
                              const BorderSide(color: Colors.red, width: 1.0),
                        ),
                        prefixIcon: const Icon(
                          Icons.money_off,
                          size: 20,
                          color: Colors.white,
                        ),
                        hintText: 'Enter Amount',
                        hintStyle: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16)),
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 100),
                    child: ReuseableText(
                        text: 'Min,100',
                        size: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        wordSpacing: 0),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 100),
                    child: const ReuseableText(
                        text: 'Max,510000',
                        size: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        wordSpacing: 0),
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.only(bottom: 30),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 10,
                      ),
                      child: MaterialButton(
                          elevation: 0,
                          onPressed: () {
                            //on press of custom button
                          },
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          color: Colors.deepPurple,
                          child: Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.blue,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Text(
                                  '\u{20B9}${70}',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 8,
                      ),
                      child: MaterialButton(
                          elevation: 0,
                          onPressed: () {
                            //on press of custom button
                          },
                          shape: RoundedRectangleBorder(
                            side: const BorderSide(color: Colors.blue),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          color: Colors.deepPurple,
                          child: Row(
                            children: const [
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.blue,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(5.0),
                                child: Text(
                                  '\u{20B9}${70}',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          )),
                    ),
                    // Padding(
                    //   padding: const EdgeInsets.symmetric(
                    //     horizontal: 20.0,
                    //     vertical: 8,
                    //   ),
                    //   child: MaterialButton(
                    //       elevation: 0,
                    //       onPressed: () {
                    //         //on press of custom button
                    //       },
                    //       shape: RoundedRectangleBorder(
                    //         side: BorderSide(color: Colors.blue),
                    //         borderRadius: BorderRadius.circular(10),
                    //       ),
                    //       color:  Colors.deepPurple,
                    //       child: Row(
                    //         children: const [
                    //
                    //           Padding(
                    //             padding: EdgeInsets.all(5.0),
                    //             child: Icon(Icons.add,color: Colors.blue,),
                    //           ),
                    //           Padding(
                    //             padding: EdgeInsets.all(5.0),
                    //             child: Text(
                    //               '\u{20B9}${70}',
                    //               style: TextStyle(
                    //                   color: Colors.blue,
                    //                   fontSize: 18,
                    //                   fontWeight: FontWeight.bold),
                    //             ),
                    //           ),
                    //         ],
                    //       )
                    //   ),
                    // )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 8,
              ),
              GestureDetector(
                onTap: () {
                  /*    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Address ()),
                  );*/
                },
                child: Container(
                    height: MediaQuery.of(context).size.height / 15,
                    margin: const EdgeInsets.only(top: 40, left: 15, right: 15),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        'Next',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    )),
              )
            ],
          ),
        ));
  }
}
