// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

class FaqQuestion extends StatelessWidget {
  final String question;
  final String answer;

  const FaqQuestion({required this.question, required this.answer});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.0),
      child: Center(
        child: ExpansionTile(
          title: Text(question),
          children: [
            Container(
              height: 200, // Set the desired height of the container
              child: ListView.builder(
                itemCount: 1, // Render only one item (the answer)
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(answer),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
