// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:counterfeitdete_app/components/faq_banner.dart';
import 'package:counterfeitdete_app/components/faq_question.dart';
import 'package:flutter/material.dart';

class FaqPage extends StatelessWidget {
  final List<Map<String, String>> faqList = [
    {'question': 'What is PhonyShield?', 'answer': 'Answer 1'},
    {'question': 'How to use this app?', 'answer': 'Answer 2'},
    {'question': 'Which Currency PhonyShield can scan?', 'answer': 'Answer 3'},
    {'question': 'Question 4', 'answer': 'Answer 4'},
    {'question': 'Question 5', 'answer': 'Answer 5'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FAQ'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FaqBanner(), // Use the FaqBanner component
            SizedBox(height: 20),
            Column(
              children: faqList.map((faq) {
                return FaqQuestion(
                  question: faq['question'] ?? '',
                  answer: faq['answer'] ?? '',
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
