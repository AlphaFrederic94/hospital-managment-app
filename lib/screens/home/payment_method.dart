import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:hospital_managment_app/styles/palette.dart';
import 'package:hospital_managment_app/widgets/custom_button.dart';
import 'package:hospital_managment_app/widgets/custom_stack.dart';
import 'package:hospital_managment_app/widgets/payment_method_button.dart';
import 'package:provider/provider.dart';

class PaymentMethodPage extends StatelessWidget {
  const PaymentMethodPage({super.key});

  @override
  Widget build(BuildContext context) {
    final palette = context.watch<Palette>();

    return Scaffold(
      body: Column(
        children: [
          CustomStack(
            topSpacing: 0,
            mainAxisAlignment: MainAxisAlignment.start,
            radius: 20,
            horizontalSpacing: 28,
            fontSize: 28,
            title: "Payement Method",
            spacing: 20,
            positionedWidget: Container(
              margin: const EdgeInsets.all(18),
              child: Column(
                children: [
                  const Text("Make A Payment,"),
                  Text(
                    "Jonh Doe William",
                    style: TextStyle(
                      fontSize: 26,
                      color: palette.textDark,
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Text(
            "Select your payment method",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: palette.textDark,
            ),
          ),
          const SizedBox(
            height: 34,
          ),
          PaymentButton(
            onTap: () {
              GoRouter.of(context).go("/home/payment/mtn");
            },
            image: 'assets/images/mtn-mobile-money.png',
            moneyType: "Mobile Money",
            color: palette.trueWhite,
            backColor: palette.mtn,
          ),
          const SizedBox(
            height: 14,
          ),
          PaymentButton(
            onTap: () {
              GoRouter.of(context).go("/home/payment/orange");
            },
            image: 'assets/images/orange-money.png',
            moneyType: "Orange Money",
            color: palette.textDark,
            backColor: palette.orange,
          ),
          const SizedBox(
            height: 150,
          ),
          Container(
            height: 44,
            padding: const EdgeInsets.symmetric(horizontal: 17),
            child: Column(
              children: [
                Expanded(
                  child: CustomButton(
                    onTap: () {
                      GoRouter.of(context).pop();
                    },
                    text: "Back", radius: 28,
                    // width: 300,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
