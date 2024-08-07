// blog_state.dart

import '../models/blog.dart'; // Ensure this import is correct

abstract class BlogState {}

class BlogInitial extends BlogState {}

class BlogLoading extends BlogState {}

class BlogLoaded extends BlogState {
  final List<Blog> blogs;

  BlogLoaded({required this.blogs});
}

class BlogError extends BlogState {
  final String message;

  BlogError({required this.message});
}
