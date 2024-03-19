import 'package:flutter/material.dart';

class Topic {
  final String name;
  final IconData icon;
  final List<Subtopic> subtopics;

  Topic({
    required this.name,
    required this.icon,
    required this.subtopics,
  });
}

class Subtopic {
  final String name;
  final IconData icon;
  final List<Lesson> lessons;

  Subtopic({
    required this.name,
    required this.icon,
    required this.lessons,
  });
}

class Lesson {
  final String name;
  final bool isCompleted;

  Lesson({
    required this.name,
    required this.isCompleted,
  });
}

List<Topic> topics = [
  Topic(
    name: 'Basic Trading Concepts',
    icon: Icons.lightbulb_outline,
    subtopics: [
      Subtopic(
        name: 'Introduction to Trading',
        icon: Icons.info_outline,
        lessons: [
          Lesson(
            name: 'What is Trading?',
            isCompleted: true,
          ),
          Lesson(
            name: 'Benefits of Trading',
            isCompleted: true,
          ),
          Lesson(
            name: 'Common Trading Jargon',
            isCompleted: false,
          ),
          Lesson(
            name: 'Types of Trading Strategies',
            isCompleted: false,
          ),
          Lesson(
            name: 'The Psychological Traps of Trading',
            isCompleted: false,
          ),
          // Add more lessons as needed
        ],
      ),
      Subtopic(
        name: 'Understanding Markets',
        icon: Icons.bar_chart,
        lessons: [
          Lesson(
            name: 'Overview of Financial Markets',
            isCompleted: true,
          ),
          Lesson(
            name: 'Stock Market Basics',
            isCompleted: false,
          ),
          // Add more lessons as needed
        ],
      ),
      Subtopic(
        name: 'Types of Investments',
        icon: Icons.attach_money,
        lessons: [
          Lesson(
            name: 'Stocks',
            isCompleted: false,
          ),
          Lesson(
            name: 'Bonds',
            isCompleted: false,
          ),
          // Add more lessons as needed
        ],
      ),
      Subtopic(
        name: 'Order Types',
        icon: Icons.compare,
        lessons: [
          Lesson(
            name: 'Market Order',
            isCompleted: false,
          ),
          Lesson(
            name: 'Limit Order',
            isCompleted: false,
          ),
          // Add more lessons as needed
        ],
      ),
    ],
  ),
  Topic(
    name: 'Technical Analysis',
    icon: Icons.timeline,
    subtopics: [
      Subtopic(
        name: 'Chart Patterns',
        icon: Icons.scatter_plot,
        lessons: [
          Lesson(
            name: 'Introduction to Chart Patterns',
            isCompleted: false,
          ),
          Lesson(
            name: 'Common Chart Patterns',
            isCompleted: false,
          ),
          // Add more lessons as needed
        ],
      ),
      Subtopic(
        name: 'Indicators',
        icon: Icons.equalizer,
        lessons: [
          Lesson(
            name: 'Moving Averages',
            isCompleted: false,
          ),
          Lesson(
            name: 'RSI (Relative Strength Index)',
            isCompleted: false,
          ),
          // Add more lessons as needed
        ],
      ),
      // Add more subtopics as needed
    ],
  ),
  Topic(
    name: 'Risk Management',
    icon: Icons.assessment,
    subtopics: [
      Subtopic(
        name: 'Introduction to Risk Management',
        icon: Icons.dangerous,
        lessons: [
          Lesson(
            name: 'Understanding Risk',
            isCompleted: false,
          ),
          Lesson(
            name: 'Types of Risk',
            isCompleted: false,
          ),
          // Add more lessons as needed
        ],
      ),
      Subtopic(
        name: 'Risk Assessment',
        icon: Icons.assessment_outlined,
        lessons: [
          Lesson(
            name: 'Risk Identification',
            isCompleted: false,
          ),
          Lesson(
            name: 'Risk Analysis',
            isCompleted: false,
          ),
          // Add more lessons as needed
        ],
      ),
      // Add more subtopics as needed
    ],
  ),
  // Add more topics as needed
  Topic(
    name: 'Investment Strategies',
    icon: Icons.monetization_on,
    subtopics: [
      Subtopic(
        name: 'Value Investing',
        icon: Icons.trending_down,
        lessons: [
          Lesson(
            name: 'Fundamental Analysis',
            isCompleted: false,
          ),
          Lesson(
            name: 'Identifying Undervalued Stocks',
            isCompleted: false,
          ),
          // Add more lessons as needed
        ],
      ),
      Subtopic(
        name: 'Growth Investing',
        icon: Icons.trending_up,
        lessons: [
          Lesson(
            name: 'Earnings Growth',
            isCompleted: false,
          ),
          Lesson(
            name: 'Identifying High-Growth Stocks',
            isCompleted: false,
          ),
          // Add more lessons as needed
        ],
      ),
      // Add more subtopics as needed
    ],
  ),
  // Add more topics as needed
];
