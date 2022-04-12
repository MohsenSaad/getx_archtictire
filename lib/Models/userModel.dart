class UserModel {
  UserModel({
    this.email,
    this.name,

  });

  String email;
  String name;


  UserModel copyWith({
    String email,
    String name,

  }) =>
      UserModel(
        email:  this.email,
        name: this.name
      );
}
