import 'package:appwithbackend/services/api.dart';
import 'package:flutter/material.dart';

class CreateData extends StatefulWidget {
  const CreateData({super.key});

  @override
  State<CreateData> createState() => _CreateDataState();
}

class _CreateDataState extends State<CreateData> {
  var nameController = TextEditingController();
  var priceController = TextEditingController();
  var descController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                hintText: "Name Here",
              ),
            ),
            TextField(
              controller: priceController,
              decoration: const InputDecoration(
                hintText: "Price Here",
              ),
            ),
            TextField(
              controller: descController,
              decoration: const InputDecoration(
                hintText: "Desc Here",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                var data = {
                  "pname": nameController.text,
                  "pprice": priceController.text,
                  "pdesc": descController.text,
                };

                Api.addProduct(data);
              },
              child: const Text("Create Data"),
            )
          ],
        ),
      ),
    );
  }
}
