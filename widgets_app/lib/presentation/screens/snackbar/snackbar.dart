import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';
  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackbar = SnackBar(
      content: Text('Hola mundo'),
      action: SnackBarAction(label: 'Ok!', onPressed: () {}),
      duration: const Duration(seconds: 2),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
              title: const Text("¿Estas seguro?"),
              content: const Text(
                  'Voluptate pariatur nisi eiusmod sint aliqua fugiat esse sint eiusmod laboris labore.'),
              actions: [
                TextButton(
                    onPressed: () => context.pop(),
                    child: const Text('Cancelar')),
                FilledButton(
                    onPressed: () => context.pop(),
                    child: const Text('Aceptar'))
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Snackbars y Dialogos')),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FilledButton.tonal(
              onPressed: () {
                showAboutDialog(context: context, children: [
                  const Text(
                      'Mollit ad labore aliqua deserunt ullamco nulla cillum occaecat velit nostrud. Enim excepteur incididunt quis pariatur non non minim officia. Ea reprehenderit eu mollit elit. Fugiat et sint pariatur consequat reprehenderit. Nostrud Lorem dolor Lorem laboris cillum officia aliquip ipsum. Adipisicing deserunt incididunt elit magna fugiat est non aliqua do pariatur ut ut sit sit. Laboris est reprehenderit elit et ad ex aliquip adipisicing magna cupidatat mollit enim nisi.')
                ]);
              },
              child: const Text('Licencias usadas')),
          FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: const Text('Mostrar diálogos'))
        ],
      )),
      floatingActionButton: FloatingActionButton.extended(
          label: const Text("Mostrar Snackbar"),
          icon: const Icon(Icons.remove_red_eye_outlined),
          onPressed: () => showCustomSnackbar(context)),
    );
  }
}
