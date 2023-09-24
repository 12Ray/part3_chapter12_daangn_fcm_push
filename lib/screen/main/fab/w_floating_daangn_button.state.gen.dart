import 'package:freezed_annotation/freezed_annotation.dart';

part 'w_floating_daangn_button.state.gen.freezed.dart';

@freezed
class FloatingButtonState with _$FloatingButtonState {
  const factory FloatingButtonState(
      final bool isExpanded,
      final bool isHided,
      final bool isSmall
      ) = _FloatingButtonState;
}