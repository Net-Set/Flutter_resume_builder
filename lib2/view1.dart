import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:resumebuilder/valueSample.dart';

final val_ = MyNotifier(false);

class View1 extends StatefulWidget {
  @override
  _View1State createState() => _View1State();
}

class _View1State extends State<View1> {
  bool isRead;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isRead = false;
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: val_,
      builder: (context, value, _) {
        if (value) {
          return ReadView1(this.onPress);
        } else
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: this.onPress,
                child: Text("View1"),
              ),
              Text("default"),
            ],
          );
      },
    );
  }

  onPress() {
    val_.changeState();
  }
}

class ReadView1 extends StatelessWidget {
  ReadView1(this.onTab);
  VoidCallback onTab;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Center(
        child: RaisedButton(child: Text("View2"), onPressed: this.onTab),
      ),
    );
  }
}
