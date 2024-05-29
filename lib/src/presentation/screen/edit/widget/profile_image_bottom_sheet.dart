import 'package:fe/src/presentation/common/profile_icon_set.dart';
import 'package:flutter/material.dart';
import 'package:fe/src/data/model/model.dart';
import 'package:fe/src/presentation/common/profile_icon_set.dart';
//import 'package:fe/src/presentation/controller/controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProfileImageBottomSheet extends ConsumerWidget {
  const ProfileImageBottomSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final account = ref.watch(authControllerProvider);
    //
    // if (account is! Authenticated) {
    //   Navigator.pop(context);
    //   return Container();
    // }

    // final profileImage = account.user.profileImage;
    //
    // ref.listen(
    //   authControllerProvider.select((state) {
    //     return state is Authenticated && state.updatedUser != null
    //         ? state.updatedUser!.profileImage
    //         : null;
    //   }),
    //   (_, newState) {
    //     if (profileImage != newState) {
    //       Navigator.pop(context);
    //     }
    //   },
    // );

    // final UserModel currentUser = account.user;
    // final UserModel updatedUser = account.updatedUser!;

    return Container(
      width: MediaQuery.of(context).size.width,
      height: 188,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
      ),
      child: ProfileIconSet(
        profileImage: 'cat',
        onPressedIcon: (String? image) {
          // ref.watch(authControllerProvider.notifier).setProfile(
          //     user: currentUser,
          //     updatedUser: updatedUser.copyWith(profileImage: image));
        },
      ),
    );
  }
}
