import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

class SignUpSetKtpPage extends StatelessWidget {
  const SignUpSetKtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: lightBackgroundColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          Container(
            width: 155,
            height: 50,
            margin: const EdgeInsets.only(top: 100, bottom: 100),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img_logo_light.png'),
              ),
            ),
          ),
          Text(
            'Verify Your\nAccount',
            style: blackTextStyle.copyWith(fontSize: 20, fontWeight: semiBold),
          ),
          const SizedBox(height: 30),
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: lightBackgroundColor,
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/ic_upload.png',
                      width: 32,
                      // height: 32,
                    ),
                  ),
                ),

                // Container(
                //   width: 120,
                //   height: 120,
                //   decoration: const BoxDecoration(
                //     shape: BoxShape.circle,
                //     image: DecorationImage(
                //       fit: BoxFit.cover,
                //       image: AssetImage('assets/img_profile.png'),
                //     ),
                //   ),
                // ),
                SizedBox(height: 16),
                Text(
                  'Pasport/ID Card',
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: medium,
                  ),
                ),
                const SizedBox(height: 30),

                // CustomFormField(title: 'Set PIN (6 digit number)'),
                const SizedBox(height: 30),
                CustomFilledButton(title: 'Continue'),
              ],
            ),
          ),
          const SizedBox(height: 60),
          CustomTextButton(
            title: 'Skip For Now',
            onPressed: () {
              Navigator.pushNamed(context, '/sign-up-success');
            },
          ),
        ],
      ),
    );
  }
}
