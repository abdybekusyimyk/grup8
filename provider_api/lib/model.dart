class Model {
  int userId, id;
  String title, body;

  Model(
      {required this.userId,
      required this.id,
      required this.title,
      required this.body});

  factory Model.fromJson(Map<String, dynamic> json) {
    return Model(
        userId: json['userId'] ?? 0,
        id: json['id'] ?? 0,
        title: json['title'] ?? "",
        body: json['body'] ?? "");
  }
}
