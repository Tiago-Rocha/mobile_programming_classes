// BEFORE ❌
// The class creates its own dependency — hard to test or replace.
class EmailServiceBad {
  void send(String message) => print("Sending email: $message");
}

class UserNotifierBad {
  void notifyUser(String message) {
    final emailService = EmailServiceBad(); // hardcoded
    emailService.send(message);
  }
}

// AFTER ✅
// Use dependency injection to make it testable and flexible.
abstract class NotificationService {
  void send(String message);
}

class EmailService implements NotificationService {
  @override
  void send(String message) => print("Sending email: $message");
}

class UserNotifier {
  final NotificationService service;
  UserNotifier(this.service);

  void notifyUser(String message) {
    service.send(message);
  }
}

// Example usage
void main() {
  final notifier = UserNotifier(EmailService());
  notifier.notifyUser("Welcome to the platform!");
}
