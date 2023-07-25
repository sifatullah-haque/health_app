import 'package:flutter/material.dart';
import 'package:health/constant/my_color.dart';

class divider extends StatelessWidget {
  const divider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Expanded(
        child: Container(
            margin: const EdgeInsets.only(left: 10.0, right: 20.0),
            child: const Divider(
              color: MyColors.light_grey,
              height: 36,
            )),
      ),
      const Text("OR"),
      Expanded(
        child: Container(
            margin: const EdgeInsets.only(left: 20.0, right: 10.0),
            child: const Divider(
              color: MyColors.light_grey,
              height: 36,
            )),
      ),
    ]);
  }
}
