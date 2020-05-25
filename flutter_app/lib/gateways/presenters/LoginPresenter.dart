import 'package:pet_care/gateways/Injections.dart';
import 'package:pet_care/gateways/presenters/dataStructures/LoginPresentDS.dart';
import 'package:pet_care/gateways/presenters/interfaces/IPresentLogin.dart';
import 'package:pet_care/gateways/presenters/interfaces/IUiViewPosts.dart';
import 'package:pet_care/gateways/presenters/viewmodels/ViewLoginModel.dart';

class LoginPresenter implements IPresentLogin{
  LoginPresentDS _presentDS;
  ViewLoginModel _viewmodel;
  IUiLoginPage _interface;

  LoginPresenter(){
    _interface=locator<IUiLoginPage>();
  }

  @override
  void pushDS(LoginPresentDS ds) {
    _presentDS=ds;
    setViewModel(ds);
    _interface.getViewModel(this._viewmodel);
  }

  void setViewModel(LoginPresentDS ds){
    _viewmodel=ViewLoginModel(ds.login);
  }


}