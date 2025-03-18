import 'package:w6_practice_part1/EX-1-START-CODE/repositories/courses_repository.dart';
import 'package:w6_practice_part1/EX-1-START-CODE/models/course_model.dart';
import 'package:flutter/material.dart';

class CourseProvider extends ChangeNotifier {
  final List<Course> _courses = [];

  // 🔹 Get all courses
  List<Course> getCourses() {
    return _courses;
  }
  
  // 🔹 Get a course by ID
  Course? getCourseFor(String courseId) {
    return _courses.firstWhere(
      (course) => course.id == courseId,
      orElse: () => throw Exception('Course not found'),
    );
  }

  // 🔹 Add a score to a course
  void addScore(String courseId, CourseScore score) {
    final course = getCourseFor(courseId);
    if (course != null) {
      course.scores.add(score);
      notifyListeners(); // Notify UI to update
    }
  }

  // 🔹 Add a new course
  void addCourse(Course course) {
    _courses.add(course);
    notifyListeners();
  }
}