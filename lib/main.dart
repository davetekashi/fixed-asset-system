import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Responsive Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Screen2(),
    );
  }
}

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    Screen1(),
    Screen2(),
    Screen3(),
  ];

  bool _showDrawer = false;

  void toggleDrawer() {
    setState(() {
      _showDrawer = !_showDrawer;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ResponsiveAppBar(
        title: Text('Dashboard'),
        showDrawer: _showDrawer,
        toggleDrawer: toggleDrawer,
      ),
      drawer: MediaQuery.of(context).size.width < 600
          ? Drawer(
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromRGBO(250, 151, 152, 0.1),
                ),
                child: ListView(
                  padding: EdgeInsets.zero,
                  children: <Widget>[
                    // DrawerHeader(
                    //   child: Text('Dashboard'),
                    //   decoration: BoxDecoration(
                    //     color: Colors.blue,
                    //   ),
                    // ),
                    SizedBox(
                      height: 50,
                    ),
                    ListTile(
                      leading: SvgPicture.string(
                        '<svg id="Layer_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 514 458.5" class="icon lpanel"><path d="M507 185.7L315.7 20.9C283.6-6.7 236.8-7 204.3 20.2L7.2 185.5c-8.5 7.1-9.6 19.7-2.5 28.2 4 4.7 9.6 7.2 15.3 7.2s9.1-1.5 12.8-4.7l25.6-21.4v165.4c.9 54.4 45.4 98.4 100 98.4h197.2c54.6 0 99.1-44 100-98.4V194.3l25.4 21.8c8.4 7.2 21 6.3 28.2-2.1 7.2-8.4 6.3-21-2.1-28.2zM298.7 418.5h-83.5v-65.7c0-23 18.7-41.8 41.8-41.8s41.8 18.7 41.8 41.8v65.7zm116.8-60c0 33.1-26.9 60-60 60h-16.8v-65.7c0-45.1-36.7-81.8-81.8-81.8s-81.8 36.7-81.8 81.8v65.7h-16.8c-33.1 0-60-26.9-60-60V161.2L230 50.9c17.4-14.6 42.4-14.4 59.6.4l126 108.5v198.7z" id="Layer_1-2"></path></svg>',
                        width: 20,
                        height: 20,
                        color: _selectedIndex == 0 ? Colors.blue : Colors.black,
                      ),
                      title: Text('Home'),
                      onTap: () {
                        setState(() {
                          _selectedIndex = 0;
                          _showDrawer = false;
                        });
                      },
                    ),
                    ListTile(
                      leading: SvgPicture.string(
                        '<svg id="Layer_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 508.8 495.2" class="icon lpanel"><g id="Layer_1-2"><path d="M506.2 285.7l-36.8-159.4c-6-26-21.8-48.2-44.4-62.3-22.7-14.2-49.5-18.6-75.5-12.6L190.1 88.2c-21.9 5.1-40.5 17-53.9 33.1l-14-60.8c-4.9-21.1-20.8-37.9-41.6-43.9L25.5.8C14.9-2.3 3.8 3.9.8 14.5s3.1 21.7 13.7 24.7l55 15.8c6.8 2 12.1 7.5 13.7 14.4l42.3 183.2v.1l21.6 93.6c-6.2 5.4-11.6 11.8-16 18.9-12 19.2-15.8 42-10.7 64.1 5.1 22.1 18.5 40.9 37.8 52.9 13.7 8.5 29.1 12.9 44.9 12.9 6.4 0 12.9-.7 19.3-2.2 22.1-5.1 40.9-18.5 52.9-37.8 3.1-4.9 5.6-10 7.6-15.3l148.5-34.3c26-6 48.2-21.8 62.3-44.4 14.2-22.7 18.6-49.5 12.6-75.5zM213.2 454c-11.7 2.7-23.8.7-33.9-5.7-10.2-6.4-17.3-16.3-20-28-5.6-24.2 9.5-48.4 33.7-53.9 3.4-.8 6.8-1.2 10.1-1.2 20.5 0 39 14.1 43.8 34.9 1.4 6.3 1.5 12.6.3 18.7 0 .2 0 .4-.1.6-1.1 5.1-3 10.1-5.9 14.6-6.4 10.2-16.3 17.3-28 20zm246.4-114c-8.5 13.6-21.8 23.1-37.4 26.7l-135.1 31.2c-.3-2.2-.7-4.5-1.3-6.7-10.5-45.6-56.2-74.2-101.9-63.7h-.2L154 198.9c-7.3-32.1 12.9-64.3 45-71.7l159.4-36.8c15.6-3.6 31.7-.9 45.3 7.6 13.6 8.5 23.1 21.8 26.7 37.4l36.8 159.4c3.6 15.6.9 31.7-7.6 45.3z"></path><path d="M314.7 164.8l-47.8 11c-10.8 2.5-17.5 13.2-15 24 2.1 9.2 10.4 15.5 19.5 15.5s3-.2 4.5-.5l47.8-11c10.8-2.5 17.5-13.2 15-24s-13.2-17.5-24-15z"></path></g></svg>',
                        width: 20,
                        height: 20,
                        color: _selectedIndex == 1 ? Colors.blue : Colors.black,
                      ),
                      title: Text('Screen 2'),
                      onTap: () {
                        setState(() {
                          _selectedIndex = 1;
                          _showDrawer = false;
                        });
                      },
                    ),
                  ],
                ),
              ),
            )
          : null,
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth >= 600) {
            return Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(
                        250,
                        151,
                        152,
                        0.1,
                      ),
                      border: Border(
                        right: BorderSide(
                          color: Colors.grey,
                          width: 2,
                        ),
                      ),
                    ),
                    child: NavigationMenu(
                      selectedIndex: _selectedIndex,
                      onItemTapped: (index) {
                        setState(() {
                          _selectedIndex = index;
                        });
                      },
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: _screens[_selectedIndex],
                ),
              ],
            );
          } else {
            return _screens[_selectedIndex];
          }
        },
      ),
    );
  }
}

