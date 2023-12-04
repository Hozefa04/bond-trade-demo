import 'dart:math';
import 'package:bond_trade_demo/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:mrx_charts/mrx_charts.dart';

bool _whichCandleMock = true;

List<ChartLayer> layers() {
  _whichCandleMock = !_whichCandleMock;
  final double frequency =
      (DateTime(2017, 11).millisecondsSinceEpoch.toDouble() -
              DateTime(2017, 4).millisecondsSinceEpoch.toDouble()) /
          4;
  final double frequencyData = frequency / 3;
  final double from = DateTime(2017, 4).millisecondsSinceEpoch.toDouble();
  return [
    ChartGridLayer(
      settings: ChartGridSettings(
        x: ChartGridSettingsAxis(
          color: Colors.white.withOpacity(0.2),
          frequency: frequency,
          max: DateTime(2017, 11).millisecondsSinceEpoch.toDouble(),
          min: DateTime(2017, 4).millisecondsSinceEpoch.toDouble(),
        ),
        y: ChartGridSettingsAxis(
          color: Colors.white.withOpacity(0.2),
          frequency: 3.0,
          max: 66.0,
          min: 48.0,
        ),
      ),
    ),
    ChartAxisLayer(
      settings: ChartAxisSettings(
        x: ChartAxisSettingsAxis(
          frequency: frequency,
          max: DateTime(2017, 11).millisecondsSinceEpoch.toDouble(),
          min: DateTime(2017, 4).millisecondsSinceEpoch.toDouble(),
          textStyle: const TextStyle(
            color: Colors.transparent,
          ),
        ),
        y: const ChartAxisSettingsAxis(
          frequency: 3.0,
          max: 66.0,
          min: 48.0,
          textStyle: TextStyle(
            color: Colors.transparent,
          ),
        ),
      ),
      labelX: (value) => "",
      labelY: (value) => "",
    ),
    ChartCandleLayer(
      items: _whichCandleMock
          ? [
              _candleItem(AppColors.primaryColor, 50.0, 52.0, 48.0, 53.0, from),
              _candleItem(
                  Colors.red, 52.0, 54.0, 51.0, 57.0, from + frequencyData),
              _candleItem(
                  Colors.red, 53.0, 56.0, 53.0, 56.0, from + 2 * frequencyData),
              _candleItem(AppColors.primaryColor, 54.0, 56.0, 53.0, 58.0,
                  from + 3 * frequencyData),
              _candleItem(AppColors.primaryColor, 55.0, 57.0, 53.0, 58.0,
                  from + 4 * frequencyData),
              _candleItem(AppColors.primaryColor, 56.0, 58.0, 56.0, 58.0,
                  from + 5 * frequencyData),
              _candleItem(
                  Colors.red, 58.0, 60.0, 57.0, 61.0, from + 6 * frequencyData),
              _candleItem(AppColors.primaryColor, 57.5, 59.0, 56.5, 60.3,
                  from + 7 * frequencyData),
              _candleItem(AppColors.primaryColor, 57.0, 59.0, 57.0, 60.0,
                  from + 8 * frequencyData),
              _candleItem(
                  Colors.red, 60.0, 62.0, 57.0, 61.0, from + 9 * frequencyData),
              _candleItem(AppColors.primaryColor, 63.0, 65.0, 62.0, 66.0,
                  from + 10 * frequencyData),
              _candleItem(AppColors.primaryColor, 64.0, 66.0, 63.0, 66.0,
                  from + 11 * frequencyData),
              _candleItem(Colors.red, 62.0, 64.0, 61.0, 64.0,
                  from + 12 * frequencyData),
            ]
          : [
              _candleItem(Colors.red, 62.0, 64.0, 61.0, 64.0, from),
              _candleItem(AppColors.primaryColor, 64.0, 66.0, 63.0, 66.0,
                  from + frequencyData),
              _candleItem(AppColors.primaryColor, 63.0, 65.0, 62.0, 66.0,
                  from + 2 * frequencyData),
              _candleItem(
                  Colors.red, 60.0, 62.0, 57.0, 61.0, from + 3 * frequencyData),
              _candleItem(AppColors.primaryColor, 57.0, 59.0, 57.0, 60.0,
                  from + 4 * frequencyData),
              _candleItem(AppColors.primaryColor, 57.5, 59.0, 56.5, 60.3,
                  from + 5 * frequencyData),
              _candleItem(
                  Colors.red, 58.0, 60.0, 57.0, 61.0, from + 6 * frequencyData),
              _candleItem(AppColors.primaryColor, 56.0, 58.0, 56.0, 58.0,
                  from + 7 * frequencyData),
              _candleItem(AppColors.primaryColor, 55.0, 57.0, 53.0, 58.0,
                  from + 8 * frequencyData),
              _candleItem(AppColors.primaryColor, 54.0, 56.0, 53.0, 58.0,
                  from + 9 * frequencyData),
              _candleItem(Colors.red, 53.0, 56.0, 53.0, 56.0,
                  from + 10 * frequencyData),
              _candleItem(Colors.red, 52.0, 54.0, 51.0, 57.0,
                  from + 11 * frequencyData),
              _candleItem(AppColors.primaryColor, 50.0, 52.0, 48.0, 53.0,
                  from + 12 * frequencyData),
            ],
      settings: const ChartCandleSettings(),
    ),
  ];
}

