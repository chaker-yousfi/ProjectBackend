// import 'package:ecommerce_app_backend/features/admin/models/sales.dart';
// import 'package:charts_flutter_new/flutter.dart' as charts;
// import 'package:flutter/material.dart';

// class CategoryProductsChart extends StatelessWidget {
//   final List<charts.Series<Sales, String>> seriesList;
//   const CategoryProductsChart({
//     Key? key,
//     required this.seriesList,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return charts.BarChart(
//       seriesList,
//       animate: true,
//     );
//   }
// }

import 'package:ecommerce_app_backend/features/admin/models/sales.dart'; // Your Sales model import
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class CategoryProductsChart extends StatelessWidget {
  final List<Sales> salesData;

  const CategoryProductsChart({Key? key, required this.salesData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.5,
      child: BarChart(
        BarChartData(
          alignment: BarChartAlignment.spaceAround,
          maxY: getMaxEarning(),
          barGroups: getBarGroups(),
        ),
      ),
    );
  }

  double getMaxEarning() {
    double maxEarning = 0;
    for (var sale in salesData) {
      if (sale.earning > maxEarning) {
        maxEarning = sale.earning.toDouble();
      }
    }
    return maxEarning;
  }

  List<BarChartGroupData> getBarGroups() {
    List<BarChartGroupData> barGroups = [];
    for (int i = 0; i < salesData.length; i++) {
      barGroups.add(
        BarChartGroupData(
          x: i,
          barRods: [
            BarChartRodData(
              toY: salesData[i].earning.toDouble(),
              color: Colors.blue,
            ),
          ],
        ),
      );
    }
    return barGroups;
  }
}
