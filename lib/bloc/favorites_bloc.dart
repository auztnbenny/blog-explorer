import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import 'package:hive/hive.dart';

part 'favorites_event.dart';
part 'favorites_state.dart';

class FavoritesBloc extends Bloc<FavoritesEvent, FavoritesState> {
  FavoritesBloc() : super(FavoritesInitial()) {
    on<AddFavorite>((event, emit) async {
      var box = await Hive.openBox('favorites');
      box.add(event.blog);
      emit(FavoriteAdded(event.blog));
    });

    on<RemoveFavorite>((event, emit) async {
      var box = await Hive.openBox('favorites');
      box.delete(event.blog);
      emit(FavoriteRemoved(event.blog));
    });

    on<FetchFavorites>((event, emit) async {
      var box = await Hive.openBox('favorites');
      emit(FavoritesLoaded(box.values.toList()));
    });
  }
}
