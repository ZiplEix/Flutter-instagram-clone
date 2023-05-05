import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  const User({
    required this.email,
    required this.uid,
    required this.photoUrl,
    required this.username,
    required this.bio,
    required this.following,
    required this.followers,
  });

  final String email;
  final String uid;
  final String photoUrl;
  final String username;
  final String bio;
  final List following;
  final List followers;

  Map<String, dynamic> toJson() => {
        "username": username,
        "email": email,
        "bio": bio,
        "uid": uid,
        'followers': followers,
        "following": following,
        "profilPic": photoUrl,
      };

  static User fromSnapshot(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return User(
      email: snapshot["email"],
      uid: snapshot["uid"],
      photoUrl: snapshot["profilPic"],
      username: snapshot["username"],
      bio: snapshot["bio"],
      following: snapshot["following"],
      followers: snapshot["followers"],
    );
  }
}
