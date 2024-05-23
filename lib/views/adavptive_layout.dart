import 'package:flutter/material.dart';
import 'package:responsive_adaptive_ui/views/widgets/custom_drawer.dart';
import 'package:responsive_adaptive_ui/views/widgets/home_view_body.dart';

class AdaptiveLayout extends StatefulWidget {
  const AdaptiveLayout({super.key});

  @override
  State<AdaptiveLayout> createState() => _AdaptiveLayoutState();
}

class _AdaptiveLayoutState extends State<AdaptiveLayout> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: const CustomDrawer(),
      backgroundColor: const Color(0xffDBDBDB),
      appBar: buildAppBar(context),
      body: const HomeViewBody(),
    );
  }

  AppBar? buildAppBar(BuildContext context) {
    return MediaQuery.sizeOf(context).width < 900 - 32 ? AppBar(
      backgroundColor: Colors.black,
      leading: GestureDetector(
        onTap: () {
          scaffoldKey.currentState!.openDrawer();
        },
        child: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
      ),
    ) : null;
  }
}




// class CustomAdaptiveAppBar extends StatelessWidget
//     implements PreferredSizeWidget {
//   const CustomAdaptiveAppBar({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(builder: (context, constrains) {
//       if (constrains.maxWidth < 900) {
//         return AppBar(
//           backgroundColor: Colors.black,
//           leading: GestureDetector(
//             onTap: () {
//               scaffoldKey.currentState!.openDrawer();
//             },
//             child: const Icon(
//               Icons.menu,
//               color: Colors.white,
//             ),
//           ),
//         );
//       } else {
//         return SizedBox();
//       }
//     });
//   }
//
//   @override
//   // TODO: implement preferredSize
//   Size get preferredSize => Size.fromHeight(56);
// }
