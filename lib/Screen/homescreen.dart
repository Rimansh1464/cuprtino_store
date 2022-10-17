import 'package:cupertino_list_tile/cupertino_list_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'modal.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    final PageController _pageController = PageController();
  int index = 0;
  DateTime? dates;



  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      resizeToAvoidBottomInset: false,
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 700,
              width: double.infinity,
              child: PageView(
                controller: _pageController,
                onPageChanged: (val) {
                  setState(() {
                    index = val;
                  });
                },
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 50,
                        ),
                        const Text(
                          "Cupertino Store",
                          style: TextStyle(
                            // fontFamily: GoogleFonts.poppins().fontFamily,
                            decoration: TextDecoration.none,
                            color: CupertinoColors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30,
                          ),
                        ),
                        SizedBox(
                          height: 535,
                          width: double.infinity,
                          child: ListView.builder(
                            itemCount: Allproduct.length,
                            itemBuilder: (context, index) {
                              return CupertinoListTile(
                                contentPadding:
                                const EdgeInsets.only(bottom: 10, top: 10),
                                title: Text("${Allproduct[index]["name"]}",style: TextStyle(fontSize: 20),),
                                subtitle: Text(
                                  "${Allproduct[index]["price"]}",
                                  style: const TextStyle(
                                      color: CupertinoColors.inactiveGray,
                                      fontSize: 13),
                                ),
                                leading:
                                Image.asset("${Allproduct[index]["image"]}",scale: 2,),
                                trailing: Icon(
                                  CupertinoIcons.add_circled,
                                  color:
                                  CupertinoColors.activeBlue.withOpacity(0.8),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20, top:59),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        const CupertinoSearchTextField(),
                        SizedBox(
                          height: 535,
                          width: double.infinity,
                          child: ListView.builder(
                            itemCount: Allproduct.length,
                            itemBuilder: (context, index) {
                              return CupertinoListTile(
                                contentPadding:
                                const EdgeInsets.only(bottom: 10, top: 10),
                                title: Text("${Allproduct[index]["name"]}"),
                                subtitle: Text(
                                  "${Allproduct[index]["price"]}",
                                  style: const TextStyle(
                                      color: CupertinoColors.inactiveGray,
                                      fontSize: 13),
                                ),
                                leading:
                                Image.asset("${Allproduct[index]["image"]}"),
                                trailing: Icon(
                                  CupertinoIcons.add_circled,
                                  color: CupertinoColors.activeBlue
                                      .withOpacity(0.8),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 50,
                          ),
                          Text(
                            "Shopping Cart",
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              color: CupertinoColors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          CupertinoTextField(
                            prefix: Icon(
                              CupertinoIcons.person_solid,
                              color:
                              CupertinoColors.inactiveGray.withOpacity(0.8),
                            ),
                            placeholder: "Name",
                            decoration: const BoxDecoration(),
                          ),
                          const Divider(),
                          CupertinoTextField(
                            prefix: Icon(
                              CupertinoIcons.mail,
                              color:
                              CupertinoColors.inactiveGray.withOpacity(0.8),
                            ),
                            placeholder: "Email",
                            decoration: const BoxDecoration(),
                          ),
                          const Divider(),
                          CupertinoTextField(
                            prefix: Icon(
                              CupertinoIcons.location,
                              color:
                              CupertinoColors.inactiveGray.withOpacity(0.8),
                            ),
                            placeholder: "Location",
                            decoration: const BoxDecoration(),
                          ),
                          const Divider(),
                          CupertinoTextField(
                            prefix: Icon(
                              CupertinoIcons.time,
                              color:
                              CupertinoColors.inactiveGray.withOpacity(0.8),
                            ),
                            placeholder: "Delivery time",
                            keyboardType: TextInputType.none,

                            decoration: const BoxDecoration(),
                          ),
                          Container(
                            height: 250,
                            width: double.infinity,
                            color: CupertinoColors.white,
                            child: CupertinoDatePicker(
                              onDateTimeChanged: (DateTime date) {
                                setState(() {
                                  dates = date;
                                });
                              },
                            ),
                          ),
                      CupertinoListTile(
                        contentPadding:
                        const EdgeInsets.only(bottom: 10, top: 10),
                        title: Text("${Allproduct[2]["name"]}"),
                        subtitle: Text(
                          "${Allproduct[2]["price"]}",
                          style: const TextStyle(
                              color: CupertinoColors.inactiveGray,
                              fontSize: 13),
                        ),
                        leading:
                        Image.asset("${Allproduct[2]["image"]}"),
                        trailing: Icon(
                          CupertinoIcons.add_circled,
                          color: CupertinoColors.activeBlue
                              .withOpacity(0.8),
                        ),
                      ),
                          CupertinoListTile(
                            contentPadding:
                            const EdgeInsets.only(bottom: 10, top: 10),
                            title: Text("${Allproduct[3]["name"]}"),
                            subtitle: Text(
                              "${Allproduct[3]["price"]}",
                              style: const TextStyle(
                                  color: CupertinoColors.inactiveGray,
                                  fontSize: 13),
                            ),
                            leading:
                            Image.asset("${Allproduct[3]["image"]}"),
                            trailing: Icon(
                              CupertinoIcons.add_circled,
                              color: CupertinoColors.activeBlue
                                  .withOpacity(0.8),
                            ),
                          ),

                          const SizedBox(
                            height: 20,
                          ),


                          const SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            CupertinoTabBar(
              currentIndex: index,
              onTap: (val) {
                setState(() {
                  index = val;
                  _pageController.animateToPage(val,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.linear);
                });
              },
              height: 60,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.home),
                ),
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.search),
                ),
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.cart),
                ),
              ],
            ),

          ],
        ),
      ),
    );;
  }
}
