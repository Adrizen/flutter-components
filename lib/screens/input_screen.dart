import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputScreen extends StatelessWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Andy',
      'last_name': 'Pereyra',
      'email': 'andy@email.com',
      'password': '123',
      'role': 'Admin'
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs and forms'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Form(
              key: myFormKey,
              child: Column(
                children: [
                  CustomInputField(
                    hintText: 'Username',
                    formProperty: 'first_name',
                    formValues: formValues,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomInputField(
                    hintText: 'Lastname',
                    formProperty: 'last_name',
                    formValues: formValues,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomInputField(
                    hintText: 'Email',
                    helperText: 'Valid email',
                    icon: Icons.verified,
                    keyboardType: TextInputType.emailAddress,
                    formProperty: 'email',
                    formValues: formValues,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomInputField(
                    hintText: 'Password',
                    helperText: 'Only chars and numbers',
                    iconSuffix: Icons.support_agent_sharp,
                    labelText: 'Password',
                    isPassword: true,
                    formProperty: 'password',
                    formValues: formValues,
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  // DropdownButtonFormField
                  DropdownButtonFormField<String>(
                      value: 'Admin',
                      items: const [
                        DropdownMenuItem(
                          value: 'Admin',
                          child: Text('Admin'),
                        ),
                        DropdownMenuItem(
                          value: 'Superuser',
                          child: Text('Superuser'),
                        ),
                        DropdownMenuItem(
                          value: 'Developer',
                          child: Text('Developer'),
                        ),
                        DropdownMenuItem(
                          value: 'Jr. Developer',
                          child: Text('Jr. Developer'),
                        ),
                      ],
                      onChanged: (value) {
                        print(value);
                        formValues['role'] = value ?? 'Admin';
                      }),

                  //ElevatedButton
                  ElevatedButton(
                    child: const SizedBox(
                      width: double.infinity,
                      child: Center(
                        child: Text('Save'),
                      ),
                    ),
                    onPressed: () {
                      FocusScope.of(context).requestFocus(FocusNode());

                      if (!myFormKey.currentState!.validate()) {
                        return;
                      }
                      print(formValues);
                    },
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
