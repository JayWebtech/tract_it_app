import 'package:flutter/material.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:tract_it_app/utils/colors.dart';

class RegisteredDevice extends StatelessWidget {
  final String imagePath; // Changed to imagePath
  final String deviceName;
  final String imei;
  final bool status; // Changed to bool

  const RegisteredDevice({
    Key? key,
    required this.imagePath, // Changed to imagePath
    required this.deviceName,
    required this.imei,
    required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0, // Remove shadow
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: borderColor,
          width: 2.0,
        ),

        borderRadius:
            BorderRadius.circular(10), // Adjust border radius if needed
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.all(8.0),
        leading: InkWell(
          onTap: () {
            // Handle image click
            print('Image clicked');
          },
          child: Image.asset(
            imagePath, // Use image path here
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              deviceName,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "IMEI: $imei",
              style: const TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              "Status: ${status ? 'Active' : 'Stolen'}",
              style: TextStyle(
                fontSize: 14,
                color: status
                    ? Colors.green
                    : Colors.red, // Change color based on status
              ),
            ),
          ],
        ),
        trailing: const Icon(
          FluentIcons.chevron_right_16_regular,
          size: 24,
          color: Colors.grey,
        ),
        onTap: () {
          // Handle card tap if needed
        },
      ),
    );
  }
}
