//import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saqha/module/archived_tasks/archived_tasks.dart';
import 'package:saqha/module/done_tasks/done_tasks.dart';
import 'package:saqha/module/new_tasks/new_tasks.dart';
//import 'package:sqflite/sqflite.dart';

class HomeLayout extends StatefulWidget
{
  const HomeLayout({Key? key}) : super(key: key);


  @override
  _HomeLayoutState createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout>
{
  int currentIndex = 0;
  List<Widget> screens =
  [
    const NewTasksScreen(),
    const DoneTasksScreen(),
    const ArchivedTasksScreen(),
  ];
  List<String> titles =
  [
    'New',
    'Done',
    'Archived',
  ];
  //Database  myDb;
  var scaffoldKey = GlobalKey<ScaffoldState>();
  bool isBottomSheetShown = false;

  @override
  void initState()
  {
    super.initState();
    //createDb();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,

      appBar: AppBar(
        title: Text(
          titles[currentIndex],
        ),
      ),
      body: screens[currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () //async
        {
          // try
          // {
          //   var name = await getName();
          //   print(name);
          //   throw ('try this Error!!!');
          // } catch (error)
          // {
          //   print('Error!! ${error.toString()}');
          // }
          // getName().then((value)
          // {
          //   print(value);
          //   print('Hiii');
          //   throw ('Try another Error!');
          // }).catchError((error){
          //   print('the error is ${error.toString()}');
          // });

          //insertToDb();

          // todo how to avoid nullcheck
          if(isBottomSheetShown)
          {
            Navigator.pop(context);
            isBottomSheetShown = false;
          } else
          {
            scaffoldKey.currentState!.showBottomSheet(
                  (context) => Container(
                width: double.infinity,
                height: 120.0,
                color: Colors.red,
              ),
            );
            isBottomSheetShown = true;
          }

        },
        child: const Icon(
          Icons.add,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.green,
        elevation: 50.0,
        showSelectedLabels: true,
        currentIndex: currentIndex,
        onTap: (index){
          setState(()
          {
            currentIndex = index;
            print(index);
          });
        },
        items:
        const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.menu,
            ),
            label: 'Tasks',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.check_circle,
            ),
            label: 'Done',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.archive_outlined,
            ),
            label: 'Archived',
          ),
        ],
      ),
    );
  }
  Future<String> getName() async
  {
    return 'Ahmad ElShiekh';
  }

//   void createDb() async
//   {
//     myDb = await openDatabase (
//       'todo.db',
//       version: 1,
//       onCreate: (myDb, version)
//       {
//         print('MyDB Created');
//         myDb.execute('create table tasks (id INTEGER PRIMARY KEY, title Text,date Text,time Text,status Text)').then((value)
//         {
//           print('Table created');
//         }).catchError((error){
//           print('Error creating table ${error.toString()}');
//         });
//       },
//       onOpen: (myDb)
//       {
//         print('MyDB Opened');
//       },
//
//     );
//   }
//   void insertToDb()
//   {
//     myDb!.transaction((txn)
//     {
//       txn.rawInsert(
//           'INSER INTO tasks(title,date,time,status) VALUES("First","1-12-20","8:11","status")'
//       ).then((value)
//       {
//         print('$value inserted successfully');
//       }).catchError((error)
//       {
//         print('Error ${error.toString()}');
//       });
//
//       return null;
//     });
//   }
}
//todo in widget_test.dart
// void main() {
//   testWidgets('Counter increments smoke test', (WidgetTester tester) async {
//     // Build our app and trigger a frame.
//     await tester.pumpWidget(const MyApp()); // remove const
