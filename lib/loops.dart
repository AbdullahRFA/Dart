// Dart program to demonstrate all kinds of loops
void main() {
  // ===== Example 1: For loop =====
  print("Example 1: For loop");
  for (int i = 1; i <= 5; i++) {
    print("i = $i");
  }

  // ===== Example 2: While loop =====
  print("\nExample 2: While loop");
  int count = 1;
  while (count <= 5) {
    print("count = $count");
    count++;
  }

  // ===== Example 3: Do-while loop =====
  print("\nExample 3: Do-while loop");
  int num = 1;
  do {
    print("num = $num");
    num++;
  } while (num <= 5);

  // ===== Example 4: For-in loop =====
  print("\nExample 4: For-in loop");
  List<String> fruits = ["Apple", "Banana", "Mango"];
  for (String fruit in fruits) {
    print("Fruit: $fruit");
  }

  // ===== Example 5: forEach loop =====
  print("\nExample 5: forEach loop");
  fruits.forEach((fruit) {
    print("Fruit: $fruit");
  });

  // ===== Example 6: Nested loops =====
  print("\nExample 6: Nested loops (Multiplication table)");
  for (int i = 1; i <= 3; i++) {
    for (int j = 1; j <= 3; j++) {
      print("$i x $j = ${i * j}");
    }
  }

  // ===== Example 7: Loop control statements =====
  print("\nExample 7: Loop control statements (break & continue)");
  for (int i = 1; i <= 5; i++) {
    if (i == 3) {
      print("Skipping 3 using continue");
      continue; // skips the rest of this iteration
    }
    if (i == 5) {
      print("Breaking loop at 5");
      break; // exits the loop
    }
    print("i = $i");
  }
}