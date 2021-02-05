import 'package:Flutter/Models/MakeUpModel.dart';
import 'package:Flutter/Models/NoteModel.dart';
import 'package:Flutter/Services/API_Manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  final List<NoteModel> lists = [
    new NoteModel("1", "First List", "This is the first List", "1/20/2021"),
    new NoteModel("2", "Second List", "This is the Second List", "2/20/2021"),
    new NoteModel("3", "Third List", "This is the Third List", "3/20/2021"),
    new NoteModel("4", "Fourth List", "This is the Fourth List", "4/20/2021"),
    new NoteModel("5", "Fifth List", "This is the Fifth List", "5/20/2021"),
  ];
  Future<List<MakeUpModel>> api_manager;
  @override
  void initState() {
    api_manager = Api_Manager().getMekups();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
      ),
      body: Container(
        child: FutureBuilder<List<MakeUpModel>>(
          future: api_manager,
          builder: (context, snapshoot) {
            if (snapshoot.hasData) {
              return ListView.builder(
                itemCount: snapshoot.data.length,
                itemBuilder: (context, index) {
                  var mekupId = snapshoot.data;
                  return Container(
                    color: Colors.blue[50],
                    padding: EdgeInsets.only(
                      top: 5,
                    ),
                    child:
                        // Row(
                        // children: <Widget>[
                        // Card(
                        //   clipBehavior: Clip.antiAlias,
                        //   shape: RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.circular(10),
                        //   ),
                        //   child: AspectRatio(
                        //     aspectRatio: 1,
                        //     child: Image.network(mekupId[index].imageLink,
                        //         fit: BoxFit.cover),
                        //   ),
                        // ),
                        Expanded(
                      child: Row(
                        children: <Widget>[
                          // Card(
                          //   clipBehavior: Clip.antiAlias,
                          //   shape: RoundedRectangleBorder(
                          //     borderRadius: BorderRadius.circular(10),
                          //   ),
                          //   child: AspectRatio(
                          //     aspectRatio: 1,
                          //     child: Image.network(mekupId[index].imageLink,
                          //         fit: BoxFit.cover),
                          //   ),
                          // ),
                          Expanded(
                            child: Card(
                              shadowColor: Colors.blueAccent,
                              margin: EdgeInsets.all(5),
                              clipBehavior: Clip.antiAlias,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Wrap(
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(5.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          mekupId[index].name,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.blue[800],
                                            fontSize: 16,
                                          ),
                                        ),
                                        Text(
                                          mekupId[index].description,
                                          style: TextStyle(
                                            fontFamily: 'Norican',
                                            fontSize: 16,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 3,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              );
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
      // body: ListView.separated(
      //   separatorBuilder: (_, __) => Divider(height: 1, color: Colors.green),
      //   itemBuilder: (_, index) {
      //     return Dismissible(
      //       key: ValueKey(lists[index].noteId),
      //       direction: DismissDirection.startToEnd,
      //       onDismissed: (direction) => {},
      //       confirmDismiss: (direction) async {
      //         final result = await showDialog(
      //           context: context,
      //           builder: (_) => EditNote(),
      //         );
      //         if (result != null) {
      //           return result;
      //         }
      //       },
      //       background: Container(
      //         color: Colors.red,
      //         padding: EdgeInsets.all(20),
      //         child: Align(
      //           child: Icon(
      //             Icons.delete,
      //             color: Colors.white,
      //           ),
      //           alignment: Alignment.centerLeft,
      //         ),
      //       ),
      //       child: ListTile(
      //         title: Text(lists[index].noteTitle),
      //         subtitle: Text("Last created at ${lists[index].noteCreated}"),
      //         onTap: () => {
      //           // Navigator.push(
      //           //     context,
      //           //     new MaterialPageRoute(
      //           //       builder: (context) => new EditNote(),
      //           //     ))
      //           Navigator.of(context)
      //               .push(MaterialPageRoute(builder: (_) => new EditNote()))
      //         },
      //       ),
      //     );
      //   },
      //   itemCount: lists.length,
      // ),
    );
  }
}
