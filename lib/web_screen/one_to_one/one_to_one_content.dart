import 'package:aztlan/shared/colors.dart';
import 'package:aztlan/shared/text_form.dart';
import 'package:aztlan/web_screen/one_to_one/snap_pages/basic_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OneToOneContent extends StatefulWidget {
  final double width, height;

  const OneToOneContent({Key key, this.width, this.height}) : super(key: key);

  @override
  _OneToOneContentState createState() => _OneToOneContentState();
}

class _OneToOneContentState extends State<OneToOneContent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Custom navigation dots.'),
        Container(
          height: widget.height * 0.8,
          width: widget.width*0.9,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Card(
              margin: EdgeInsets.zero,
                elevation: 10,
                color: White,
                child: OneToOnePageOne()
            ),
          ),
        )
      ],
    );
  }
}



