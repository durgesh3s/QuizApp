
import 'package:flutter/material.dart';
import 'package:untitled/screens/homescreen.dart';

class edit_pass extends StatefulWidget {
  const edit_pass({super.key});

  @override
  State<edit_pass> createState() => _edit_passState();
}
class _edit_passState extends State<edit_pass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[400],
      appBar: AppBar(
        backgroundColor: Colors.red[400],
        elevation: 0,
        title: Text('Change Password', style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(43),
            topRight: Radius.circular(43),
          ),
          color: Colors.white,
        ),
        child: Center(
          child: Wrap(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 250),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Old Password',
                          hintText: 'Enter Your Old Password',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'New Password',
                          hintText: 'Enter Your New Password',
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Repeat Password',
                          hintText: 'Repeat New Password',
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red[400],
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => homescreen())
                          );
                          showDialog(context: context, builder: (context){
                            return AlertDialog(
                              title: const Text('Password changed...'),
                            );
                          });
                        },
                        child: Text('Generate Password'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
