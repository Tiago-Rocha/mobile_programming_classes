import 'services/user_manager.dart';

void main() {
  final userManager = UserManager();
  userManager.register("Tiago");
  userManager.assignTask("Tiago", "Prepare slides");
  userManager.assignTask("Tiago", "Review code smells");

  userManager.showAllUsers();
}
