/// Example: Old Phone vs. Modern Phone using Dart classes, abstract classes, and interfaces

/// Abstract class for SIM card functionality
abstract class SimCard {
  void makeCall(String number);
  void sendText(String number, String message);
}

/// Concrete SIM card implementations
class VodafoneSim implements SimCard {
  @override
  void makeCall(String number) {
    print('Calling $number using Vodafone network...');
  }

  @override
  void sendText(String number, String message) {
    print('Sending "$message" to $number using Vodafone network...');
  }
}

class OrangeSim implements SimCard {
  @override
  void makeCall(String number) {
    print('Calling $number using Orange network...');
  }

  @override
  void sendText(String number, String message) {
    print('Sending "$message" to $number using Orange network...');
  }
}

/// OldPhone: Only supports SIM card features (calls and texts)
class OldPhone {
  final SimCard simCard;

  OldPhone(this.simCard);

  void call(String number) {
    simCard.makeCall(number);
  }

  void text(String number, String message) {
    simCard.sendText(number, message);
  }
}

/// Interfaces for extra features
abstract class Camera {
  void takePhoto();
}

abstract class MusicPlayer {
  void playMusic(String song);
}

/// IPhone: Modern phone with camera and music player features
class IPhone implements Camera, MusicPlayer {
  final SimCard simCard;

  IPhone(this.simCard);

  void call(String number) {
    simCard.makeCall(number);
  }

  void text(String number, String message) {
    simCard.sendText(number, message);
  }

  @override
  void takePhoto() {
    print('iPhone: Photo taken!');
  }

  @override
  void playMusic(String song) {
    print('iPhone: Playing $song...');
  }
}

/// AndroidPhone: Another modern phone with camera and music player features
class AndroidPhone implements Camera, MusicPlayer {
  final SimCard simCard;

  AndroidPhone(this.simCard);

  void call(String number) {
    simCard.makeCall(number);
  }

  void text(String number, String message) {
    simCard.sendText(number, message);
  }

  @override
  void takePhoto() {
    print('Android: Photo taken!');
  }

  @override
  void playMusic(String song) {
    print('Android: Playing $song...');
  }
}
