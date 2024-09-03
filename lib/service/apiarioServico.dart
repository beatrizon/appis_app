import 'dart:js_interop_unsafe';

import 'package:appis_app/models/anotacoes_modelo.dart';
import 'package:appis_app/models/cadastroApiarios.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ApiarioServico {
  String userID;

  ApiarioServico() : userID = FirebaseAuth.instance.currentUser!.uid;

  FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> AdicionarApiarios(ApiariosModelo apiariosModelo) async {
    return await _firestore
        .collection(userID)
        .doc(apiariosModelo.id)
        .set(apiariosModelo.toMap());
  }

  Future<void> adicionarAnotacoes(String idApiario, anotacoesModelo) async {
    return await _firestore
        .collection(userID)
        .doc(idApiario)
        .collection("anotacoes")
        .doc(anotacoesModelo.id)
        .set(anotacoesModelo.toMap());
  }
   Future<List<ApiariosModelo>> fetchApiarios() async {
    try {
      QuerySnapshot<Map<String, dynamic>> snapshot = await _firestore.collection(userID).get();
      List<ApiariosModelo> apiariosList = snapshot.docs.map((doc) {
        return ApiariosModelo.fromMap(doc.data());
      }).toList();

      return apiariosList;
    } catch (e) {
      print('Erro ao buscar apiários: $e');
      return [];
    }
  }


  Stream<QuerySnapshot<Map<String, dynamic>>> conectarStreamApiarios(){
     return _firestore.collection(userID).snapshots();

  }
  Future<List<anotacoesModelo>> fetchAnotacoes(String apiarioId) async {
    try {
      QuerySnapshot<Map<String, dynamic>> snapshot = await _firestore
          .collection(userID)
          .doc(apiarioId)
          .collection("anotacoes")
          .get();
          List<anotacoesModelo> anotacoesList = snapshot.docs.map((doc) {
        return anotacoesModelo.fromMap(doc.data());
      }).toList();

      return anotacoesList;
    } catch (e) {
      print('Erro ao buscar anotações: $e');
      return [];
    }
  }

  Future<void> removerApiario({required String idApiario}){
    return _firestore.collection(userID).doc(idApiario).delete();
  }

}
