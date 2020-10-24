import 'package:flutter/material.dart';
import 'package:tab_signup_login/screens/vehicle_categories/vehicle_button.dart';

class VehicleCategoryScreen extends StatefulWidget {

  @override
  _VehicleCategoryScreenState createState() => _VehicleCategoryScreenState();

}


class _VehicleCategoryScreenState extends State<VehicleCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories'),
        backgroundColor: Colors.amber,
      ),

      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        padding: EdgeInsets.all(10),
        children: <Widget>[

          VehicleButton("Car", 'assets/vehicles/car.jpg', () => _onButtonClick("car") ),
          VehicleButton("Van", 'assets/vehicles/van.png', () => _onButtonClick("van")),
          VehicleButton("Three wheel", 'assets/vehicles/threeWheel.jpg', () => _onButtonClick("Three wheel")),
          VehicleButton("Motor Bike", 'assets/vehicles/motorBike.png', () => _onButtonClick("Motor bike")),
          VehicleButton("Lorry", 'assets/vehicles/lorry.jpg', () => _onButtonClick("Lorry")),
          VehicleButton("Bus", 'assets/vehicles/bus.jpg', () => _onButtonClick("Bus")),

        ],),
    );
  }

  _onButtonClick(String type) {
    debugPrint(type);
  }
}