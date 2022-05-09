import 'package:flutter/material.dart';

// final logo = 'https://image.similarpng.com/very-thumbnail/2021/01/Netflix-logo-on-transparent-background-PNG.png';
String logo =
    'https://cdn.vox-cdn.com/thumbor/lfpXTYMyJpDlMevYNh0PfJu3M6Q=/39x0:3111x2048/920x613/filters:focal(39x0:3111x2048):format(webp)/cdn.vox-cdn.com/uploads/chorus_image/image/49901753/netflixlogo.0.0.png';
String avatar =
    'https://upload.wikimedia.org/wikipedia/commons/0/0b/Netflix-avatar.png';
const dBaseUrl = 'https://api.themoviedb.org/3';

final List<String> categoryList = [
  'Home',
  'My List',
  'Available for Download',
  'Hindi',
  'Tamil',
  'Punjabi',
  'Telugu',
  'Malayalam',
  'Marathi',
  'Bengali',
  'English',
  'Action',
  'Anime',
  'Award Winners',
  'Biographical',
  'Bollywood',
  'Blockbusters',
  'Children & Family',
  'Comedies',
  'Documentaries',
  'Dramas',
  'Fantasy',
  'Hollywood',
  'Horror',
  'International',
  'Indian',
  'Music & Musicals',
  'Reality & Talk',
  'Romance',
  'Sci-Fi',
  'Stand-up',
  'Thrillers',
];

final List<String> homeList = ['Home', 'TV Shows', 'Movies'];

const shimmerGradient = LinearGradient(
  colors: [
    Color.fromARGB(255, 160, 160, 160),
    Color.fromARGB(255, 98, 98, 98),
    Color.fromARGB(255, 56, 56, 56),
  ],
  stops: [
    0.1,
    0.3,
    0.4,
  ],
  begin: Alignment(-1.0, -0.3),
  end: Alignment(1.0, 0.3),
  tileMode: TileMode.clamp,
);
