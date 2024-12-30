```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>?> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      print('Error: HTTP status code ${response.statusCode}');
      return null; // Or throw a custom exception
    }
  } catch (e) {
    print('Error: $e');
    return null; // Or throw a custom exception
  }
}

void main() async {
  final data = await fetchData();
  if (data != null) {
    print(data['key']);
  } else {
    print('Failed to fetch data.');
  }
}
```