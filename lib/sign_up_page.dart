import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Create an Account",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 30),
              SocialButton(
                icon: FontAwesomeIcons.facebook,
                text: "Continue with Facebook",
                color: Colors.blue,
              ),
              SizedBox(height: 10),
              SocialButton(
                icon: FontAwesomeIcons.google,
                text: "Continue with Google",
                color: Colors.red,
              ),
              SizedBox(height: 10),
              SocialButton(
                icon: FontAwesomeIcons.apple,
                text: "Continue with Apple",
                color: Colors.black,
              ),
              SizedBox(height: 20),
              Text("or", style: TextStyle(color: Colors.grey)),
              SizedBox(height: 20),
              SocialButton(
                icon: FontAwesomeIcons.envelope,
                text: "Sign Up with Email",
                color: Colors.grey.shade800,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SocialButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color color;

  const SocialButton({
    super.key,
    required this.icon,
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(color: Colors.grey.shade300),
        ),
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      ),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(icon, color: color),
          SizedBox(width: 10),
          Text(
            text,
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
