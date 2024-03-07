class Note {
  Note({
    this.id,
    required this.title,
    required this.description,
    required this.color,
  });

  final String? id;
  final String title;
  final String description;
  final String color;

  factory Note.fromJson(Map<String, dynamic> json) {
    return Note(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      color: json['color'],
    );
  }
}