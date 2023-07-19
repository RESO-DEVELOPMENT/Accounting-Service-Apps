import 'package:accounting_service/apis/misa_api.dart';
import 'package:accounting_service/models/misa_connect/misa_connect_response_model.dart';
import 'package:accounting_service/view_models/base_view_model.dart';
import 'package:accounting_service/views/widgets/other_dialogs/dialog.dart';

class MisaViewModel extends BaseViewModel {
  late MisaResponseModel misaConnectResponseModel = MisaResponseModel();
  MisaApi misaApi = MisaApi();
  MisaViewModel() {
    // connectToMisa();
  }
}
