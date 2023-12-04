import 'package:bond_trade_demo/utils/chart_data.dart';
import 'package:flutter/material.dart';
import 'package:mrx_charts/mrx_charts.dart';

class ChartWidget extends StatelessWidget {
  const ChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.1,
      child: Chart(layers: lineLayers()),
    );
  }
}
