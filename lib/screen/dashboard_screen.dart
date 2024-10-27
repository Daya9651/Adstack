import 'package:adstack/common/widgets/calendar.dart';
import 'package:adstack/style/color.dart';
import 'package:adstack/style/gradients.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (context, constraints) {
          double width = constraints.maxWidth;
          if (width >= 500) {
            return Row(
              children: [
                Container(
                  color: Colors.white,
                  height: double.infinity,
                 width: 300,
                 child: ListView(
                   padding: EdgeInsets.zero,
                   children: [
                     const SizedBox(height: 10,),
                     Container(
                       height: 60,width: 60,

                         child: Center(child: Image.asset('assets/images/Adstacks.png'))),
                     const SizedBox(height: 4,),
                     const Divider(color: Colors.black38,),
                     Column(
                       children: [
                         Container(
                           decoration:BoxDecoration(
                             borderRadius: BorderRadius.circular(44),
                             border: Border.all(color: Colors.amber, width: 4)
                           ),
                           child: const CircleAvatar(
                             // backgroundColor: Colors.black38,
                             radius: 38,
                             child: Text('🧕🏻', style: TextStyle(fontSize: 50),),
                           ),
                         ),
                         const Text("Pooja MIshra", style: TextStyle(fontWeight: FontWeight.bold),),
                         const SizedBox(height: 8,),
                         Container(
                           height: 27,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(15),
                             border: Border.all(color: Colors.green),
                             // color: Colors.red
                           ),
                             child: TextButton(onPressed: (){}, child: const Text("Admin", style: TextStyle(fontWeight: FontWeight.bold),)))
                       ],
                     ),
                     const Divider(color: Colors.black38,),
                     _buildDrawerItem(
                       icon: Icons.home,
                       text: 'Home',
                       onTap: () {
                       },
                     ),
                     _buildDrawerItem(
                       icon: Icons.people,
                       text: 'Employees',
                       onTap: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context)=> PageNotFoundScreen()));
                       },
                     ),
                     _buildDrawerItem(
                       icon: Icons.person,
                       text: 'Attendance',
                       onTap: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context)=> PageNotFoundScreen()));
                       },
                     ),
                     _buildDrawerItem(
                       icon: Icons.calendar_month,
                       text: 'Summary',
                       onTap: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context)=> PageNotFoundScreen()));
                       },
                     ),
                     _buildDrawerItem(
                       icon: Icons.info_outline,
                       text: 'Information',
                       onTap: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context)=> PageNotFoundScreen()));
                       },
                     ),


                     _buildDrawerItem(
                         text: 'WORKSPACES',
                         icon: Icons.control_point,
                         subItems: [
                           _buildDrawerSubItem('        Adstack', onTap: () {
                             Navigator.push(context, MaterialPageRoute(builder: (context)=> PageNotFoundScreen()));
                           }, icons: Icons.category_sharp),
                           _buildDrawerSubItem('        Finance', onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> PageNotFoundScreen()));
                           }, icons: Icons.category_sharp),

                         ]),
                     const SizedBox(height: 60,),
                     _buildDrawerItem(
                       icon: Icons.settings,
                       text: 'Settings',
                       onTap: () {
                         debugPrint("setting is pressing");
                         Navigator.push(context, MaterialPageRoute(builder: (context)=> PageNotFoundScreen()));
                       },
                     ),
                     _buildDrawerItem(
                         icon: Icons.exit_to_app,
                         text: 'Logout',
                         onTap: () {
                         }),
                   ],
                 ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      color: Colors.white,
                      width: 780,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Home",
                                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey),
                                ),
                                Container(
                                  height: 35,
                                  width: 250,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: 'Search',
                                      hintStyle: const TextStyle(color: Colors.white),
                                      filled: true,
                                      fillColor: AppColors.info101,
                                      suffixIcon: const Icon(Icons.search, color: Colors.white),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10.0),
                                        borderSide: const BorderSide(color: Colors.white, width: 2.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10.0),
                                        borderSide: const BorderSide(color: Colors.white, width: 2.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 14),
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 20,),
                                  const Text('    ETHEREUM 2.0', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),),
                                  const ListTile(title: Text('Top Rating', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),
                                  subtitle: Text('Project', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),),),
                                  const ListTile(title: Text('Trending project and high rating', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white),),
                                  subtitle: Text('Project Created by team', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white),),),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15),
                                    child: Container(
                                      height: 35,
                                        width: 120,
                                        decoration: BoxDecoration(
                                            color: Colors.black54,
                                          borderRadius: BorderRadius.circular(15)
                                        ),
                                        child: TextButton(onPressed: (){}, child: const Text('Learn More.', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),))),
                                  )
                                ],
                              ),
                              height: 230,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                // color: Colors.blue,
                                gradient: primaryGradientColor,
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 14),
                            child: Container(
                              height: 230,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: AppColors.info101,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(7.0),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            const Text("    ALL Projects", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),),
                                            CustomCard(color: Colors.red,title: 'Technology behind the Blockchain', subtitle: 'Project #1 See Project Details', onEdit: (){}),
                                            CustomCard(color: Colors.red,title: 'Technology behind the Blockchain', subtitle: 'Project #1 See Project Details', onEdit: (){}),
                                            CustomCard(color: Colors.red,title: 'Technology behind the Blockchain', subtitle: 'Project #1 See Project Details', onEdit: (){})

                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: AppColors.info101,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const SizedBox(height: 8,),
                                          const Text("    Top Creators", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),),
                                          const SizedBox(height: 3,),
                                          Container(
                                            height: 38,
                                            color: Colors.grey.shade50,
                                            child: const Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                              children: [
                                                Text("Name",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black54), ),
                                                Text("Artworks",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black54), ),
                                                Text("Rating",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.black54 ), )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            height: 42,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(7),
                                              border: Border.all(color: Colors.grey)
                                            ),
                                            child:const Column(
                                              children: [
                                                Center(
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          CircleAvatar(
                                                            radius: 15,
                                                            backgroundColor: Colors.grey,
                                                          ),
                                                          Text(' @maddisom_c21', style: TextStyle(fontSize: 14, color: Colors.white),)
                                                        ],
                                                      ),
                                                      Text('9821', style: TextStyle(fontSize: 14, color: Colors.white),),
                                                      Text('****', style: TextStyle(fontSize: 25, color: Colors.blue),)
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            )
                                          )


                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 14),
                            child: Container(
                              height: 230,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: LineChart(
                             LineChartData(
                             gridData: const FlGridData(show: true),
                             titlesData: const FlTitlesData(
                             // leftTitles: SideTitles(showTitles: true),
                             // bottomTitles: SideTitles(showTitles: true),
                             ),
                             borderData: FlBorderData(show: true),
                             minX: 1,
                             maxX: 60,
                             minY: 0,
                             maxY: 100,
                             lineBarsData: [
                                                              // Pending Line (Red)
                                    LineChartBarData(
                                    spots: [
                                    const FlSpot(1 , 20 ),
                                    const FlSpot(5, 50),
                                    const FlSpot(6, 60),
                                    const FlSpot(10, 10),
                                    const FlSpot(12, 30),
                                    ],
                                     isCurved: true,
                                     color: Colors.red,
                                     // colors: [Colors.red],
                                     dotData: const FlDotData(show: true),
                                     belowBarData: BarAreaData(show: false),
                                     ),
                                     // Done Line (Green)
                               LineChartBarData(
                                 spots: [
                                   const FlSpot(1, 80),
                                   const FlSpot(7, 30),
                                   const FlSpot(8, 70),
                                   const FlSpot(11, 50),
                                   const FlSpot(12, 70),
                                 ],
                                 isCurved: false,
                                 color: Colors.green,
                                           dotData: const FlDotData(show: true),
                                      belowBarData: BarAreaData(show: false),
                                     ),
                                 ],
                                 ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                Container(
                  color: Colors.white,
                  height: double.infinity,
                  // height: 450,
                 width: 310,
                 child: Column(
                   children: [
                     Column(
                       children: [
                         Padding(
                           padding: const EdgeInsets.all(20.0),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Row(
                                 children: [
                                   IconButton(onPressed: (){}, icon: const Icon(Icons.note_add_sharp)),
                                   IconButton(onPressed: (){}, icon: const Icon(Icons.notification_add_outlined)),
                                   IconButton(onPressed: (){}, icon: const Icon(Icons.power_settings_new_sharp)),
                                 ],
                               ),
                               Row(
                                 children: [
                                   CircleAvatar(
                                     radius: 22,
                                     child: Image.asset('assets/images/Adstacks.png'),
                                     backgroundColor: Colors.grey,)
                                 ],
                               )
                             ],
                           ),
                         ),
                       ],
                     ),

                     Container(
                       child: Column(
                         children: [
                           Padding(
                             padding: const EdgeInsets.symmetric(horizontal: 5),
                             child: Container(
                               // color:  Colors.blue.shade900,
                               height: 700,
                               child: Column(
                                 children: [
                                   Expanded(
                                     child: Container(
                                       child: const CalendarBox(),
                                       decoration: BoxDecoration(
                                         color: Colors.deepPurple,
                                         borderRadius: BorderRadius.circular(15),
                                       ),
                                     ),
                                   ),
                                   const SizedBox(height: 5 ,),
                                   Expanded(
                                     child: Container(
                                       child: Padding(
                                         padding: const EdgeInsets.all(14.0),
                                         child: Column(
                                           children: [
                                             const Padding(
                                               padding: EdgeInsets.only(left: 23.0),
                                               child: Row(
                                                 children: [
                                                   Text('✨', style: TextStyle(fontSize: 25),),
                                                   Text('Today Birthday', style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                                                   Text('✨', style: TextStyle(fontSize: 25),),
                                                 ],
                                               ),
                                             ),
                                             const SizedBox(height: 5,),
                                             const Padding(
                                               padding: EdgeInsets.only(left: 14.0),
                                               child: Row(
                                                 children: [
                                                   CircleAvatar(radius: 25,
                                                     child: Text('👨🏻', style: TextStyle(fontSize: 28),),
                                                   ),
                                                   SizedBox(width: 5),
                                                   CircleAvatar(radius: 25,
                                                     child: Text('🧒🏻', style: TextStyle(fontSize: 28),),
                                                   )
                                                 ],
                                               ),
                                             ),
                                             const SizedBox(height: 8,),
                                             const Padding(
                                               padding: EdgeInsets.only(left: 22.0),
                                               child: Row(
                                                 children: [
                                                   Text("Total | 2 |", style: TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),),
                                                 ],
                                               ),
                                             ),
                                             const SizedBox(height: 10,),
                                             Padding(
                                               padding: const EdgeInsets.only(left: 15.0),
                                               child: Row(
                                                 children: [
                                                   Container(
                                                     height: 35,
                                                     width: 180,
                                                     decoration: BoxDecoration(
                                                       color: Colors.purpleAccent,
                                                       borderRadius: BorderRadius.circular(15)
                                                     ),
                                                     child: TextButton(onPressed: (){}, child: const Row(
                                                       children: [
                                                         Icon(Icons.telegram_outlined, color: Colors.white,),
                                                         Text('Birthday Wishing', style: TextStyle(color: Colors.white),),
                                                       ],
                                                     )),
                                                   ),
                                                 ],
                                               ),
                                             )
                                           ],
                                         ),
                                       ),
                                       decoration: BoxDecoration(
                                         color: AppColors.info101,
                                         borderRadius: BorderRadius.circular(15),
                                       ),
                                     ),
                                   ),
                                   const SizedBox(height: 5 ,),
                                   Expanded(
                                     child: Container(
                                       decoration: BoxDecoration(
                                         color: AppColors.info101,
                                         borderRadius: BorderRadius.circular(15),
                                       ),
                                       child: Padding(
                                         padding: const EdgeInsets.all(14.0),
                                         child: Column(
                                           children: [
                                             const Padding(
                                               padding: EdgeInsets.only(left: 23.0),
                                               child: Row(
                                                 children: [
                                                   Text('✨', style: TextStyle(fontSize: 25),),
                                                   Text('Anniversary', style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.bold),),
                                                   Text('✨', style: TextStyle(fontSize: 25),),
                                                 ],
                                               ),
                                             ),
                                             const SizedBox(height: 5,),
                                             const Padding(
                                               padding: EdgeInsets.only(left: 14.0),
                                               child: Row(
                                                 children: [
                                                   CircleAvatar(radius: 25,
                                                     child: Text('👨🏻', style: TextStyle(fontSize: 28),),
                                                   ),
                                                   SizedBox(width: 5),
                                                   CircleAvatar(radius: 25,
                                                     child: Text('🧒🏻', style: TextStyle(fontSize: 28),),
                                                   ),
                                                   SizedBox(width: 5),
                                                   CircleAvatar(radius: 25,
                                                     child: Text('👨🏻', style: TextStyle(fontSize: 28),),
                                                   ),
                                                 ],
                                               ),
                                             ),
                                             const SizedBox(height: 8,),
                                             const Padding(
                                               padding: EdgeInsets.only(left: 22.0),
                                               child: Row(
                                                 children: [
                                                   Text("Total | 3 |", style: TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),),
                                                 ],
                                               ),
                                             ),
                                             const SizedBox(height: 10,),
                                             Padding(
                                               padding: const EdgeInsets.only(left: 15.0),
                                               child: Row(
                                                 children: [
                                                   Container(
                                                     height: 35,
                                                     width: 200,
                                                     decoration: BoxDecoration(
                                                         color: Colors.purpleAccent,
                                                         borderRadius: BorderRadius.circular(15)
                                                     ),
                                                     child: TextButton(onPressed: (){}, child: const Row(
                                                       children: [
                                                         Icon(Icons.telegram_outlined, color: Colors.white,),
                                                         Text('Annivarsary Wishing', style: TextStyle(color: Colors.white),),
                                                       ],
                                                     )),
                                                   ),
                                                 ],
                                               ),
                                             )
                                           ],
                                         ),
                                       ),
                                     ),
                                   ),
                                 ],
                               ),
                             ),
                           ),
                         ],
                       ),
                     )
                   ],
                 ),
                )
              ],
            );
          } else {
            return SizedBox.shrink();
          }
        },
      ),
    );
  }

  Widget buildColumnContainer(String text, Color color) {
    return Expanded(
      child: Container(
        height: 150,
        color: color,
        child: Center(child: Text(text, style: const TextStyle(color: Colors.white))),
      ),
    );
  }
}



