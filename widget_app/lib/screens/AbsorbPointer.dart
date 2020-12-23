import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:outline_material_icons/outline_material_icons.dart';


class MyAbsorbPointer extends StatefulWidget {
  final String title;
  MyAbsorbPointer({Key key, this.title}) : super(key: key);
  @override
  _MyAbsorbPointer createState() => _MyAbsorbPointer();
}

class _MyAbsorbPointer extends State<MyAbsorbPointer> {

  bool isAbsorb = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                AnimatedContainer(
                    duration: Duration(milliseconds: 200),
                    padding: EdgeInsets.all(10),
                    child: IconButton(icon:  Icon(
                      OMIcons.arrowBack,
                      size: 25,
                      color: Theme.of(context).brightness == Brightness.light
                          ? Colors.grey.shade600
                          : Colors.grey.shade300,
                    ), onPressed: (){
                      Navigator.of(context).pop();
                    })
                ),
                Text(widget.title, style: TextStyle(
                    fontFamily: 'ZillaSlab',
                    fontWeight: FontWeight.w700,
                    fontSize: 26,
                    color: Theme.of(context).primaryColor),),
                Switch(value: isAbsorb, onChanged: (bool b){
                  setState(() {
                    isAbsorb = b;
                  });
                })
              ],
            ),
            Container( height: MediaQuery.of(context).size.height * 0.8,
              child: AbsorbPointer(
                absorbing: isAbsorb,
                child: InkWell(
                  onTap: (){},
                  child: Center(
                    child: Text("Toucher l'ecran ...", style: TextStyle(
                        fontFamily: 'ZillaSlab',
                        fontSize: 20,
                        fontWeight: FontWeight.w800),)
                  ),
                ),),
              )
          ],
        ),
        margin: EdgeInsets.only(top: 2),
        padding: EdgeInsets.only(left: 15, right: 15),
      )),
    );
  }
}
