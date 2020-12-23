import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'package:widget_app/screens/Align.dart';
import 'package:widget_app/screens/AnimatedBuilder.dart';
import 'package:widget_app/screens/AnimatedContainer.dart';
import 'package:widget_app/screens/AnimatedContainer.dart' as prefix0;
import 'package:widget_app/screens/AnimatedList.dart';
import 'package:widget_app/screens/AnimatedOpacity.dart';
import 'package:widget_app/screens/AnimatedPadding.dart';
import 'package:widget_app/screens/AnimatedPositionned.dart';
import 'package:widget_app/screens/AnimatedSwitcher.dart';
import 'package:widget_app/screens/AspestRadion.dart';
import 'package:widget_app/screens/BackDropFilter.dart';
import 'package:widget_app/screens/ConstrainedBox.dart';
import 'package:widget_app/screens/Dismissible.dart';
import 'package:widget_app/screens/Draggable.dart';
import 'package:widget_app/screens/Expanded.dart';
import 'package:widget_app/screens/FadeInImage.dart';
import 'package:widget_app/screens/FadeTransition.dart';
import 'package:widget_app/screens/FittedBox.dart';
import 'package:widget_app/screens/Flexible.dart';
import 'package:widget_app/screens/FloatingButtonAction.dart';
import 'package:widget_app/screens/FutureBuilder.dart';
import 'package:widget_app/screens/Hero.dart';
import 'package:widget_app/screens/IndexedStack.dart';
import 'package:widget_app/screens/Inherited.dart';
import 'package:widget_app/screens/LayoutBuilder.dart';
import 'package:widget_app/screens/LimitedBox.dart';
import 'package:widget_app/screens/MediaQuery.dart';
import 'package:widget_app/screens/Opacity.dart';
import 'package:widget_app/screens/PageView.dart';
import 'package:widget_app/screens/PlaceHolder.dart';
import 'package:widget_app/screens/Positionned.dart';
import 'package:widget_app/screens/ReorderableListview.dart';
import 'package:widget_app/screens/RichText.dart';
import 'package:widget_app/screens/SafeArea.dart';
import 'package:widget_app/screens/Semantics.dart';
import 'package:widget_app/screens/SizeBox.dart';
import 'package:widget_app/screens/SliverAppBar.dart';
import 'package:widget_app/screens/SliverListGrid.dart';
import 'package:widget_app/screens/Spacer.dart';
import 'package:widget_app/screens/Stack.dart';
import 'package:widget_app/screens/Table.dart';
import 'package:widget_app/screens/Table.dart';
import 'package:widget_app/screens/Tooltip.dart';
import 'package:widget_app/screens/Transform.dart';
import 'package:widget_app/screens/ValueListEnableBuilder.dart';
import 'package:widget_app/screens/Wrap.dart';
import 'package:widget_app/screens/settings.dart';
import '../data/models.dart';
import '../components/card.dart';
import '../components/faderoute.dart';
import 'AbsorbPointer.dart';
import 'AnimatedIcon.dart';

class MyHomePage extends StatefulWidget {

  MyHomePage({Key key, this.title, this.changeTheme}) : super(key: key);
  final Function changeTheme;
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool headerShouldHide = false;
  bool isCode = true;
  TextEditingController searchController = TextEditingController();
  bool isSearchEmpty = true;

