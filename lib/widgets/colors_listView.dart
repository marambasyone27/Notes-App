import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_noteCubit/add_notes_cubit.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38 * 2,
      width: 38 * 2,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
        border: isActive
            ? Border.all(
                color: Colors.white,
                width: 4,
              )
            : null,
      ),
    );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex=0;
  List<Color> colors=[
    Colors.pinkAccent,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.orange,
    Colors.purple,
    Colors.red,
    Colors.teal,
    Colors.cyan,
    Colors.amber,
    Colors.lime,
    Colors.indigo,

  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32 * 2,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,i){
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6.0),
          child: GestureDetector(
            onTap: () {
              currentIndex=i;
              BlocProvider.of<AddNotesCubit>(context).color = colors[i];
              setState(() {
                
              });
            },
            child: ColorItem(
              color: colors[i],
              isActive: currentIndex==i,)),
        );
      }),
    );
  }
}