import 'package:flutter/material.dart';
import '../Lab17/myDatabase.dart';
import '../Lab17/studentModel.dart';
import '../Lab18/insertScreen.dart';
import '../Lab20/EditScreen.dart';
import '../Lab19/studentDetailScreen.dart';

class DisplayStudent extends StatefulWidget {
  const DisplayStudent({super.key});

  @override
  State<DisplayStudent> createState() => _DisplayStudentState();
}

class _DisplayStudentState extends State<DisplayStudent> {
  List<Student> students = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchStudents();
  }

  Future<void> fetchStudents() async {
    List<Student> result = await DatabaseHelper.instance.getStudents();
    setState(() {
      students = result;
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home screen")),
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : students.isEmpty
          ? Center(child: Text("No student data found."))
          : ListView.builder(
              itemCount: students.length,
              itemBuilder: (context, index) {
                final student = students[index];
                return Card(
                  elevation: 10,
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) =>
                              StudentDetailScreen(student: student),
                        ),
                      );
                    },
                    title: Text("name: ${students[index].studentName}"),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Enrollment No: ${students[index].studentEnrollmentNo}",
                        ),
                        SizedBox(width: 10),
                        Text("branch: ${students[index].branch}"),
                      ],
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) => EditScreen(student: students[index],onUpdate:fetchStudents,)),
                            ).then( (_){
                              fetchStudents();
                            });


                          },
                          icon: Icon(Icons.edit),
                        ),
                        IconButton(onPressed: () async {
                          final shouldDelete = await showDialog<bool>(
                            context: context,
                            builder: (_) => AlertDialog(
                              title: const Text("Delete Student"),
                              content: const Text("Are you sure you want to delete this student?"),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.pop(context, false),
                                  child: const Text("No"),
                                ),
                                TextButton(
                                  onPressed: () => Navigator.pop(context, true),
                                  child: const Text("Yes"),
                                ),
                              ],
                            ),
                          );

                          if (shouldDelete == true) {
                            await DatabaseHelper.instance.deleteStudent(student.studentId!);
                            fetchStudents(); // Refresh the list
                          }
                        }, icon: Icon(Icons.delete)),
                      ],
                    ),
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
          onPressed:()async{
          final result = await Navigator.push(context, MaterialPageRoute(builder: (_)=>AddStudentScreen()));
          if(result == true){
             fetchStudents();
          }

          },
      ),
    );

  }
}
