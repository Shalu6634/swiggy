// import 'package:flutter/material.dart';
// import 'package:marquee/marquee.dart';
// // import 'package:swiggy/screen/component/Dineout.dart';
//
// class DialogueBox extends StatefulWidget {
//   const DialogueBox({super.key});
//
//   @override
//   State<DialogueBox> createState() => _DialogueBoxState();
// }
//
// class _DialogueBoxState extends State<DialogueBox> {
//   @override
//   Widget build(BuildContext context) {
//     return
//       Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Container(
//             height: 100,
//             width: 100,
//             child: Marquee(
//               text:' mainAxisAlignment mainAxisAlignment mainAxisAlignment',
//               style: TextStyle(fontWeight: FontWeight.bold),
//               scrollAxis: Axis.horizontal,
//               crossAxisAlignment: CrossAxisAlignment.start,
//
//               blankSpace: 20.0,
//               velocity: 100.0,
//               pauseAfterRound: Duration(seconds: 1),
//               startPadding: 10.0,
//               accelerationDuration: Duration(seconds: 1),
//               accelerationCurve: Curves.linear,
//               decelerationDuration: Duration(milliseconds: 500),
//               decelerationCurve: Curves.easeOut,
//             ),
//           )
//
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/cupertino.dart';

enum DirectionMarguee { oneDirection, TwoDirection }

class Marquee extends StatelessWidget {
  final Widget child;
  final TextDirection textDirection;
  final Axis direction;
  final Duration animationDuration, backDuration, pauseDuration;
  final DirectionMarguee directionMarguee;
  final Cubic forwardAnimation;
  final Cubic backwardAnimation;
  final bool autoRepeat;
  Marquee(
      {required this.child,
        this.direction = Axis.horizontal,
        this.textDirection = TextDirection.ltr,
        this.animationDuration = const Duration(milliseconds: 5000),
        this.backDuration = const Duration(milliseconds: 5000),
        this.pauseDuration = const Duration(milliseconds: 2000),
        this.directionMarguee = DirectionMarguee.TwoDirection,
        this.forwardAnimation = Curves.easeIn,
        this.backwardAnimation = Curves.easeOut,
        this.autoRepeat = true});

  final ScrollController _scrollController = ScrollController();

  scroll(bool repeated) async {
    do {
      if (_scrollController.hasClients) {
        await Future.delayed(pauseDuration);
        if (_scrollController.hasClients)
          await _scrollController.animateTo(
              _scrollController.position.maxScrollExtent,
              duration: animationDuration,
              curve: forwardAnimation);
        await Future.delayed(pauseDuration);
        if (_scrollController.hasClients)
          switch (directionMarguee) {
            case DirectionMarguee.oneDirection:
              _scrollController.jumpTo(
                0.0,
              );
              break;
            case DirectionMarguee.TwoDirection:
              await _scrollController.animateTo(0.0,
                  duration: backDuration, curve: backwardAnimation);
              break;
          }
        repeated = autoRepeat;
      } else {
        await Future.delayed(pauseDuration);
      }
    } while (repeated);
  }

  @override
  Widget build(BuildContext context) {
    bool _repeated = true;
    scroll(_repeated);
    return Directionality(
      textDirection: textDirection,
      child: SingleChildScrollView(
        child: child,
        scrollDirection: direction,
        controller: _scrollController,
      ),
    );
  }
}
String list = 'featureList';