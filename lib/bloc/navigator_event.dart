import 'navigator_state.dart';
import '../bloc/navigator_state.dart';

abstract class NavigatorEvent {
  const NavigatorEvent();
}

class NavigateTo extends NavigatorEvent {
  final NavPage destination;

  const NavigateTo(this.destination);
}