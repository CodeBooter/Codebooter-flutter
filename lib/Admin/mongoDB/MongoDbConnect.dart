import 'package:mongo_dart/mongo_dart.dart';
// import 'config/config.env';

Future<bool> validateLogin(String email, String password) async {
  final db = await Db.create(
      "mongodb+srv://manav:manav@cluster0.j71ahjt.mongodb.net/jobInternships?retryWrites=true&w=majority");
  await db.open();

  final collection = db.collection('users');
  final query = where.eq('email', email).eq('password', password);
  final count = await collection.count(query);

  await db.close();

  return count > 0;
}
