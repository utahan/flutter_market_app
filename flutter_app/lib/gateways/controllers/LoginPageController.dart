import 'package:pet_care/gateways/Injections.dart';
import 'package:pet_care/gateways/controllers/DataStructures/LoginDS.dart';
import 'package:pet_care/gateways/controllers/interfaces/LoginInputBoundaryI.dart';

class LoginPageController {
  LoginDS _loginDS;
  LoginInputBoundaryI interface;

  LoginPageController(String email,String password){
    this._loginDS=LoginDS(email, password);
    interface=locator<LoginInputBoundaryI>();
  }

  void startController(){
    interface.getDS(_loginDS);
  }


}