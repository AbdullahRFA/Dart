void main() {
  // 1. int (whole numbers)
  int age = 25;
  print("Age: $age (Type: ${age.runtimeType})");

  // 2. double (decimal numbers)
  double height = 5.9;
  print("Height: $height (Type: ${height.runtimeType})");

  // 3. num (can hold both int and double)
  num score = 95; // initially int
  print("Score: $score (Type: ${score.runtimeType})");
  score = 95.5; // now double
  print("Score: $score (Type: ${score.runtimeType})");

  // 4. String (text)
  String name = "Abdullah";
  print("Name: $name (Type: ${name.runtimeType})");

  // 5. bool (true/false)
  bool isLoggedIn = true;
  print("Is Logged In: $isLoggedIn (Type: ${isLoggedIn.runtimeType})");

  // 6. var (type inferred at runtime, cannot change type later)
  var city = "Dhaka"; // inferred as String
  print("City: $city (Type: ${city.runtimeType})");
  // city = 123; // ❌ Error: can't change type

  // 7. dynamic (type can change at runtime)
  dynamic anything = "Hello";
  print("Dynamic Value: $anything (Type: ${anything.runtimeType})");
  anything = 123; // now an int
  print("Dynamic Value: $anything (Type: ${anything.runtimeType})");

  // 8. final (value cannot be changed once set, runtime constant)
  final country = "Bangladesh";
  print("Country: $country (Type: ${country.runtimeType})");

  // 9. const (compile-time constant)
  const piValue = 3.1416;
  print("PI Value: $piValue (Type: ${piValue.runtimeType})");

  // 10. List (ordered collection)
  List<String> fruits = ["Apple", "Mango", "Banana"];
  print("Fruits: $fruits (Type: ${fruits.runtimeType})");

  // 11. Set (unordered unique collection)
  Set<int> numbers = {1, 2, 3, 3}; // duplicate ignored
  print("Numbers Set: $numbers (Type: ${numbers.runtimeType})");

  // 12. Map (key-value pairs)
  Map<String, String> capitalCities = {
    "Bangladesh": "Dhaka",
    "India": "New Delhi"
  };
  print("Capital Cities: $capitalCities (Type: ${capitalCities.runtimeType})");

  // 13. Runes (Unicode characters)
  Runes heart = Runes('\u2665');
  print("Heart Symbol: ${String.fromCharCodes(heart)} (Type: ${heart.runtimeType})");

  // 14. Symbol (used in reflection)
  Symbol sym = #mySymbol;
  print("Symbol: $sym (Type: ${sym.runtimeType})");

  // 15. Null safety demonstration
  String? nullableName = null; // can be null
  print("Nullable Name: $nullableName (Type: ${nullableName.runtimeType})");

  // 16. Object (base type of all classes in Dart)
  Object myObject = "I am an object";
  print("My Object: $myObject (Type: ${myObject.runtimeType})");
}