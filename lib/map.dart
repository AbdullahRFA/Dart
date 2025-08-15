// Dart program demonstrating Map features with examples
void main() {
  // 1. Creating a Map (Key-Value pairs)
  Map<String, String> countryCapital = {
    "Bangladesh": "Dhaka",
    "India": "New Delhi",
    "Nepal": "Kathmandu"
  };
  print("Country-Capital Map: $countryCapital");

  // 2. Accessing value by key
  print("Capital of Bangladesh: ${countryCapital["Bangladesh"]}");

  // 3. Adding a new key-value pair
  countryCapital["Bhutan"] = "Thimphu";
  print("After adding Bhutan: $countryCapital");

  // 4. Updating value for existing key
  countryCapital["India"] = "Delhi";
  print("After updating India: $countryCapital");

  // 5. Adding multiple entries at once
  countryCapital.addAll({
    "Sri Lanka": "Colombo",
    "Pakistan": "Islamabad"
  });
  print("After adding multiple: $countryCapital");

  // 6. Checking if a key exists
  print("Has key 'Nepal'? ${countryCapital.containsKey('Nepal')}");
  print("Has value 'Dhaka'? ${countryCapital.containsValue('Dhaka')}");

  // 7. Removing entries
  countryCapital.remove("Nepal");
  print("After removing Nepal: $countryCapital");

  // 8. Getting keys and values separately
  print("All Keys: ${countryCapital.keys}");
  print("All Values: ${countryCapital.values}");

  // 9. Iterating through Map
  print("\nIterating with forEach:");
  countryCapital.forEach((country, capital) {
    print("$country → $capital");
  });

  print("\nIterating with for-in loop:");
  for (var entry in countryCapital.entries) {
    print("${entry.key} → ${entry.value}");
  }

  // 10. Map length and emptiness check
  print("\nMap length: ${countryCapital.length}");
  print("Is map empty? ${countryCapital.isEmpty}");

  // 11. Filtering a map (keep only countries with capital length > 6)
  Map<String, String> longCapitals = Map.fromEntries(
    countryCapital.entries.where((entry) => entry.value.length > 6),
  );
  print("\nCapitals with name length > 6: $longCapitals");

  // 12. Mapping/Transforming values
  Map<String, String> upperCaseMap = countryCapital.map(
        (key, value) => MapEntry(key, value.toUpperCase()),
  );
  print("\nCapitals in uppercase: $upperCaseMap");

  // 13. Clearing the map
  countryCapital.clear();
  print("\nAfter clearing: $countryCapital");
}