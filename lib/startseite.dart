import 'package:augmented_flutter/example/gesture_page.dart';
import 'package:augmented_flutter/example/local_page.dart';
import 'package:flutter/material.dart';

class Accueil extends StatelessWidget {
  const Accueil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ar experience'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(
                height: 150,
                width: size.width * 0.45,
                child: TextButton(
                  child: const Text('Gesture'),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ObjectGesturesWidget()));
                  },
                ),
              ),
              SizedBox(
                height: 150,
                width: size.width * 0.45,
                child: TextButton(
                  child: const Text('local gltf'),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => LocalAndWebObjectsWidget()));
                  },
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
