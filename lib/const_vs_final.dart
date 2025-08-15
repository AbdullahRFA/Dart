// Dart program to demonstrate the difference between final and const
void main() {
  // ===== FINAL =====
  // final variables can only be set once, but at runtime.
  final currentTime = DateTime.now(); // Value decided at runtime
  print("Final variable (runtime constant): $currentTime");

  // Trying to reassign will cause an error
  // currentTime = DateTime.now(); // ❌ ERROR: final variable can only be set once

  // ===== CONST =====
  // const variables must be compile-time constants
  const piValue = 3.1416; // Value decided at compile time
  print("Const variable (compile-time constant): $piValue");

  // Trying to assign runtime value to const will cause error
  // const myTime = DateTime.now(); // ❌ ERROR: not a compile-time constant

  // ===== FINAL vs CONST inside collections =====
  final finalList = [1, 2, 3]; // list reference can't change, but contents can
  const constList = [10, 20, 30]; // list and contents are fixed forever

  finalList.add(4); // ✅ allowed
  print("Final list after adding: $finalList");

  // constList.add(40); // ❌ ERROR: cannot modify const list

  // ===== TOP-LEVEL CONST =====
  const fixedMap = {"country": "Bangladesh", "capital": "Dhaka"};
  print("Const map: $fixedMap");

  // fixedMap["capital"] = "Chittagong"; // ❌ ERROR: cannot modify const map

  // ===== FINAL with dynamic runtime data =====
  final randomValue = DateTime.now().millisecondsSinceEpoch % 100;
  print("Random runtime final value: $randomValue");
}