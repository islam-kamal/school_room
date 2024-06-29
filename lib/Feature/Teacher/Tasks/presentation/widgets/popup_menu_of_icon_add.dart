import 'package:flutter/material.dart';


class MyPopupMenuButton extends StatelessWidget {
  const MyPopupMenuButton({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<int>(
      onSelected: (int result) {
        // Handle your logic here based on the selected menu item
      },
      child: const Icon(Icons.add),
      itemBuilder: (BuildContext context) => <PopupMenuEntry<int>>[
        const PopupMenuItem<int>(
          value: 0,
          child: Row(
            children: [
              Icon(Icons.check_circle_outline),
              SizedBox(width: 8),
              Text('MCQ'),
            ],
          ),
        ),
        const PopupMenuItem<int>(
          value: 1,
          child: Row(
            children: [
              Icon(Icons.help_outline),
              SizedBox(width: 8),
              Text('Question'),
            ],
          ),
        ),
        const PopupMenuItem<int>(
          value: 2,
          child: Row(
            children: [
              Icon(Icons.assignment),
              SizedBox(width: 8),
              Text('QuizAssignment'),
            ],
          ),
        ),
        const PopupMenuItem<int>(
          value: 3,
          child: Row(
            children: [
              Icon(Icons.assignment_turned_in),
              SizedBox(width: 8),
              Text('Assignment'),
            ],
          ),
        ),
      ],
    );
  }
}




// import 'package:flutter/material.dart';

// class PopupMenuOfIconAdd extends StatelessWidget{
//   const PopupMenuOfIconAdd({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return PopupMenuButton(
//       elevation: 50,
//       offset: Offset(-15, 10),
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(16)
//       ),
//        constraints: const BoxConstraints.expand(width: double.infinity, height: 140),
//             color: Colors.white,
//           child: ClipRRect(
//             borderRadius: BorderRadius.circular(100),
//             child: Icon(Icons.add,)
//           ),
//           onSelected: (value) {
//             if (value == "Cash") {
//               // add desired output
//             }else if(value == "Cheque"){
//               // add desired output
//             }else if(value == "Bank Transfer"){
//               // add desired output
//             }
//             else if(value == "Wallet"){
//               // add desired output
//             }
//           },

//           itemBuilder: (BuildContext context) => <PopupMenuEntry>[
//             const PopupMenuItem(
//               value: "Cash",
//               child: Row(
//                 children: [
//                   Padding(
//                     padding: EdgeInsets.only(right: 8.0),
//                     child: Icon(Icons.attach_money, size: 40),
//                   ),
//                   Text(
//                     'Cash',
//                     style: TextStyle(fontSize: 15),
//                   ),
//                 ],
//               ),
//             ),
//             const PopupMenuItem(
//               value: "Cheque",
//               child: Column(
//                 children: [
//                   Padding(
//                     padding: EdgeInsets.only(right: 8.0),
//                     child: Icon(Icons.receipt, size: 40),
//                   ),
//                   Text(
//                     'Cheque',
//                     style: TextStyle(fontSize: 15),
//                   ),
//                 ],
//               ),
//             ),
//             const PopupMenuItem(
//               value: "Bank Transfer",
//               child: Column(
//                 children: [
//                   Padding(
//                     padding: EdgeInsets.only(right: 8.0),
//                     child: Icon(Icons.account_balance, size: 40),
//                   ),
//                   Text(
//                     'Bank Transfer',
//                     style: TextStyle(fontSize: 15),
//                   ),
//                 ],
//               ),
//             ),
//             const PopupMenuItem(
//               value: "Wallet",
//               child: Column(
//                 children: [
//                   Padding(
//                     padding: EdgeInsets.only(right: 8.0),
//                     child: Icon(Icons.account_balance_wallet, size: 40),
//                   ),
//                   Text(
//                     'Wallet',
//                     style: TextStyle(fontSize: 15),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         );
// }
// }