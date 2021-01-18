import 'package:flutter/material.dart';
import 'package:neomorphic/utils.dart';

class NeuMorphicWidget extends StatelessWidget {
  var bevel = 10.0;
  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).backgroundColor;
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blue,
              shape: BoxShape.circle,
              //  borderRadius: BorderRadius.circular(bevel * 10),
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    color.mix(Colors.blue, .9),
                    color.mix(Colors.blue, .9),
                    color.mix(Colors.blue, .9),
                    color.mix(Colors.blue, .9),
                  ],
                  stops: [
                    0.0,
                    .3,
                    .6,
                    1.0
                  ]),
              // border: Border(
              //   top: BorderSide(width: bevel, color: Color(0xFFFFDFDFDF)),
              //   left: BorderSide(width: bevel, color: Color(0xFFFFDFDFDF)),
              //   right: BorderSide(width: bevel, color: Color(0xFFFF7F7F7F)),
              //   bottom: BorderSide(width: bevel, color: Color(0xFFFF7F7F7F)),
              // ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  offset: -Offset((bevel / 2) + (-6), (bevel / 5)+10),
                  color: color.mix(Colors.blue[300].withOpacity(0.8), 1.1),
                ),
                BoxShadow(
                  blurRadius: 20,
                  offset: Offset((bevel / 9)+5, (bevel / 5)+5),
                  color: color.mix(Colors.blue[700].withOpacity(0.8), 1.1),
                )
              ]),
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 60),
          child: Text("Hello World"),
        ),
      ),
    );
  }
}
