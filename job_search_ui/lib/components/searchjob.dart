import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:job_search_ui/styles/style.dart';

class SearchJob extends StatelessWidget {
  const SearchJob({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 8
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: 24
      ),
      height: 52,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: kBluePrimary
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              style: kPoppinsMedium.copyWith(
                color: kWhite
              ),
              controller : TextEditingController(),
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 0,
                  vertical: 0
                ),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(8),
                  child: SvgPicture.asset(
                    'icon_search.svg'
                  ),
                ),
                hintText: 'Type the jobs you want to search',
                hintStyle: kPoppinsMedium.copyWith(
                  color: kWhite
                ),
                filled: true, 
                fillColor: kBluePrimary,
                errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0),
                    borderSide: const BorderSide(
                      color: kTransparent,
                    ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(0),
                  borderSide: const BorderSide(color: kTransparent)
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(0),
                  borderSide: const BorderSide(color: kTransparent)
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(0),
                  borderSide: const BorderSide(color: kTransparent)
                )
              ),
            )
          ),
          const SizedBox(width:12),
          const VerticalDivider(
            color: kWhite,
            thickness: 1,
          ),
          const SizedBox(
            width: 12
          ),
          SvgPicture.asset('/icon_filter_list.svg')
        ],
      ),
    );
  }
}