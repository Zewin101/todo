import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/provider/myprovider.dart';

import '../../styles/colors.dart';

class AddTasks extends StatelessWidget {
  AddTasks({Key? key}) : super(key: key);
  var tittleController = TextEditingController();
  var descriptionController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Add Task",
              textAlign: TextAlign.center,
              style: Theme.of(context)
                  .textTheme
                  .headline1
                  ?.copyWith(color: MOVE_COLOR),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty && value == '') {
                  return "tittle is empty";
                }
                return null;
              },
              controller: tittleController,
              decoration: const InputDecoration(
                hintText: "Task",
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: MOVE_COLOR,
                  width: 2,
                )),
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: MOVE_COLOR,
                  width: 2,
                )),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty && value == '') {
                  return "description is empty";
                }
                return null;
              },
              maxLines: 4,
              controller: descriptionController,
              decoration: const InputDecoration(
                hintText: "Description",
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: MOVE_COLOR,
                  width: 2,
                )),
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                  color: MOVE_COLOR,
                  width: 2,
                )),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                provider.showPicker(context);
              },
              child: Text(
                "${provider.selectedDate.year}/${provider.selectedDate.month}/${provider.selectedDate.day}",
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .subtitle1
                    ?.copyWith(fontSize: 30),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  AddTaskOk();
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: MOVE_COLOR,
                ),
                child: Text(
                  "Add Tasks",
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1
                      ?.copyWith(color: Colors.white, fontSize: 30),
                ))
          ],
        ),
      ),
    );
  }

  void AddTaskOk() {
    if (formKey.currentState!.validate()) {}
  }
}
