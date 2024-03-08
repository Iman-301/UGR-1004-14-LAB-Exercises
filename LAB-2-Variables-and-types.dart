

import 'dart:io';
void main(){
  const speedOfLight=299792458;
  print('Enter distance in meter: ');
  String distanceInput=stdin.readLineSync()!;
  double distance=double.parse(distanceInput);
  double time=distance/speedOfLight;
  print(time);


}