import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

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

class _ToDoListState extends State {
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  void clearController() {
    titleController.clear();
    descriptionController.clear();
    dateController.clear();
  }

  void submit(bool doedit, [CardList? toDoModeObj]) {
    if (titleController.text.trim().isNotEmpty &&
        descriptionController.text.trim().isNotEmpty &&
        dateController.text.trim().isNotEmpty) {
      if (!doedit) {
        setState(() {
          todoList.add(
            CardList(
                title: titleController.text.trim(),
                description: descriptionController.text.trim(),
                date: dateController.text.trim()),
          );
        });
      } else {
        setState(() {
          toDoModeObj!.date =
              dateController.text.trim(); // trim used for white spaces
          toDoModeObj.description = descriptionController.text.trim();
          toDoModeObj.title = titleController.text.trim();
        });
      }
    }
    clearController();
  }

  void showBottomSheet(bool doedit, [CardList? toDoModelObj]) {
    showModalBottomSheet(
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        isDismissible: true,
        context: context,
        builder: (context) {
          return Padding(
            padding: EdgeInsets.only(
                left: 15,
                right: 15,
                bottom: MediaQuery.of(context)
                    .viewInsets
                    .bottom), // to avoid the keyboard overlap the screen
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Create Task",
                  style: GoogleFonts.quicksand(
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Title",
                      style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.w400,
                        fontSize: 11,
                        color: const Color.fromRGBO(0, 139, 148, 1),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      controller: titleController,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(0, 139, 148, 1),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.purpleAccent),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Description",
                      style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.w400,
                        fontSize: 11,
                        color: const Color.fromRGBO(0, 139, 148, 1),
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    TextField(
                      controller: descriptionController,
                      maxLines: 4,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                            color: Color.fromRGBO(0, 139, 148, 1),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.purpleAccent),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Date",
                      style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.w400,
                        fontSize: 11,
                        color: const Color.fromRGBO(0, 139, 148, 1),
                      ),
                    ),
                    TextField(
                      controller: dateController,
                      readOnly: true,
                      decoration: InputDecoration(
                        suffix: const Icon(Icons.date_range_rounded),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              color: Color.fromRGBO(0, 139, 148, 1),
                            )),
                        border: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.purpleAccent),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                      onTap: () async {
                        DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2015),
                          lastDate: DateTime(2027),
                        );

                        String formateDate =
                            DateFormat.yMMMd().format(pickedDate!);
                        setState(() {
                          dateController.text = formateDate;
                        });
                      },
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  width: 300,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(30)),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(0, 139, 148, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      doedit ? submit(doedit, toDoModelObj) : submit(doedit);

                      Navigator.of(context)
                          .pop(); // off navigotor screen bottomsheet
                    },
                    child: Text("Submit",
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 22)),
                  ),
                ),
                const SizedBox(
                  height: 30,
                )
              ],
            ),
          );
        });
  }

  void removeTask(CardList toDoModelObj) {
    setState(() {
      todoList.remove(toDoModelObj);
    });
  }

  void editTask(toDoModelObj) {
    titleController.text = toDoModelObj.title;
    descriptionController.text = toDoModelObj.description;
    dateController.text = toDoModelObj.date;

    showBottomSheet(true, toDoModelObj);
  }

  @override
  void dispose() {
    super.dispose();
    titleController.dispose();
    dateController.dispose();
    descriptionController.dispose();
  }

  var listOfColor = [
    const Color.fromRGBO(250, 232, 234, 1),
    const Color.fromRGBO(250, 232, 252, 1),
    const Color.fromRGBO(250, 249, 234, 1),
    const Color.fromRGBO(232, 237, 252, 1),
    const Color.fromRGBO(240, 215, 255, 1),
  ];
  List todoList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
        foregroundColor: const Color.fromRGBO(255, 255, 255, 1),
        title: Text(
          "To do List",
          style:
              GoogleFonts.quicksand(fontWeight: FontWeight.w700, fontSize: 26),
        ),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 15, right: 15, top: 30, bottom: 40),
        child: ListView.builder(
          itemCount: todoList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(
                  left: 10, right: 10, top: 10, bottom: 10),
/* 1st container */
              child: Container(
                decoration: BoxDecoration(
                    color: listOfColor[index % listOfColor.length],
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                    boxShadow: const [
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                todoList[index].title,
                                style: GoogleFonts.quicksand(
                                  textStyle: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                todoList[index].description,
                                style: GoogleFonts.quicksand(
                                  textStyle: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12),
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
                        Text(
                          todoList[index].date,
                          style: GoogleFonts.quicksand(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 12),
                          ),
                        ),
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
                              onTap: () {
                                editTask(todoList[index]);
                              },
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
                              onTap: () {
                                removeTask(todoList[index]);
                              },
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
          clearController();
          showBottomSheet(
            false,
          );
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
}

class CardList {
  String? title;
  String? description;
  String? date;

  CardList(
      {required this.title, required this.description, required this.date});
}
