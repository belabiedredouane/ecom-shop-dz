import 'package:flutter/material.dart';

import '../../../components/rounded_icon_btn.dart';
import '../../../constants.dart';
import '../../../models/product.dart';

class ColorDots extends StatefulWidget {
  const ColorDots({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  State<ColorDots> createState() => _ColorDotsState();
}

class _ColorDotsState extends State<ColorDots> {
int selectedColor = 3;

void selectColor(int index){
  setState(() {
    selectedColor=index;
  });
}

  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          ...List.generate(
            widget.product.colors.length,
            (index) => ColorDot(
              color: widget.product.colors[index],
              isSelected: index == selectedColor,
              onTap: () {
                selectColor(index); // Update the selected color
              },
            ),
          ),
          const Spacer(),
          RoundedIconBtn(
            icon: Icons.remove,
            press: () {},
          ),
          const SizedBox(width: 20),
          RoundedIconBtn(
            icon: Icons.add,
            showShadow: true,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
   const ColorDot({
    super.key,
    required this.color,
    this.isSelected = false,
    required this.onTap,
  });

   final Color color;
   final bool isSelected;
   final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(right: 2),
        padding: const EdgeInsets.all(8),
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border:
              Border.all(color: isSelected ? kPrimaryColor : Colors.transparent),
          shape: BoxShape.circle,
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
