import 'package:daily_musings/Pages/musing_provider.dart';
import 'package:daily_musings/Widgets/textfield_widget.dart';
import 'package:daily_musings/musing_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MusingPage extends StatefulWidget {
  // final Function addNewMusing;

  const MusingPage({
    Key? key,
  }) : super(key: key);

  @override
  _MusingPageState createState() => _MusingPageState();
}

class _MusingPageState extends State<MusingPage> {
 

  final TextEditingController contentController = TextEditingController();

 
  bool isEnter = false;
  @override
  Widget build(BuildContext context) {
    MusingProvider? musingProvider = MusingProvider.of(context);
    List<Musing> musing =
        musingProvider != null ? musingProvider.musingData : [];
String currentDate = DateFormat('hh:mm a, EEEE,  MMMM dd, yyyy').format(DateTime.now());

    void addMusing() {
      Musing newMusing =
          Musing(content: contentController.text, date: currentDate);
      Navigator.pop(context, newMusing);
    }

    double fontSize = 20;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(),
            const Text(
              'Musings',
              style: TextStyle(
                color: Colors.black,
                fontSize: 17,
              ),
            ),
            IconButton(
                onPressed: addMusing,
                icon: const Icon(Icons.done, color: Colors.green))
          ],
        ),
        iconTheme: const IconThemeData(
          color: Colors.green,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            
            TextFieldWidget(
              isBold: false,
              controller: contentController,
              fontSize: fontSize,
              hint: 'How did your day go?',
            ),
          ],
        ),
      ),
    );
  }
}
