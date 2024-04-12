import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State createState() => _HomePageState();
}

class SingleModelView {
  final String? question;
  final List? options;
  final int? answerIndex;

  const SingleModelView({this.question, this.options, this.answerIndex});
}

class _HomePageState extends State {
  List allQuestions = [
    SingleModelView(
      question:
          "Who developed the Flutter Framework and continues to maintain it today?",
      options: ["Facebook", "Microsoft", "Google", "Oracle"],
      answerIndex: 2,
    ),
    SingleModelView(
      question:
          "Which programming language is used to build Flutter applications?",
      options: ["Kotlin", "Dart", "Java", "Go"],
      answerIndex: 1,
    ),
    SingleModelView(
      question: "How many types of widgets are there in Flutter?",
      options: ["2", "4", "6", "8+"],
      answerIndex: 0,
    ),
    SingleModelView(
      question:
          "What language is Flutter's rendering engine primarily written in?",
      options: ["Kotlin", "C++", "Dart", "Java"],
      answerIndex: 1,
    ),
    SingleModelView(
      question: "What widget would you use for repeating content in Flutter?",
      options: ["ArrayView", "Stack", "ExpandedView", "ListView"],
      answerIndex: 3,
    ),
  ];

  int questionindex = 0;
  int selectedAnswerIndex = -1;
  int noOfCorrectAnswer = 0;
  bool homeScreen = true;
  bool allQuestionscreen = false;
  final TextEditingController _nameEditingController = TextEditingController();

  MaterialStateProperty<Color?> checkAnswer(int buttonIndex) {
    if (selectedAnswerIndex != -1) {
      if (buttonIndex == allQuestions[questionindex].answerIndex) {
        return const MaterialStatePropertyAll(Colors.green);
      } else if (buttonIndex == selectedAnswerIndex) {
        return const MaterialStatePropertyAll(Colors.red);
      } else {
        return const MaterialStatePropertyAll(null);
      }
    } else {
      return const MaterialStatePropertyAll(null);
    }
  }

  void validateCurrentPage() {
    if (selectedAnswerIndex == -1) {
      return;
    }

    if (selectedAnswerIndex == allQuestions[questionindex].answerIndex) {
      noOfCorrectAnswer += 1;
    }

    if (selectedAnswerIndex != -1) {
      if (questionindex == allQuestions.length - 1) {
        setState(() {
          allQuestionscreen = false;
        });
      }
    }
    selectedAnswerIndex = -1;
    setState(() {
      questionindex++;
    });
  }

