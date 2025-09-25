import 'package:todo_app/class5/phone.dart';

void main() {
  SimCard vodafoneSim = VodafoneSim();
  SimCard orangeSim = OrangeSim();
  IPhone iphoneWithVodafone = IPhone(vodafoneSim);
  IPhone iphoneWithOrange = IPhone(orangeSim);
  AndroidPhone androidPhone = AndroidPhone(vodafoneSim);

  iphoneWithVodafone.call('987-654-3210');
  iphoneWithOrange.call('987-654-3210');

  iphoneWithVodafone.text('987-654-3210', 'Hello from iPhone!');
  iphoneWithOrange.text('987-654-3210', 'Hello from iPhone!');

  iphoneWithVodafone.takePhoto();
  iphoneWithVodafone.playMusic('Song A');

  androidPhone.call('555-555-5555');
  androidPhone.text('555-555-5555', 'Hello from Android!');
  androidPhone.takePhoto();
  androidPhone.playMusic('Song B');
}
