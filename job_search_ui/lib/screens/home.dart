import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:job_search_ui/components/jobcard.dart';
import 'package:job_search_ui/components/searchjob.dart';
import 'package:job_search_ui/config/size.dart';
import 'package:job_search_ui/styles/style.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: const SearchJob(),
      backgroundColor: kWhiteF5,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 10
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CircleAvatar(
                    radius: 22,
                    backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/0/0d/Kim_Chaewon_LE_SSERAFIM_220923.jpg"),
                  ),
                  SvgPicture.asset(
                    'icon_notification_none.svg'
                  )
                ]
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('40 JOBS FOUND', 
                  style: kPoppinsBold.copyWith(
                    color: kBlack18,
                    fontSize: SizeConfig.blockSizeHorizontal! * 3
                  ),),
                  Row(
                    children: [
                       Text('All Relevance', 
                        style: kPoppinsSemibold.copyWith(
                          color: kBluePrimary,
                          fontSize: SizeConfig.blockSizeHorizontal! * 3
                      ),),
                      SvgPicture.asset(
                          'icon_arrow_drop_down.svg'
                      )
                    ] 
                  )
                ],
              ),
              const SizedBox(height: 16),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return JobCard(
                    position: 'Senior Product Designer',
                    company: 'Goodle INC',
                    companyImage: 'google_logo.png',
                    status: 'applied',
                    types: const [
                      'Full Time','Remote','Contractual'
                    ],
                    salary: '\$64k - \$80k',
                    onTap: () => {

                    }
                  );
                }, 
              )
            ], 
          )
        )
      )
    );
  }
}