  Map<Wid, Widget> hans = {
    Wid(id: 1, name: 'AnimetedIcon', code: '', content: ''): MyAnimatedIcon(),
  };
  Map<String ,Widget> myWid = {
    'AnimetedIcon': MyAnimatedIcon(),
    'AnimetedList': MyAnimatedList(),
    'Flexible': MyFlexible(),
    'AnimetedPadding': MyAnimatedPadding(),
    'AnimetedOpacity': MyAnimatedOpacity(),
    'AnimetedPositioned': MyAnimatedPositioned(),
    'AnimetedSwitcher': MyAnimatedSwitcher(),
    'AspectRadio': MyAspectRadio(),
    'ConstrainedBox': MyConstrainedBox(),
    'Draggable': MyDraggable(),
    'IndexStack': MyIndexedStack(),
    'InheritedWidget': MyInheritedWidget(),
    'LimitedBox': MyLimitedBox(),
    'MediaQuery': MyMediaQuery(),
    'PlaceHolder': MyPlaceHolder(),
    'rehorderablelistview': MyReorderableListView(),
    'RichText': MyRichText(),
    'Semantics': MySemantics(),
    'Spacer': MySpacer(),
    'Stack': MyStack(),
    'Sliver': MySliver(),
    'Opacity': MyOpacity(),
    'SizedBox': MySizeBox(),
    'Dismissible': MyDismissible(),
    'AnimatedContainer': MyAnimatedContainer(),
    'Tooltip': MyTooltip(),
    'SafeArea': MySafeArea(),
    'FloatingButtonAction': MyFloatingButton(),
    'FadeInImage': MyFadeInImage(),
    'Hero': MyHero(),
    'BackdropFilter': MyBackDropFilter(),
    'Table': MyTable(),
    'Align': MyAlign(),
    'Wrap': MyWrap(),
    'FadeTransition': MyFadeTransition(),
    'PageView': MyPageView(),
    'Expanded': MyExpanded(),
    'Positioned': MyPositioned(),
    'Transform': MyTransform(),
    'FittedBox': MyFittedBox(),
    'SliverAppBar': MySliverAppBar(),
    'LayoutBuilder': MyLayoutBuilder(),
    'FutureBuilder': MyFutureBuilder(),
    'AnimatedBuilder': MyAnimatedBuilder(),
    'ValueListEnableBuilder': MyValueListEnableBuilder(),
    'AbsorbPointer': MyAbsorbPointer(title: 'AbsorbPointer',),
  };
  List<Wid> myArr = [
    Wid(id: 1, name: 'AnimetedIcon', code: '', content: ''),
    Wid(id: 2, name: 'AnimetedList', code: '', content: ''),
    Wid(id: 3, name: 'Flexible', code: '', content: ''),
    Wid(id: 4, name: 'AnimetedPadding', code: '', content: ''),
    Wid(id: 5, name: 'AnimetedOpacity', code: '', content: ''),
    Wid(id: 6, name: 'AnimetedPositioned', code: '', content: ''),
    Wid(id: 7, name: 'AnimetedSwitcher', code: '', content: ''),
    Wid(id: 8, name: 'AspectRadio', code: '', content: ''),
    Wid(id: 9, name: 'ConstrainedBox', code: '', content: ''),
    Wid(id: 10, name: 'Draggable', code: '', content: ''),
    Wid(id: 11, name: 'IndexStack', code: '', content: ''),
    Wid(id: 12, name: 'InheritedWidget', code: '', content: ''),
    Wid(id: 13, name: 'LimitedBox', code: '', content: ''),
    Wid(id: 14, name: 'MediaQuery', code: '', content: ''),
    Wid(id: 15, name: 'PlaceHolder', code: '', content: ''),
    Wid(id: 16, name: 'rehorderablelistview', code: '', content: ''),
    Wid(id: 17, name: 'RichText', code: '', content: ''),
    Wid(id: 18, name: 'Semantics', code: '', content: ''),
    Wid(id: 19, name: 'Spacer', code: '', content: ''),
    Wid(id: 20, name: 'Stack', code: '', content: ''),
    Wid(id: 21, name: 'Sliver', code: '', content: ''),
    Wid(id: 22, name: 'Opacity', code: '', content: ''),
    Wid(id: 23, name: 'SizedBox', code: '', content: ''),
    Wid(id: 24, name: 'Dismissible', code: '', content: ''),
    Wid(id: 25, name: 'AnimatedContainer', code: '', content: ''),
    Wid(id: 26, name: 'Tooltip', code: '', content: ''),
    Wid(id: 27, name: 'SafeArea', code: '', content: ''),
    Wid(id: 28, name: 'FloatingButtonAction', code: '', content: ''),
    Wid(id: 29, name: 'FadeInImage', code: '', content: ''),
    Wid(id: 30, name: 'Hero', code: '', content: ''),
    Wid(id: 31, name: 'BackdropFilter', code: '', content: ''),
    Wid(id: 32, name: 'Table', code: '', content: ''),
    Wid(id: 33, name: 'Align', code: '', content: ''),
    Wid(id: 34, name: 'Wrap', code: '', content: ''),
    Wid(id: 35, name: 'FadeTransition', code: '', content: ''),
    Wid(id: 36, name: 'PageView', code: '', content: ''),
    Wid(id: 37, name: 'Expanded', code: '', content: ''),
    Wid(id: 38, name: 'Positioned', code: '', content: ''),
    Wid(id: 39, name: 'Transform', code: '', content: ''),
    Wid(id: 40, name: 'FittedBox', code: '', content: ''),
    Wid(id: 41, name: 'SliverAppBar', code: '', content: ''),
    Wid(id: 42, name: 'LayoutBuilder', code: '', content: ''),
    Wid(id: 43, name: 'FutureBuilder', code: '', content: ''),
    Wid(id: 44, name: 'AnimatedBuilder', code: '', content: ''),
    Wid(id: 45, name: 'ValueListEnableBuilder', code: '', content: ''),
    Wid(id: 46, name: 'AbsorbPointer', code: 'thruihriogjeohpthjeriojrojktrioetjrij', content: 'On peut donc dire que pour le contenue du absorbpointer'),
    //Wid(id: 47, name: 'AnimetedIcon', code: '', content: ''),
    //Wid(id: 48, name: 'AnimetedIcon', code: '', content: ''),
    //Wid(id: 49, name: 'AnimetedIcon', code: '', content: ''),


];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(new FocusNode());
          },
          child: AnimatedContainer(
            duration: Duration(milliseconds: 200),
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => SettingsPage(
                                    changeTheme: widget.changeTheme)));
                      },
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 200),
                        padding: EdgeInsets.all(16),
                        alignment: Alignment.centerRight,
                        child: Icon(
                          OMIcons.settings,
                          color: Theme.of(context).brightness == Brightness.light
                              ? Colors.grey.shade600
                              : Colors.grey.shade300,
                        ),
                      ),
                    ),
                  ],
                ),
                buildHeaderWidget(context),
                buildButtonRow(),
                Container(height: 32),
                ...buildNoteComponentsList(),
              ],
            ),
            margin: EdgeInsets.only(top: 2),
            padding: EdgeInsets.only(left: 15, right: 15),
          ),
        ),
      ),
    );
  }
  Widget buildHeaderWidget(BuildContext context) {
    return Row(
      children: <Widget>[
        AnimatedContainer(
          duration: Duration(milliseconds: 200),
          curve: Curves.easeIn,
          margin: EdgeInsets.only(top: 8, bottom: 32, left: 10),
          width: headerShouldHide ? 0 : 200,
          child: Text(
           widget.title,
            style: TextStyle(
                fontFamily: 'ZillaSlab',
                fontWeight: FontWeight.w700,
                fontSize: 26,
                color: Theme.of(context).primaryColor),
            overflow: TextOverflow.clip,
            softWrap: false,
          ),
        ),
      ],
    );
  }
  Widget buildButtonRow() {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Row(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              setState(() {
                isCode = !isCode;
              });
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 160),
              height: 50,
              width: 50,
              curve: Curves.slowMiddle,
              child: Icon(
                isCode ? Icons.code : OMIcons.description,
                color: isCode ? Colors.white : Colors.grey.shade300,
              ),
              decoration: BoxDecoration(
                  color: isCode ? Colors.blue : Colors.transparent,
                  border: Border.all(
                    width: isCode ? 2 : 1,
                    color:
                    isCode ? Colors.blue.shade700 : Colors.grey.shade300,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(16))),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 8),
              padding: EdgeInsets.only(left: 16),
              height: 50,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.all(Radius.circular(16))),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      controller: searchController,
                      maxLines: 1,
                      onChanged: (value) {
                        handleSearch(value);
                      },
                      autofocus: false,
                      keyboardType: TextInputType.text,
                      style:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                      textInputAction: TextInputAction.search,
                      decoration: InputDecoration.collapsed(
                        hintText: 'Search',
                        hintStyle: TextStyle(
                            color: Colors.grey.shade300,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(isSearchEmpty ? Icons.search : Icons.cancel,
                        color: Colors.grey.shade300),
                    onPressed: cancelSearch,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
  List<Widget> buildNoteComponentsList() {
    List<Widget> noteComponentsList = [];
    myArr.sort((a, b) {
      return a.name.compareTo(b.name);
    });

    if (searchController.text.isNotEmpty) {
      myArr.forEach((note) {
        if (note.name
            .toLowerCase()
            .contains(searchController.text.toLowerCase()))
          noteComponentsList.add(WidCardComp(
            widData: note,
            onTapAction: openNoteToRead,
            isCode: isCode,
          ));
      });
      return noteComponentsList;
    }

    for(var i = 0; i < myArr.length; i ++){
      myArr[i].id = i + 1;
      noteComponentsList.add(WidCardComp(
        widData: myArr[i],
        onTapAction: openNoteToRead,
        isCode: isCode,
      ));
    }
    return noteComponentsList;
  }
  openNoteToRead(Wid widData) async {
    setState(() {
      headerShouldHide = true;
    });
    await Future.delayed(Duration(milliseconds: 230), () {});
    Navigator.push(
        context,
        FadeRoute(
            page: myWid[widData.name] ));
    await Future.delayed(Duration(milliseconds: 300), () {});

    setState(() {
      headerShouldHide = false;
    });
  }



  void cancelSearch() {
    FocusScope.of(context).requestFocus(new FocusNode());
    setState(() {
      searchController.clear();
      isSearchEmpty = true;
    });
  }
  void handleSearch(String value) {
    if (value.isNotEmpty) {
      setState(() {
        isSearchEmpty = false;
      });
    } else {
      setState(() {
        isSearchEmpty = true;
      });
    }
  }

}
