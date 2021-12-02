import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  const MessengerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 10.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 25.0,
              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKcqSwttJcDRrXV-Dcklic5HpnXKSFUjaBpyLeZ-LGraYbxoidybUPFi2MdAh6U_npcMY&usqp=CAU'),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Chats',
              style: TextStyle(
                color: Colors.blue,
              ),
            ),

          ],
        ),
        actions: [
          IconButton(
            icon: CircleAvatar(
              radius: 15.0,
              backgroundColor: Colors.amber,
              child: Icon(
                Icons.camera_alt,
                size: 16.0,
                color: Colors.red,
              ),
            ),
            onPressed:  (){},
          ),
          IconButton(
            icon: CircleAvatar(
              radius: 15.0,
              backgroundColor: Colors.amber,
              child: Icon(
                Icons.edit,
                size: 20.0,
                color: Colors.red,
              ),
            ),
            onPressed:  (){},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0,),
                color: Colors.greenAccent[100],
              ),
              padding: EdgeInsets.all(7.5,),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Text(
                    'Search...',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Column(

              children: [
                Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    CircleAvatar(
                      radius: 35.0,
                      backgroundImage: NetworkImage('https://i0.wp.com/post.healthline.com/wp-content/uploads/2021/10/happy-boy-with-painted-hands-1296x728-header.jpg?w=1155&h=1528'),
                      //backgroundImage: NetworkImage('https://www.children1st.org.uk/media/6747/ashley.jpg'),
                      //backgroundImage: NetworkImage('https://2rdnmg1qbg403gumla1v9i2h-wpengine.netdna-ssl.com/wp-content/uploads/sites/3/2014/07/childListening-142019477_770x533-650x428.jpg'),
                      //backgroundImage: NetworkImage('https://uploads1.bundoo.com/wp-content/uploads/2015/01/What-kind-of-child-do-you-haveTHUMB-800x500.png'),
                      //backgroundImage: NetworkImage('https://www.childrensrights.org/wp-content/uploads/2020/01/Childrens-Rights-Girl2-Homepage-2020-web-resized.jpg'),
                      //backgroundImage: NetworkImage('https://images.squarespace-cdn.com/content/v1/531748e4e4b035ad0334788c/1603290409752-CB82UTV4OSP47K5WSBF8/Protecting%2BChildren.jpg?format=2500w'),
                      //backgroundImage: NetworkImage('https://cca-ct.org/wp-content/uploads/2021/09/cca-web-front-page-crop-1.jpg'),

                    ),
                    CircleAvatar(
                      radius: 7.0,
                      backgroundColor: Colors.red,

                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
