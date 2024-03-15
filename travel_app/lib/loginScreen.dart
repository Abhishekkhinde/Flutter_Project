import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State createState() => _LoginPageState();
}

class LoginData {
  final String? name;
  final dynamic password;

  LoginData({required this.name, required this.password});
}

class _LoginPageState extends State {
  TextEditingController nameController = TextEditingController();
  TextEditingController passController = TextEditingController();
  final FocusNode nameFocusNode = FocusNode();
  final FocusNode passFocusNode = FocusNode();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  String? name = '';
  String? password;

  List loginlist = [
    LoginData(name: 'monika', password: 'monika123'),
    LoginData(name: 'abhishek', password: 'abhishek123'),
    LoginData(name: 'vivek', password: 'vivek123'),
    LoginData(name: 'darshan', password: 'darshan123'),
    LoginData(name: 'shivani', password: 'shivani123'),
    LoginData(name: 'dev', password: 'dev123'),
  ];
  bool flag = true;
  bool homeScreen = false;

  void validation() {
    name = nameController.text;
    password = passController.text;
    if (flag == false) {
      for (int i = 0; i < loginlist.length; i++) {
        if (loginlist[i].name == name && loginlist[i].password == password) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text("Login successfully "),
            ),
          );
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const HomePage()),
          );
        }
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Login failed "),
        ),
      );
    }
  }

  Scaffold loginpagen() {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/img5.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Form(
          key: _formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 50,
                margin: const EdgeInsets.all(40),
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 70,
                    ),
                    Image.asset(
                      "assets/googleimg.png",
                      height: 30,
                    ),
                    const Text(
                      "  Log In with Google",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Text(
                "OR",
                style: GoogleFonts.quicksand(
                    fontSize: 15, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 50,
                width: 350,
                child: TextFormField(
                  controller: nameController,
                  focusNode: nameFocusNode,
                  decoration: InputDecoration(
                    hintText: "Enter Your Name",
                    hintStyle:
                        const TextStyle(color: Colors.black, fontSize: 15),
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                      borderSide: BorderSide(width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          const BorderSide(color: Colors.orange, width: 2),
                    ),
                  ),
                  onChanged: (value) {
                    name = value;
                    print("Value=$value");
                  },
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.emailAddress,
                  validator: (name) {
                    if (name == null || name.isEmpty) {
                      return "Please Enter name";
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                height: 50,
                width: 350,
                child: TextFormField(
                  controller: passController,
                  focusNode: passFocusNode,
                  obscureText: true,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    hintStyle:
                        const TextStyle(color: Colors.black, fontSize: 15),
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                      borderSide: BorderSide(width: 2),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide:
                          const BorderSide(color: Colors.orange, width: 2),
                    ),
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                  ),
                  validator: (password) {
                    if (password == null || password.isEmpty) {
                      return "Please Enter Password";
                    } else {
                      return null;
                    }
                  },
                  onChanged: (value) {
                    password = value;
                    print("Value=$value");
                  },
                  textInputAction: TextInputAction.done,
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              const SizedBox(
                height: 150,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: const MaterialStatePropertyAll(
                    Color.fromARGB(255, 81, 169, 246),
                  ),
                  fixedSize: MaterialStateProperty.all<Size>(
                    const Size(350.0, 50.0),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    flag = false;
                    homeScreen = true;
                    validation();
                  });
                },
                child: const Text(
                  "Log In",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return loginpagen();
  }
}
