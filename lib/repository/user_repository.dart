

class UserRepository {
  UserRepository();


  Future<bool> loginWithCredentials() async {

    bool result = await Future.delayed(Duration(seconds: 3));

    return result;
  }
}