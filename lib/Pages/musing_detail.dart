import 'package:daily_musings/musing_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MusingDetail extends StatefulWidget {
  final Musing musing;

  const MusingDetail({Key? key, required this.musing}) : super(key: key);

  @override
  State<MusingDetail> createState() => _MusingDetailState();
}

class _MusingDetailState extends State<MusingDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text("Musing",
            style: TextStyle(
              color: Colors.black,
            )),
        iconTheme: const IconThemeData(
          color: Colors.green,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.musing.date,
                  style: const TextStyle(
                      fontSize: 17,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(widget.musing.content,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                )),
          ],
        ),
      ),
    );
  }
}
