import 'package:daily_qoutes/data/quoteappbar/quoteappbar.dart';
import 'package:daily_qoutes/data/samplescreen/smaple%20screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

 final List<String> tabsTitle = [
    "All",
    "Love",
    "Life",
    "Motivational",
    "Success",
    "Funny",

  ];

 final List<Map<String, dynamic>> tabsScreen = [
   {"key": "assets/quotes/quotes_list.json",
   "dataKey": "data",
   "title": "author",
   "description": "quote"
   },
   {"key": "assets/quotes/love_quotes.json",
   "dataKey": "love",
   "title": "author",
   "description": "quote"
   },
   {"key": "assets/quotes/Life_Quotes.json",
     "dataKey": "life",
     "title": "author",
     "description": "quote"
   },
   {"key": "assets/quotes/motivational_quotes.json",
     "dataKey": "motivational",
     "title": "author",
     "description": "quote"
   },
   {"key": "assets/quotes/success_quotes.json",
     "dataKey": "data",
     "title": "author",
     "description": "quote"
   },
   {"key": "assets/quotes/funny_quotes.json",
     "dataKey": "funny",
     "title": "author",
     "description": "quote"
   },

  
 ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabsTitle.length,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(190),
          child: Column(
            children: [
              QuoteAppBar(),
              Padding(
                padding: const EdgeInsets.only(right: 220, top: 10),
                child: Text(
                  "Explore",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                      fontFamily: "playfair"),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 70),
                child: Text(
                  "Awesome quotes from all over the world",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontFamily: "playfair"),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TabBar(
                dividerColor: Colors.transparent,
                tabAlignment: TabAlignment.start,
                labelColor: Color(0XFFEC9FE9),
                unselectedLabelColor: Colors.white,
                indicatorColor: Colors.transparent,
                labelPadding: EdgeInsets.symmetric(horizontal: 3),
                isScrollable: true,
                tabs: tabsTitle.map( (tabsTitle)=> Container(
                  width: 90,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Tab(text: tabsTitle))).toList(),

              ),
            ],
          ),

        ),
        body:TabBarView(children: tabsScreen.map((tabsScreen){
          return SampleScreen(keyPath: tabsScreen["key"],title: tabsScreen["title"],description: tabsScreen["description"],dataKey: tabsScreen["dataKey"],);
        }).toList())
      )
    );
  }
}
