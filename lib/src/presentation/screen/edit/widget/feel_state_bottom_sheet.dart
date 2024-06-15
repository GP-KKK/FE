import 'package:fe/src/data/model/model.dart';
import 'package:fe/src/presentation/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

class FeelStateBottomSheet extends ConsumerStatefulWidget {
  const FeelStateBottomSheet({super.key});

  @override
  ConsumerState<FeelStateBottomSheet> createState() => _FeelStateBottomSheetState();
}

class _FeelStateBottomSheetState extends ConsumerState<FeelStateBottomSheet> {
  final Map<FeelState, String> feelNames = {
    FeelState.DRIVING: ('운전 중'),
    FeelState.PARKING: ('주차 중'),
    FeelState.COMMING_SOON: ('곧 돌아옵니다.'),
    FeelState.BUSY: ('바쁨'),
    FeelState.UNKNOWN : ('알 수 없음'),
  };

  @override
  Widget build(BuildContext context) {
    final Authenticated account =
        ref.watch(authControllerProvider) as Authenticated;
    final UserModel currentUser = account.user;
    final UserModel updatedUser = account.updatedUser!;
    final feelState = updatedUser.feelState;

    // 성별 업데이트 리스너
    ref.listen(
      authControllerProvider.select(
          (state) => state is Authenticated ? state.updatedUser!.feelState : null),
      (_, FeelState? newState) {
        if (feelState != newState) {
          Navigator.pop(context);
        }
      },
    );
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 450,
      decoration: const ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: FeelState.values
                  .map((gender) =>
                      buildGenderOption(gender, currentUser, updatedUser))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildGenderOption(
      FeelState feelState, UserModel currentUser, UserModel updatedUser) {
    final textTheme = Theme.of(context).textTheme;
    print(feelNames[feelState]!);
    return GestureDetector(
      onTap: () {
        ref.watch(authControllerProvider.notifier).setProfile(
            user: currentUser,
            updatedUser: updatedUser.copyWith(feelState: feelState));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Row(
          children: [
            Expanded(
              child: Text(
                feelNames[feelState]!,
                style: textTheme.labelMedium,
              ),
            ),
            Radio<FeelState>(
              visualDensity: VisualDensity.compact,
              value: feelState,
              groupValue: updatedUser.feelState,
              onChanged: (FeelState? value) {
                ref.watch(authControllerProvider.notifier).setProfile(
                    user: currentUser,
                    updatedUser: updatedUser.copyWith(feelState: value!));
              },
            ),
          ],
        ),
      ),
    );
  }
}
