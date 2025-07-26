import 'package:appointment_app/core/themes/text_styles.dart';
import 'package:flutter/material.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: "By logging, you agree to our ",
            style: TextStyles.font12GrayRegular,
          ),
          TextSpan(
            text: " Terms & Conditions",
            style: TextStyles.font13DarkBlueSemiBold,
          ),
          TextSpan(
            text: " and ",
            style: TextStyles.font12GrayRegular,
          ),
          TextSpan(
            text: "Privacy Policy.",
            style: TextStyles.font13DarkBlueSemiBold,
          ),
        ],
      ),
    );
  }
}
