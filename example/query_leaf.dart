import 'package:dartnissanconnect/dartnissanconnect.dart';
import 'secret.dart';

main() {
  NissanConnectSession session = new NissanConnectSession(debug: false);

  session.login(username: username, password: password).then((vehicle) {
    //print(vehicle.nickname);
    //print(vehicle.modelName);
    print(vehicle.vin);
    //vehicle.requestLocation().then((loc) {
    //        print(loc.latitude);
    //        print(loc.longitude);
    //});
    vehicle.requestBatteryStatusRefresh();
    vehicle.requestBatteryStatus().then((batteryStatus) {
            print(batteryStatus.dateTime);
            print(batteryStatus.isConnected);
            print(batteryStatus.isCharging);
            print(batteryStatus.batteryPercentage);
            print(batteryStatus.cruisingRangeAcOnKm);
    });
  });
}



