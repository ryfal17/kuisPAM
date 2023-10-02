import 'package:flutter/material.dart';
import 'package:pamkuis/disease_data.dart';

class HalamanDetail extends StatelessWidget {
  final Diseases plant;
  const HalamanDetail({super.key, required this.plant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Detail"),
      ),
      body: ListView(
        children: [
          Container(
              height: MediaQuery.of(context).size.height / 4,
              width: MediaQuery.of(context).size.width / 4,
              child: Image.network(plant.imgUrls)),
          Text(plant.id,style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600, color: Colors.blueGrey),),
          SizedBox(height: 20),
          Text(plant.name),
          SizedBox(height: 20),
          Text(plant.plantName),
          SizedBox(height: 20),
          Text(plant.symptom),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}