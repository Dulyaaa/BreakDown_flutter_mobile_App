import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VehicleButton extends StatelessWidget {

  final String vehicleType, vehicleImage;

  final Function onButtonClick;

  VehicleButton(this.vehicleType, this.vehicleImage, this.onButtonClick);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return  InkWell(
      onTap: onButtonClick,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(vehicleImage))
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),

          child: Stack(

            alignment:Alignment(0.15, 1.01),

            children: <Widget>[

              Container(
                width: 500,
                decoration: BoxDecoration(
                  color: Colors.black45,
                ),
                child: Text(
                  vehicleType,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}