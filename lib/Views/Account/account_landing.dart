import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_player/Components/Items/User/account_setting_item.dart';
import 'package:music_player/Utils/app_theme.dart';
import 'package:music_player/Utils/fake_data.dart';
import 'package:music_player/Utils/routes.dart';

class AccountLanding extends StatefulWidget {
  const AccountLanding({super.key});

  @override
  _AccountLandingState createState() => _AccountLandingState();
}

class _AccountLandingState extends State<AccountLanding> {
  bool smsNoti = true;
  bool pushNoti = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(width: 140,),
            const Text(
              "Account",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            const Spacer(),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.accountEditInformation);
              },
              child: const Text("Edit",style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 10,
          right: 10,
          bottom: 100,
        ),
        child: Column(
          children: [
            const SizedBox(height: 20,),
            // account information
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Center(
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                          color: AppTheme.primaryColor,
                          width: 2,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(100),
                          child: CachedNetworkImage(
                            imageUrl: FakeData.user.avatarURL,
                            height: 200,
                            width: 200,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      FakeData.user.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const Text(
                      "+84 999 999 999",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            // account settings
            AccountSettingItem(
              iconData: Icons.payment,
              settingName: "Payment",
              onPressed: (){
                Navigator.pushNamed(context, Routes.accountManagePayment);
              },
            ),
            const SizedBox(height: 10),
            AccountSettingItem(
              iconData: Icons.notifications_none_outlined,
              settingName: "Notifications",
              onPressed: openNotificationBottomModal,
            ),
            const SizedBox(height: 10),
            AccountSettingItem(
              iconData: Icons.sd_storage_outlined,
              settingName: "Storage",
              onPressed: (){
                Navigator.pushNamed(context, Routes.accountManageStorage);
              },
            ),
            const Spacer(),
            // log out button
            Center(
              child: InkWell(
                onTap: () {
                  // Handle log out action here
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Log out",
                      style: TextStyle(
                        color: AppTheme.primaryColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Icon(
                      Icons.logout,
                      color: AppTheme.primaryColor,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }


  void openNotificationBottomModal(){
    showModalBottomSheet(
        context: context,
        useRootNavigator: true,
        builder: (BuildContext context){
          return StatefulBuilder(
            builder: (BuildContext context, StateSetter stateSetter){
              return Container(
                height: 250,
                width: double.infinity,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10),
                    )
                ),
                child: Padding(
                  padding:const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      const SizedBox(height: 5,),
                      Container(
                        width: 60,
                        height: 5,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey
                        ),
                      ),
                      const SizedBox(height: 20,),
                      const Text("Notifications",style: TextStyle(fontWeight: FontWeight.bold),),
                      const SizedBox(height: 20,),
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey[100]
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              children: [
                                const Text("Receive SMS notifications"),
                                const Spacer(),
                                Switch.adaptive(
                                    value: smsNoti,
                                    onChanged: (value){
                                      setState(() {
                                        stateSetter((){
                                          smsNoti = value;
                                        });
                                      });
                                    }
                                )
                              ],
                            ),
                          )
                      ),
                      const SizedBox(height: 20,),
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey[100]
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              children: [
                                const Text("Receive PUSH notifications"),
                                const Spacer(),
                                Switch.adaptive(
                                    value: pushNoti,
                                    onChanged: (value){
                                      setState(() {
                                        stateSetter((){
                                          pushNoti = value;
                                        });
                                      });
                                    }
                                )
                              ],
                            ),
                          )
                      ),

                    ],
                  ),
                ),
              );
            },
          );
        }
    );
  }
}
