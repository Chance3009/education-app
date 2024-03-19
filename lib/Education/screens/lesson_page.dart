import 'package:flutter/material.dart';
import 'package:finance/Education/models/topics.dart';

class LessonPage extends StatefulWidget {
  final Subtopic subtopic;
  final int initialLessonIndex;

  const LessonPage(
      {Key? key, required this.subtopic, required this.initialLessonIndex})
      : super(key: key);

  @override
  _LessonPageState createState() => _LessonPageState();
}

class _LessonPageState extends State<LessonPage> {
  late int currentLessonIndex;

  @override
  void initState() {
    super.initState();
    currentLessonIndex = widget.initialLessonIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.subtopic.lessons[currentLessonIndex].name),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 16),
            Expanded(
              child: PageView.builder(
                itemCount: widget.subtopic.lessons.length,
                onPageChanged: (index) {
                  setState(() {
                    currentLessonIndex = index;
                  });
                },
                itemBuilder: (context, index) {
                  return SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          widget.subtopic.lessons[index].name,
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          widget.subtopic.lessons[index].content,
                          style: TextStyle(fontSize: 16),
                        ),
                        const SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              widget.subtopic.lessons[index].toggleCompletionStatus();
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: widget.subtopic.lessons[index].isCompleted
                                ? Colors.green
                                : null,
                          ),
                          child: Text(widget.subtopic.lessons[index].isCompleted
                              ? 'Completed!'
                              : 'Mark as Completed'),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            widget.subtopic.lessons.length,
            (index) => GestureDetector(
              onTap: () {
                setState(() {
                  currentLessonIndex = index;
                });
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: Container(
                  width: index == currentLessonIndex ? 16 : 8,
                  height: index == currentLessonIndex ? 16 : 8,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: widget.subtopic.lessons[index].isCompleted
                        ? Colors.green
                        : Colors.grey,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
