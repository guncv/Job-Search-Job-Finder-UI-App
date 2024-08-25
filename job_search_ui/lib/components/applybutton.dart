import 'package:flutter/material.dart';
import 'package:job_search_ui/config/size.dart';
import 'package:job_search_ui/styles/style.dart';

class ApplyButton extends StatelessWidget {
  const ApplyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 8
      ),
      height: 52,
      width: SizeConfig.blockSizeHorizontal!*50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: kBluePrimary
      ),
      child: Center(
        child: Text('APPLY NOW', style: kPoppinsBold.copyWith(
          color: kWhite,
          fontSize: SizeConfig.blockSizeHorizontal!*3
        )),
      )
    );
  }
}