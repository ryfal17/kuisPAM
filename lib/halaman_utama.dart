import 'package:flutter/material.dart';
import 'package:pamkuis/disease_data.dart';
import 'halaman_detail.dart';

class HalamanKuis extends StatelessWidget {
  const HalamanKuis({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jenis Tanaman"),
      ),
      body: ListView.builder(
          itemCount: listDisease.length,
          itemBuilder: (context, index) {
            final Diseases plant = listDisease[index];
            return InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return HalamanDetail(plant: plant);
                }));
              },
              child: Card(
                child: Row(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height / 4,
                      width: MediaQuery.of(context).size.width / 4,
                      child: Image.network(plant.imgUrls),
                    ), SizedBox(width: 20),
                    Text(plant.name)
                  ],
                ),
              ),
            );
          }),
    );
  }
}
