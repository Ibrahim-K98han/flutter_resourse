import 'package:flutter/material.dart';



//Mediaquery
//Layout builder
//fractional sizebox
//flexible
//expanded
//orientation


class LiveClass_28_01_23 extends StatelessWidget {
  const LiveClass_28_01_23({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    // print(size.width);
    // print(size.height);
    // print(size.aspectRatio);
    return Scaffold(
      appBar: AppBar(title: Text('Live Class 28-01-2023'),),
      body:
      // Column(
      //   children: [
      //     Flexible(
      //       flex: 2,
      //       child: Container(
      //         height: 200,
      //         width: 200,
      //         color: Colors.red,
      //       ),
      //     ),
      //     Flexible(
      //       flex: 6,
      //       child: Container(
      //         height: 200,
      //         width: 200,
      //         color: Colors.green,
      //       ),
      //     ),
      //     SizedBox(height: 200,)
      //   ],
      // )
      // FractionallySizedBox(
      //   heightFactor: 0.7,
      //   widthFactor: 0.6,
      //   child: Container(
      //     color: Colors.orange,
      //   ),
      // )
      // OrientationBuilder(
      //   builder: (contex, orientation){
      //     if(orientation == Orientation.portrait){
      //       return Center(child: Text('Portrait'));
      //     }else{
      //       return Center(child: Text('Landscape'));
      //     }
      //   },
      // )
      // LayoutBuilder(
      //   builder: (context, constraints){
      //     constraints.
      //    if(constraints.maxWidth < 500){
      //      return Center(
      //        child: Text('Small Phone'),
      //      );
      //    }else if(constraints.maxWidth<700){
      //      return Center(child: Text('Big Phone'),);
      //    }else if(constraints.maxWidth<100){
      //      return Center(child: Text('Tablet'),);
      //    }else if(constraints.maxWidth<1500){
      //      return Center(child: Text('Web'),);
      //    }
      //     return Center(
      //       child: Column(
      //         children: [
      //           Text(constraints.minWidth.toString()),
      //           Text(constraints.maxWidth.toString()),
      //           Text(constraints.maxHeight.toString()),
      //           Text(constraints.minHeight.toString()),
      //         ],
      //       ),
      //     );
      //   },
      // )
    );
  }
}
