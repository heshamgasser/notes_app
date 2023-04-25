import 'package:flutter/material.dart';
import 'package:noteapplication/widget/textFieldWidget.dart';

class AddNoteWidget extends StatelessWidget {
  const AddNoteWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
           
            TextFieldWidget(
              hint: 'Title',
            ),
            SizedBox(height: 10),
            TextFieldWidget(hint: 'Content', maxLines: 5),
            SizedBox(height: 30),
            ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              onPressed: () {},
              child: Text(
                'Add',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
