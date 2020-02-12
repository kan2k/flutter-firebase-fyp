import 'package:flutter/material.dart';
import 'package:flutter_app/models/user.dart';


class ProfileBuilder extends StatelessWidget {

  final UserData userData;
  ProfileBuilder({ this.userData });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                radius: 40.0,
                backgroundImage: NetworkImage('${userData.avatar}'),
              ),
            ),
            SizedBox(height: 10,),
            Text( userData.name ,
                style: TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 28.0,
                  // fontWeight: FontWeight.bold,
                )),
            SizedBox(height: 20,),
            Row(
              children: <Widget>[
                Icon(
                  Icons.thumb_up,

                ),
                SizedBox(width: 10,),
                Text('Likes:',
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 16.0,
                      //fontWeight: FontWeight.bold,
                    )
                ),
                SizedBox(width: 130,),
                Icon(
                  Icons.people,),
                SizedBox(width: 10,),
                Text('Followers:',
                    style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 16.0,
                      // fontWeight: FontWeight.bold,
                    )
                ),

              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[800],
                ),
                SizedBox(width: 10.0),
                Text(
                  userData.email,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                    letterSpacing: 0.0,
                    //fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Divider(
                color: Colors.grey[600],
                height: 60.0,
              ),
            ),
            Text(
              'bookmarks',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),

            SizedBox(height: 30.0),


            SizedBox(height: 30.0),

            SizedBox(height: 10.0),


          ],
        ),
      ),

    );

  }
}