import 'package:flutter/material.dart';

class UserModel {
  final int id;
  final String phone;
  final String name;

  UserModel({
      required this.id,
      required this.phone,
      required this.name,

});
}
class UsersScreen extends StatelessWidget
  {
    List<UserModel> users = [
      UserModel(id: 1,
          phone: '+201009143696',
          name: 'Reham Samir',
      ),
      UserModel(id: 2,
        phone: '+201116447055',
        name: 'Rawan Samir',
      ),
      UserModel(id: 3,
        phone: '+201158632547',
        name: 'Saif Samir',
      ),
      UserModel(id: 1,
        phone: '+201009143696',
        name: 'Reham Samir',
      ),
      UserModel(id: 2,
        phone: '+201116447055',
        name: 'Rawan Samir',
      ),
      UserModel(id: 3,
        phone: '+201158632547',
        name: 'Saif Samir',
      ),
      UserModel(id: 1,
        phone: '+201009143696',
        name: 'Reham Samir',
      ),
      UserModel(id: 2,
        phone: '+201116447055',
        name: 'Rawan Samir',
      ),
      UserModel(id: 3,
        phone: '+201158632547',
        name: 'Saif Samir',
      ),
    ];
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text(
          'Users'
        ),

      ),
      body: ListView.separated(
          itemBuilder: (context, index) => buildUserItem(users[index]),
          separatorBuilder: (context, index) => Padding(
            padding: const EdgeInsetsDirectional.only(
              start: 20.0,
            ),
            child: Container(
              width: double.infinity,
              height: 1.0,
              color: Colors.pink[300],
            ),
          ),
          itemCount: users.length,
      ),
    );
  }
  Widget buildUserItem(UserModel user) => Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children: [
        CircleAvatar(
          backgroundColor: Colors.pink,
          radius: 25.0,
          child: Text(
            '${user.id}',
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          width: 20.0,
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${user.name}',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '${user.phone}',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ],
    ),
  );

}