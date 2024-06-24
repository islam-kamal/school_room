import 'package:flutter/material.dart';


class CustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter Form')),
        body: MyForm(),
      ),
    );
  }
}

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  String? selectedGroup;
  String? selectedSubject;
  String? selectedGrade;
  String? selectedClass;

  final List<String> groups = ['مجموعة اللغة العربية'];
  final List<String> subjects = ['اللغة العربية'];
  final List<String> grades = ['الصف الثالث المتوسط'];
  final List<String> classes = ['3/4'];
  TextEditingController username_controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [

            Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFEBEBEB),
                ),
                child: TextFormField(
                  controller: username_controller,
                  textAlign: TextAlign.right,
                  autocorrect: true,
                  autofocus: false,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelStyle: TextStyle(
                      decorationStyle: TextDecorationStyle.solid,
                      overflow: TextOverflow.ellipsis,
                      color: Colors.black,
                    ),
                    labelText: 'اسم المجموعة',
                    floatingLabelAlignment: FloatingLabelAlignment.start,
                    border: InputBorder.none,
                    contentPadding:
                    EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    prefixIconConstraints:
                    BoxConstraints(minWidth: 0, minHeight: 0),
                  ),
                )),

            SizedBox(height: 16),
            buildDropdownField(
              label: 'اختر المادة',
              value: selectedSubject,
              items: subjects,
              onChanged: (newValue) {
                setState(() {
                  selectedSubject = newValue;
                });
              },
            ),
            SizedBox(height: 16),
            buildDropdownField(
              label: 'اختر الصف الدراسي',
              value: selectedGrade,
              items: grades,
              onChanged: (newValue) {
                setState(() {
                  selectedGrade = newValue;
                });
              },
            ),
            SizedBox(height: 16),
            buildDropdownField(
              label: 'اختر الفصل الدراسي',
              value: selectedClass,
              items: classes,
              onChanged: (newValue) {
                setState(() {
                  selectedClass = newValue;
                });
              },
            ),
            Spacer(),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Add your onPressed code here!
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey,
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                    ),
                    child: Text('الغاء'),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      // Add your onPressed code here!
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                    ),
                    child: Text('التالي'),
                  ),
                ),
              ],
            ),
          ],
        ),
      )
    );
  }

  Widget buildDropdownField({
    required String label,
    required String? value,
    required List<String> items,
    required ValueChanged<String?> onChanged,
  }) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xFFEBEBEB),
      ),
      child:DropdownButtonHideUnderline(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('$label',style: TextStyle(fontSize: 13,fontWeight: FontWeight.normal,color: Colors.grey),),
              DropdownButton<String>(
                value: value,
                isExpanded: true,
                onChanged: onChanged,
                items: items.map((item) {
                  return DropdownMenuItem(
                    child: Text(item,
                      style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black),),
                    value: item,
                  );
                }).toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
