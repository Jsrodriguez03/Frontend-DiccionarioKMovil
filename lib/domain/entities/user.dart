class User {
  final String id;
  final String email;
  final String userName;
  final String fullName;
  final String rol;
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
  final String? logo;
  DataUser({this.logo});
}
