import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Inventory extends StatefulWidget {
  const Inventory({super.key});

  @override
  State<Inventory> createState() => _InventoryState();
}

class _InventoryState extends State<Inventory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        children: [
          // First column with minimum horizontal size
          Expanded(
            child: Container(
              decoration: BoxDecoration(color: Color(0xff7f7fe)),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    leading: SvgPicture.string(
                      '<svg id="Layer_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 514 458.5" class="icon lpanel"><path d="M507 185.7L315.7 20.9C283.6-6.7 236.8-7 204.3 20.2L7.2 185.5c-8.5 7.1-9.6 19.7-2.5 28.2 4 4.7 9.6 7.2 15.3 7.2s9.1-1.5 12.8-4.7l25.6-21.4v165.4c.9 54.4 45.4 98.4 100 98.4h197.2c54.6 0 99.1-44 100-98.4V194.3l25.4 21.8c8.4 7.2 21 6.3 28.2-2.1 7.2-8.4 6.3-21-2.1-28.2zM298.7 418.5h-83.5v-65.7c0-23 18.7-41.8 41.8-41.8s41.8 18.7 41.8 41.8v65.7zm116.8-60c0 33.1-26.9 60-60 60h-16.8v-65.7c0-45.1-36.7-81.8-81.8-81.8s-81.8 36.7-81.8 81.8v65.7h-16.8c-33.1 0-60-26.9-60-60V161.2L230 50.9c17.4-14.6 42.4-14.4 59.6.4l126 108.5v198.7z" id="Layer_1-2"></path></svg>',
                      width: 20,
                      height: 20,
                    ),
                    title: Text('Home'),
                  ),
                  ListTile(
                    leading: SvgPicture.string(
                      '<svg id="Layer_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 508.8 495.2" class="icon lpanel"><g id="Layer_1-2"><path d="M506.2 285.7l-36.8-159.4c-6-26-21.8-48.2-44.4-62.3-22.7-14.2-49.5-18.6-75.5-12.6L190.1 88.2c-21.9 5.1-40.5 17-53.9 33.1l-14-60.8c-4.9-21.1-20.8-37.9-41.6-43.9L25.5.8C14.9-2.3 3.8 3.9.8 14.5s3.1 21.7 13.7 24.7l55 15.8c6.8 2 12.1 7.5 13.7 14.4l42.3 183.2v.1l21.6 93.6c-6.2 5.4-11.6 11.8-16 18.9-12 19.2-15.8 42-10.7 64.1 5.1 22.1 18.5 40.9 37.8 52.9 13.7 8.5 29.1 12.9 44.9 12.9 6.4 0 12.9-.7 19.3-2.2 22.1-5.1 40.9-18.5 52.9-37.8 3.1-4.9 5.6-10 7.6-15.3l148.5-34.3c26-6 48.2-21.8 62.3-44.4 14.2-22.7 18.6-49.5 12.6-75.5zM213.2 454c-11.7 2.7-23.8.7-33.9-5.7-10.2-6.4-17.3-16.3-20-28-5.6-24.2 9.5-48.4 33.7-53.9 3.4-.8 6.8-1.2 10.1-1.2 20.5 0 39 14.1 43.8 34.9 1.4 6.3 1.5 12.6.3 18.7 0 .2 0 .4-.1.6-1.1 5.1-3 10.1-5.9 14.6-6.4 10.2-16.3 17.3-28 20zm246.4-114c-8.5 13.6-21.8 23.1-37.4 26.7l-135.1 31.2c-.3-2.2-.7-4.5-1.3-6.7-10.5-45.6-56.2-74.2-101.9-63.7h-.2L154 198.9c-7.3-32.1 12.9-64.3 45-71.7l159.4-36.8c15.6-3.6 31.7-.9 45.3 7.6 13.6 8.5 23.1 21.8 26.7 37.4l36.8 159.4c3.6 15.6.9 31.7-7.6 45.3z"></path><path d="M314.7 164.8l-47.8 11c-10.8 2.5-17.5 13.2-15 24 2.1 9.2 10.4 15.5 19.5 15.5s3-.2 4.5-.5l47.8-11c10.8-2.5 17.5-13.2 15-24s-13.2-17.5-24-15z"></path></g></svg>',
                      width: 20,
                      height: 20,
                    ),
                    hoverColor: Color(0xffededf7),
                    title: Text('Inventory'),
                  ),
                ],
              ),
            ),
          ),
          // Second column with maximum available horizontal space
          Flexible(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text('hello'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showDropdown(BuildContext context, List<String> options) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Select an option'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: options.map((option) {
              return ListTile(
                title: Text(option),
                onTap: () {
                  // Handle selection here
                  Navigator.pop(context); // Close the dialog
                },
              );
            }).toList(),
          ),
        );
      },
    );
  }
}
