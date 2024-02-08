import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ibaza/features/pages/navbar.dart';


class TabItemWidget extends StatelessWidget {
  final bool isActive;
  final NavBar item;
  final VoidCallback? onActiveTap;

  const TabItemWidget({
    required this.item,
    Key? key,
    this.isActive = false,
    this.onActiveTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => GestureDetector(
        behavior: HitTestBehavior.deferToChild,
        onTap: isActive
            ? () {
                if (isActive && onActiveTap != null) {
                  onActiveTap!();
                }
              }
            : null,
        child: Container(
          padding: EdgeInsets.fromLTRB(0, item.id == 2 ? 0 : 8, 0, 0),
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (item.id != 2)
                SvgPicture.asset(
                  item.icon,
                ),
              if (item.id == 2)
                SvgPicture.asset(
                  item.icon,
                 
                 
                ),
              // const SizedBox(height: 4),
              Text(
                item.title,
                style: TextStyle(
                
                ),
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                maxLines: 1,
              ),
            ],
          ),
        ),
      );
}
