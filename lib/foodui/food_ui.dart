import 'package:flutter/material.dart';
import 'constant/app_bar.dart';
import 'constant/colors.dart';

class FoodUi extends StatefulWidget {
  const FoodUi({Key? key}) : super(key: key);

  @override
  State<FoodUi> createState() => _FoodUiState();
}

class _FoodUiState extends State<FoodUi> {
  int indexx = 0;
  List category = ['All', 'Launch', 'Dinner', 'Breackfast'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backround,
      appBar: appbar(),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Text(
                'Popular Category',
                style: TextStyle(fontSize: 20, color: font, fontFamily: 'ro'),
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            sliver: SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    child: ListView.builder(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: ((context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                indexx = index;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: indexx == index
                                      ? mainColor
                                      : Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: indexx == index
                                            ? mainColor
                                            : Colors.transparent,
                                        offset: indexx == index
                                            ? Offset(1, 1)
                                            : Offset(0, 0),
                                        blurRadius: indexx == index ? 10 : 0)
                                  ],
                                  borderRadius: BorderRadius.circular(20)),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 17),
                                  child: Text(
                                    category[index],
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: indexx == index
                                            ? Colors.white
                                            : font,
                                        fontFamily: 'ro'),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Text(
                        'Popular',
                        style: TextStyle(
                            fontSize: 20, color: font, fontFamily: 'ro'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate((context, index) {
                return Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromARGB(255, 185, 185, 185),
                            offset: Offset(1, 2),
                            blurRadius: 15)
                      ],
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Icon(Icons.favorite_border)
                        ],
                      )
                    ],
                  ),
                );
              }, childCount: 4),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 270,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
            ),
          )
        ],
      ),
    );
  }
}
