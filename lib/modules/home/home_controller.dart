class HomeController {
  String userName = 'Usuário';

  void updateUserName(String newName) {
    userName = newName;
    // Em um cenário real, você notificaria os ouvintes (ex: com setState, notifyListeners, emit)
  }
}