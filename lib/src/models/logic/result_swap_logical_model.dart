// This file is "main.dart"
// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kmbiame/src/models/swap_base_model.dart';
import 'package:kmbiame/src/models/logic/articles_logical_model.dart';

// required: associates our `main.dart` with the code generated by Freezed
part 'result_swap_logical_model.freezed.dart';
// optional: Since our Person class is serializable, we must add this line.
// But if Person was not serializable, we could skip it.
part 'result_swap_logical_model.g.dart';

///Clase encargada de manejar la informacion resultante de los intercambios.
@freezed
class ResultSwapLogicalModel with _$ResultSwapLogicalModel {
  @JsonSerializable(explicitToJson: true)
  const factory ResultSwapLogicalModel(SwapBaseModel swapBaseModel,
      ArticlesLogicalModel articlesLogicalModel) = _ResultSwapLogicalModel;

  factory ResultSwapLogicalModel.fromJson(Map<String, Object?> json) =>
      _$ResultSwapLogicalModelFromJson(json);
}