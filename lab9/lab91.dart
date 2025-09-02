import 'package:flutter/material.dart';

class Lab91 extends StatefulWidget {
  const Lab91({super.key});

  @override
  State<Lab91> createState() => _Lab91State();
}

class _Lab91State extends State<Lab91> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Feedback Form"),
        backgroundColor: Colors.grey,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Text(
                """ How would you describe your mood after using our product for the first time? """,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.sentiment_satisfied_alt,
                    size: 40,
                    color: Colors.green,
                  ),
                  style: IconButton.styleFrom(
                      backgroundColor: Colors.grey[300],
                      padding: EdgeInsets.all(10)),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.sentiment_neutral_outlined,
                    size: 40,
                    color: Colors.green,
                  ),
                  style: IconButton.styleFrom(
                      backgroundColor: Colors.grey[300],
                      padding: EdgeInsets.all(10)),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.sentiment_dissatisfied_outlined,
                    size: 40,
                    color: Colors.green,
                  ),
                  style: IconButton.styleFrom(
                      backgroundColor: Colors.grey[300],
                      padding: EdgeInsets.all(10)),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: Text(
                "How would you rate this product",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "1",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(8)),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "2",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(8)),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "3",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(8)),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "4",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(8)),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "5",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(8)),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "Your FeedBack:",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              maxLines: 5,
              decoration: InputDecoration(
                  hintText: "Enter your feedback",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10))),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
                child: ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content:
                              Text("Your Feedback is summited successfully")));
                    },
                    child: Text(
                      "Submit",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    )))
          ],
        ),
      ),
    );
  }
}
