class LoginDS{
  String email;
  String password;

  LoginDS(String email,String password){
    this.password=password.trim();
    this.email=email.trim();
  }
}