class ResponsiveAppBar extends StatefulWidget implements PreferredSizeWidget {
  final Widget title;
  final bool showDrawer;
  final VoidCallback toggleDrawer;

  const ResponsiveAppBar({
    required this.title,
    required this.showDrawer,
    required this.toggleDrawer,
  });

  @override
  _ResponsiveAppBarState createState() => _ResponsiveAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _ResponsiveAppBarState extends State<ResponsiveAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: widget.title,
      leading: widget.showDrawer
          ? IconButton(
              icon: Icon(Icons.menu),
              onPressed: widget.toggleDrawer,
            )
          : null,
    );
  }
}

class NavigationMenu extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  NavigationMenu({required this.selectedIndex, required this.onItemTapped});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          leading: SvgPicture.string(
            '<svg id="Layer_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 514 458.5" class="icon lpanel"><path d="M507 185.7L315.7 20.9C283.6-6.7 236.8-7 204.3 20.2L7.2 185.5c-8.5 7.1-9.6 19.7-2.5 28.2 4 4.7 9.6 7.2 15.3 7.2s9.1-1.5 12.8-4.7l25.6-21.4v165.4c.9 54.4 45.4 98.4 100 98.4h197.2c54.6 0 99.1-44 100-98.4V194.3l25.4 21.8c8.4 7.2 21 6.3 28.2-2.1 7.2-8.4 6.3-21-2.1-28.2zM298.7 418.5h-83.5v-65.7c0-23 18.7-41.8 41.8-41.8s41.8 18.7 41.8 41.8v65.7zm116.8-60c0 33.1-26.9 60-60 60h-16.8v-65.7c0-45.1-36.7-81.8-81.8-81.8s-81.8 36.7-81.8 81.8v65.7h-16.8c-33.1 0-60-26.9-60-60V161.2L230 50.9c17.4-14.6 42.4-14.4 59.6.4l126 108.5v198.7z" id="Layer_1-2"></path></svg>',
            width: 20,
            height: 20,
            color: selectedIndex == 0 ? Colors.blue : Colors.black,
          ),
          title: Text('Home'),
          selected: selectedIndex == 0,
          onTap: () => onItemTapped(0),
        ),
        ListTile(
          leading: SvgPicture.string(
            '<svg id="Layer_2" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 508.8 495.2" class="icon lpanel"><g id="Layer_1-2"><path d="M506.2 285.7l-36.8-159.4c-6-26-21.8-48.2-44.4-62.3-22.7-14.2-49.5-18.6-75.5-12.6L190.1 88.2c-21.9 5.1-40.5 17-53.9 33.1l-14-60.8c-4.9-21.1-20.8-37.9-41.6-43.9L25.5.8C14.9-2.3 3.8 3.9.8 14.5s3.1 21.7 13.7 24.7l55 15.8c6.8 2 12.1 7.5 13.7 14.4l42.3 183.2v.1l21.6 93.6c-6.2 5.4-11.6 11.8-16 18.9-12 19.2-15.8 42-10.7 64.1 5.1 22.1 18.5 40.9 37.8 52.9 13.7 8.5 29.1 12.9 44.9 12.9 6.4 0 12.9-.7 19.3-2.2 22.1-5.1 40.9-18.5 52.9-37.8 3.1-4.9 5.6-10 7.6-15.3l148.5-34.3c26-6 48.2-21.8 62.3-44.4 14.2-22.7 18.6-49.5 12.6-75.5zM213.2 454c-11.7 2.7-23.8.7-33.9-5.7-10.2-6.4-17.3-16.3-20-28-5.6-24.2 9.5-48.4 33.7-53.9 3.4-.8 6.8-1.2 10.1-1.2 20.5 0 39 14.1 43.8 34.9 1.4 6.3 1.5 12.6.3 18.7 0 .2 0 .4-.1.6-1.1 5.1-3 10.1-5.9 14.6-6.4 10.2-16.3 17.3-28 20zm246.4-114c-8.5 13.6-21.8 23.1-37.4 26.7l-135.1 31.2c-.3-2.2-.7-4.5-1.3-6.7-10.5-45.6-56.2-74.2-101.9-63.7h-.2L154 198.9c-7.3-32.1 12.9-64.3 45-71.7l159.4-36.8c15.6-3.6 31.7-.9 45.3 7.6 13.6 8.5 23.1 21.8 26.7 37.4l36.8 159.4c3.6 15.6.9 31.7-7.6 45.3z"></path><path d="M314.7 164.8l-47.8 11c-10.8 2.5-17.5 13.2-15 24 2.1 9.2 10.4 15.5 19.5 15.5s3-.2 4.5-.5l47.8-11c10.8-2.5 17.5-13.2 15-24s-13.2-17.5-24-15z"></path></g></svg>',
            width: 20,
            height: 20,
            color: selectedIndex == 1 ? Colors.blue : Colors.black,
          ),
          title: Text('Assets'),
          selected: selectedIndex == 1,
          onTap: () => onItemTapped(1),
        ),
      ],
    );
  }
}

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Screen 1'),
    );
  }
}

