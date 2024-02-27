import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ToDoList(),
    );
  }
}

class ToDoList extends StatefulWidget {
  const ToDoList({super.key});

  @override
  State createState() => _ToDoListState();
}

class CardList {
  String? title;
  String? description;
  String? date;

  CardList({this.title, this.description, this.date});
}

class _ToDoListState extends State {
  List taskList = [
    CardList(title: "", description: "", date: ""),
  ];

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();

  var DateFormat;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
        foregroundColor: const Color.fromRGBO(255, 255, 255, 1),
        title: Text(
          "To do List",
          style: GoogleFonts.quicksand(
            textStyle:
                const TextStyle(fontWeight: FontWeight.w700, fontSize: 26),
          ),
        ),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 15, right: 15, top: 30, bottom: 40),
        child: ListView.builder(
          itemCount: taskList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(
                  left: 10, right: 10, top: 10, bottom: 10),
/* 1st container */
              child: Container(
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(250, 232, 232, 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 20,
                          offset: Offset(0, 10),
                          color: Color.fromRGBO(0, 0, 0, 0.1),
                          spreadRadius: 1)
                    ]),
                padding: const EdgeInsets.only(
                    left: 10, right: 10, top: 10, bottom: 10),
                child: Column(
                  children: [
                    Row(
                      children: [
                        // Image container
                        Container(
                          height: 52,
                          width: 52,
                          decoration: const BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 10,
                                  offset: Offset(0, 0),
                                  color: Color.fromRGBO(0, 0, 0, 0.07),
                                  spreadRadius: 1),
                            ],
                          ),
                          child: Center(
                            child: Image.network(
                              "https://img.icons8.com/?size=100&id=53386&format=png",
                              height: 19,
                              width: 23,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                "Lorem Ipsum is simply setting industry. ",
                                style: GoogleFonts.quicksand(
                                  textStyle: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                                style: GoogleFonts.quicksand(
                                  textStyle: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 10),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const Text("16 july 2003"),
                        const Spacer(),
                        Row(
                          children: [
                            GestureDetector(
                              child: const Icon(
                                Icons.edit,
                                color: Color.fromRGBO(
                                  0,
                                  139,
                                  148,
                                  1,
                                ),
                              ),
                              onDoubleTap: () {},
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            GestureDetector(
                              child: const Icon(
                                Icons.delete,
                                color: Color.fromRGBO(
                                  0,
                                  139,
                                  148,
                                  1,
                                ),
                              ),
                              onDoubleTap: () {},
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showBottomSheet();
        },
        backgroundColor: const Color.fromRGBO(0, 139, 148, 1),
        foregroundColor: const Color.fromRGBO(255, 255, 255, 1),
        shape: const CircleBorder(side: BorderSide.none),
        child: const Icon(
          Icons.add,
          size: 50,
          shadows: [
            Shadow(
              color: Color.fromRGBO(0, 0, 0, 0.3),
              blurRadius: 8,
            ),
          ],
        ),
      ),
    );
  }

  void showBottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Padding(
            padding:
                const EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
            child: Column(
              children: [
                Text(
                  "Create Task",
                  style: GoogleFonts.quicksand(
                      textStyle: const TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                  )),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Title",
                      style: GoogleFonts.quicksand(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 11,
                          color: Color.fromRGBO(0, 139, 148, 1),
                        ),
                      ),
                    ),
                    TextField(
                      controller: _titleController,
                      decoration: const InputDecoration(
                        hintText: "Lorem Ipsum typeseting industry.",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Description",
                      style: GoogleFonts.quicksand(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 11,
                          color: Color.fromRGBO(0, 139, 148, 1),
                        ),
                      ),
                    ),
                    TextField(
                      controller: _descriptionController,
                      decoration: const InputDecoration(
                        hintText: "Lorem Ipsum typeseting industry.",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Date",
                      style: GoogleFonts.quicksand(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 11),
                        color: const Color.fromRGBO(0, 139, 148, 1),
                      ),
                    ),
                    TextField(
                      controller: _dateController,
                      decoration: const InputDecoration(
                        // hintText: "Lorem Ipsum typeseting industry.",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                      onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                            context: context,
                            firstDate: DateTime(2011, 1),
                            lastDate: DateTime(2027, 1),
                            initialDate: DateTime.now());

                        String formateDate =
                            DateFormat.yMMMs().format(pickedDate!);
                        setState(() {
                          _dateController.text = formateDate;
                        });
                      },
                    )
                  ],
                )
              ],
            ),
          );
        });
  }
}