ChartCandleDataItem _candleItem(
  Color color,
  double min1,
  double max1,
  double min2,
  double max2,
  double x,
) {
  return ChartCandleDataItem(
    color: color,
    value1: ChartCandleDataItemValue(
      max: max1,
      min: min1,
    ),
    value2: ChartCandleDataItemValue(
      max: max2,
      min: min2,
    ),
    x: x,
  );
}

List<ChartLayer> lineLayers() {
  final from = DateTime(2021, 4);
  final to = DateTime(2021, 8);
  final frequency =
      (to.millisecondsSinceEpoch - from.millisecondsSinceEpoch) / 3.0;
  return [
    ChartHighlightLayer(
      shape: () => ChartHighlightLineShape<ChartLineDataItem>(
        backgroundColor: Colors.transparent,
        currentPos: (item) => item.currentValuePos,
        radius: const BorderRadius.all(Radius.circular(8.0)),
        width: 60.0,
      ),
    ),
    ChartAxisLayer(
      settings: ChartAxisSettings(
        x: ChartAxisSettingsAxis(
          frequency: frequency,
          max: to.millisecondsSinceEpoch.toDouble(),
          min: from.millisecondsSinceEpoch.toDouble(),
          textStyle: const TextStyle(
            color: Colors.transparent,
          ),
        ),
        y: const ChartAxisSettingsAxis(
          frequency: 100.0,
          max: 400.0,
          min: 0.0,
          textStyle: TextStyle(
            color: Colors.transparent,
          ),
        ),
      ),
      labelX: (value) => "",
      labelY: (value) => "",
    ),
    ChartLineLayer(
      items: List.generate(
        4,
        (index) => ChartLineDataItem(
          x: (index * frequency) + from.millisecondsSinceEpoch,
          value: Random().nextInt(380) + 20,
        ),
      ),
      settings: ChartLineSettings(
        color: AppColors.primaryColor,
        thickness: 4.0,
      ),
    ),
    ChartTooltipLayer(
      shape: () => ChartTooltipLineShape<ChartLineDataItem>(
        backgroundColor: Colors.transparent,
        circleBackgroundColor: Colors.transparent,
        circleBorderColor: AppColors.primaryColor,
        circleSize: 4.0,
        circleBorderThickness: 2.0,
        currentPos: (item) => item.currentValuePos,
        onTextValue: (item) => item.value.toString(),
        radius: 6.0,
        textStyle: const TextStyle(
          color: Colors.transparent,
        ),
      ),
    ),
  ];
}
