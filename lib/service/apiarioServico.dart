import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:appis_app/models/anotacoes_modelo.dart';
import 'package:appis_app/models/cadastroApiarios.dart';

class ApiarioServico {
  String userId;

  ApiarioServico() : userId = FirebaseAuth.instance.currentUser?.uid ?? '';

  FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> AdicionarApiarios(ApiariosModelo apiariosModelo) async {
    return await _firestore
        .collection(userId)
        .doc(apiariosModelo.id)
        .set(apiariosModelo.toMap());
  }

  Future<List<ApiariosModelo>> fetchApiarios() async {
    try {
      QuerySnapshot<Map<String, dynamic>> snapshot = await _firestore.collection(userId).get();
      List<ApiariosModelo> apiariosList = snapshot.docs.map((doc) {
        return ApiariosModelo.fromMap(doc.data());
      }).toList();

      return apiariosList;
    } catch (e) {
      print('Erro ao buscar apiários: $e');
      return [];
    }
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> conectarStreamApiarios() {
    return _firestore.collection(userId).snapshots();
  }

  Future<List<AnotacoesModelo>> fetchAnotacoes(String apiarioId) async {
    try {
      QuerySnapshot<Map<String, dynamic>> snapshot = await _firestore
          .collection(userId)
          .doc(apiarioId)
          .collection("anotacoes")
          .get();
      List<AnotacoesModelo> anotacoesList = snapshot.docs.map((doc) {
        return AnotacoesModelo.fromMap(doc.data());
      }).toList();

      return anotacoesList;
    } catch (e) {
      print('Erro ao buscar anotações: $e');
      return [];
    }
  }

  Future<void> removerApiario({required String idApiario}) {
    return _firestore.collection(userId).doc(idApiario).delete();
  }
}
