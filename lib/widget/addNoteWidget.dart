import 'package:flutter/material.dart';
import 'package:noteapplication/widget/textFieldWidget.dart';

class AddNoteWidget extends StatelessWidget {
  const AddNoteWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Spacer(),
          TextFieldWidget(
            hint: 'Title',
            verticalPadding: 20,
          ),
          Spacer(flex: 2),
          TextFieldWidget(hint: 'Content', verticalPadding: 80, maxLines: 5),
          Spacer(flex: 6),
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
          Spacer(),
        ],
      ),
    );
  }
}
