import 'package:flutter/material.dart';
import 'package:finance/Education/models/topics.dart';
import 'package:finance/Education/widgets/subtopic_card.dart';

class SubtopicListScreen extends StatelessWidget {
  final Topic topic;

  const SubtopicListScreen({super.key, required this.topic});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(topic.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: List.generate(
            topic.subtopics.length,
            (index) => Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: SubtopicCard(subtopic: topic.subtopics[index]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
