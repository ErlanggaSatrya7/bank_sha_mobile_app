import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/bank_item.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

class TopupPage extends StatelessWidget {
  const TopupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Top Up')),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(height: 30),
          Text(
            'Wallet',
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          const SizedBox(height: 30),
          Row(
            children: [
              Image.asset('assets/img_bg_card.png', width: 80),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "8008 2208 1996",
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    "Angga Satrya",
                    style: greyTextStyle.copyWith(fontSize: 12),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 40),
          Text(
            'Select Bank',
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          const SizedBox(height: 14),
          BankItem(
            imageUrl: 'assets/img_bank_bca.png',
            title: 'Bank BCA',
            isSelected: true,
          ),
          BankItem(imageUrl: 'assets/img_bank_bni.png', title: 'Bank BNI'),
          BankItem(
            imageUrl: 'assets/img_bank_mandiri.png',
            title: 'Bank Mandiri',
          ),
          BankItem(imageUrl: 'assets/img_bank_ocbc.png', title: 'Bank OCBC'),
          const SizedBox(height: 30),
          CustomFilledButton(
            title: 'Continue',
            onPressed: () {
              Navigator.pushNamed(context, '/topup-amount');
            },
          ),
          const SizedBox(height: 57),

          // ListView(
          //   children: [
          //     BankItem(imageUrl: 'assets/img_bank_bca.png', title: 'Bank BCA')
          //   ],
          // )
        ],
      ),
    );
  }
}
