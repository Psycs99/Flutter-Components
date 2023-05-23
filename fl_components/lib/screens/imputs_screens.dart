import 'package:flutter/material.dart';

import '../widgets/mis_widgets.dart';

class ImputsScreen extends StatelessWidget {
  const ImputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, dynamic> formValues = {
      'first_name': 'Agustin',
      'last_name': 'Trejo',
      'Email': 'tumama@gmail.com',
      'password': 'tupapa',
      'role': 'Admin',
    };

    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Imputs y Forms')),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),
            child: Form(
              key: myFormKey,
              child: Column(
                children: [
                  CustomImputField(
                    labelText: 'Nombre',
                    hintText: 'Nombre de Usuario',
                    helperText: 'Minimo 3 Letras',
                    counterText: 'Solo 20 Caracteres',
                    formProperty: 'first_name',
                    formValues: formValues,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomImputField(
                    labelText: 'Apellido',
                    hintText: 'Apellido de Usuario',
                    helperText: 'Minimo 3 Letras',
                    counterText: 'Solo 20 Caracteres',
                    formProperty: 'last_name',
                    formValues: formValues,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomImputField(
                    labelText: 'Email',
                    hintText: 'Email de Usuario',
                    helperText: 'Minimo 1 Letras',
                    counterText: 'Solo 25 Caracteres',
                    keyBoardType: TextInputType.emailAddress,
                    formProperty: 'Email',
                    formValues: formValues,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomImputField(
                    labelText: 'Contrasenia',
                    hintText: 'Contrasenia de Usuario',
                    helperText: 'Minimo 1 Letras',
                    counterText: 'Solo 25 Caracteres',
                    obscureText: true,
                    formProperty: 'password',
                    formValues: formValues,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  DropdownButtonFormField<String>(
                    value: 'Admin',
                    items: const [
                      DropdownMenuItem(
                        value: 'Admin',
                        child: Text('Admin'),
                      ),
                      DropdownMenuItem(
                        value: 'SuperUser',
                        child: Text('SuperUser'),
                      ),
                      DropdownMenuItem(
                        value: 'Developer',
                        child: Text('Developer'),
                      ),
                      DropdownMenuItem(
                        value: 'Jr.Developer',
                        child: Text('Jr.Developer'),
                      ),
                    ],
                    onChanged: (value) {
                      print(value);
                      formValues['role'] = value ?? 'Admin';
                    },
                  ),
                  ElevatedButton(
                    child: const SizedBox(
                      width: double.infinity,
                      child: Center(
                          child: Text(
                        'Guardar',
                        style: TextStyle(fontSize: 20),
                      )),
                    ),
                    onPressed: () {
                      FocusScope.of(context).requestFocus(FocusNode());
                      if (!myFormKey.currentState!.validate()) {
                        print('Formulario no Valido');
                        return;
                      }
                      //*imprimir valores del formulario
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
