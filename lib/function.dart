// Dart program demonstrating different types of functions
void main() {
  // 1. Simple function (no parameters, no return value)
  sayHello();

  // 2. Function with parameters (positional)
  greet("Abdullah");

  // 3. Function with parameters and return value
  int sumResult = add(5, 7);
  print("Sum: $sumResult");

  // 4. Optional positional parameters
  printFullName("Abdullah", "Nazmus");
  printFullName("Abdullah"); // lastName is optional

  // 5. Named parameters
  printDetails(name: "Sakib", age: 25);

  // 6. Named parameters with default values
  printProfile(name: "Akash");
  printProfile(name: "Rafi", country: "Bangladesh");

  // 7. Arrow function (short syntax)
  print("Square of 5 is ${square(5)}");

  // 8. Anonymous function (no name, stored in a variable)
  var multiply = (int a, int b) {
    return a * b;
  };
  print("Multiplication: ${multiply(4, 3)}");

  // 9. Higher-order function (takes function as parameter)
  applyOperation(10, 5, add);
  applyOperation(10, 5, subtract);

  // 10. Recursive function (calls itself)
  print("Factorial of 5 is ${factorial(5)}");
}

// ---------------- Function Definitions ----------------

// 1. Simple function
void sayHello() {
  print("Hello, Dart!");
}

// 2. Function with parameters
void greet(String name) {
  print("Hello, $name!");
}

// 3. Function with return value
int add(int a, int b) {
  return a + b;
}

// Extra function for higher-order example
int subtract(int a, int b) => a - b;

// 4. Optional positional parameters
void printFullName(String firstName, [String? lastName]) {
  print("Full Name: $firstName ${lastName ?? ''}");
}

// 5. Named parameters
void printDetails({required String name, required int age}) {
  print("Name: $name, Age: $age");
}

// 6. Named parameters with default values
void printProfile({required String name, String country = "Unknown"}) {
  print("Name: $name, Country: $country");
}

// 7. Arrow function
int square(int number) => number * number;

// 9. Higher-order function
void applyOperation(int a, int b, int Function(int, int) operation) {
  print("Result: ${operation(a, b)}");
}

// 10. Recursive function
int factorial(int n) {
  if (n <= 1) return 1;
  return n * factorial(n - 1);
}