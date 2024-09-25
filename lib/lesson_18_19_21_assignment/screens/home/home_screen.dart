// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_learning/lesson_18_19_21_assignment/screens/home/widgets/header_section.dart';
import 'package:flutter_learning/lesson_18_19_21_assignment/screens/home/widgets/movie_type_section.dart';
import 'package:flutter_learning/lesson_18_19_21_assignment/screens/home/widgets/upcoming_section.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final listUpcommingMoviesPoster = [
    "https://i.ebayimg.com/images/g/4v4AAOSwa39fz003/s-l1200.jpg",
    "https://rukminim2.flixcart.com/image/850/1000/k5wse4w0/poster/u/b/a/medium-artistic-movie-poster-thor-marvel-movie-poster-for-room-original-imafzgvb2xt8ptzx.jpeg?q=90&crop=false",
    "https://townsquare.media/site/442/files/2017/10/thor_ragnarok_ver2_xlg1.jpg?w=780&q=75",
    "https://static.wixstatic.com/media/c0ca52_861cbfbd84344362a233f609406354cd~mv2.jpg/v1/fill/w_540,h_675,al_c,q_85,enc_auto/c0ca52_861cbfbd84344362a233f609406354cd~mv2.jpg"
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const HeaderSection(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  UpcomingSection(
                    listUpcommingMoviesPoster: listUpcommingMoviesPoster,
                    setStateFunc: (index) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                  ),
                  AnimatedSmoothIndicator(
                    activeIndex: currentIndex,
                    count: listUpcommingMoviesPoster.length,
                    effect: const ExpandingDotsEffect(
                        activeDotColor: Color(0xffFF8036),
                        expansionFactor: 2.5,
                        spacing: 6,
                        dotHeight: 8,
                        dotColor: Color(0xff637394),
                        dotWidth: 8),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: MovieTypeSection(
                        title: "Now in cinemas",
                        suffix: const Icon(
                          Icons.search,
                          color: Color(0xff637394),
                          size: 28,
                        ),
                        child: Container(
                          height: 800,
                          color: Colors.amber,
                        )),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
