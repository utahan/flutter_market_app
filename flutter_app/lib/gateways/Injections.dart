import 'package:get_it/get_it.dart';
import 'package:pet_care/NavigationService.dart';
import 'package:pet_care/database/Auth.dart';
import 'package:pet_care/gateways/dataAccessInterfaces/IAuth.dart';
import 'package:pet_care/gateways/controllers/interfaces/LoginInputBoundaryI.dart';
import 'package:pet_care/gateways/presenters/LoginPresenter.dart';
import 'package:pet_care/gateways/presenters/interfaces/IPresentLogin.dart';
import 'package:pet_care/gateways/presenters/interfaces/IUiViewPosts.dart';
import 'package:pet_care/main.dart';
import 'package:pet_care/ui/pages/LoginPage.dart';
import 'package:pet_care/ui/pages/ViewPosts2.dart';
import 'package:pet_care/ui/pages/ViewPosts3.dart';
import 'package:pet_care/usecases/LoginUseCase.dart';

GetIt locator=GetIt.instance;

void setupLocator(){
  locator.registerLazySingleton(() => NavigationService());

  locator.registerFactory<LoginInputBoundaryI>( ()=>LoginUseCase());
  locator.registerFactory<IAuth>( ()=>Auth());
  locator.registerFactory<IPresentLogin>(() => LoginPresenter());


  locator.registerLazySingleton(() => LoginPage());
  locator.registerLazySingleton<IUiLoginPage>(()=> locator<LoginPage>());
}