import 'package:flutter/material.dart';

class AddPlaylistItem extends StatelessWidget{
  String playListName;
  AddPlaylistItem({required this.playListName});
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[100],
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.black,
                  ),
                  child: IconButton(onPressed: (){}, icon: const Icon(Icons.add,color: Colors.white,)),
                ),
              ],
            ),
            const Spacer(),
            Text(
              playListName,
              style:const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600
              ),
            )
          ],
        ),
      ),
    );
  }
}