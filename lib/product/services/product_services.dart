import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import 'package:mercadinho/product/models/product.dart';
import 'package:mercadinho/utils/exceptions/my_firebase_auth_exceptions.dart';
import 'package:mercadinho/utils/exceptions/my_firebase_exceptions.dart';
import 'package:mercadinho/utils/exceptions/my_platform_exceptions.dart';

class ProductServices {
  // -- instanciar o firebase
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // -- instanciar o firestorage
  final FirebaseStorage _storage = FirebaseStorage.instance;

  // -- DTO
  Product? product;

  // -- save method
  save(Product product, dynamic image) {
    try {} on FirebaseAuthException catch (e) {
      throw MyFirebaseAuthExceptions(e.code).message;
    } on FirebaseException catch (e) {
      throw MyFirebaseExceptions(e.code).message;
    } on PlatformException catch (e) {
      throw MyPlatformExceptions(e.code).message;
    } catch (e) {
      throw 'Algo está errado. Por favor, tente novamente';
    }
  }
}
