import 'package:flutter/material.dart';
import 'detail.dart';

import 'menu.dart';

class DaftarMenu extends StatelessWidget {
  const DaftarMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daftar Menu"),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: _createListCard(),
      ),
    );
  }

  Widget _createListCard() {
    var dataServices = getAllMenu();

    return ListView.separated(
      itemBuilder: (context, index) {
        return _createCard(dataServices[index], context);
      },
      itemCount: dataServices.length,
      separatorBuilder: (context, index) {
        return Container(
          color: Colors.grey,
          height: 1,
          margin: const EdgeInsets.symmetric(vertical: 4),
        );
      },
    );
  }

  Widget _createCard(Menu data, BuildContext context) {
    return Card(
      child: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return DetailMenu(image: data.image, name: data.name,desc: data.desc,category: data.category,ratings: data.ratings,reviewer: data.reviewer,sold: data.sold);
          }));
        },
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Image.network(data.image),
            ),
            Expanded(
              flex: 3,
              child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 10,
                  ),
                  child: Text(data.name)),
            ),
            Expanded(
              flex: 3,
              child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 10,
                  ),
                  child: Text(data.desc)),
            ),

          ],
        ),
      ),
    );
  }
}
