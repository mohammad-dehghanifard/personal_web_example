import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SkillIndicator extends StatelessWidget {
  const SkillIndicator({
    super.key, required this.skillName, required this.percent,
  });

  final String skillName;
  final double percent;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: LinearPercentIndicator(
        width: size.width / 2,
        lineHeight: size.height * 0.01,
        percent: percent,
        leading:   Text(skillName,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueGrey.shade700),),
        barRadius: const Radius.circular(6),
        animation: true,
        alignment: MainAxisAlignment.spaceBetween,
        backgroundColor: Colors.blueGrey.shade200,
        progressColor: Colors.amber.shade600,
      ),
    );
  }
}
