part of 'nav_state_cubit.dart';

 class NavStateState extends Equatable {
 final String dateOfBirth;
 final bool wasSelected;
  const NavStateState({required this.dateOfBirth, required this.wasSelected });

  @override
  List<Object> get props => [wasSelected, dateOfBirth];
}

// class NavStateInitial extends NavStateState {}
