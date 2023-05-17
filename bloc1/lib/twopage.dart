import 'package:bloc1/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Twopage extends StatelessWidget {
  const Twopage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<Coshuu, int>(
          builder: (context, state) {
            return InkWell(
                onTap: () => Navigator.pop(context),
                child: Text("manii ===>>  $state"));
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<Coshuu>().decreament(),
        child: const Icon(Icons.remove),
      ),
    );
  }
}
