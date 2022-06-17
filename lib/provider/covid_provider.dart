import 'package:covid_api/model/covid.dart';
import 'package:covid_api/views/views.dart';
import 'package:flutter/cupertino.dart';

class CovidProvider extends ChangeNotifier{


Covid? _covidDetails;

Covid? get covidWorld{
  return _covidDetails;
}

set getDetails(Covid details) {
  _covidDetails = details;
}

getPost() async {
  covidDetail = await fetchData();
}


}