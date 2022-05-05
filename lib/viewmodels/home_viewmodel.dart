import 'package:flutter/material.dart';
import 'package:moni/models/moni_data_model.dart';
import 'package:moni/utils/utils.dart';

class HomeViewmodel with ChangeNotifier {
  HomeViewmodel() {
    getLoanData();
  }

  ApiDataResponse<Data> _loanResponse = ApiDataResponse.idle();

  ApiDataResponse<Data> get loanResponse => _loanResponse;

  set loanResponse(ApiDataResponse<Data> loanResponse) {
    _loanResponse = loanResponse;
    notifyListeners();
  }

  getLoanData() async {
    loanResponse = ApiDataResponse.loading("loading");
    try {
      var response = await ApiClient().get();

      loanResponse = ApiDataResponse.completed(moniFromJson(response).data);
    } catch (e) {
      loanResponse = ApiDataResponse.error(e.toString());
    }
  }
}
