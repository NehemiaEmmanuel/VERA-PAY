import '../../../core/app_export.dart';

/// This class is used in the [insurancesection_item_widget] screen.
class InsurancesectionItemModel {
  InsurancesectionItemModel({
    this.insuranceImage,
    this.id,
  }) {
    insuranceImage = insuranceImage ?? ImageConstant.imgFrame6;
    id = id ?? "";
  }

  String? insuranceImage;

  String? id;
}
