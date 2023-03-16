import 'package:flutter/material.dart';

class MusingWidget extends StatelessWidget {
  final String musingContent;
  final String date;
  const MusingWidget(
      {super.key, required this.musingContent, required this.date});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),
      width: size.width,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text(date,
              style:
                  const TextStyle(fontSize: 14, color: Colors.grey)),
              const SizedBox(height:5),    
          Text(
            musingContent,
            style: const TextStyle(
              fontSize: 17,
            ),
            maxLines: 1,
          ),
         
        ],
      ),
    );
  }
}
