import 'package:flutter/material.dart';

class AccountSettingItem extends StatelessWidget{
  IconData iconData;
  String settingName;
  VoidCallback onPressed;
  AccountSettingItem({super.key, required this.iconData, required this.settingName, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.grey[100],
              ),
              child: Padding(
                padding:const EdgeInsets.all(4),
                child: Icon(iconData),
              ),
            ),
            const SizedBox(width: 10,),
            Text(
              settingName
            ),
            const Spacer(),
            IconButton(onPressed: onPressed, icon:const Icon(Icons.arrow_forward_ios_rounded,size: 20,color: Colors.grey,))
          ],
        ),
      ),
    );
  }
}