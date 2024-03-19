import 'package:flutter/material.dart';
import 'package:finance/Education/models/topics.dart';
import 'package:finance/Education/screens/subtopic_list_screen.dart';

class TopicCard extends StatelessWidget {
  final Topic topic;
  const TopicCard({
    super.key,
    required this.topic,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SubtopicListScreen(topic: topic),
          ),
        );
      },
      child: Container(
        width: 150, // Adjust the width as needed
        height: 150, // Adjust the height as needed
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.2),
              blurRadius: 4.0,
              spreadRadius: .05,
            ), //BoxShadow
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(topic.icon, size: 50), // Decrease the icon size
            const SizedBox(height: 15), // Increase the space between icon and text
            Text(
              topic.name,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
              maxLines: 2, // Allow two lines for text
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
