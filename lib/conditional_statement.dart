// Dart program to demonstrate conditional statements
import 'dart:io';

void main() {
  // ===== Example 1: Simple if statement =====
  int age = 20;
  if (age >= 18) {
    print("You are an adult.");
  }

  // ===== Example 2: if-else statement =====
  int number = 5;
  if (number % 2 == 0) {
    print("$number is even.");
  } else {
    print("$number is odd.");
  }

  // ===== Example 3: if-else if ladder =====
  int marks = 75;
  if (marks >= 90) {
    print("Grade: A+");
  } else if (marks >= 80) {
    print("Grade: A");
  } else if (marks >= 70) {
    print("Grade: B");
  } else if (marks >= 60) {
    print("Grade: C");
  } else {
    print("Grade: F");
  }

  // ===== Example 4: Nested if statement =====
  bool isLoggedIn = true;
  bool isAdmin = false;
  if (isLoggedIn) {
    if (isAdmin) {
      print("Welcome Admin!");
    } else {
      print("Welcome User!");
    }
  } else {
    print("Please log in first.");
  }

  // ===== Example 5: switch-case statement =====
  String day = "Friday";
  switch (day) {
    case "Monday":
      print("Start of the work week.");
      break;
    case "Friday":
      print("Weekend is coming!");
      break;
    case "Saturday":
    case "Sunday":
      print("It's the weekend!");
      break;
    default:
      print("Midweek day.");
  }

  // ===== Example 6: Conditional (ternary) operator =====
  int x = 10, y = 20;
  String result = (x > y) ? "x is greater" : "y is greater";
  print(result);

  // ===== Example 7: Null-aware conditional operator =====
  String? name;
  String displayName = name ?? "Guest"; // If name is null, use "Guest"
  print("Hello, $displayName!");
}