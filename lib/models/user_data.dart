class UserData {
  UserData({
    required this.name,
    required this.patr,
    required this.surname,
  });

  String name;
  String patr;
  String surname;

  factory UserData.fromJson(final Map<String, dynamic> json) => UserData(
        surname: json['surname'],
        name: json['name'],
        patr: json['patr'],
      );
}
