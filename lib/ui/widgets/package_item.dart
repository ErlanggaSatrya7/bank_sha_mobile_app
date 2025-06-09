import 'package:bank_sha/shared/shared_methods.dart';
import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class PackageItem extends StatelessWidget {
  final int amount;
  final int price;
  final bool isSelected;

  const PackageItem({
    super.key,
    required this.amount,
    required this.price,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      
      width: 155,
      height: 175,
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 22),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: whiteColor,
        border: Border.all(
          width: 2,
          color: isSelected ? blueColor : whiteColor,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          Text(
            '${amount}GB',
            style: blackTextStyle.copyWith(fontWeight: medium, fontSize: 32),
          ),
          const SizedBox(height: 2),
          Text(
            formatCurrency(price),
            // 'Rp$price',
            style: greyTextStyle.copyWith(fontWeight: regular, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
