class User {
  final String id;
  String email;
  String userName;
  String fullName;
  String rol;
  final DataUser? dataUser;

  User({
    this.id = "",
    this.email = "",
    this.userName = "",
    this.fullName = "",
    this.rol = "",
    this.dataUser,
  });
}

class DataUser {
  String? logo;
  DataUser({this.logo});
}
