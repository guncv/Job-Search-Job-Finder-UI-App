import 'package:flutter/material.dart';
import 'package:job_search_ui/components/jobstatus.dart';
import 'package:job_search_ui/config/size.dart';
import 'package:job_search_ui/styles/style.dart';

class JobCard extends StatelessWidget {
  JobCard({
    Key? key, 
    required this.position,
    required this.company,
    required this.companyImage,
    required this.status,
    required this.salary,
    required this.types,
    required this.onTap,
  }) : super(key: key);


  String position;
  String company;
  String companyImage;
  String status;
  String salary;
  List<String> types;
  VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 113,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: kWhite,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 4),
              color: kShadow.withOpacity(0.05),
              spreadRadius: 0
          )] 
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 18,
          vertical: 16
        ),
        margin: EdgeInsets.only(
          bottom: SizeConfig.blockSizeVertical! * 1
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height:40,
                      width: 40,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('google_logo.png')
                        )
                      )
                    ),
                    const SizedBox(width: 8),
                    Column(
                      children: [
                        Text(
                          position,
                          style: kPoppinsSemibold.copyWith(
                            color: kBlack18,
                            fontSize: SizeConfig.blockSizeHorizontal! * 3
                          ),
                        ),
                        Text(
                          company,
                          style: kPoppinsSemibold.copyWith(
                            color: kBlack18,
                            fontSize: SizeConfig.blockSizeHorizontal! * 2
                          ),
                        )
                    ],)
                  ],
                ),
                jobStatus(status),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: SizedBox(
                    height: 21,
                    child : ListView.builder(
                      itemCount: types.length >= 2 ? 2 : types.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index){
                        return Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8
                          ),
                          margin: const EdgeInsets.only(
                            right: 5
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: kWhiteF5
                          ),
                          child: Center(
                            child: Text(
                              types[index],
                              style: kPoppinsMedium.copyWith(
                                color: kBlack18,
                                fontSize: SizeConfig.blockSizeHorizontal!*3
                              ),
                            )
                          )
                        );
                      },
                    )
                  ),
                ), Text('$salary/yearly', 
                  style: kPoppinsRegular.copyWith(
                    color: kBlack18,
                    fontSize: SizeConfig.blockSizeHorizontal!*3
                  )
                )
              ],
            )
          ] 
        ),
      ),
    );
  }
}