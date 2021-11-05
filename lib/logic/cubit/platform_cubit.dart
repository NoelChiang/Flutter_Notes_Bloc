import 'package:bloc/bloc.dart';
import 'package:state_manage_sample/data/game_model.dart';

part 'platform_state.dart';

class PlatformCubit extends Cubit<PlatformState> {
  PlatformCubit() : super(PlatformState(value: GamePlatform.all));

  void toggleFilterPlatformNS() => emit(
      PlatformState(value: state.value != GamePlatform.ns ? GamePlatform.ns : GamePlatform.all));
  void toggleFilterPlatformPS4() => emit(
      PlatformState(value: state.value != GamePlatform.ps4 ? GamePlatform.ps4 : GamePlatform.all));
  void toggleFilterPlatformPS5() => emit(
      PlatformState(value: state.value != GamePlatform.ps5 ? GamePlatform.ps5 : GamePlatform.all));
}
