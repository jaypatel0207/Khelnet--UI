import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl/intl.dart';
import 'package:khelnet/Pages/Fees/FeesProfile.dart';

class Transactions extends StatefulWidget {
  const Transactions({super.key});

  @override
  State<Transactions> createState() => _TransactionsState();
}

class _TransactionsState extends State<Transactions>  {


 


  final List<String> images = [
    "assets/images/currency.png",
    "assets/images/newrupee.png",
    "assets/images/bank.png",
    "assets/images/newrupee.png",
    "assets/images/bank.png",
    "assets/images/bank.png",
    "assets/images/currency.png",
    "assets/images/bank.png",
    "assets/images/newrupee.png",
     "assets/images/currency.png",
    "assets/images/bank.png",
  ];

  final List<DateTime> dates = [
    DateTime(2024, 06, 22),
    DateTime(2024, 05, 22),
    DateTime(2024, 04, 22),
    DateTime(2024, 05, 22),
    DateTime(2024, 04, 22),
    DateTime(2024, 04, 22),
    DateTime(2024, 06, 22),
    DateTime(2024, 04, 22),
    DateTime(2024, 05, 22),
    DateTime(2024, 06, 22),
    DateTime(2024, 04, 22),
  ];

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Expanded(
              child: ListView.builder(
                itemCount: images.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  String formattedDate =
                      DateFormat('dd-MM-yyyy').format(dates[index]);
                  return Padding(
                    padding: const EdgeInsets.only(left: 18, right: 18, top: 20),
                    child: Row(
                      children: [
                        Image.asset(
                          images[index],
                          width: 50,
                          height: 50,
                        ),
                     const    SizedBox(
                          width: 13,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "PP1 Plan",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                            Text("\u{20B9}${8900}",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w500))
                          ],
                        ),
                   const     SizedBox(
                          width: 130,
                        ),
                        Row(
                          children: [
                            Text(
                              formattedDate,
                              style:const  TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(186, 186, 186, 1)),
                            ),
                          ],
                        ),
                    const     SizedBox(
                          width: 20,
                        ),
                        InkWell(
                            onTap: () {
                              Get.to(const Feesprofile());
                            },
                            child:const  Icon(Icons.arrow_forward_ios))
                      ],
                    ),
                  );
                },
              ),
            ),
    );
  }
}