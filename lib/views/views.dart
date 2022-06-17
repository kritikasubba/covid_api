import 'package:covid_api/model/covid.dart';
import 'package:dio/dio.dart';

List<Covid> covidDetail = [];

Future<List<Covid>> fetchData() async {

  var dio = Dio();
   final response = await dio.get('https://disease.sh/v3/covid-19/vaccine/coverage/countries?lastdays=1');

   if(response.statusCode == 200) {
     

     List<dynamic> values = [];
values = response.data;
     if(values.isNotEmpty) {
      for(int i = 0; i<values.length; i++) {
        if(values[i]!= null) {
          covidDetail.add(Covid.fromJson(values[i]));
        }
      }
     
     }
      return covidDetail;
     
     }
     else {
      throw Exception('Unsucessfull');

   }
}