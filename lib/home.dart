import 'package:flutter/material.dart';
import 'daftarmenu.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: const Center(
              child: Text('Warmindo Barokah'),
            )
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            LogoImageAssets(),
            ElevatedButton(
              child: const Text("PESAN DISINI"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DaftarMenu()),
                );
              },
            )
          ],
          ),
        ),
      ),
    );
  }
}

class LogoImageAssets extends StatelessWidget {
  const LogoImageAssets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = const AssetImage('assets/images/logo.png');

    Image image = Image(image: assetImage, height: 500, width: 1000);
    return Container(
      margin: const EdgeInsets.only(top: 40.0),
      child: image,
    );
  }
}

