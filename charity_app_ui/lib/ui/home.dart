import 'package:charity_app_ui/ui/colors.dart';
import 'package:charity_app_ui/ui/pics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class Home extends HookWidget {
  const Home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final scrollController = useScrollController();

    // create a list of objects to fill popular card
    final popularCardsList = [
      {
        'title': 'Education Dono For\nPoor Child',
        'image': childrenPic1,
        'target': '15,000',
        'amount': '540.99',
      },
      {
        'title': 'Clothes Dono For\nPoor Child',
        'image': childrenPic2,
        'target': '24,050',
        'amount': '1,000.00',
      },
      {
        'title': 'Food Dono For\nPoor Child',
        'image': childrenPic3,
        'target': '150,000',
        'amount': '54,000.99',
      },
      {
        'title': 'Health Dono For\nPoor Child',
        'image': childrenPic4,
        'target': '10,000',
        'amount': '3,400.99',
      },
      {
        'title': 'Essentials Dono For\nPoor Child',
        'image': childrenPic5,
        'target': '108,000',
        'amount': '13,800.99',
      }
    ];

    return NestedScrollView(
      headerSliverBuilder: (_, __) => [
        SliverAppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          collapsedHeight: 110,
          expandedHeight: height * 0.35,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar.createSettings(
            toolbarOpacity: 0,
            maxExtent: 50,
            minExtent: 10,
            currentExtent: 30,
            child: FlexibleSpaceBar(
              background: Container(
                  width: width,
                  height: height * 0.45,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                  ),
                  child: const Text("data")),
            ),
          ),
          leading: IconButton(
            color: primaryColor,
            onPressed: () {},
            icon: const Center(
              child: Card(
                color: primaryColor,
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Center(
                      child: Icon(
                        Icons.menu_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: popularCardsList.length,
                  itemBuilder: (context, index) {
                    return _popularCard();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _popularCard({
  String? title,
  String? image,
  String? amount,
  String? by,
  String? target,
  double? height,
  double? width,
}) {
  return Card(
      child: Column(children: [
    Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(image.toString()),
          fit: BoxFit.cover,
        ),
      ),
    ),
  ]));
}
