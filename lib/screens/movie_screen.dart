import 'package:cinema/model/movie.dart';
import 'package:cinema/widgets/app_chip.dart';
import 'package:cinema/widgets/glass_button.dart';
import 'package:cinema/widgets/scale_up_animation.dart';
import 'package:cinema/widgets/transition_up_animation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MovieScreen extends StatelessWidget {
  final Movie movie;

  const MovieScreen({
    super.key,
    required this.movie,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff131313),
      body: Stack(
        children: [
          Positioned.fill(
            child: Hero(
              tag: movie.name,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(38),
                child: Image.asset(
                  'assets/images/${movie.poster}',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(38),
              gradient: LinearGradient(
                colors: [
                  movie.color.withOpacity(.25),
                  Colors.transparent,
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),
          Positioned.fill(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ScaleUpAnimation(
                      widget: GlassButton(
                        icon: const Icon(
                          Icons.chevron_left,
                          color: Colors.white,
                        ),
                        onTap: () => Navigator.pop(context),
                      ),
                    ),
                    const SizedBox(height: 8),
                    const ScaleUpAnimation(
                      widget: GlassButton(
                        icon: Icon(
                          Icons.favorite_outline,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TransitionUpAnimation(
                          widget: Text(
                            movie.name,
                            style: GoogleFonts.roboto(
                              fontSize: 28,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              shadows: [
                                const Shadow(
                                  color: Colors.black54,
                                  offset: Offset(0, 1),
                                  blurRadius: 10,
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        TransitionUpAnimation(
                          duration: const Duration(milliseconds: 2000),
                          widget: Row(
                            children: [
                              for (var genre in movie.genre) ...{
                                if (movie.genre.first == genre) ...{
                                  AppChip(text: genre),
                                  const SizedBox(width: 8),
                                } else ...{
                                  AppChip(
                                    text: genre,
                                    color: Colors.white.withOpacity(.3),
                                    textColor: Colors.white,
                                    isBlured: true,
                                  ),
                                  const SizedBox(width: 8),
                                }
                              }
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        TransitionUpAnimation(
                          duration: const Duration(milliseconds: 2500),
                          widget: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 42,
                                vertical: 22,
                              ),
                              backgroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18),
                              ),
                            ),
                            child: Text(
                              'Book Ticket',
                              style: GoogleFonts.roboto(
                                fontSize: 16,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        // const SizedBox(height: 18),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
