import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/pages/add_post_page.dart';
import 'package:instagram_clone/pages/feed_page.dart';
import 'package:instagram_clone/pages/profil_page.dart';
import 'package:instagram_clone/pages/search_page.dart';

const kWebScreenSize = 600;

List<Widget> kHomeScreenItems = [
  const FeedPage(),
  const SearchPage(),
  const AddPostPage(),
  const Text("notif"),
  ProfilPage(
    uid: FirebaseAuth.instance.currentUser!.uid,
  ),
];
