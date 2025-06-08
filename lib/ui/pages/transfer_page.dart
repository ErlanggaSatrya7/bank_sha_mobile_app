import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/buttons.dart';
import 'package:bank_sha/ui/widgets/forms.dart';
import 'package:bank_sha/ui/widgets/transfer_recent_user_item.dart';
import 'package:bank_sha/ui/widgets/transfer_result_user_item.dart';
import 'package:flutter/material.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Transfer')),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          const SizedBox(height: 30),
          Text(
            'Search',
            style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          ),
          const SizedBox(height: 14),
          CustomFormField(title: 'by username', isShowTitle: false),
          const SizedBox(height: 40),
          // Text(
          //   'Recent User',
          //   style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
          // ),
          const SizedBox(height: 14),
          // buildRecentUsers(),
          buildResult(),
          const SizedBox(height: 100),
          CustomFilledButton(
            title: 'Continue',
            onPressed: () {
              Navigator.pushNamed(context, '/transfer-amount');
            },
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}

Widget buildRecentUsers() {
  return Container(
    margin: EdgeInsets.only(top: 30),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Recent User',
          style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
        ),
        const SizedBox(height: 14),
        const TransferRecentUserItem(
          imageUrl: 'assets/img_friend1.png',
          name: 'Yonna Jie',
          username: 'Yoenna',
          isVerified: true,
        ),
        const TransferRecentUserItem(
          imageUrl: 'assets/img_friend2.png',
          name: 'John Hi',
          username: 'jhi',
        ),
        const TransferRecentUserItem(
          imageUrl: 'assets/img_friend3.png',
          name: 'Masayoshi',
          username: 'form',
        ),
      ],
    ),
    // Text(
    //   'Recent User',
    //   style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
    // ),
  );

  // return Container(
  //   // margin: EdgeInsets.only(bottom:  18),
  //   margin: EdgeInsets.only(top: 40),
  //   width: 327,
  //   height: 89,
  //   decoration: BoxDecoration(
  //     borderRadius: BorderRadius.circular(20),
  //     color: whiteColor,
  //   ),
  //   child: Padding(
  //     padding: const EdgeInsets.all(22),
  //     child: Row(
  //       children: [
  //         Container(
  //           width: 45,
  //           height: 45,
  //           decoration: BoxDecoration(
  //             image: DecorationImage(
  //               image: AssetImage('assets/img_friend1.png'),
  //             ),
  //           ),
  //         ),
  //         const SizedBox(width: 14),
  //         Column(
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           children: [
  //             Text(
  //               'Yonna Jie',
  //               style: blackTextStyle.copyWith(
  //                 fontSize: 16,
  //                 fontWeight: medium,
  //               ),
  //             ),
  //             const SizedBox(height: 2),
  //             Text('@yoenna', style: greyTextStyle.copyWith(fontSize: 12)),
  //           ],
  //         ),
  //         const Spacer(),
  //         // const SizedBox(width: 83),
  //         Text(
  //           'Verified',
  //           style: greenTextStyle.copyWith(fontWeight: medium, fontSize: 11),
  //         ),
  //       ],
  //     ),
  //   ),
  // );
}

Widget buildResult() {
  return Container(
    margin: const EdgeInsets.only(top: 30),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Result',
          style: blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
        ),
        const SizedBox(height: 14),
        Wrap(
          spacing: 17,
          runSpacing: 17,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TransferResultUserItem(
              imageUrl: 'assets/img_friend1.png',
              name: 's',
              username: 'alam',
              isVerified: true,
            ),
            TransferResultUserItem(
              imageUrl: 'assets/img_friend2.png',
              name: 's',
              username: 'alam',
              isVerified: true,
              isSelected: true,
            ),
            TransferResultUserItem(
              imageUrl: 'assets/img_friend1.png',
              name: 's',
              username: 'alam',
            ),
          ],
        ),
      ],
    ),
  );
}
