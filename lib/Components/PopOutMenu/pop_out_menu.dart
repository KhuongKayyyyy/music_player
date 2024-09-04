import 'package:flutter/material.dart';

class PopOutMenu extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[100],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 50,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  const Text("Play"),
                  const Spacer(),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.play_arrow_rounded)),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Container(
            height: 50,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  const Text('Share'),
                  const Spacer(),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.ios_share)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}