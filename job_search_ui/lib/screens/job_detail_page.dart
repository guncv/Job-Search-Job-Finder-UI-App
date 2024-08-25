import 'package:flutter/material.dart';
import 'package:job_search_ui/components/applybutton.dart';
import 'package:job_search_ui/components/textwrapper.dart';
import 'package:job_search_ui/config/size.dart';
import 'package:job_search_ui/constant/jobinformation.dart';
import 'package:job_search_ui/styles/style.dart';

class JobDetailPage extends StatelessWidget {
  const JobDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      floatingActionButtonLocation : FloatingActionButtonLocation.centerFloat,
      floatingActionButton: const ApplyButton(),
      body: SafeArea( 
        child:SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color:kWhite,
                width : double.infinity,
                padding: const EdgeInsets.all(kPadding24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () => {
                            Navigator.pop(context)
                          },
                          child: const Icon(Icons.arrow_back_ios),
                        ),
                        const Icon(Icons.favorite_border)
                      ],
                    ),
                    const SizedBox(height: 24),
                    Container(
                      height: 64,
                      width: 64,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image:AssetImage("uber-logo.png")
                        )
                      ),
                    ),
                    const SizedBox(
                      height: 24
                    ),
                    Text('Head of Product Design', style: kPoppinsMedium.copyWith(
                      color: kBlack, 
                      fontSize: SizeConfig.blockSizeHorizontal!*6
                    )),
                    Text('Uber', style: kPoppinsMedium.copyWith(
                      color: kBlack, 
                      fontSize: SizeConfig.blockSizeHorizontal!*4
                    )),
                    Text('Posted on 20 July', style: kPoppinsMedium.copyWith(
                      color: kBlack, 
                      fontSize: SizeConfig.blockSizeHorizontal!*3
                    )),
                  ],
                ),
              ),
              const Divider(
                height: 10,
                thickness: 10,
                color: kWhiteF5,
              ),
              Container(
                color: kWhite,
                width:double.infinity,
                padding: const EdgeInsets.all(kPadding24),
                child : Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('APPLY BEFORE', style: kPoppinsBold.copyWith(
                              color: kBlack18,
                              fontSize: SizeConfig.blockSizeHorizontal!*3
                            )),
                            Text('24 AUGUST 2024', style: kPoppinsRegular.copyWith(
                              color: kBlack18,
                              fontSize: SizeConfig.blockSizeHorizontal!*3.5
                            ))
                          ],
                        ),
                        const SizedBox(height: 24),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('SALARY RANGE', style: kPoppinsBold.copyWith(
                              color: kBlack18,
                              fontSize: SizeConfig.blockSizeHorizontal!*3
                            )),
                            Text('\$100k - \$120k/yearly', style: kPoppinsRegular.copyWith(
                              color: kBlack18,
                              fontSize: SizeConfig.blockSizeHorizontal!*3.5
                            ))
                          ],
                        )
                      ] 
                    ), 
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('JOB NATURE', style: kPoppinsBold.copyWith(
                              color: kBlack18,
                              fontSize: SizeConfig.blockSizeHorizontal!*3
                            )),
                            SizedBox(
                              height: 21,
                              child: ListView.builder(
                                itemCount: 1,
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                physics: const NeverScrollableScrollPhysics(),
                                itemBuilder: (context,index) {
                                  return Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: kPadding8
                                    ),
                                    margin: const EdgeInsets.only(right: 5),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      color: kWhiteF5
                                    ),
                                    child: Center(
                                      child: Text('Contextual', style: kPoppinsRegular.copyWith(
                                        color:kBlack18,
                                        fontSize: SizeConfig.blockSizeHorizontal!*3.5
                                      ),),),
                                  );
                                  
                                }
                              ),
                            )
                           
                          ],
                        ),
                        const SizedBox(height: 24),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('JOB LOCATION', style: kPoppinsBold.copyWith(
                              color: kBlack18,
                              fontSize: SizeConfig.blockSizeHorizontal!*3
                            )),
                            Text('Work from anywhere', style: kPoppinsRegular.copyWith(
                              color: kBlack18,
                              fontSize: SizeConfig.blockSizeHorizontal!*3.5
                            ))
                          ],
                        )
                      ] 
                    )
                  ],
                )
              ),
              const Divider(
                height: 10,
                thickness: 10,
                color: kWhiteF5,
              ),
              Container(
                color: kWhite,
                width: double.infinity,
                padding: const EdgeInsets.all(kPadding24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('JOB DESCRIPTION', style: kPoppinsBold.copyWith(
                      color: kBlack18,
                      fontSize: SizeConfig.blockSizeHorizontal! * 3
                    )),
                    const SizedBox(height: 12),
                    const TextWrapper(text: JobDescription)
                  ],
                )
              ),
              const Divider(
                height: 10,
                thickness: 10,
                color: kWhiteF5,
              ),Container(
                color: kWhite,
                width: double.infinity,
                padding: const EdgeInsets.all(kPadding24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('ROLES AND RESPONSIBILITIES', style: kPoppinsBold.copyWith(
                      color: kBlack18,
                      fontSize: SizeConfig.blockSizeHorizontal! * 3
                    )),
                    const SizedBox(height: 12),
                    const TextWrapper(text: RolesAndResponse)
                  ],
                )
              ),
              SizedBox(height: SizeConfig.blockSizeHorizontal! * 20)
            ],
          ),
        )
      ),
    );
  }
}