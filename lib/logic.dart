class Logic {
  static String? username;
  static String? password;
  
  void setUsername(String user)=>username = user;
  
  void setPassword(String pw)=>password = pw;

 
  bool login(String user, String pw){
    if(username == null || password == null)
      return false;

    if(user== username && pw == password){
      return true;
    }
      return false;

  }

}