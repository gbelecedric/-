import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../data/models.dart';

class WidCardComp extends StatefulWidget {
  Wid widData;
  bool isCode;
  final Function onTapAction;
  WidCardComp({this.widData, this.onTapAction, this.isCode, Key key,}) : super(key: key);

  @override
  _WidCardCompState createState() => _WidCardCompState();
}


class _WidCardCompState extends State<WidCardComp> {

  List<Color> colorList = [
    Colors.blue,
    Colors.green,
    Colors.indigo,
    Colors.red,
    Colors.cyan,
    Colors.teal,
    Colors.amber.shade900,
    Colors.deepOrange
  ];

  @override
  Widget build(BuildContext context) {
    Color color = colorList.elementAt(widget.widData.name.length % colorList.length);
    return Container(
        margin: EdgeInsets.fromLTRB(10, 8, 10, 8),
        height: 110,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          boxShadow: [buildBoxShadow(color, context)],
        ),
        child: Material(
          borderRadius: BorderRadius.circular(16),
          clipBehavior: Clip.antiAlias,
          color: Theme.of(context).dialogBackgroundColor,
          child: InkWell(
            borderRadius: BorderRadius.circular(16),
            onTap: () {
              widget.onTapAction(widget.widData);
            },
            splashColor: color.withAlpha(20),
            highlightColor: color.withAlpha(10),
            child: Container(
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '#${widget.widData.id} ${widget.widData.name.trim().length <= 20 ?
                    widget.widData.name.trim() :
                    widget.widData.name.trim().substring(0, 20) + '...'}',
                    style: TextStyle(
                        fontFamily: 'ZillaSlab',
                        fontSize: 20,
                        fontWeight: widget.isCode
                            ? FontWeight.w800
                            : FontWeight.normal),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    child: !widget.isCode ? Text(
                      '${widget.widData.content.trim().split('\n').first.length <= 45 ? widget.widData.content.trim().split('\n').first : widget.widData.content.trim().split('\n').first.substring(0, 45) + '...'}',
                      style:
                      TextStyle(fontSize: 14),
                    ) : Text('Cliquez pour voir plus...', style: TextStyle(fontSize: 14, color: Colors.black),),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 14),
                    alignment: Alignment.centerRight,
                    child: Row(
                      children: <Widget>[
                       widget.isCode ? Icon(Icons.code, size: 16, color: color): Icon(Icons.description, size: 16, color: color,),
                        Spacer(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }

  BoxShadow buildBoxShadow(Color color, BuildContext context) {
    if (Theme.of(context).brightness == Brightness.dark) {
      return BoxShadow(
          color: widget.isCode == true
              ? Colors.black.withAlpha(100)
              : Colors.black.withAlpha(10),
          blurRadius: 8,
          offset: Offset(0, 8));
    }
    return BoxShadow(
        color: widget.isCode == true
            ? color.withAlpha(60)
            : color.withAlpha(25),
        blurRadius: 8,
        offset: Offset(0, 8));
  }
}
