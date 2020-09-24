// import 'package:Bridge/constants/constants.dart';
// import 'package:Bridge/controllers/controllers.dart';
// import 'package:Bridge/widgets/widgets.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

// class HomeScreen extends GetWidget<HomeControllers> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Responsive(
//         mobile: HomeScreenMobile(
//             scrollController: controller.trackingScrollController),
//         desktop: HomeScreenDesktop(
//             scrollController: controller.trackingScrollController),
//       ),
//     );
//   }
// }

// class HomeScreenDesktop extends GetView<HomeControllers> {
//   final TrackingScrollController scrollController;

//   const HomeScreenDesktop({
//     Key key,
//     @required this.scrollController,
//   }) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Flexible(
//           flex: 2,
//           child: Align(
//             alignment: Alignment.centerLeft,
//             child: Padding(
//               padding: const EdgeInsets.all(12.0),
//               child: MoreOptionsList(currentUser: controller.user.value),
//             ),
//           ),
//         ),
//         const Spacer(),
//         Container(
//           width: 600.0,
//           child: Obx(
//             () => controller.feeds() != null
//                 ? CustomScrollView(
//                     controller: scrollController,
//                     slivers: [
//                       SliverToBoxAdapter(
//                         child: CreatePostContainer(
//                             currentUser: controller.user.value),
//                       ),
//                       SliverList(
//                         delegate: SliverChildBuilderDelegate(
//                           (context, index) {
//                             // print(controller.feedList.length);
//                             return PostContainer(
//                               index: index,
//                             );
//                           },
//                           childCount: controller.feedList.length,
//                         ),
//                       ),
//                       SliverToBoxAdapter(
//                         child: Container(
//                           child: controller.isLoading.value
//                               ? Center(
//                                   child: CircularProgressIndicator(),
//                                 )
//                               : !controller.isMoreAvailable.value
//                                   ? Center(
//                                       child: Text('End'),
//                                     )
//                                   : null,
//                         ),
//                       ),
//                     ],
//                   )
//                 : Center(
//                     child: CircularProgressIndicator(),
//                   ),
//           ),
//         ),
//         const Spacer(),
//         Flexible(
//           flex: 2,
//           child: Align(
//             alignment: Alignment.centerRight,
//             child: Padding(
//               padding: const EdgeInsets.all(12.0),
//               // child: ContactsList(users: onlineUsers),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

// class HomeScreenMobile extends GetView<HomeControllers> {
//   final TrackingScrollController scrollController;

//   const HomeScreenMobile({
//     Key key,
//     @required this.scrollController,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder(builder: (_) {
//       if (controller.feeds() == null) {
//         return Center(
//           child: CircularProgressIndicator(),
//         );
//       }
//       return CustomScrollView(
//         physics: BouncingScrollPhysics(),
//         controller: scrollController,
//         slivers: [
//           SliverAppBar(
//             brightness: Brightness.light,
//             backgroundColor: Colors.white,
//             title: Text(
//               'bridge',
//               style: const TextStyle(
//                 color: Palette.facebookBlue,
//                 fontSize: 28.0,
//                 fontWeight: FontWeight.bold,
//                 letterSpacing: -1.2,
//               ),
//             ),
//             centerTitle: false,
//             floating: true,
//             actions: [
//               CircleButton(
//                 icon: Icons.search,
//                 iconSize: 30.0,
//                 onPressed: () => print('Search'),
//               ),
//               CircleButton(
//                 icon: MdiIcons.filter,
//                 iconSize: 30.0,
//                 onPressed: () => print('filter'),
//               ),
//             ],
//           ),
//           SliverToBoxAdapter(
//             child: CreatePostContainer(currentUser: controller.user.value),
//           ),
//           SliverList(
//             delegate: SliverChildBuilderDelegate(
//               (context, index) {
//                 // final FeedDatum post = controller.feedList[index];
//                 // print(controller.feedList.length);
//                 return PostContainer(
//                   index: index,
//                 );
//               },
//               childCount: controller.feedList.length,
//             ),
//           ),
//           SliverToBoxAdapter(
//             child: Container(
//               child: controller.isLoading.value
//                   ? Center(
//                       child: CircularProgressIndicator(),
//                     )
//                   : !controller.isMoreAvailable.value
//                       ? Center(
//                           child: Text('End'),
//                         )
//                       : null,
//             ),
//           ),
//         ],
//       );
//     });
//   }
// }
