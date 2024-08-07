part of 'favorites_bloc.dart';

abstract class FavoritesEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class AddFavorite extends FavoritesEvent {
  final dynamic blog;

  AddFavorite(this.blog);

  @override
  List<Object> get props => [blog];
}

class RemoveFavorite extends FavoritesEvent {
  final dynamic blog;

  RemoveFavorite(this.blog);

  @override
  List<Object> get props => [blog];
}

class FetchFavorites extends FavoritesEvent {}
