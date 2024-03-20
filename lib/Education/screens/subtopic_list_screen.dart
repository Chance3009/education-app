import 'package:finance/Education/screens/lesson_page.dart';
import 'package:flutter/material.dart';
import 'package:finance/Education/models/topics.dart';
import 'package:finance/Education/widgets/subtopic_card.dart';

class SubtopicListScreen extends StatefulWidget {
  final Topic topic;

  const SubtopicListScreen({Key? key, required this.topic}) : super(key: key);

  @override
  _SubtopicListScreenState createState() => _SubtopicListScreenState();
}

class _SubtopicListScreenState extends State<SubtopicListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.topic.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: List.generate(
            widget.topic.subtopics.length,
            (index) => Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                GestureDetector(
                  onTap: () {
                    int initialLessonIndex = 0;
                    for (int i = 0; i < widget.topic.subtopics[index].lessons.length; i++) {
                      if (!widget.topic.subtopics[index].lessons[i].isCompleted) {
                        initialLessonIndex = i;
                        break;
                      }
                    }
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LessonPage(
                          subtopic: widget.topic.subtopics[index],
                          initialLessonIndex: initialLessonIndex,
                          onLessonCompletion: () {
                            setState(() {}); // Update the UI when lesson completion state changes
                          },
                        ),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: SubtopicCard(subtopic: widget.topic.subtopics[index]),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
