import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

PieChartData getChartData() {
  return PieChartData(
    sections: [
      PieChartSectionData(
        value: 40,
        showTitle: false,
        color: Color(0xff208CC8),
      ),
      PieChartSectionData(
        value: 25,
        showTitle: false,
        color: Color(0xff4EB7F2),
      ),
      PieChartSectionData(
        value: 20,
        showTitle: false,
        color: Color(0xff064061),
      ),
      PieChartSectionData(
        value: 22,
        showTitle: false,
        color: Color(0xffE2DECD),
      ),
    ],
  );
}