import 'package:fitness_tracker/constants/colors.dart';
import 'package:fitness_tracker/data/line_chart_data.dart';
import 'package:fitness_tracker/widgets/custom_card.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartCard extends StatelessWidget {
  const LineChartCard({super.key});

  @override
  Widget build(BuildContext context) {
    //line chart data
    final data = LineData();

    return CustomCard(
        child: Column(
      children: [
        Text(
          "Steps Overview",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: greyColor,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        AspectRatio(
          aspectRatio: 16 / 6,
          child: LineChart(LineChartData(
              lineTouchData: LineTouchData(
                handleBuiltInTouches: true,
              ),
              titlesData: FlTitlesData(
                  //remove the right side title
                  rightTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),

                  //remove the top side title
                  topTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  ),

                  //Add the bottom side title
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (double value, TitleMeta meta) {
                        return data.bottomTitle[value.toInt()] != null
                            ? SideTitleWidget(
                                axisSide: meta.axisSide,
                                child: Text(
                                  data.bottomTitle[value.toInt()].toString(),
                                  style: const TextStyle(
                                    fontSize: 12,
                                    color: greyColor,
                                  ),
                                ), 
                                )
                            : const SizedBox();
                      },
                    ),
                  ),

                  //remove the right side title
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(showTitles: false),
                  )))),
        ),
      ],
    ));
  }
}
