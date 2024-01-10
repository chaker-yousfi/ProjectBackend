import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color? color;
  const CustomButton({
    Key? key,
    required this.text,
    required this.onTap,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
         minimumSize: const Size(double.infinity, 50),
          backgroundColor: color==null ? Colors.black: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      child: Text(
        text,
        style: GoogleFonts.plusJakartaSans(
          color:  Colors.white ,
          fontWeight: FontWeight.w500,
          fontSize: 17,
        ),
      ),
      onPressed: onTap,
      
    );
  }
}
