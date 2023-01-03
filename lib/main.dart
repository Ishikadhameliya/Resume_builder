import 'package:flutter/material.dart';
import 'package:resume_buider/screens/achivements_page.dart';
import 'package:resume_buider/screens/buildoption_page.dart';
import 'package:resume_buider/screens/carrierobjective_page.dart';
import 'package:resume_buider/screens/contactinfo_page.dart';
import 'package:resume_buider/screens/declaration_page.dart';
import 'package:resume_buider/screens/declarationsecond_page.dart';
import 'package:resume_buider/screens/education_page.dart';
import 'package:resume_buider/screens/experience_page.dart';
import 'package:resume_buider/screens/interest_page.dart';
import 'package:resume_buider/screens/pdf_page.dart';
import 'package:resume_buider/screens/personaldetails_page.dart';
import 'package:resume_buider/screens/projects_page.dart';
import 'package:resume_buider/screens/reference_page.dart';
import 'package:resume_buider/screens/technicalskills_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'resume',
    routes: {
      'resume': (context) => const Resume(),
      'contact': (context) => const Contact(),
      'options': (context) => const Options(),
      'carrier': (context) => const Carrier(),
      'personal': (context) => const Personal(),
      'education': (context) => const Education(),
      'experience': (context) => const Experience(),
      'skills': (context) => const Skills(),
      'hobby': (context) => const Hobby(),
      'project': (context) => const Projects(),
      'achievement': (context) => const Achievement(),
      'reference': (context) => const References(),
      'declaration': (context) => const Declaration(),
      'pdf_page':(context) => const pdf(),
      'declare':(context) => const Declare(),
    },
  ));
}
class Resume extends StatefulWidget {
  const Resume({super.key});
  @override
  State<Resume> createState() => _ResumeState();
}
class _ResumeState extends State<Resume> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Resume Builder",style: TextStyle(fontSize: 25,fontWeight:
        FontWeight.bold),),
        centerTitle: true,
        elevation: 0,
// toolbarHeight: 150,
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height * 0.08,
            width: MediaQuery.of(context).size.width,
            color: Colors.blue,
            child: const Text(
              "Resumes",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            ),
          ),
          const SizedBox(height: 50,),
          Container(
            height: 50,
            width: 50,
            child: Image.asset('assets/images/open-cardboard-box.png'),),
          const Text("No Resumes + Create New resume.",style: TextStyle(color:
          Colors.black38,fontSize: 18),),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            Navigator.pushNamed(context, 'options');
          });
        },
        child: const Icon(Icons.add,size: 50,),
      ),
    );
  }
}
