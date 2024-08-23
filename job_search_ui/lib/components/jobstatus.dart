import 'package:flutter/material.dart';
import 'package:job_search_ui/styles/style.dart';

import '../config/size.dart';

jobStatus(String status) {
  switch (status){
    case 'expires':
      return Container(
        transform: Matrix4.translationValues(16, 0, 0),
        height: 20,
        color: kYellowExpires,
        padding: const EdgeInsets.symmetric(
          horizontal: 6
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.warning_rounded,
              size: SizeConfig.blockSizeHorizontal! * 3,
              color: kWhite
            ), 
            const SizedBox(width: 4),
            Center(
            child: Text('Expires Soon',
              style: kPoppinsSemibold.copyWith(
                color:kWhite,
                fontSize: SizeConfig.blockSizeHorizontal! * 2.3
              )
            )
            )
          ]   
        )
      );
    case 'applied':
      return Container(
        transform: Matrix4.translationValues(16, 0, 0),
        height: 20,
        color: kGreenApplied,
        padding: const EdgeInsets.symmetric(
          horizontal: 6
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.check_circle,
              size: SizeConfig.blockSizeHorizontal! * 3,
              color: kWhite
            ), 
            const SizedBox(width: 4),
            Center(
            child: Text('Applied',
              style: kPoppinsSemibold.copyWith(
                color:kWhite,
                fontSize: SizeConfig.blockSizeHorizontal! * 2.3
              )
            )
            )
          ]   
        )
      );
    default :
      return Container();
  }
}