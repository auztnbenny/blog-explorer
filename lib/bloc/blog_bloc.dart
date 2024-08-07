// lib/blocs/blog_bloc.dart

import 'package:flutter_bloc/flutter_bloc.dart';
import 'blog_event.dart';
import 'blog_state.dart';
import '../services/api_service.dart';

class BlogBloc extends Bloc<BlogEvent, BlogState> {
  final ApiService apiService;

  BlogBloc(this.apiService) : super(BlogInitial());

  @override
  Stream<BlogState> mapEventToState(BlogEvent event) async* {
    if (event is FetchBlogs) {
      yield BlogLoading();
      try {
        final blogs = await apiService.fetchBlogs();
        yield BlogLoaded(blogs: blogs); // Use named parameter
      } catch (e) {
        yield BlogError(message: e.toString()); // Use named parameter
      }
    }
  }
}
