import 'package:pet_care/gateways/Injections.dart';
import 'package:pet_care/gateways/controllers/DataStructures/LoginDS.dart';
import 'package:pet_care/gateways/controllers/interfaces/LoginInputBoundaryI.dart';
import 'package:pet_care/gateways/dataAccessInterfaces/IAuth.dart';
import 'package:pet_care/gateways/presenters/dataStructures/LoginPresentDS.dart';
import 'package:pet_care/gateways/presenters/interfaces/IPresentLogin.dart';

class LoginUseCase implements LoginInputBoundaryI{
  LoginDS _ds;
  IAuth _auth;
  IPresentLogin _ipresent;
  LoginPresentDS _presentDS;

  LoginUseCase(){
    _auth=locator<IAuth>();
    _ipresent=locator<IPresentLogin>();
  }

  @override
  void getDS(LoginDS ds) {
    this._ds=ds;
    startUseCase();
  }

  void startUseCase() async{
    String email=_ds.email;
    String password=_ds.password;

    String userId=await _auth.signIn(email, password);
    if(userId!=null){
      print(userId);
      this._presentDS=LoginPresentDS(true);
      _ipresent.pushDS(this._presentDS);
    }

  }


}