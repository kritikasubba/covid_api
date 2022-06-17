import 'package:covid_api/provider/covid_provider.dart';
import 'package:covid_api/views/views.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

class CovidPage extends StatefulWidget {
  const CovidPage({Key? key}) : super(key: key);

  @override
  State<CovidPage> createState() => _CovidPageState();
}

class _CovidPageState extends State<CovidPage> {
  @override

  void initState() {
   Future.microtask(() {
    Provider.of<CovidProvider>(context, listen: false).getPost();
   });
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:const  Text("Covid Details"),
      ),
      body: Consumer<CovidProvider>(
        builder: (context, value, child) {
          return ListView.builder(itemBuilder: (context, index) {
            return Column(
              children: [
Text(covidDetail[index].country ?? ""),
Text(covidDetail[index].timeline!.date.toString())
              ],
            );
          });
        },
      ),
    );
    
  }
}