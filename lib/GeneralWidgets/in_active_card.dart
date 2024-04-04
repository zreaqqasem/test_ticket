import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

import '../Models/test_model.dart';

class InActiveCard extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  InActiveCard({Key? key}) : super(key: key);

  @override
  State<InActiveCard> createState() => _InActiveCardState();
}

class _InActiveCardState extends State<InActiveCard> {
  List<TestData> data = [
    TestData('Jan', 35),
    TestData('Feb', 28),
    TestData('Mar', 34),
    TestData('Apr', 32),
    TestData('May', 40)
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xff294E5F),
      child: SizedBox(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Inactive Time",style: TextStyle(color: Colors.white,fontSize: 20),),
                const Text("Last 7 days",style: TextStyle(color: Colors.white),),

                //Initialize the chart widget
            SizedBox(
              height: 200,
              width: double.infinity,
              child: SfCartesianChart(
                  primaryXAxis: const CategoryAxis(),
                  // Chart title
                  // Enable legend
                  // Enable tooltip
                  tooltipBehavior: TooltipBehavior(enable: true),
                  series: <CartesianSeries<TestData, String>>[
                    ColumnSeries<TestData, String>(
                      trackBorderColor: Colors.white,
                      trackColor: Colors.white,
                      dataSource: data,
                      xValueMapper: (TestData sales, _) => sales.year,
                      yValueMapper: (TestData sales, _) => sales.value,
                      color: Colors.white,
                      // Enable data label
                      dataLabelSettings: const DataLabelSettings(isVisible: true),
                    )
                  ]),
            ),
            const SizedBox(height: 10,),
            const Text("0h 29m",style: TextStyle(color: Colors.white,fontSize: 20),),
            const Text("Avg this week",style: TextStyle(color: Colors.white),),

          ]),
        ),
      ),
    );
  }
}