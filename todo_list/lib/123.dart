import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ToDoList(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ToDoList extends StatefulWidget {
  const ToDoList({super.key});
  @override
  State createState() => _TODoListState();
}

class ToDoModel {
  String title;
  String description;
  String date;

  ToDoModel(
      {required this.title, required this.description, required this.date});
}

class _TODoListState extends State {
  List data = [];

  List color = [
    const Color.fromRGBO(250, 232, 232, 1),
    const Color.fromRGBO(232, 237, 250, 1),
    const Color.fromRGBO(250, 249, 232, 1),
    const Color.fromRGBO(250, 232, 250, 1)
  ];

  bool isEdit = false;

  void bottomShade(int index) {
    TextEditingController titleController = TextEditingController();
    TextEditingController descriptionController = TextEditingController();
    TextEditingController dateController = TextEditingController();

    if (isEdit == true) {
      showModalBottomSheet(
          isScrollControlled: true,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30))),
          context: context,
          builder: (BuildContext context) {
            return Padding(
              padding: MediaQuery.of(context).viewInsets,
              child: Container(
                padding: const EdgeInsets.all(25),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Edit Task",
                      style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w800,
                          fontSize: 22,
                          color: const Color.fromRGBO(0, 139, 148, 1)),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Title",
                          style: GoogleFonts.quicksand(
                              fontWeight: FontWeight.w400,
                              fontSize: 11,
                              color: const Color.fromRGBO(0, 139, 148, 1)),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        TextField(
                          controller: titleController,
                          decoration: InputDecoration(
                            hintText: data[index].title,
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color.fromRGBO(0, 139, 148, 1),
                                    width: 0.5),
                                borderRadius: BorderRadius.circular(5)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color.fromRGBO(0, 139, 148, 1),
                                    width: 0.5),
                                borderRadius: BorderRadius.circular(5)),
                          ),
                          style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: Color.fromRGBO(0, 0, 0, .7)),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Description",
                          style: GoogleFonts.quicksand(
                              fontWeight: FontWeight.w400,
                              fontSize: 11,
                              color: const Color.fromRGBO(0, 139, 148, 1)),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        TextField(
                          controller: descriptionController,
                          decoration: InputDecoration(
                            hintText: data[index].description,
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color.fromRGBO(0, 139, 148, 1),
                                    width: 0.5),
                                borderRadius: BorderRadius.circular(5)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color.fromRGBO(0, 139, 148, 1),
                                    width: 0.5),
                                borderRadius: BorderRadius.circular(5)),
                          ),
                          style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: Color.fromRGBO(0, 0, 0, .7)),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Date",
                          style: GoogleFonts.quicksand(
                              fontWeight: FontWeight.w400,
                              fontSize: 11,
                              color: const Color.fromRGBO(0, 139, 148, 1)),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        TextField(
                          onTap: () async {
                            DateTime? pickedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2024),
                                lastDate: DateTime(2025));

                            String formatedDate =
                                DateFormat.yMd().format(pickedDate!);

                            setState(() {
                              dateController.text = formatedDate;
                            });
                          },
                          controller: dateController,
                          readOnly: true,
                          decoration: InputDecoration(
                            hintText: data[index].date,
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color.fromRGBO(0, 139, 148, 1),
                                    width: 0.5),
                                borderRadius: BorderRadius.circular(5)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color.fromRGBO(0, 139, 148, 1),
                                    width: 0.5),
                                borderRadius: BorderRadius.circular(5)),
                          ),
                          style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: Color.fromRGBO(0, 0, 0, .7)),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {

                          data.removeAt(index);

                          
                          data.insert(
                              index,
                              ToDoModel(
                                  title: titleController.text,
                                  description: descriptionController.text,
                                  date: dateController.text));

                         
                        });
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 50,
                        width: 300,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(0, 139, 148, 1),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Text(
                          "Submit",
                          style: GoogleFonts.quicksand(
                              color: const Color.fromRGBO(255, 255, 255, 1),
                              fontWeight: FontWeight.w700,
                              fontSize: 20),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          });
    } else {
      showModalBottomSheet(
          isScrollControlled: true,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30))),
          context: context,
          builder: (BuildContext context) {
            return Padding(
              padding: MediaQuery.of(context).viewInsets,
              child: Container(
                padding: const EdgeInsets.all(25),
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Create Task",
                      style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w800,
                          fontSize: 22,
                          color: const Color.fromRGBO(0, 139, 148, 1)),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Title",
                          style: GoogleFonts.quicksand(
                              fontWeight: FontWeight.w400,
                              fontSize: 11,
                              color: const Color.fromRGBO(0, 139, 148, 1)),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        TextField(
                          controller: titleController,
                          decoration: InputDecoration(
                            hintText: "Enter Title",
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color.fromRGBO(0, 139, 148, 1),
                                    width: 0.5),
                                borderRadius: BorderRadius.circular(5)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color.fromRGBO(0, 139, 148, 1),
                                    width: 0.5),
                                borderRadius: BorderRadius.circular(5)),
                          ),
                          style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: Color.fromRGBO(0, 0, 0, .7)),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Description",
                          style: GoogleFonts.quicksand(
                              fontWeight: FontWeight.w400,
                              fontSize: 11,
                              color: const Color.fromRGBO(0, 139, 148, 1)),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        TextField(
                          controller: descriptionController,
                          decoration: InputDecoration(
                            hintText: "Enter Description",
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color.fromRGBO(0, 139, 148, 1),
                                    width: 0.5),
                                borderRadius: BorderRadius.circular(5)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color.fromRGBO(0, 139, 148, 1),
                                    width: 0.5),
                                borderRadius: BorderRadius.circular(5)),
                          ),
                          style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: Color.fromRGBO(0, 0, 0, .7)),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Date",
                          style: GoogleFonts.quicksand(
                              fontWeight: FontWeight.w400,
                              fontSize: 11,
                              color: const Color.fromRGBO(0, 139, 148, 1)),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        TextField(
                          onTap: () async {
                            DateTime? pickedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2024),
                                lastDate: DateTime(2025));

                            String formatedDate =
                                DateFormat.yMd().format(pickedDate!);

                            setState(() {
                              dateController.text = formatedDate;
                            });
                          },
                          controller: dateController,
                          readOnly: true,
                          decoration: InputDecoration(
                            hintText: "Enter Date",
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color.fromRGBO(0, 139, 148, 1),
                                    width: 0.5),
                                borderRadius: BorderRadius.circular(5)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color.fromRGBO(0, 139, 148, 1),
                                    width: 0.5),
                                borderRadius: BorderRadius.circular(5)),
                          ),
                          style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 12,
                              color: Color.fromRGBO(0, 0, 0, .7)),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          data.add(ToDoModel(
                            title: titleController.text,
                            description: descriptionController.text,
                            date: dateController.text,
                          ));
                        });
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 50,
                        width: 300,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(0, 139, 148, 1),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Text(
                          "Submit",
                          style: GoogleFonts.quicksand(
                              color: const Color.fromRGBO(255, 255, 255, 1),
                              fontWeight: FontWeight.w700,
                              fontSize: 20),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          });
    }
  }

  void isDemo() {
    setState(() {
      showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return Container(
              height: 50,
              width: 50,
            );
          });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("To-do List",
              style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.w700, fontSize: 26)),
          centerTitle: true,
          backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
        ),
        body: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: color[index % color.length],
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      boxShadow: const [
                        BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.1),
                            offset: Offset(0, 10),
                            blurRadius: 20,
                            spreadRadius: 1)
                      ]),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                              height: 52,
                              width: 52,
                              decoration: const BoxDecoration(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset("asset/image.png")),
                          const SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  data[index].title,
                                  style: GoogleFonts.quicksand(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12,
                                      color: const Color.fromRGBO(0, 0, 0, 1)),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  data[index].description,
                                  style: GoogleFonts.quicksand(
                                      color:
                                          const Color.fromRGBO(84, 84, 84, 1),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 10),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Text(
                            data[index].date,
                            style: GoogleFonts.quicksand(
                                color: const Color.fromRGBO(132, 132, 132, 1),
                                fontWeight: FontWeight.w500,
                                fontSize: 10),
                          ),
                          const Spacer(),
                          GestureDetector(
                            onTap: () {
                              isEdit = true;
                              bottomShade(index);
                            },
                            child: const Icon(
                                size: 25,
                                color: Color.fromRGBO(0, 139, 148, 1),
                                Icons.edit_outlined),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                data.removeAt(index);
                              });
                            },
                            child: const Icon(
                                size: 25,
                                color: Color.fromRGBO(0, 139, 148, 1),
                                Icons.delete_outline_outlined),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              );
            }),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
          onPressed: () {
            bottomShade(0);
          },
          child: const Icon(Icons.add_outlined),
        ));
  }
}