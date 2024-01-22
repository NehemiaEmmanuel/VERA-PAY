import '../../../core/app_export.dart';

/// This class is used in the [electricitysection_item_widget] screen.
class ElectricitysectionItemModel {
  ElectricitysectionItemModel({
    this.electricity,
    this.electricity1,
    this.id,
  }) {
    electricity = electricity ?? ImageConstant.imgFrameBlack90041x44;
    electricity1 = electricity1 ?? "Electricity";
    id = id ?? "";
  }

  String? electricity;

  String? electricity1;

  String? id;
}
