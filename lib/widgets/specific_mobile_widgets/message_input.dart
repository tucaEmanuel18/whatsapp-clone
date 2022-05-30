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
import 'package:provider/provider.dart';

import '../../providers/messages_provider.dart';
import '../../themes/colors.dart';
class MessageInput extends StatefulWidget {
  const MessageInput({ Key? key }) : super(key: key); 
  
  @override
  State<MessageInput> createState() => _MessageInputState();
}

class _MessageInputState extends State<MessageInput> {
  String currentValue = "";
  final textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    textController.addListener(_setCurrentValue);
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

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
                    color: Theme.of(context).brightness == Brightness.light ? white100: darkBlue500,
                  ),
                  child: Row(
                    children: [
                      IconButton(onPressed: (){}, icon: const Icon(Icons.emoji_emotions_outlined),),
                      Expanded(
                        child: TextField(
                          controller: textController,
                          decoration: const InputDecoration(
                            hintText: 'Type a message',
                            hintStyle: TextStyle(fontSize: 14),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                              ),  
                            ),
                          ),
                        ),
                      ),
                      IconButton(onPressed: (){}, icon: const Icon(Icons.attach_file),),
                      IconButton(onPressed: (){}, icon: const Icon(Icons.camera_alt_rounded),),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(width: 5),
            CircleAvatar(
              radius: 20,
              backgroundColor: tealGreen500,
              child: IconButton(onPressed: () {
                  if(textController.text.isNotEmpty){
                    Provider.of<MessagesProvider>(context, listen: false).add(textController.text);
                    textController.text = "";
                  }
                }, icon: Icon(textController.text.isEmpty ? Icons.mic: Icons.send, color: white100),)
            )
          ],
        ),
      ),
    );
  }

  void _setCurrentValue() {
    setState((){currentValue = textController.text;});
  }
}