import 'package:appwithbackend/model/product_model.dart';
import 'package:appwithbackend/services/api.dart';
import 'package:flutter/material.dart';

class Fetchdata extends StatelessWidget {
  const Fetchdata({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
        future: Api.getProduct(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (!snapshot.hasData) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            List<Product> pdata = snapshot.data;
            return ListView.builder(
              itemCount: pdata.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  leading: const Icon(Icons.storage),
                  title: Text("${pdata[index].name}"),
                  subtitle: Text("${pdata[index].desc}"),
                  trailing: Text("Rs.${pdata[index].price}/="),
                );
              },
            );
          }
        },
      ),
    );
  }
}
