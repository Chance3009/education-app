import 'package:flutter/material.dart';
import 'package:finance/Education/models/topics.dart';
import 'package:finance/Education/screens/lesson_page.dart';

class SubtopicCard extends StatelessWidget {
  final Subtopic subtopic;

  const SubtopicCard({Key? key, required this.subtopic}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.all(10),
      child: InkWell(
        onTap: () {
          int initialLessonIndex = 0;
          for (int i = 0; i < subtopic.lessons.length; i++) {
            if (!subtopic.lessons[i].isCompleted) {
              initialLessonIndex = i;
              break;
            }
          }
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => LessonPage(
                subtopic: subtopic,
                initialLessonIndex: initialLessonIndex,
              ),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Icon(subtopic.icon),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      subtopic.name,
                      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              LinearProgressIndicator(
                value: _calculateProgress(subtopic),
                backgroundColor: Colors.grey[300],
                valueColor: const AlwaysStoppedAnimation<Color>(Colors.lightGreen),
              ),
              const SizedBox(height: 10),
              Center(
                child: Text(
                  _isSubtopicCompleted(subtopic) ? 'Completed!' : 'In Progress',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: _isSubtopicCompleted(subtopic) ? Colors.green : Colors.grey,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: subtopic.lessons.length,
                itemBuilder: (context, index) {
                  return LessonListItem(lesson: subtopic.lessons[index]);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  double _calculateProgress(Subtopic subtopic) {
    int completedCount = subtopic.lessons.where((lesson) => lesson.isCompleted).length;
    return completedCount / subtopic.lessons.length;
  }

  bool _isSubtopicCompleted(Subtopic subtopic) {
    return subtopic.lessons.every((lesson) => lesson.isCompleted);
  }
}

class LessonListItem extends StatelessWidget {
  final Lesson lesson;

  const LessonListItem({Key? key, required this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        lesson.isCompleted ? Icons.check_circle : Icons.radio_button_unchecked,
        color: lesson.isCompleted ? Colors.lightGreen : Colors.grey,
      ),
      title: Text(
        lesson.name,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }
}
