import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: height * 0.6 - 20,
            width: width * 1,
            decoration: BoxDecoration(color: Color(0xfff1f4fb)),
            child: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 290, right: 170, left: 10),
                  child: Text(
                    'LIVE FOR FOOD',
                    style: TextStyle(
                        height: 0.8,
                        color: Colors.black12,
                        fontSize: 55,
                        fontWeight: FontWeight.bold,
                        letterSpacing: -2,
                        wordSpacing: -15),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 260, left: 120),
                  child: Container(
                    height: height * 0.3 + 25,
                    width: width * 0.3 + 25,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black12,
                      image: DecorationImage(
                        image: AssetImage('assets/img/img.png'),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          ListTile(
            title: Text(
              'Account',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            subtitle: Text(
              'Login/Create Account to manage orders',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            height: height * 0.1 - 25,
            width: width * 0.9 + 10,
            decoration: BoxDecoration(
              color: Color(0xffe46c47),
            ),
            child: Center(
              child: Text(
                'LOGIN',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const SizedBox(
            height: 11,
          ),
          const Text.rich(
            TextSpan(
              children: [
                TextSpan(
                    text: '    By clicking , I accept the ',
                    style: TextStyle(color: Colors.grey, fontSize: 11)),
                TextSpan(
                    text: 'Terms & Conditions ',
                    style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
                TextSpan(
                    text: 'and ',
                    style: TextStyle(color: Colors.grey, fontSize: 11)),
                TextSpan(
                    text: 'Privacy Pol....',
                    style:
                        TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
          const Divider(
            thickness: 1.3,
            color: Colors.black,
            indent: 15,
            endIndent: 17,
          ),
          ListTile(
            leading: Icon(
              Icons.percent,
              size: 15,
            ),
            title: Text(
              'Offers',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
              size: 13,
            ),
          ),
          Divider(
            thickness: 0.2,
            color: Colors.grey,
            indent: 15,
            endIndent: 17,
          ),
          ListTile(
            leading: Icon(
              Icons.email_outlined,
              size: 15,
            ),
            title: Text(
              'Send FeedBack',
              style: TextStyle(fontSize: 15),
            ),
            subtitle: Text(
              'App version 4.58.0 (1240)',
              style: TextStyle(fontSize: 11, color: Colors.grey),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios_rounded,
              size: 13,
            ),
          )
        ],
      ),
    );
  }
}
