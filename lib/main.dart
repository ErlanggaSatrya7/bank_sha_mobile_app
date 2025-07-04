import "package:bank_sha/blocs/auth/auth_bloc.dart";
import 'package:flutter_bloc/flutter_bloc.dart';
import "package:bank_sha/shared/theme.dart";
import "package:bank_sha/ui/pages/data_package_page.dart";
import "package:bank_sha/ui/pages/data_provider_page.dart";
import "package:bank_sha/ui/pages/data_success_page.dart";
import "package:bank_sha/ui/pages/home_page.dart";
import "package:bank_sha/ui/pages/onboarding_page.dart";
import "package:bank_sha/ui/pages/pin_page.dart";
import "package:bank_sha/ui/pages/profile_edit_page.dart";
import "package:bank_sha/ui/pages/profile_edit_pin.dart";
import "package:bank_sha/ui/pages/profile_edit_success_page.dart";
import "package:bank_sha/ui/pages/profile_page.dart";
import "package:bank_sha/ui/pages/sign_in_page.dart";
import "package:bank_sha/ui/pages/sign_up_page.dart";
import "package:bank_sha/ui/pages/sign_up_set_profile_page.dart";
import "package:bank_sha/ui/pages/sign_up_set_ktp_page.dart";
import "package:bank_sha/ui/pages/sign_up_success_page.dart";
import "package:bank_sha/ui/pages/splash_pages.dart";
import "package:bank_sha/ui/pages/topup_amount_page.dart";
import "package:bank_sha/ui/pages/topup_page.dart";
import "package:bank_sha/ui/pages/topup_success.dart";
import "package:bank_sha/ui/pages/transfer_amount_page.dart";
import "package:bank_sha/ui/pages/transfer_page.dart";
import "package:bank_sha/ui/pages/transfer_success_page.dart";
import "package:flutter/material.dart";


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: lightBackgroundColor,
          appBarTheme: AppBarTheme(
            backgroundColor: lightBackgroundColor,
            elevation: 0,
            centerTitle: true,
            iconTheme: IconThemeData(color: blackColor),
            titleTextStyle: blackTextStyle.copyWith(
              fontSize: 20,
              fontWeight: semiBold,
            ),
          ),
        ),
        routes: {
          '/': (context) => const SplashPages(),
          '/onboarding': (context) => const OnboardingPage(),
          '/sign-in': (context) => const SignInPage(),
          '/sign-up': (context) => const SignUpPage(),
          '/sign-up-set-profile': (context) => const SignUpSetProfilePage(),
          '/sign-up-set-ktp': (context) => const SignUpSetKtpPage(),
          '/sign-up-success': (context) => const SignUpSuccessPage(),
          '/home': (context) => const HomePage(),
          '/profile': (context) => const ProfilePage(),
          '/pin': (context) => const PinPage(),
          '/profile-edit': (context) => ProfileEditPage(),
          '/profile-edit-pin': (context) => ProfileEditPinPage(),
          '/profile-edit-success': (context) => ProfileEditSuccessPage(),
          '/topup': (context) => TopupPage(),
          '/topup-amount': (context) => TopupAmountPage(),
          '/topup-success': (context) => TopupSuccess(),
          '/transfer': (context) => TransferPage(),
          '/transfer-amount': (context) => TransferAmountPage(),
          '/transfer-success': (context) => TransferSuccessPage(),
          '/data': (context) => const DataProviderPage(),
          '/data-package': (context) => const DataPackagePage(),
          '/data-success': (context) => const DataSuccessPage(),
        },
      ),
    );
  }
}
