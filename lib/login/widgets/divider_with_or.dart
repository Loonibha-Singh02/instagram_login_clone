import 'package:flutter/material.dart';
import 'package:instagram_login_clone/constant/colors.dart';

class DividerWithOr extends StatelessWidget {
  const DividerWithOr({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        const Expanded(child: Divider(color: borderGrey, thickness: 1,)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text("OR", style: Theme.of(context).textTheme.labelLarge!.copyWith(color: Colors.grey)),
        ),
         const Expanded(child: Divider(color: borderGrey, thickness: 1)),
      ],
    );
  }
}