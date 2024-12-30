# Improper Exception Handling in Asynchronous Dart Code

This repository demonstrates a common error in asynchronous Dart code: improper exception handling. The `bug.dart` file contains code that fetches data from a network API.  The `try-catch` block handles exceptions during the network request but rethrows the exception.  This is not ideal. 

The `bugSolution.dart` file shows the improved version with comprehensive error handling.  Proper error handling is crucial for robust applications. The goal is to prevent unexpected app crashes and enhance user experience.