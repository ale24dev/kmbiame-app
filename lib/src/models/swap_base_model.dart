// This file is "main.dart"
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kmbiame/src/models/user_base_model.dart';

// required: associates our `main.dart` with the code generated by Freezed
part 'swap_base_model.freezed.dart';
// optional: Since our Person class is serializable, we must add this line.
// But if Person was not serializable, we could skip it.
part 'swap_base_model.g.dart';

///Clase encargada de controlar los intercambios de los usuarios.
@freezed
class SwapBaseModel with _$SwapBaseModel {
  @JsonSerializable(explicitToJson: true)
  const factory SwapBaseModel(
    bool active,
    int idSwap,
    DateTime date, {
    String? description,
    String? adress,
    UserBaseModel? user,
  }) = _SwapBaseModel;

  factory SwapBaseModel.fromJson(Map<String, Object?> json) =>
      _$SwapBaseModelFromJson(json);
}
