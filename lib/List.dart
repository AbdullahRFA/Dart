// Dart program demonstrating List with examples
void main() {
  // 1. Creating a List (Growable by default)
  List<String> fruits = ["Apple", "Banana", "Mango"];
  print("Fruits: $fruits");

  // 2. Accessing elements by index
  print("First fruit: ${fruits[0]}");
  print("Second fruit: ${fruits[1]}");

  // 3. Modifying elements
  fruits[1] = "Orange";
  print("After modification: $fruits");

  // 4. Adding elements
  fruits.add("Pineapple"); // Add one element
  fruits.addAll(["Grapes", "Papaya"]); // Add multiple elements
  print("After adding: $fruits");

  // 5. Inserting at a specific position
  fruits.insert(1, "Strawberry");
  print("After inserting: $fruits");

  // 6. Removing elements
  fruits.remove("Mango"); // Remove by value
  fruits.removeAt(0); // Remove by index
  print("After removing: $fruits");

  // 7. Checking properties
  print("Length: ${fruits.length}");
  print("Is Empty: ${fruits.isEmpty}");
  print("Contains 'Apple': ${fruits.contains('Apple')}");

  // 8. Iterating over a list
  print("\nIterating with for loop:");
  for (int i = 0; i < fruits.length; i++) {
    print(fruits[i]);
  }

  print("\nIterating with for-in loop:");
  for (var fruit in fruits) {
    print(fruit);
  }

  print("\nIterating with forEach:");
  fruits.forEach((fruit) => print(fruit));

  // 9. Using map() to transform list
  List<String> upperCaseFruits = fruits.map((f) => f.toUpperCase()).toList();
  print("\nUppercase fruits: $upperCaseFruits");

  // 10. Fixed-length List
  List<int> fixedList = List.filled(5, 0); // length 5, all values 0
  fixedList[2] = 10;
  print("\nFixed List: $fixedList");

  // 11. Filtering a list with where()
  List<String> longNames = fruits.where((f) => f.length > 6).toList();
  print("\nFruits with name length > 6: $longNames");

  // 12. Sorting a list
  fruits.sort();
  print("\nSorted fruits: $fruits");

  // 13. Reversing a list
  List<String> reversedFruits = fruits.reversed.toList();
  print("Reversed fruits: $reversedFruits");

  List<int>mylist = [1,2,3,4,5];
  print(mylist);
  mylist.replaceRange(0,4, [9,7,6,5]);
  print(mylist);

  mylist.removeRange(2,4);
  print(mylist);

  print(mylist.first);
  print(mylist.last);
}
