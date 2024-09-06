import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  final Widget? leading;

  const CustomAppBar({
    required this.title,
    this.actions,
    this.leading,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: const TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w700),
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0,
      leading: Row(
                children: [
                  SizedBox(
                    width: 13,
                  ),
                  Builder(builder: (context) {
                    return InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                          height: 36,
                          width: 36,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromRGBO(13, 141, 207, 0.13)),
                          child: Center(
                              child: Icon(
                            Icons.arrow_back_ios_new,
                            color: Color.fromRGBO(11, 121, 198, 1),
                          ))),
                    );
                  }),
                ],
              ),
      actions: actions,
      iconTheme: const IconThemeData(color: Colors.black),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
