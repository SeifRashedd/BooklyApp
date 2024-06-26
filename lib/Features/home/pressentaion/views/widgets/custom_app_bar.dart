import 'package:booklyapp/core/utils/assets.dart';
import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';

// import '../../../../../core/utils/app_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 40, bottom: 20),
      child: Row(
        children: [
          Expanded(
            child: Image.asset(
              AssetsData.logo,
              height: 19,
            ),
          ),
          // const Spacer(),
          // IconButton(
          //   onPressed: () {
          //     GoRouter.of(context).push(AppRouter.kSearchView);
          //   },
          //   icon: const Icon(
          //     Icons.search,
          //     size: 35,
          //   ),
          // ),
        ],
      ),
    );
  }
}
