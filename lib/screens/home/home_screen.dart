import 'package:flutter/material.dart';
import 'package:playground/controllers/scaffold_controller.dart';
import 'package:playground/widgets/custom_bottombar.dart';
import 'package:playground/widgets/custom_drawer.dart';
import 'package:playground/widgets/custom_scaffold.dart';
import 'package:playground/widgets/custom_appbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldController(
      child: SafeArea(
        child: CustomScaffold(
            appBar: MyCustomAppBar(
              title: "Título de teste",
              actions: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.logout))
              ],
            ),
            drawer: const CustomDrawer(),
            bottomBar: const CustomBottombar(
              actions: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Icon(Icons.home), Text('Home')],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Icon(Icons.person), Text('Perfil')],
                )
              ],
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.add),
            ),
            body: const Text('teste')),
      ),
    );
  }
}





// class CustomAppBarWidget extends StatelessWidget {


//   const CustomAppBarWidget({
//     super.key,
//     this.drawer = false,
//     this.title = "",
//     this.actions = const [Placeholder()],
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Placeholder();
//   }
// }

// class LogoWidget extends StatelessWidget {
//   const LogoWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(builder: (context, constrant) {
//       final smallBlock = constrant.maxHeight * .47;
//       final smallBlockSpace = constrant.maxHeight * .06;
//       return Row(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Container(
//                 width: smallBlock,
//                 height: smallBlock,
//                 decoration: BoxDecoration(
//                     color: Colors.indigo[400], shape: BoxShape.circle),
//               ),
//               SizedBox(
//                 height: smallBlockSpace,
//               ),
//               Container(
//                 width: smallBlock,
//                 height: smallBlock,
//                 decoration: BoxDecoration(
//                     color: Colors.indigo[400],
//                     borderRadius: BorderRadius.only(
//                         bottomLeft: Radius.circular(smallBlock))),
//               ),
//             ],
//           ),
//           SizedBox(
//             width: smallBlockSpace,
//           ),
//           Container(
//             width: smallBlock,
//             height: constrant.maxWidth,
//             decoration: BoxDecoration(
//                 color: Colors.indigo[400],
//                 borderRadius: BorderRadius.only(
//                     bottomLeft: Radius.circular(smallBlock),
//                     topRight: Radius.circular(smallBlock))),
//           )
//         ],
//       );
//     });
//   }
// }

// class SignUpButtonWidget extends StatelessWidget {
//   final double size;
//   final Color color;
//   final List<Widget> elements;
//   const SignUpButtonWidget({
//     super.key,
//     required this.color,
//     required this.elements,
//     required this.size,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: size,
//       padding: const EdgeInsets.all(10),
//       decoration:
//           BoxDecoration(color: color, borderRadius: BorderRadius.circular(5)),
//       child: Row(
//         mainAxisSize: MainAxisSize.min,
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: elements.map((Widget element) {
//           return element;
//         }).toList(),
//       ),
//     );
//   }
// }

// Row(children: [
//         if (size.width > 600)
//           Expanded(
//             child: Container(
//               width: size.width * .5,
//               color: Colors.white,
//             ),
//           ),
//         Expanded(
//           child: Center(
//             child: ConstrainedBox(
//               constraints: const BoxConstraints(maxWidth: 400),
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 20.0),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     const Expanded(child: LogoWidget()),
//                     const SizedBox(
//                       height: 40,
//                     ),
//                     const Column(
//                       children: [
//                         Text(
//                           "Get your Money ",
//                           style: TextStyle(
//                               fontSize: 25,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white),
//                         ),
//                         Text(
//                           "Under Control",
//                           style: TextStyle(
//                               fontSize: 25,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     Column(
//                       children: [
//                         Text("Menage your expenses.",
//                             style: TextStyle(
//                                 color: Colors.grey[700],
//                                 fontWeight: FontWeight.bold)),
//                         Text("Seamlessly.",
//                             style: TextStyle(
//                                 color: Colors.grey[700],
//                                 fontWeight: FontWeight.bold)),
//                       ],
//                     ),
//                     const SizedBox(
//                       height: 80,
//                     ),
//                     // const SizedBox(height: 55, child: Placeholder()),
//                     SignUpButtonWidget(
//                       size: double.infinity,
//                       color: Colors.indigo[400]!,
//                       elements: const [
//                         Flexible(
//                           child: Text(
//                             'Sign Up with Email ID',
//                             style: TextStyle(
//                               fontWeight: FontWeight.w600,
//                               overflow: TextOverflow.ellipsis,
//                             ),
//                           ),
//                         )
//                       ],
//                     ),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     const SignUpButtonWidget(
//                       size: double.infinity,
//                       color: Colors.white,
//                       elements: const [
//                         Icon(
//                           Icons.g_mobiledata_rounded,
//                           color: Colors.black,
//                         ),
//                         Flexible(
//                           child: Text(
//                             'Sign Up with Google',
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontWeight: FontWeight.w600,
//                               overflow: TextOverflow.ellipsis,
//                             ),
//                           ),
//                         )
//                       ],
//                     ),

//                     const SizedBox(
//                       height: 40,
//                     ),
//                     const Flexible(
//                         child: Text(
//                       "Already have an account? Sign In",
//                       style: TextStyle(
//                         overflow: TextOverflow.ellipsis,
//                       ),
//                     )),
//                     const SizedBox(
//                       height: 40,
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ]),
