// ❌ BAD: Hardcoded behavior, no abstraction.
class Logger {
  void log(String message) {
    print("LOGGING START");
    print(message);
    print("LOGGING END");
  }
}
