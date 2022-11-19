import 'package:flutter/material.dart';

class Song {
  final String name;
  final String singer;
  final String image;
  final int duration;
  final Color color;
  Song(
      {required this.name,
      required this.singer,
      required this.image,
      required this.duration,
      required this.color});
}

List<Song> mostPopular = [
  Song(
      name: "Dooriee",
      image: "assets/song1.jpg",
      singer: "Atif Aslam",
      duration: 300,
      color: Colors.grey),
  Song(
      name: "Kusu Kusu",
      image: "assets/song2.jpg",
      singer: "Zarah S khan, Dev Negi",
      duration: 252,
      color: Colors.red),
  Song(
      name: "Dilbar",
      image: "assets/song3.jpg",
      singer: "Neha Kakkar, Tulshi kumar",
      duration: 532,
      color: Colors.orange),
  Song(
      name: "Rain Over Me",
      image: "assets/song4.jpg",
      singer: "Mark Antony, Pitbul",
      duration: 264,
      color: Colors.blue)
];

List<Song> newRelease = [
  Song(
      name: "Green Day",
      image: "assets/song5.jpg",
      singer: "Tvorchi",
      duration: 252,
      color: Colors.red),
  Song(
      name: "Dilbar",
      image: "assets/song3.jpg",
      singer: "Neha Kakkar",
      duration: 300,
      color: Colors.grey),
  Song(
      name: "Dooriee",
      image: "assets/song1.jpg",
      singer: "Atif Aslam",
      duration: 264,
      color: Colors.blue),
  Song(
      name: "Kusu Kusu",
      image: "assets/song2.jpg",
      singer: "Zarah S khan",
      duration: 532,
      color: Colors.orange),
];
