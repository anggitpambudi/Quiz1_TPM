import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class DetailMenu extends StatelessWidget {
  // final Menu menu;
  final String image;
  final String name;
  final String desc;
  final String category;
  final double ratings;
  final int price;
  final int reviewer;
  final int sold;

  const DetailMenu({
    Key? key,
    required this.image,
    required this.name,
    required this.desc,
    required this.category,
    required this.ratings,
    required this.reviewer,
    required this.sold,
    this.price=0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Menu'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(5.0),
        child: Center(
          child: Column(
            children: [
              Image.network(image),
              SizedBox(height: 16,),
              Text(name, style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 16,),
              Text("${price}"),
              SizedBox(height: 16,),
              Text(desc, style: TextStyle(fontWeight: FontWeight.normal),),
              SizedBox(height: 16,),
              Text( "Category = "+ category, style: TextStyle(fontWeight: FontWeight.normal),),
              SizedBox(height: 16,),
              Text("Ratings = ${ratings}"),
              SizedBox(height: 16,),
              Text("Reviewer = ${reviewer}"),
              SizedBox(height: 16,),
              Text("Sold = ${sold}"),
              SizedBox(height: 16,),
              _keranjangButton(context),
              _beliButton(context),
            ],
          ),
        ),
      ),
    );
  }
  Widget _keranjangButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,
          vertical: 10),
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: () {
          String text = "BERHASIL MASUK KERANJANG";
          SnackBar snackBar = SnackBar(
            content: Text(text),
          );

          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: const Text(' Masukkan Keranjang'),
      ),
    );
  }
  Widget _beliButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,
          vertical: 10),
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: () {
          String text = "";
          SnackBar snackBar = SnackBar(
            content: Text(text),
          );

          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: const Text(' Beli '),
      ),
    );
  }
}