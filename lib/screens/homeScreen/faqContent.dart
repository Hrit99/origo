import 'package:flutter/material.dart';
import 'package:website/components/faqTile.dart';

class Faqcontent extends StatelessWidget {
  const Faqcontent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Faqtile(number: "#1", question: "What services do you offer?", answer: "Our process involves understanding the client's goals, conducting market research, analyzing competitors, identifying target audiences, creating a detailed marketing plan, executing the strategy, and continuously monitoring and adjusting based on performance data.",)
      ],
    );
  }
}