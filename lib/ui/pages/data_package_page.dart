import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:bank_sha/ui/widgets/forms.dart';
import 'package:bank_sha/ui/widgets/package_item.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DataPackagePage extends StatelessWidget {
  const DataPackagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Paket Data')),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(height: 30),
          Text(
            'Phone Number',
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          const SizedBox(height: 14),
          CustomFormField(title: '+628', isShowTitle: false),
          const SizedBox(height: 40),
          Text(
            'Select Package',
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          const SizedBox(height: 14),
          Wrap(
            runSpacing: 17,
            spacing: 17,
            children: [
              PackageItem(amount: 10, price: 100000),
              PackageItem(amount: 25, price: 200000, isSelected: true),
              PackageItem(amount: 40, price: 400000),
              PackageItem(amount: 99, price: 1000000),
            ],
          ),
          const SizedBox(height: 85),
          CustomFilledButton(
            title: 'Continue',
            onPressed: () async {
              if (await Navigator.pushNamed(context, '/pin') == true) {
                final Uri _midtransUrl = Uri.parse(
                  'https://demo.midtrans.com/',
                );

                if (!await launchUrl(
                  _midtransUrl,
                  mode: LaunchMode.externalApplication,
                )) {
                  throw 'Could not launch $_midtransUrl';
                }
                // await launch('https://demo.midtrans.com/');

                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/data-success',
                  (route) => false,
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
