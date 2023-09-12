import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:reel_fusion/controllers/auth_controller.dart';
import 'package:reel_fusion/views/screens/add_video_screen.dart';
import 'package:reel_fusion/views/screens/profile_screen.dart';
import 'package:reel_fusion/views/screens/search_screen.dart';
import 'package:reel_fusion/views/screens/video_screen.dart';

List pages = [
  VideoScreen(),
  SearchScreen(),
  const AddVideoScreen(),
  Text("Messages Screen"),
  ProfileScreen(uid: authController.user.uid),
];

//colors
const backgroundColor = Colors.black;
var buttonColor = Colors.red[400];
const borderColor = Colors.grey;

//firebase
var firebaseAuth = FirebaseAuth.instance;
var firebaseStorage = FirebaseStorage.instance;
var firestore = FirebaseFirestore.instance;

//controller
var authController = AuthController.instance;