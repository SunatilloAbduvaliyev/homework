
class UserModel{
  String username;
  String name;
  String state;
  String avatarUrl;
  UserModel({
  required this.username,
    required this.name,
    required this.state,
    required this.avatarUrl,
  });

  factory UserModel.fromJson(Map<String, dynamic> json){
    return UserModel(
      username: json['username'] as String? ?? '',
      name: json['name'] as String? ?? '',
      state: json['state'] as String? ?? '',
      avatarUrl: json['avatar_url'] as String? ?? '',
    );
  }
}