import 'package:flutter/material.dart';
import 'package:music_player/Components/Buttons/main_button.dart';
import 'package:music_player/Utils/app_theme.dart';

class AccountManageStorage extends StatefulWidget {
  @override
  _AccountManageStorageState createState() => _AccountManageStorageState();
}

class _AccountManageStorageState extends State<AccountManageStorage> {
  @override
  void initState() {
    super.initState();
    // Show bottom sheet when the page is first loaded
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showBottomSheet(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        leading: null,
        title: const Center(
          child: Text(
            "Storage",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            // Circle to display the amount of storage used
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // Circular progress indicator
                  SizedBox(
                    height: 150,
                    width: 150,
                    child: CircularProgressIndicator(
                      value: 0.3, // Set this value to reflect the storage used (e.g., 0.3 for 30%)
                      strokeWidth: 10,
                      strokeCap: StrokeCap.round,
                      backgroundColor: Colors.grey[200],
                      color: AppTheme.primaryColor,
                    ),
                  ),
                  // Centered text
                  Column(
                    children: [
                      Text(
                        "100 GB",
                        style: TextStyle(
                          color: AppTheme.primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "Available",
                        style: TextStyle(
                          color: AppTheme.secondaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),

            const SizedBox(height: 10,),
            // Brief information
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.circle, color: AppTheme.primaryColor, size: 12,),
                        const SizedBox(width: 5,),
                        Text("Total |", style: TextStyle(color: AppTheme.secondaryColor, fontWeight: FontWeight.w600),),
                        Text(" 120 GB", style: TextStyle(color: AppTheme.primaryColor, fontWeight: FontWeight.w600),),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(Icons.circle, color: Colors.greenAccent, size: 12,),
                        const SizedBox(width: 5,),
                        Text("Downloads |", style: TextStyle(color: AppTheme.secondaryColor, fontWeight: FontWeight.w600),),
                        Text(" 0 KB", style: TextStyle(color: AppTheme.primaryColor, fontWeight: FontWeight.w600),),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.circle, color: AppTheme.secondaryColor, size: 12,),
                        const SizedBox(width: 5,),
                        Text("Cache |", style: TextStyle(color: AppTheme.secondaryColor, fontWeight: FontWeight.w600),),
                        Text(" 4 MB", style: TextStyle(color: AppTheme.primaryColor, fontWeight: FontWeight.w600),),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      elevation: 0,
      isDismissible: false,
      barrierColor: Colors.white.withOpacity(0),
      useRootNavigator: true,
      context: context,
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (BuildContext context, StateSetter stateSetter) {
            return Container(
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
                  child: MainButton(buttonText: "Clear cache"),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
