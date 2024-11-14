import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:leprecoin/src/feature/chellenge/bloc/challenge_bloc.dart';
import 'package:leprecoin/ui_kit/app_button/app_button.dart';

class ChellengeScreen extends StatelessWidget {
  const ChellengeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(22, 55, 22, 130),
      child:
          BlocBuilder<ChallengeBloc, ChallengeState>(builder: (context, state) {
        if (state is ChallengeError) {
          return Text(state.message);
        }
        if (state is ChallengeLoaded) {
          return ListView.separated(
              itemCount: state.challenge.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) => Gap(22),
              itemBuilder: (context, index) {
                final String title =
                    state.challenge[index].challenge.split(": ")[0];
                final String description =
                    state.challenge[index].challenge.split(": ")[1];

                return AppButton(
                    color: ButtonColors.green,
                    widget: Padding(
                      padding: const EdgeInsets.fromLTRB(17, 10, 6, 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 28,
                              fontFamily: 'avenir',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                          Gap(8),
                          Text(
                            description,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 21,
                              fontFamily: 'avenir',
                              fontWeight: FontWeight.w500,
                              height: 0,
                            ),
                          ),
                          Gap(4),
                          Text(
                            state.challenge[index].status,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color:
                                  Colors.black.withOpacity(0.46000000834465027),
                              fontSize: 21,
                              fontFamily: 'satoshi',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                          Gap(22),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              if (state.challenge[index].status ==
                                  'in progress')
                                AppButton(
                                  width: 0,
                                  color: ButtonColors.purple,
                                  onPressed: () {
                                    state.challenge[index].status =
                                        'not started';
                                    context.read<ChallengeBloc>().add(
                                        UpdateChallenge(
                                            state.challenge[index]));
                                  },
                                  widget: Padding(
                                     padding: const EdgeInsets.symmetric(
                                      horizontal: 14, vertical: 7),
                                    child: Text(
                                      'cansel',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontFamily: 'satoshi',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                      ),
                                    ),
                                  ),
                                ),
                              Gap(16),
                              AppButton(
                                width: 0,
                                color: ButtonColors.purple,
                                onPressed: () {
                                  if (state.challenge[index].status ==
                                          'not started' ||
                                      state.challenge[index].status ==
                                          'finished') {
                                    state.challenge[index].status =
                                        'in progress';
                                    context.read<ChallengeBloc>().add(
                                        UpdateChallenge(
                                            state.challenge[index]));
                                  } else {
                                    state.challenge[index].status = 'finished';
                                    context.read<ChallengeBloc>().add(
                                        UpdateChallenge(
                                            state.challenge[index]));
                                  }
                                },
                                widget: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 14, vertical: 7),
                                  child: Text(
                                    state.challenge[index].status ==
                                            'in progress'
                                        ? 'finish challenge'
                                        : 'start challenge',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontFamily: 'satoshi',
                                      fontWeight: FontWeight.w400,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ));
              });
        }

        return const Center(
          child: CircularProgressIndicator(),
        );
      }),
    );
  }
}
