part of 'home_bloc.dart';

sealed class HomeState extends Equatable {
  const HomeState();
  @override
  List<Object> get props => [];
}

final class HomeInitial extends HomeState {}

final class HomePageChangedState extends HomeState {
  final int pageIndex;

  const HomePageChangedState(this.pageIndex);

  @override
  List<Object> get props => [pageIndex];
}