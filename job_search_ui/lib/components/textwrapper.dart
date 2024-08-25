import 'package:flutter/material.dart';
import 'package:job_search_ui/config/size.dart';
import 'package:job_search_ui/styles/style.dart';

class TextWrapper extends StatefulWidget {
  const TextWrapper({
    super.key,
    required this.text
  });

  final String text;

  @override
  State<TextWrapper> createState() => _TextWrapperState();
}

class _TextWrapperState extends State<TextWrapper> with TickerProviderStateMixin{
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AnimatedSize(
          duration: const Duration(milliseconds: 300),
          child: ConstrainedBox(
            constraints: isExpanded? const BoxConstraints() : 
            const BoxConstraints(maxHeight: 120),
            child: Text(widget.text, style: kPoppinsRegular.copyWith(
              color: kBlack18,
              fontSize: SizeConfig.blockSizeHorizontal! * 3.5,
            ), 
            softWrap: true,
            overflow: TextOverflow.fade
            )
          )
        ),
        const SizedBox(height: 12),
        isExpanded
          ? GestureDetector(
            onTap: () => setState(() => isExpanded = false),
            child: Row(
              children: [
                Text(
                  'See less',
                  style: kPoppinsSemibold.copyWith(
                    color: kBlack,
                    fontSize: SizeConfig.blockSizeHorizontal! * 3,
                    ),
                  ),
                const Icon(
                  Icons.arrow_drop_up,
                    color: kBlack,
                ),
              ],
            ),
          )
          : GestureDetector(
            onTap: () => setState(
              () => isExpanded = true,
            ),
            child: Row(
              children: [
                Text(
                  'See more',
                  style: kPoppinsSemibold.copyWith(
                    color: kBluePrimary,
                    fontSize: SizeConfig.blockSizeHorizontal! * 3,
                  ),
                ),
                const Icon(Icons.arrow_drop_down, color: kBluePrimary),
              ],
            ),
          )
      ],
    );
  }
}