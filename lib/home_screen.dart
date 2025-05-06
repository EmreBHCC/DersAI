import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        elevation: 0,
        title: Text(
          "Ana Sayfa",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.white),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle_outlined, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Notlarınız",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.add),
                    label: Text("Yeni not ekle"),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.black,
                      elevation: 2,
                      side: BorderSide(color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            SizedBox(
              height: 260,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: 20),
                children: [
                  noteCard(
                    Colors.lightBlueAccent,
                    "Matematik",
                    "Türev Formülleri",
                  ),
                  SizedBox(width: 16),
                  noteCard(Colors.blueAccent, "Fizik", "Hareket Kanunları"),
                  SizedBox(width: 16),
                  addNoteButton(),
                ],
              ),
            ),
            SizedBox(height: 24),
            Center(
  child: ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      primary: Colors.grey[300], // arka plan
      onPrimary: Colors.black,   // yazı rengi
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
      textStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
    ),
    child: Text("Direkt Tanıma Yapın"),
  ),
),

            SizedBox(height: 24),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: Colors.indigo[900],
        child: SizedBox(
          height: 70,
          child: Row(
            children: [
              IconButton(
                icon: Icon(Icons.chat_bubble_outline, color: Colors.white),
                onPressed: () {},
              ),
              Spacer(),
              IconButton(
                icon: Icon(Icons.download_outlined, color: Colors.white),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.white,
        child: Icon(Icons.add, color: Colors.indigo[900]),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget noteCard(Color color, String title, String subtitle) {
    return Container(
      width: 180,
      height: 240,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            spreadRadius: 2,
            blurRadius: 8,
            offset: Offset(2, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 8),
            Text(
              subtitle,
              style: TextStyle(fontSize: 14, color: Colors.white70),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Icon(Icons.more_vert, color: Colors.white)],
            ),
          ],
        ),
      ),
    );
  }

  Widget addNoteButton() {
    return GestureDetector(
      onTap: () {
        // Yeni not oluşturma işlemi
      },
      child: Container(
        width: 180,
        height: 240,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.grey[300]!),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 2,
              blurRadius: 8,
              offset: Offset(2, 4),
            ),
          ],
        ),
        child: Center(
          child: Icon(
            Icons.add_circle_outline,
            size: 50,
            color: Colors.grey[400],
          ),
        ),
      ),
    );
  }
}
p 