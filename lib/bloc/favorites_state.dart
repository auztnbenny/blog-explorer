part of 'favorites_bloc.dart';

abstract class FavoritesState extends Equatable {
  @override
  List<Object> get props => [];
}

class FavoritesInitial extends FavoritesState {}

class FavoriteAdded extends FavoritesState {
  final dynamic blog;

  FavoriteAdded(this.blog);

  @override
  List<Object> get props => [blog];
}

class FavoriteRemoved extends FavoritesState {
  final dynamic blog;

  FavoriteRemoved(this.blog);

  @override
  List<Object> get props => [blog];
}

class FavoritesLoaded extends FavoritesState {
  final List blogs;

  FavoritesLoaded(this.blogs);

  @override
  List<Object> get props => [blogs];
}
