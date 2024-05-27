import 'dart:io';

import 'package:device_region/device_region.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:guardiann_flutter/src/data/repository/repository.dart';
// import 'package:guardiann_flutter/src/presentation/controller/controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

class SocialLoginButtonSet extends StatefulHookConsumerWidget {
  const SocialLoginButtonSet({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SocialLoginButtonSetState();
}

class _SocialLoginButtonSetState extends ConsumerState<SocialLoginButtonSet> {
  String region = 'KR';

  @override
  void initState() {
    super.initState();
    getRegion();
  }

  Future<void> getRegion() async {
    final region = await DeviceRegion.getSIMCountryCode();

    if (region != null) {
      setState(() {
        this.region = region;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    //final authController = ref.read(authControllerProvider.notifier);

    return Padding(
      padding: const EdgeInsets.only(bottom: 100.0),
      child: Column(
        children: [
          Text(
            '로그인을 진행할 sns를 선택해주세요',
            style: textTheme.bodyMedium!.copyWith(),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Wrap(
                spacing: 12,
                runSpacing: 12,
                children: [
                  GestureDetector(
                    key: const Key('google_login_button'),
                    onTap: () async {
                      print('google login');
                      setState(() {
                        Navigator.of(context).pushNamed('/home_screen');
                      });
                      //await authController.login(type: LoginType.google);
                    },
                    child: SvgPicture.asset(
                      'assets/images/svg/btn_login_google.svg',
                      semanticsLabel: 'Google Login Button',
                    ),
                  ),
                  if (Platform.isIOS)
                    GestureDetector(
                      onTap: () async {
                        setState(() {
                          Navigator.of(context).pushNamed('/home_screen');
                        });

                        //await authController.login(type: LoginType.apple);
                      },
                      child: SvgPicture.asset(
                        'assets/images/svg/btn_login_apple.svg',
                        semanticsLabel: 'Apple Login Button',
                      ),
                    ),
                  if (region == 'KR' || region == 'kr')
                    GestureDetector(
                      onTap: () async {
                        setState(() {
                          Navigator.of(context).pushNamed('/home_screen');
                        });

                        //await authController.login(type: LoginType.kakao);
                      },
                      child: SvgPicture.asset(
                        'assets/images/svg/btn_login_kakao.svg',
                        semanticsLabel: 'Kakao Login Button',
                      ),
                    ),
                  if (region == 'KR' || region == 'kr')
                    GestureDetector(
                      onTap: () async {
                        setState(() {
                          Navigator.of(context).pushNamed('/home_screen');
                        });

                        //await authController.login(type: LoginType.naver);
                      },
                      child: SvgPicture.asset(
                        'assets/images/svg/btn_login_naver.svg',
                        semanticsLabel: 'Naver Login Button',
                      ),
                    ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
