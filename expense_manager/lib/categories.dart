import 'package:expense_manager/boilerplate.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State {
  Future showMyDialog() async {
    return await showDialog(
        barrierColor: Colors.black26,
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            surfaceTintColor: const Color.fromRGBO(255, 255, 255, 1),
            // backgroundColor: Color.fromRGBO(255, 255, 255, 1),
            alignment: Alignment.center,
            title: Text(
              "Delete Category",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: const Color.fromRGBO(0, 0, 0, 1),
              ),
              textAlign: TextAlign.center,
            ),
            content: Text(
              "Are you sure you want to delete the selected category?",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: const Color.fromRGBO(0, 0, 0, 1),
              ),
              textAlign: TextAlign.center,
            ),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(120, 35),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      backgroundColor: const Color.fromRGBO(14, 161, 125, 1),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Delete",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(120, 35),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      backgroundColor: const Color.fromARGB(0, 195, 191, 191),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      "Cancel",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: const Color.fromRGBO(0, 0, 0, 1),
                      ),
                    ),
                  )
                ],
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Mydawer(),
      appBar: AppBar(
        title: const Text("Categories"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 23, right: 23),
        child: GridView.builder(
            itemCount: 4,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 20, crossAxisSpacing: 20),
            itemBuilder: (context, index) {
              return GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: const [
                        BoxShadow(
                            blurRadius: 8,
                            spreadRadius: 0,
                            blurStyle: BlurStyle.outer,
                            offset: Offset(1, 2),
                            color: Color.fromRGBO(0, 0, 0, 0.15))
                      ]),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 74,
                          width: 74,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                              color: Color.fromRGBO(0, 174, 91, 0.7),
                              shape: BoxShape.circle),
                          child: Image.asset(
                            "assets/medicine.png",
                            height: 40,
                            width: 40,
                          ),
                        ),
                        Text(
                          "Food",
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: const Color.fromRGBO(33, 33, 33, 1),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                onTap: () {},
                onLongPress: () async {
                  await showMyDialog();
                },
              );
            }),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        onPressed: () {
          mybottomSheet();
        },
        label: const Text("Add Category"),
        icon: const Icon(
          Icons.add_circle_outlined,
          color: Color.fromRGBO(14, 161, 125, 1),
          size: 32,
          shadows: [
            BoxShadow(
                blurRadius: 4,
                spreadRadius: 0,
                color: Color.fromRGBO(0, 0, 0, 0.25),
                blurStyle: BlurStyle.outer)
          ],
        ),
      ),
    );
  }

  void mybottomSheet() {
    showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      context: context,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
              top: 34,
              left: 22,
              right: 22,
              bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    Container(
                      height: 74,
                      width: 74,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromRGBO(140, 128, 128, 0.2)),
                      child: Image.asset(
                        "assets/image.png",
                        height: 22,
                        width: 22,
                      ),
                    ),
                    const Text("Add")
                  ],
                ),
              ),
              Text(
                "Image URL",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                  color: const Color.fromRGBO(33, 33, 33, 1),
                ),
              ),
              const SizedBox(height: 12),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter URL",
                  hintStyle: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                    color: const Color.fromRGBO(0, 0, 0, 0.8),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(
                      color: Color.fromRGBO(191, 189, 189, 1),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(
                      color: Color.fromRGBO(191, 189, 189, 1),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 18),
              Text(
                "Category",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                  color: const Color.fromRGBO(33, 33, 33, 1),
                ),
              ),
              const SizedBox(height: 12),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter Category",
                  hintStyle: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                    color: const Color.fromRGBO(0, 0, 0, 0.8),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(
                      color: Color.fromRGBO(191, 189, 189, 1),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                    borderSide: const BorderSide(
                      color: Color.fromRGBO(191, 189, 189, 1),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 18),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(14, 161, 125, 1),
                    shadowColor: const Color.fromRGBO(0, 0, 0, 0.2),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Add",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: const Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 18,
              )
            ],
          ),
        );
      },
    );
  }
}
