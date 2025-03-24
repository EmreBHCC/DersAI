import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        title: Text("Ana Sayfa"),
        centerTitle: true,
        leading: Icon(Icons.menu),
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle_outlined),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text("Notlarınız", style: TextStyle(fontSize: 18)),
            ),
          ),
          SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(width: 16),
                noteCard(Colors.cyanAccent),
                SizedBox(width: 16),
                noteCard(Colors.blueAccent),
                SizedBox(width: 16),
                addNoteButton(),
                SizedBox(width: 16),
              ],
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Direkt tanıma işlemi
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.grey[300]),
            child: Text("Direkt Tanıma Yapın", style: TextStyle(color: Colors.black)),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: Colors.indigo[900],
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.chat_bubble_outline, color: Colors.white),
              Icon(Icons.add_circle, color: Colors.white),
              Icon(Icons.download_outlined, color: Colors.white),
            ],
          ),
        ),
      ),
    );
  }

  Widget noteCard(Color color) {
    return Container(
      width: 150,
      height: 200,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [BoxShadow(color: Colors.grey, offset: Offset(3, 3), blurRadius: 5)],
      ),
    );
  }

  Widget addNoteButton() {
    return GestureDetector(
      onTap: () {
        // Yeni not oluşturma işlemi
      },
      child: Container(
        width: 150,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey),
          boxShadow: [BoxShadow(color: Colors.grey, offset: Offset(3, 3), blurRadius: 5)],
        ),
        child: Center(
          child: Icon(Icons.add, size: 40, color: Colors.grey),
        ),
      ),
    );
  }
}
