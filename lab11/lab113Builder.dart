import 'package:flutter/material.dart';

class Lab113builder extends StatefulWidget {
  const Lab113builder({super.key});
  @override
  State<Lab113builder> createState() => _Lab113builderState();
}

class _Lab113builderState extends State<Lab113builder> {
  List<String> images = [
    'https://tse2.mm.bing.net/th/id/OIP.ks_9WSJKG8xaR0ww_ud4YAHaHa?cb=iwp2&rs=1&pid=ImgDetMain',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTy92QP882ZWAElXB_xhxoNCap5o-jNILNtBw&s',
    'https://tse1.mm.bing.net/th/id/OIP.sjkhI5eKl3m7AIsEnFf77AHaHa?cb=iwp2&rs=1&pid=ImgDetMain',
    'https://th.bing.com/th/id/R.d5fb0ef361f7bfca6069e1978ff73438?rik=nn9y6PCwvDZ0Hg&riu=http%3a%2f%2fpixelwibes.com%2fpublic%2ffront%2fimages%2fservice%2fflutter-logo.png&ehk=W8I4AdZ3kl%2by5VA47lTlDr%2blO%2fkCEtsX5pYCnrrNt7I%3d&risl=&pid=ImgRaw&r=0',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          'Gridview',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: GridView.builder(
          itemCount: images.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            String image = images[index];
            return Card(
              clipBehavior: Clip.hardEdge,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Image.network(
                image,
                fit: BoxFit.cover,
              ),
            );
          }),
    );
  }
}
