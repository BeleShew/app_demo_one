import 'package:flutter/material.dart';

enum MenuOption { Send, Draft, Discard, Language }

//String _selectedItem = 'Sun';
class PopupMenuOption extends StatelessWidget {
  const PopupMenuOption({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<MenuOption>(
      itemBuilder: (BuildContext context) {
        return <PopupMenuEntry<MenuOption>>[
          PopupMenuItem(
            child: Text("Send"),
            // child: Icon(
            //   Icons.send,
            //   color: Colors.black,
            //   size: 28,
            // ),
            value: MenuOption.Send,
          ),
          PopupMenuItem(
            child: Text("Draft"),
            value: MenuOption.Draft,
          ),
          PopupMenuItem(
            child: Text("Discard"),
            value: MenuOption.Discard,
          ),
          PopupMenuItem(
            child: Text("Language"),
            value: MenuOption.Language,
          ),
        ];
      },
      onSelected: (value) {
        //  setState(() {
        //         _selectedItem = value;
        //       });
        print(value);
      },
    );
  }
}
