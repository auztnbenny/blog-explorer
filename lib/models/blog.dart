// lib/models/blog.dart

class Blog {
  final String title;
  final String content;

  Blog({required this.title, required this.content});

  // Factory constructor to create a Blog instance from JSON
  factory Blog.fromJson(Map<String, dynamic> json) {
    return Blog(
      title: json['title'] as String,
      content: json['content'] as String,
    );
  }

  // Method to convert Blog instance to JSON (optional, for other uses)
  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'content': content,
    };
  }
}
