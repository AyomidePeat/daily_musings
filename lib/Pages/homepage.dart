
import 'package:daily_musings/Pages/musing_provider.dart';
import 'package:daily_musings/Widgets/musing_widget.dart';

import 'package:daily_musings/Pages/musing_detail.dart';
import 'package:daily_musings/musing_model.dart';
import 'package:daily_musings/Pages/musing_page.dart';
import 'package:flutter/material.dart';

GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();

class HomePage extends StatefulWidget {
  HomePage({Key? key,
   
  }): super(key:key,);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 // List<Musing> musing = [];

 

 //

  @override
  Widget build(BuildContext context) {
   List<Musing>  musing = MusingProvider.of(context)!.musingData;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Musings',
            style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold)),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: musing.isEmpty
          ? const Center(
              child: Text("Enter Today Musings",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )))
          : ListView.builder(
              itemCount: musing.length,
              itemBuilder: (BuildContext context, int index) {
                return Dismissible(
                  key: const Key('key'),
                  direction: DismissDirection.horizontal,
                  onDismissed: (direction) {
                  //  deleteMusingAtIndex(index);
                  },
                  child: ListTile(
                    title: MusingWidget(
                        date: musing[index].date,
                        musingContent: musing[index].content),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              MusingDetail(musing: musing[index]),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          Musing? newMusing = await 
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MusingPage()
              ));
               if (newMusing != null) {
    setState(() {
      musing.add(newMusing);
    });
  }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