  Scaffold isHomeScreen() {
    if (homeScreen == true) {
      return Scaffold(
        backgroundColor: const Color.fromRGBO(47, 132, 139, 0.729),
        // appBar: AppBar(
        //   backgroundColor: Colors.blue[400],
        //   foregroundColor: Colors.white,
        //   title: const Text(
        //     "App Bar",
        //     style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
        //   ),
        //   centerTitle: true,
        // ),
        body: ListView(
          children: [
            Container(
                height: 150,
                width: 150,
                margin: const EdgeInsets.all(130),
                child: Image.network(
                  "https://play-lh.googleusercontent.com/VpIV5wjUERZ-dTZxuIyiqv8XkZqbcgQTxqNJnwCcszLPGezPUEY-PSTxKySq-qhf",
                  height: 100,
                )),
            Container(
              padding: const EdgeInsets.only(left: 15),
              child: const Text(
                "Enter your Name :",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(15),
              child: TextField(
                controller: _nameEditingController,
                decoration: const InputDecoration(
                  hintText: "Enter Your Name",
                  hintStyle: TextStyle(color: Colors.white),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
                cursorColor: Colors.white,
                keyboardType: TextInputType.name,
                style: const TextStyle(color: Colors.white, fontSize: 20),
                onChanged: (value) {},
                onSubmitted: (value) {},
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 180, left: 15, right: 15),
              child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      homeScreen = false;
                      allQuestionscreen = true;
                    });
                  },
                  child: const Text(
                    "Start",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  )),
            )
          ],
        ),
      );
    } else if (homeScreen == false && allQuestionscreen == true) {
      return Scaffold(
        backgroundColor: const Color.fromRGBO(47, 132, 139, 0.729),
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(47, 132, 139, 0.729),
          foregroundColor: Colors.white,
          title: const Text(
            "QUIZ APP",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  //width: 250,
                  // margin: EdgeInsets.all(10),
                  padding: const EdgeInsets.only(
                      left: 25, right: 25, top: 10, bottom: 10),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.elliptical(15, 15),
                      bottomRight: Radius.elliptical(15, 15),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Question : ${questionindex + 1} /${allQuestions.length}",
                      style: const TextStyle(
                          fontSize: 25, fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.all(30),
              padding: const EdgeInsets.all(30),
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.elliptical(25, 25),
                    bottomRight: Radius.elliptical(25, 25),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(185, 182, 182, 0.831),
                        offset: Offset(10, 10),
                        blurRadius: 8),
                    BoxShadow(
                        color: Color.fromRGBO(146, 144, 144, 0.831),
                        offset: Offset(10, 10),
                        blurRadius: 8),
                  ]),
              child: Column(
                children: [
                  SizedBox(
                    child: Text(
                      allQuestions[questionindex].question,
                      style: const TextStyle(
                          fontSize: 25, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: checkAnswer(0),
                fixedSize: const MaterialStatePropertyAll(Size(300, 50)),
                shadowColor: const MaterialStatePropertyAll(
                  Color.fromARGB(255, 0, 0, 0),
                ),
                shape: const MaterialStatePropertyAll<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.elliptical(15, 15),
                      bottomRight: Radius.elliptical(15, 15),
                    ),
                  ),
                ),
              ),
              onPressed: () {
                if (selectedAnswerIndex == -1) {
                  setState(() {
                    selectedAnswerIndex = 0;
                  });
                }
              },
              child: Text(
                "A. ${allQuestions[questionindex].options[0]} ",
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkAnswer(1),
                  fixedSize: const MaterialStatePropertyAll(Size(300, 50)),
                  shadowColor: const MaterialStatePropertyAll(
                    Color.fromARGB(255, 0, 0, 0),
                  ),
                  shape: const MaterialStatePropertyAll<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.elliptical(15, 15),
                        bottomRight: Radius.elliptical(15, 15),
                      ),
                    ),
                  ),
                ),
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    setState(() {
                      selectedAnswerIndex = 1;
                    });
                  }
                },
                child: Text(
                  "B. ${allQuestions[questionindex].options[1]} ",
                  style: const TextStyle(fontSize: 25),
                )),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkAnswer(2),
                  fixedSize: const MaterialStatePropertyAll(Size(300, 50)),
                  shadowColor: const MaterialStatePropertyAll(
                    Color.fromARGB(255, 0, 0, 0),
                  ),
                  shape: const MaterialStatePropertyAll<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.elliptical(15, 15),
                        bottomRight: Radius.elliptical(15, 15),
                      ),
                    ),
                  ),
                ),
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    setState(() {
                      selectedAnswerIndex = 2;
                    });
                  }
                },
                child: Text(
                  "C. ${allQuestions[questionindex].options[2]} ",
                  style: const TextStyle(fontSize: 25),
                )),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkAnswer(3),
                  fixedSize: const MaterialStatePropertyAll(Size(300, 50)),
                  shadowColor: const MaterialStatePropertyAll(
                    Color.fromARGB(255, 0, 0, 0),
                  ),
                  shape: const MaterialStatePropertyAll<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.elliptical(15, 15),
                        bottomRight: Radius.elliptical(15, 15),
                      ),
                    ),
                  ),
                ),
                onPressed: () {
                  if (selectedAnswerIndex == -1) {
                    setState(() {
                      selectedAnswerIndex = 3;
                    });
                  }
                },
                child: Text(
                  "D. ${allQuestions[questionindex].options[3]} ",
                  style: const TextStyle(fontSize: 25),
                )),
            const SizedBox(
              height: 20,
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              validateCurrentPage();
            });
          },
          backgroundColor: Colors.white,
          child: const Icon(Icons.arrow_forward),
        ),
      );
    } else {
      //if (40 < noOfCorrectAnswer * 100 / allQuestions.length) {
      return Scaffold(
        backgroundColor: const Color.fromRGBO(47, 132, 139, 0.729),
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(47, 132, 139, 0.729),
          foregroundColor: Colors.white,
          title: const Text(
            "QUIZ APP",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              homeScreen = true;
              questionindex = 0;
              selectedAnswerIndex = -1;
              noOfCorrectAnswer = 0;
              setState(() {});
            },
            icon: const Icon(Icons.home),
            iconSize: 40,
          ),
        ),
        body: Column(
          children: [
            // const SizedBox(
            //   height: 10,
            // ),
            (40 <= noOfCorrectAnswer * 100 / allQuestions.length)
                ? SizedBox(
                    child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Correct Questions $noOfCorrectAnswer/${allQuestions.length}",
                        style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Image.network(
                        "https://img.freepik.com/premium-vector/winner-trophy-cup-with-ribbon-confetti_51486-122.jpg",
                        height: 350,
                        width: 350,
                        alignment: Alignment.centerLeft,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text("Congratulations!!!",
                          style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.w700,
                              color: Colors.white)),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "${_nameEditingController.text} : Your Percentage : ${noOfCorrectAnswer * 100 / allQuestions.length}%",
                        style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text("You have completed the Quiz",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          )),
                    ],
                  ))
                : const SizedBox(),
            (40 > noOfCorrectAnswer * 100 / allQuestions.length)
                ? SizedBox(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Correct Questions $noOfCorrectAnswer/${allQuestions.length}",
                          style: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        Center(
                          child: Container(
                              margin: const EdgeInsets.all(50),
                              // child: Image.network(
                              //   "https://en.pimg.jp/028/500/028/1/28500028.jpg",
                              //   width: 350,
                              //   height: 350,
                              //   alignment: Alignment.centerLeft,
                              // ),
                              height: 200,
                              width: 200,
                              padding: const EdgeInsets.only(right: 10),
                              decoration: const BoxDecoration(
                                  color: Colors.white, shape: BoxShape.circle),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    " Fail",
                                    style: TextStyle(
                                        fontSize: 100,
                                        color: Colors.red,
                                        fontWeight: FontWeight.w900),
                                  ),
                                ],
                              )),
                        ),
                        const Text("Sorry!!!",
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.w700,
                                color: Colors.white)),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          "${_nameEditingController.text} : Your Percentage : ${noOfCorrectAnswer * 100 / allQuestions.length}%",
                          style: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.right,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          "You have completed the Quiz",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  )
                : const SizedBox(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            allQuestionscreen = true;
            questionindex = 0;
            selectedAnswerIndex = -1;
            noOfCorrectAnswer = 0;
            setState(() {});
          },
          backgroundColor: Colors.white,
          child: const Icon(Icons.repeat),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return isHomeScreen();
  }
}
