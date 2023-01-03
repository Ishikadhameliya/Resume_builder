import 'package:flutter/material.dart';
import 'globals.dart';

class Carrier extends StatefulWidget {
  const Carrier({super.key});
  @override
  State<Carrier> createState() => _CarrierState();
}
class _CarrierState extends State<Carrier> {
  GlobalKey<FormState> id = GlobalKey<FormState>();
  TextEditingController descontroller =
  TextEditingController(text: Globals.description);
  TextEditingController designationcontroller =
  TextEditingController(text: Globals.designation);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Carrier Objective",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.w400),
        ),
        centerTitle: true,
        toolbarHeight: 150,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            key: id,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    height: MediaQuery.of(context).size.height / 2.5,
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Carrier Objective",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 200,
                          width: 300,
                          color: Colors.white,
                          child: TextFormField(
                            controller: descontroller,
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Please Enter Description";
                              }
                            },
                            onSaved: (val) {
                              setState(() {
                                Globals.description = val;
                              });
                            },
                            maxLines: 7,
                            decoration: const InputDecoration(
                              hoverColor: Colors.red,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)),
                              enabled: true,
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)),
                              border: OutlineInputBorder(),
                              hintText: "Description",
                              hintStyle: TextStyle(
                                  color: Colors.grey, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      height: MediaQuery.of(context).size.height / 3.5,
                      width: MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Current Designation(Experienced Candidate)",
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            controller: designationcontroller,
                            validator: (val) {
                              if (val!.isEmpty) {
                                return "Please Enter Designation";
                              }
                            },
                            onSaved: (val) {
                              setState(() {
                                Globals.designation = val;
                              });
                            },
                            decoration: const InputDecoration(
                              hoverColor: Colors.red,
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)),
                              enabled: true,
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)),
                              border: OutlineInputBorder(),
                              hintText: "Software Engineer",
                              hintStyle: TextStyle(
                                  color: Colors.grey, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                          onPressed: (() {
                            if (id.currentState!.validate()) {
                              id.currentState!.save();
                            }
                          }),
                          child: const Text("Submit")),
                      OutlinedButton(
                        onPressed: () {
                          id.currentState!.reset();
                          setState(() {
                            descontroller.clear();
                            designationcontroller.clear();
                            Globals.description = null;
                            Globals.designation = null;
                          });
                        },
                        child: const Text("Reset"),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.grey.shade200,
    );
  }
}