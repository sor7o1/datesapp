part of 'home_bloc.dart';

sealed class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

class ChangePage extends HomeEvent {
  final int pageIndex;
  const ChangePage(this.pageIndex);

  @override
  List<Object> get props => [pageIndex];
}