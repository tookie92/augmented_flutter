import 'package:augmented_flutter/example/gesture_page.dart';
import 'package:augmented_flutter/example/gesture_pagedeux.dart';
import 'package:augmented_flutter/example/local_page.dart';
import 'package:augmented_flutter/example/simple_ar.dart';
import 'package:flutter/material.dart';

import 'example/ar_screenshot.dart';

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
                  child: const Text('Gesture movable'),
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
                  child: const Text('Gesture 2'),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ObjectsOnPlanesWidget()));
                  },
                ),
              )
            ],
          ),
          Row(
            children: [
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
              ),
              SizedBox(
                height: 150,
                width: size.width * 0.45,
                child: TextButton(
                  child: const Text('Simple'),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DebugOptionsWidget()));
                  },
                ),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                height: 150,
                width: size.width * 0.45,
                child: TextButton(
                  child: const Text('ArScreenschot'),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ScreenshotWidget()));
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
