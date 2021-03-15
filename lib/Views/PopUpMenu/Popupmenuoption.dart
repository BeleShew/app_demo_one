import 'package:flutter/material.dart';

enum MenuOption { Send, Draft, Discard }

//String _selectedItem = 'Sun';
class PopupMenuOption extends StatelessWidget {
  const PopupMenuOption({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<MenuOption>(
      itemBuilder: (BuildContext context) {
        return <PopupMenuEntry<MenuOption>>[
          PopupMenuItem(
            //child: Text("Send"),
            child: Icon(
              Icons.send,
              color: Colors.black,
              size: 28,
            ),
            value: MenuOption.Send,
          ),
          PopupMenuItem(
            //child: Text("Draft"),
            child: Icon(
              Icons.drafts,
              color: Colors.black,
              size: 28,
            ),
            value: MenuOption.Draft,
          ),
          PopupMenuItem(
            //child: Text("Discard"),
            child: Icon(
              Icons.cancel,
              color: Colors.black,
              size: 28,
            ),
            value: MenuOption.Discard,
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
