import 'package:flutter/material.dart';
import 'package:music_player/Components/Items/payment_method_item.dart';
import 'package:music_player/Utils/fake_data.dart';

import '../../Components/Buttons/main_button.dart';

class AccountPayment extends StatefulWidget{
  @override
  State<AccountPayment> createState() => _AccountPaymentState();


}

class _AccountPaymentState extends State<AccountPayment> {
  String? selectedPaymentMethod;

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
            "Payment",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            PaymentMethodItem(
              paymentImage: FakeData().paymentMethodImage.first,
              paymentAccount: ' **** 1234',
              isSelected: selectedPaymentMethod == ' **** 1234',
              onChanged: (isSelected) {
                if (isSelected!) {
                  setState(() {
                    selectedPaymentMethod = ' **** 1234';
                  });
                }
              },
            ),
            const SizedBox(height: 10,),
            PaymentMethodItem(
              paymentImage: FakeData().paymentMethodImage.elementAt(1),
              paymentAccount: '**** 0803',
              isSelected: selectedPaymentMethod == '**** 0803',
              onChanged: (isSelected) {
                if (isSelected!) {
                  setState(() {
                    selectedPaymentMethod = '**** 0803';
                  });
                }
              },
            ),
            const SizedBox(height: 10,),
            PaymentMethodItem(
              paymentImage: FakeData().paymentMethodImage.last,
              paymentAccount: 'Apple Pay',
              isSelected: selectedPaymentMethod == 'Apple Pay',
              onChanged: (isSelected) {
                if (isSelected!) {
                  setState(() {
                    selectedPaymentMethod = 'Apple Pay';
                  });
                }
              },
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
      isDismissible: true,
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
                  child: MainButton(buttonText: "Add a new cart"),
                ),
              ),
            );
          },
        );
      },
    );
  }
}