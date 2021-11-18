import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MySnackBar(),
  ));
}

class MySnackBar extends StatelessWidget {
  const MySnackBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SnackBar Demo"),
      ),
      body: const Center(
        child: MyButton(),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text("desplegar SnackBar"),
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar( SnackBar(
          content: const Text("Soy un snackbar"),
          duration: const Duration(seconds: 5),
          action: SnackBarAction(
            label: "Click aqui",
            onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text("Segundo snackbar")
              ));
            }
          ),
        ));
      },
    );
  }
}
