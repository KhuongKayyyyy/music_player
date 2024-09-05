import 'package:flutter/material.dart';

class AccountSetingInformationField extends StatelessWidget{
  String fieldName;
  String fieldData;
  VoidCallback? onPressed;
  AccountSetingInformationField({required this.fieldName, required this.fieldData, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(fieldName, style: const TextStyle(
              color: Colors.grey,
              fontSize: 10
            ),
            ),
            Row(
              children: [
                Text(
                  fieldData,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w500
                  ),
                ),
                const Spacer(),
                IconButton(onPressed: onPressed, icon:const Icon(Icons.edit,size: 15,))
              ],
            )
          ],
        ),
      )
    );
  }
}