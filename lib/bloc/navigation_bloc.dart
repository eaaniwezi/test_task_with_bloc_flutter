import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: constant_identifier_names
enum Screen { screen_one, screen_two, screen_three }

class NavigationBloc extends Bloc<int, Screen> {
  NavigationBloc(Screen initialState) : super(Screen.screen_one);

  Screen get initialState => Screen.screen_one;
  @override
  Stream<Screen> mapEventToState(int event) async* {
    switch (event) {
      case 0:
        yield Screen.screen_one;
        break;
      case 1:
        yield Screen.screen_two;
        break;
      case 2:
        yield Screen.screen_three;
        break;
    }
  }
}
