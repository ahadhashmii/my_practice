import 'package:flutter/material.dart';
import 'package:untitled/screens/login/widgets/custom_button.dart';
import 'package:untitled/screens/login/widgets/custom_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _name = TextEditingController();
  final _city = TextEditingController();
  final _address = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            CustomTextField(myController: _name, hint: 'Name', icon: Icons.person,),
            const SizedBox(height: 15,),
            CustomTextField(myController: _city, hint: 'City', icon: Icons.location_city,),
            const SizedBox(height: 15,),
            CustomTextField(myController: _address, hint: 'Address', icon: Icons.location_city_sharp,),
            const SizedBox(height: 15,),
            CustomTextField(myController: _email, hint: 'Email', icon: Icons.email,),
            const SizedBox(height: 15,),
            CustomTextField(myController: _password, hint: 'Password', icon: Icons.lock,),
            const SizedBox(height: 15,),
            CustomButton(title: 'Signup', onpress: () {
              print('SIgnup presss');
            }),
            const SizedBox(height: 20,),
            CustomButton(title: 'Login', onpress: () {
              print('Login press');
            })
          ],
        ),
      )
    );
  }
}
