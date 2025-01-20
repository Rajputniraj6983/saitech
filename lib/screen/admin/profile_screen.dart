import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/images/engineer.png'),
            ),
           const SizedBox(height: 15),
            const Text(
              'Akshar Patel',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 20),
            ),
           const SizedBox(height: 10),
            Container(
              height: 60,
              width: 380,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),border: Border.all(color: Colors.grey.shade500)),
               child: const ListTile(
                 leading: Icon(Icons.person,size: 20,color: Colors.black,),
                 title: Text('Edit Profile',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),),
                 trailing: Icon(Icons.arrow_forward_ios_sharp,color: Colors.black,size: 20,),
               ),
            ),
            const SizedBox(height: 10),
            Container(
              height: 60,
              width: 380,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),border: Border.all(color: Colors.grey.shade500)),
              child: const ListTile(
                leading: Icon(Icons.policy_outlined,size: 20,color: Colors.black,),
                title: Text('Privacy policy',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),),
                trailing: Icon(Icons.arrow_forward_ios_sharp,color: Colors.black,size: 20,),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height: 60,
              width: 380,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),border: Border.all(color: Colors.grey.shade500)),
              child: const ListTile(
                leading: Icon(Icons.note_alt_outlined,size: 20,color: Colors.black,),
                title: Text('Terms & Conditions',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),),
                trailing: Icon(Icons.arrow_forward_ios_sharp,color: Colors.black,size: 20,),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height: 60,
              width: 380,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),border: Border.all(color: Colors.grey.shade500)),
              child: const ListTile(
                leading: Icon(Icons.book,size: 20,color: Colors.black,),
                title: Text('Helpul Contacts',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),),
                trailing: Icon(Icons.arrow_forward_ios_sharp,color: Colors.black,size: 20,),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height: 60,
              width: 380,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),border: Border.all(color: Colors.grey.shade500)),
              child: const ListTile(
                leading: Icon(Icons.circle_outlined,size: 20,color: Colors.black,),
                title: Text('About Us',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),),
                trailing: Icon(Icons.arrow_forward_ios_sharp,color: Colors.black,size: 20,),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              height: 60,
              width: 380,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),border: Border.all(color: Colors.grey.shade500)),
              child: const ListTile(
                leading: Icon(Icons.logout,size: 20,color: Colors.black,),
                title: Text('Log Out',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),),
                trailing: Icon(Icons.arrow_forward_ios_sharp,color: Colors.black,size: 20,),
              ),
            ),
            const SizedBox(height: 10),
            const Center(child: Text('Version: 1.10+12',style: TextStyle(color: Colors.grey),))
          ],
        ),
      ),
    );
  }
}
