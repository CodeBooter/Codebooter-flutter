import 'package:mongo_dart/mongo_dart.dart';

class AuthService {
  static Future<bool> authenticate(String email, String password) async {
    final db = await Db.create(
        'mongodb+srv://<username>:<password>@<cluster-address>/<database>?retryWrites=true&w=majority');
    await db.open();

    final collection = db.collection('users');
    final query = where.eq('email', email).eq('password', password);
    final count = await collection.count(query);

    await db.close();

    return count > 0;
  }
}