Widget _buildDrawerItem({
  required IconData icon,
  required String text,
  VoidCallback? onTap,
  List<Widget>? subItems,
}) {
  if (subItems != null && subItems.isNotEmpty) {
    return ExpansionTile(
      backgroundColor: Colors.grey.shade400,
      leading: Icon(icon),
      title: Text(text),
      children: subItems,
    );
  } else {
    return ListTile(leading: Icon(icon), title: Text(text), onTap: onTap);
  }
}


Widget _buildDrawerSubItem(String text,
    {VoidCallback? onTap, IconData? icons}) {
  return ListTile(
    // leading: CircleAvatar(
    //   radius: 15,
    //   backgroundColor: Colors.black26,
    //   child: Icon(
    //     icons ?? Icons.list,
    //     size: 25,
    //     color: Colors.black26,
    //   ),
    // ),
    title: Text(text),
    onTap: onTap,
    trailing: const Icon(
      Icons.keyboard_arrow_down_outlined,
      color: Colors.black26,
      size: 25,
    ),
  );
}


class CustomCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String ?imageUrl;
  final VoidCallback onEdit;
  final Color ? color;

  CustomCard({
    required this.title,
    required this.subtitle,
     this.imageUrl,
    this.color,
    required this.onEdit,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 1,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          children: [
            Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                color: Colors.blue,

                borderRadius: BorderRadius.circular(8),
              ),
              // child: Image.asset(),
              // radius: 20,
              // backgroundImage: NetworkImage(imageUrl),
              // backgroundColor: Colors.blue,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 2),
                  InkWell(
                    onTap: (){},
                    child: Text(
                      subtitle,
                      style: const TextStyle(
                        fontSize: 12,
                        // color: Colors.grey.shade300,
                        color: AppColors.white40
                      ),
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              icon: const Icon(Icons.edit, color: Colors.white, size: 18,),
              onPressed: onEdit,
            ),
          ],
        ),
      ),
    );
  }
}



class PageNotFoundScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "No Data Found....",
              style: TextStyle(fontSize: 25),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop(); // Go back to previous screen
              },
              child: const Text("Go Back"),
            ),
          ],
        ),
      ),
    );
  }
}