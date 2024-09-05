import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:music_player/Utils/app_theme.dart';

class PaymentMethodItem extends StatelessWidget {
  final String paymentImage;
  final String paymentAccount;
  final bool isSelected;
  final ValueChanged<bool?>? onChanged;

  const PaymentMethodItem({
    Key? key,
    required this.paymentImage,
    required this.paymentAccount,
    required this.isSelected,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onChanged?.call(!isSelected),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          border: Border.all(
            color: isSelected ? AppTheme.primaryColor : Colors.grey,
            width: 2,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: CachedNetworkImage(
                  imageUrl: paymentImage,
                  fit: BoxFit.cover,
                  height: 50,
                  width: 50,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  paymentAccount,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Radio<bool>(
                value: true,
                groupValue: isSelected,
                onChanged: onChanged,
                activeColor: AppTheme.primaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
