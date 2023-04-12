// import 'package:flutter/material.dart';

// class ResponsividadeController {
//   int ultrawideWidth = 2560;
//   int normalWidth = 1920;

//   double historicoRegistroWidth(Size size) {
//     if (size.width == normalWidth && size.width > normalWidth / 2) {
//       return size.width * 0.25;
//     } else {
//       return size.width * 0.3;
//     }
//   }

//   double historicoRegistroHeight(Size size) {
//     if (size.width == normalWidth && size.width > normalWidth / 2) {
//       if (size.width > size.height) {
//         return size.height * 0.85;
//       } else {
//         return size.height * 0.85;
//       }
//     } else {
//       if (size.width > size.height) {
//         return size.height * 0.85;
//       } else {
//         return size.height * 0.8;
//       }
//     }
//   }

//   double seriesSearchBarComponentHeight(Size size, BoxConstraints constraints) {
//     if (size.width == normalWidth && size.width > normalWidth / 2) {
//       if (size.width > size.height) {
//         return constraints.maxHeight * 0.09;
//       } else {
//         return constraints.maxHeight * 0.09;
//       }
//     } else {
//       if (size.width > size.height) {
//         return constraints.maxWidth * 0.15;
//       } else {
//         return constraints.maxHeight * 0.06;
//       }
//     }
//   }
// }
