import 'package:bloc/bloc.dart';
import 'package:navigator_with_bloc/bloc/navigator_event.dart';
import 'package:navigator_with_bloc/bloc/navigator_state.dart';
// import '../bloc/navigator_bloc.dart';


class NavigatorBloc extends Bloc<NavigatorEvent, NavigatorState> {


  NavigatorBloc(NavigatorState initialState) : super(initialState);
  @override
  NavigatorState get initialState => NavigatorState(NavPage.screen_one);
  @override

  
  Stream<NavigatorState> mapEventToState(NavigatorEvent event) async* {
    if (event is NavigateTo) {
      if (event.destination != state.selectedPage) {
        yield NavigatorState(event.destination);
      }
    }
  }
}