import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import '../Lab17/studentModel.dart';



class DatabaseHelper {

  static final DatabaseHelper instance = DatabaseHelper._internal();
  DatabaseHelper._internal();
  Database? _database;

  Future<Database> initDB() async {
    final path = join(await getDatabasesPath(), "studentDB.db");

    return await openDatabase(
        path,
        version: 1,
        onCreate: (db,version) async {
          await db.execute('''
      CREATE TABLE studentDetail(
        studentId INTEGER PRIMARY KEY AUTOINCREMENT,
        studentName TEXT,
        studentEnrollmentNo TEXT,
        semester TEXT,
        branch TEXT,
        mobile TEXT,
        password TEXT
      )
    ''');
        }
    );

  }

  Future<int> insertStudent(Student student) async {
    final db = _database ?? await initDB();
    return await db.insert('studentDetail', student.toMap());
  }

  Future<List<Student>> getStudents() async {
    final db = _database ?? await initDB();
    final result = await db.query('studentDetail');
    return result.map( (e) => Student.fromMap(e) ).toList();
  }

  Future<Student?>  getStudentByName(String studentName) async{
    final db = _database ?? await initDB();
    final result = await db.query(
      "studentDetail",
      where: "studentName = ?",
      whereArgs: [studentName],
    );

    if(result.isNotEmpty){
      return Student.fromMap(result.first);
    }else{
      return null;
    }
  }

  Future<int> updateStudentDetail(Student student) async{
    final db=_database ?? await initDB();
    return await db.update("studentDetail",
        student.toMap(),
      where: "studentId = ?",
      whereArgs: [student.studentId],
    );
  }

  Future<int> deleteStudent(int id) async{
    final db=_database ?? await initDB();
    return await db.delete(
      "studentDetail",
      where: "studentId = ?",
      whereArgs: [id],
    );
  }

}