class Screen2 extends StatefulWidget {
  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Item List',
                    style:
                        TextStyle(fontSize: 26, fontWeight: FontWeight.w600)),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 5,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color.fromRGBO(77, 104, 236, 1),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.add,
                            color: Color(0xffffffff),
                          ),
                          Text(
                            'Add Item',
                            style: TextStyle(
                              color: Color(
                                0xffffffff,
                              ),
                            ),
                          ),
                          PopupMenuButton<String>(
                            icon: Icon(
                              Icons.arrow_drop_down,
                              color: Color(
                                0xffffffff,
                              ),
                            ), // Specify the dropdown icon
                            itemBuilder: (context) => [
                              PopupMenuItem(
                                value: 'Add an Item',
                                child: Text('Add an Item'),
                              ),
                              PopupMenuItem(
                                value: 'Add Item Variants',
                                child: Text('Add Item Variants'),
                              ),
                              PopupMenuItem(
                                value: 'Import Excel File',
                                child: Text('Import Excel File'),
                              ),
                            ],
                            onSelected: (value) {
                              value == 'Add an Item'
                                  ? Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Screen3(),
                                      ),
                                    )
                                  :
                                  // Handle the selected value
                                  print('Selected value: $value');
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    // Container(
                    //   padding: EdgeInsets.symmetric(
                    //     horizontal: 6,
                    //     vertical: 7,
                    //   ),
                    //   decoration: BoxDecoration(
                    //     border: Border.all(
                    //       color: Color.fromRGBO(
                    //         77,
                    //         104,
                    //         236,
                    //         1,
                    //       ),
                    //     ),
                    //     borderRadius: BorderRadius.circular(5),
                    //     color: Colors.white,
                    //   ),
                    //   child: Row(
                    //     children: [
                    //       Icon(
                    //         Icons.storage_rounded,
                    //         color: Colors.grey,
                    //       ),
                    //       Text(
                    //         'Data Center',
                    //         style: TextStyle(
                    //           color: Color(
                    //             0xff111111,
                    //           ),
                    //         ),
                    //       ),
                    //     ],
                    //   ),
                    // ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth >= 600) {
                  // Desktop view
                  return Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.grey,
                              size: 25,
                            ),
                            hintText: 'Search by name, barcode, or attribute.',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                              ),
                              borderRadius: BorderRadius.circular(
                                5,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromRGBO(
                                  77,
                                  104,
                                  236,
                                  1,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(5)),
                        padding: EdgeInsets.all(12),
                        child: Icon(Icons.qr_code_scanner_outlined),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.remove_red_eye_outlined,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(text: 'Hidden files(s) '),
                                TextSpan(text: ' (0)'),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  );
                } else {
                  // Mobile view
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey,
                            size: 25,
                          ),
                          hintText: 'Search by name, barcode, or attribute.',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                            borderRadius: BorderRadius.circular(
                              5,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color.fromRGBO(
                                77,
                                104,
                                236,
                                1,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.circular(5)),
                            padding: EdgeInsets.all(12),
                            child: Icon(Icons.qr_code_scanner_outlined),
                          ),
                          SizedBox(width: 20),
                          Row(
                            children: [
                              Icon(
                                Icons.remove_red_eye_outlined,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(text: 'Hidden files(s) '),
                                    TextSpan(text: ' (0)'),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  );
                }
              },
            ),
            // Row(
            //   children: [
            //     Expanded(
            //       child: TextField(
            //         decoration: InputDecoration(
            //           prefixIcon: Icon(
            //             Icons.search,
            //             color: Colors.grey,
            //             size: 25,
            //           ),
            //           hintText: 'Search by name, barcode, or attribute.',
            //           hintStyle: TextStyle(
            //             color: Colors.grey,
            //             fontSize: 14,
            //           ),
            //           border: OutlineInputBorder(
            //             borderSide: BorderSide(
            //               color: Colors.grey,
            //             ),
            //             borderRadius: BorderRadius.circular(
            //               5,
            //             ),
            //           ),
            //           enabledBorder: OutlineInputBorder(
            //             borderSide: BorderSide(
            //               color: Colors.grey,
            //             ),
            //           ),
            //           focusedBorder: OutlineInputBorder(
            //             borderSide: BorderSide(
            //               color: Color.fromRGBO(
            //                 77,
            //                 104,
            //                 236,
            //                 1,
            //               ),
            //             ),
            //           ),
            //         ),
            //       ),
            //     ),
            //     SizedBox(
            //       width: 10,
            //     ),
            //     Container(
            //       decoration: BoxDecoration(
            //           border: Border.all(
            //             color: Colors.grey,
            //           ),
            //           borderRadius: BorderRadius.circular(5)),
            //       padding: EdgeInsets.all(12),
            //       child: Icon(Icons.qr_code_scanner_outlined),
            //     ),
            //     SizedBox(
            //       width: 20,
            //     ),
            //     Row(
            //       children: [
            //         Icon(
            //           Icons.remove_red_eye_outlined,
            //         ),
            //         SizedBox(
            //           width: 5,
            //         ),
            //         Text.rich(
            //           TextSpan(
            //             children: [
            //               TextSpan(text: 'Hidden files(s) '),
            //               TextSpan(text: ' (0)'),
            //             ],
            //           ),
            //         ),
            //       ],
            //     )
            //   ],
            // ),

            SizedBox(
              height: 10,
            ),

            Divider(
              thickness: 1,
            ),
            Expanded(
              child:
                  // Stack(
                  //   children: [
                  ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 50,
                    ),
                    child: Column(
                      children: [
                        Text(
                          'There are no registered items. Please add an item.',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Screen3(),
                                  ));
                              // onItemTapped(2);
                              // _selectedIndex = 0;
                              // _showDrawer = false;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 10,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Color.fromRGBO(77, 104, 236, 1),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.add,
                                  color: Color(0xffffffff),
                                ),
                                Text(
                                  'Add Item',
                                  style: TextStyle(
                                    color: Color(
                                      0xffffffff,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              //     Positioned(
              //       bottom: 0,
              //       right: 0,
              //       child: FloatingActionButton(
              //         onPressed: () {},
              //         child: Image.asset(
              //           'assets/images/message1.png',
              //           color: Colors.white,
              //           height: 40,
              //           width: 40,
              //         ),
              //         // ImageIcon(
              //         //   AssetImage(
              //         //     'assets/images/message.png',
              //         //   ),
              //         // ),
              //       ),
              //     ),
              //   ],
              // ),
            )
          ],
        ),
      ),
    );
  }
}

