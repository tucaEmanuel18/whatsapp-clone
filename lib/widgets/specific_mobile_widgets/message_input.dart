// import 'dart:math';

// import 'package:flutter/material.dart';

// import '../../themes/colors.dart';

// class MessageInput extends StatelessWidget {
//   const MessageInput({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: max<double>((MediaQuery.of(context).size.height * 0.07), 40.0),
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Row(
//           children: [
//             Expanded(
//               child: TextField(
//                     decoration: InputDecoration(
//                       filled: true,
//                       fillColor: white100,
//                       // prefixIcon: const Padding(
//                       //   padding: EdgeInsets.symmetric(horizontal: 20),
//                       //   child: Icon(Icons.emoji_emotions_outlined, color: darkBlue500),
//                       // ),
//                       // suffixIcon: Padding(
//                       //   padding: const EdgeInsets.symmetric(horizontal: 20),
//                       //   child: Row(
//                       //     mainAxisAlignment: MainAxisAlignment.end,
//                       //     children: const [
//                       //       Icon(Icons.attach_file, color: darkBlue500),
//                       //       Icon(Icons.camera_alt, color: darkBlue500),
//                       //     ],
//                       //   ),
//                       // ),
//                       hintText: 'Type a message',
//                       hintStyle: const TextStyle(fontSize: 14, color: darkBlue500),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(20),
//                         borderSide: const BorderSide(
//                           width: 0,
//                           style: BorderStyle.none,
//                         )
//                       ),
//                       contentPadding: const EdgeInsets.all(10),
//                     ),
//                   ),
//             ),
//             const SizedBox(width: 5),
//             CircleAvatar(
//               radius: 20,
//               backgroundColor: tealGreen500,
//               child: IconButton(onPressed: (){}, icon: const Icon(Icons.mic, color: white100),)
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }



import 'dart:math';

import 'package:flutter/material.dart';

import '../../themes/colors.dart';

class MessageInput extends StatelessWidget {
  const MessageInput({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: max<double>((MediaQuery.of(context).size.height * 0.06), 40.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(bottom:5),
                child: Container(
                  decoration:  BoxDecoration(
                    border: Border.all(width: 0, style: BorderStyle.none), 
                    borderRadius: BorderRadius.circular(20),
                    color: white100,
                  ),
                  child: Row(
                    children: [
                      IconButton(onPressed: (){}, icon: const Icon(Icons.emoji_emotions_outlined, color: darkBlue500),),
                      const Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Type a message',
                            hintStyle: TextStyle(fontSize: 14, color: darkBlue500),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                              )
                            ),
                            // contentPadding: const EdgeInsets.all(10),
                          ),
                        ),
                      ),
                      IconButton(onPressed: (){}, icon: const Icon(Icons.attach_file, color: darkBlue500),),
                      IconButton(onPressed: (){}, icon: const Icon(Icons.camera_alt_rounded, color: darkBlue500),),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(width: 5),
            CircleAvatar(
              radius: 20,
              backgroundColor: tealGreen500,
              child: IconButton(onPressed: (){}, icon: const Icon(Icons.mic, color: white100),)
            )
          ],
        ),
      ),
    );
  }
}