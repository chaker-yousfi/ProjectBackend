import 'package:ecommerce_app_backend/extensions/buildcontext/loc.dart';
import 'package:ecommerce_app_backend/features/account/services/account_services.dart';
import 'package:ecommerce_app_backend/features/account/widgets/account_button.dart';
import 'package:flutter/material.dart';

class TopButtons extends StatelessWidget {
  const TopButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            AccountButton(
                 text: context.loc.orders,
              onTap: () {},
            ),
            
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            AccountButton(
              text: context.loc.logout_button,
              onTap: () => AccountServices().logOut(context),
            ),
            AccountButton(
                text: context.loc.wishlist,
              onTap: () {},
            ),
          ],
        ),
      ],
    );
  }
}
