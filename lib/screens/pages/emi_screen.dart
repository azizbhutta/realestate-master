import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../constants/mycolors.dart';

class EmiScreen extends StatefulWidget {
  const EmiScreen({Key? key}) : super(key: key);

  @override
  State<EmiScreen> createState() => _EmiScreenState();
}

class _EmiScreenState extends State<EmiScreen> {
  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2 = TextEditingController();
  TextEditingController _controller3 = TextEditingController();
  TextEditingController _controller4 = TextEditingController();
  TextEditingController _controller5 = TextEditingController();
  TextEditingController _controller6 = TextEditingController();

  double? totalInterest;

  double? monthlyInterest;

  double? monthlyInstallment;

  void loancalculator() {
    final amount = int.parse(_controller1.text) - int.parse(_controller2.text);
    final tinterest = amount *
        (double.parse(_controller3.text) / 100) *
        int.parse(_controller4.text);
    final minterest = tinterest / (int.parse(_controller4.text) * 12);
    final minstall = (amount + tinterest) / (int.parse(_controller4.text) * 12);
    setState(() {
      totalInterest = tinterest;
      monthlyInterest = minterest;
      monthlyInstallment = minstall;
    });
  }

  final List<ChartData> chartData = [
    ChartData('Others', 52, const Color(0xff2350d5)),
    ChartData('Steve', 38, const Color(0xff7ea0e0)),
    ChartData('David', 25, const Color(0xffbed0ed)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                size: 20.0,
                color: primaryColor,
              )),
          title: const Text("Emi Calculator",
              style: TextStyle(
                  color: primaryColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                  )),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Total Amount(\$)",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
                  ),
                  const SizedBox(height: 5),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border:
                      Border.all(width: 1, color: const Color(0xffb2b2b2)),
                    ),
                    child: TextFormField(
                      controller: _controller1,
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                      cursorColor: Colors.black,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.all(5),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Down Payment",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
                  ),
                  const SizedBox(height: 5),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border:
                      Border.all(width: 1, color: const Color(0xffb2b2b2)),
                    ),
                    child: TextFormField(
                      controller: _controller2,
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                      cursorColor: Colors.black,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.all(5),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Interest Rate(%)",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
                  ),
                  const SizedBox(height: 5),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border:
                      Border.all(width: 1, color: const Color(0xffb2b2b2)),
                    ),
                    child: TextFormField(
                      controller: _controller3,
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                      cursorColor: Colors.black,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.all(5),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Loan Tearms(Years)",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
                  ),
                  const SizedBox(height: 5),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border:
                      Border.all(width: 1, color: const Color(0xffb2b2b2)),
                    ),
                    child: TextFormField(
                      controller: _controller4,
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                      cursorColor: Colors.black,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.all(5),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Property Tax(\$)",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
                  ),
                  const SizedBox(height: 5),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border:
                      Border.all(width: 1, color: const Color(0xffb2b2b2)),
                    ),
                    child: TextFormField(
                      controller: _controller5,
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                      cursorColor: Colors.black,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.all(5),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Home Insurance(\$)",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w900),
                  ),
                  const SizedBox(height: 5),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border:
                      Border.all(width: 1, color: const Color(0xffb2b2b2)),
                    ),
                    child: TextFormField(
                      controller: _controller6,
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.done,
                      cursorColor: Colors.black,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.all(5),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: MaterialButton(
                      color: primaryColor,
                      minWidth: 180,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      onPressed: () {
                        loancalculator();
                        Future.delayed(Duration.zero);
                        showModalBottomSheet(
                            backgroundColor: Colors.white,
                            context: context,
                            shape: const RoundedRectangleBorder(
                              // <-- SEE HERE
                              borderRadius: BorderRadius.vertical(
                                top: Radius.circular(25.0),
                              ),
                            ),
                            builder: (context) {
                              return Container(
                                height: 500,
                                child: Padding(
                                  padding:
                                  const EdgeInsets.fromLTRB(20, 20, 0, 0),
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                              height: 150,
                                              width: 150,
                                              child: SfCircularChart(
                                                  series: <CircularSeries>[
                                                    // Renders doughnut chart
                                                    DoughnutSeries<ChartData, String>(
                                                        dataSource: chartData,
                                                        pointColorMapper: (ChartData data, _) => data.color,
                                                        xValueMapper: (ChartData data, _) => data.x,
                                                        yValueMapper: (ChartData data, _) => data.y
                                                    )
                                                  ]
                                              )
                                          ),
                                          const Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,

                                            children:  [
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Icon(Icons.circle,size: 10,color: Color(0xff2350d5),),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text('Principal & Interest',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                                                  SizedBox(
                                                    width: 20,
                                                  ),
                                                  Text('419',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Icon(Icons.circle,size: 10,color: Color(0xff7ea0e0),),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text('Property Tax',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                                                  SizedBox(
                                                    width: 60,
                                                  ),
                                                  Text('250',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Icon(Icons.circle,size: 10,color: Color(0xffbed0ed),),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text('Home Insurance',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                                                  SizedBox(
                                                    width: 50,
                                                  ),
                                                  Text('83',style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                                                ],
                                              ),
                                            ],
                                          )
                                        ],
                                      ),

                                      const Text(
                                        'Result',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w900),
                                      ),
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      result(
                                        title: 'Total Interest',
                                        amount: totalInterest!,
                                      ),
                                      result(
                                        title: 'Monthly Interest',
                                        amount: monthlyInterest!,
                                      ),
                                      result(
                                        title: 'Monthly Installment',
                                        amount: monthlyInstallment!,
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      InkWell(
                                        onTap: (){
                                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const EmiScreen()));
                                        },
                                        child: Center(
                                          child: Container(
                                            height: 35,
                                            width: 150,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(8.0),
                                              color: primaryColor,
                                            ),
                                            child: const Center(
                                                child: Text(
                                                  'Recalculate',
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight: FontWeight.w900,
                                                      color: Colors.white),
                                                )),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            });
                      },
                      child: const Text(
                        "Calculate",
                        style: TextStyle(color: whiteColor),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

Widget result({required String title, required double amount}) {
  return ListTile(
    title: Text(
      title,
      style: const TextStyle(fontSize: 20),
    ),
    trailing: Text(
      "\$" + amount.toStringAsFixed(2),
      style: const TextStyle(fontSize: 18),
    ),
  );
}


class ChartData {
  ChartData(this.x, this.y, [this.color]);
  final String x;
  final double y;
  final Color? color;
}