class Screen3 extends StatefulWidget {
  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Item List',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'New Item',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Item Information',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey.shade200,
                      ),
                      borderRadius: BorderRadius.circular(
                        5,
                      ),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Text('Reset'),
                  ),
                )
              ],
            ),
            Divider(
              color: Colors.grey,
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Name',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Name',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 0,
                        horizontal: 10,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            5,
                          ),
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ))),
                ),

                // ListTile(
                //   // leading: Text(
                //   //   'Name',
                //   //   style: TextStyle(
                //   //     fontSize: 16,
                //   //     color: Colors.black,
                //   //     fontWeight: FontWeight.w700,
                //   //   ),
                //   // ),
                //   title:   ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Barcode',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText:
                          'Click the "Generate" button to create a barcode',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 0,
                        horizontal: 10,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            5,
                          ),
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ))),
                ),

                // ListTile(
                //   // leading: Text(
                //   //   'Name',
                //   //   style: TextStyle(
                //   //     fontSize: 16,
                //   //     color: Colors.black,
                //   //     fontWeight: FontWeight.w700,
                //   //   ),
                //   // ),
                //   title:   ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Purchase Price',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Purchase Price',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 0,
                        horizontal: 10,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            5,
                          ),
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ))),
                ),

                // ListTile(
                //   // leading: Text(
                //   //   'Name',
                //   //   style: TextStyle(
                //   //     fontSize: 16,
                //   //     color: Colors.black,
                //   //     fontWeight: FontWeight.w700,
                //   //   ),
                //   // ),
                //   title:   ),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Sales Price',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Sales Price',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 0,
                        horizontal: 10,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            5,
                          ),
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ))),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Item Attribute',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Type',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Input Type',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 0,
                        horizontal: 10,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            5,
                          ),
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ))),
                ),

                // ListTile(
                //   // leading: Text(
                //   //   'Name',
                //   //   style: TextStyle(
                //   //     fontSize: 16,
                //   //     color: Colors.black,
                //   //     fontWeight: FontWeight.w700,
                //   //   ),
                //   // ),
                //   title:   ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Brand',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Input Brand',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 0,
                        horizontal: 10,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            5,
                          ),
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ))),
                ),

                // ListTile(
                //   // leading: Text(
                //   //   'Name',
                //   //   style: TextStyle(
                //   //     fontSize: 16,
                //   //     color: Colors.black,
                //   //     fontWeight: FontWeight.w700,
                //   //   ),
                //   // ),
                //   title:   ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Quantity',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Initial Quantity',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Input Initial Quantity',
                      hintStyle: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 0,
                        horizontal: 10,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            5,
                          ),
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ))),
                ),

                // ListTile(
                //   // leading: Text(
                //   //   'Name',
                //   //   style: TextStyle(
                //   //     fontSize: 16,
                //   //     color: Colors.black,
                //   //     fontWeight: FontWeight.w700,
                //   //   ),
                //   // ),
                //   title:   ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(
                        77,
                        104,
                        236,
                        1,
                      ),
                      border: Border.all(
                        color: Color.fromRGBO(
                          77,
                          104,
                          236,
                          1,
                        ),
                      ),
                      borderRadius: BorderRadius.circular(
                        5,
                      ),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Text(
                      'Submit',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey.shade200,
                      ),
                      borderRadius: BorderRadius.circular(
                        5,
                      ),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Text(
                      'Cancel',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
    // Center(
    //   child: TextButton(
    //       onPressed: () {
    //         Navigator.pop(context);
    //       },
    //       child: Text('back')),
    // );
  }
}
