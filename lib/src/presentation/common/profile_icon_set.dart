import 'package:flutter/material.dart';
import 'package:fe/src/shared/theme/color_theme.dart';

class ProfileIconSet extends StatefulWidget {
  final String? profileImage;
  final void Function(String?) onPressedIcon;

  const ProfileIconSet({
    super.key,
    required this.onPressedIcon,
    this.profileImage,
  });

  @override
  State<ProfileIconSet> createState() => _ProfileIconSetState();
}

class _ProfileIconSetState extends State<ProfileIconSet> {
  final List<String> profileList = [
    'chick',
    'bear',
    'pig',
    'elephant',
    'cat',
    'sheep',
    'rabbit',
    'cock',
    'cow',
    'tiger'
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(
          height: 15.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: profileList.sublist(0, 5).asMap().entries.map((entry) {
            int index = entry.key;
            String image = entry.value;
            return ProfileIconButton(
              selectedImage: widget.profileImage,
              assetImage: index == 0 ? null : image,
              onPressedIcon: widget.onPressedIcon,
            );
          }).toList(),
        ),
        const SizedBox(
          height: 12.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: profileList.sublist(5, 10).map((image) {
            return ProfileIconButton(
              selectedImage: widget.profileImage,
              assetImage: image,
              onPressedIcon: widget.onPressedIcon,
            );
          }).toList(),
        ),
      ],
    );
  }
}

class ProfileIconButton extends StatefulWidget {
  final String? selectedImage;
  final String? assetImage;
  final void Function(String?) onPressedIcon;

  const ProfileIconButton({
    super.key,
    this.selectedImage,
    this.assetImage,
    required this.onPressedIcon,
  });

  @override
  State<ProfileIconButton> createState() => _ProfileIconButtonState();
}

class _ProfileIconButtonState extends State<ProfileIconButton> {
  bool isSelected = false;
  String? tempNetworkImageUrl; // 임시 변수 추가

  @override
  void initState() {
    super.initState();
    if (widget.assetImage == null &&
        widget.selectedImage != null &&
        widget.selectedImage!.startsWith('http')) {
      tempNetworkImageUrl = widget.selectedImage; // 네트워크 이미지 URL을 임시 변수에 저장
    }
  }

  @override
  Widget build(BuildContext context) {
    bool isNetworkImage =
        tempNetworkImageUrl != null; // 임시 변수를 사용하여 네트워크 이미지 여부 결정
    String imagePath = widget.assetImage ?? 'chick';
    bool isSelected = isNetworkImage
        ? widget.selectedImage == tempNetworkImageUrl
        : widget.selectedImage == imagePath;

    return GestureDetector(
      onTap: () => widget
          .onPressedIcon(isNetworkImage ? tempNetworkImageUrl : imagePath),
      child: Container(
        width: 54,
        height: 54,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          border: Border.all(
            color: isSelected ? ColorTheme.primaryColor : Colors.white,
            width: 2.0,
          ),
        ),
        clipBehavior: Clip.antiAlias,
        child:
            _buildImageContent(isNetworkImage, tempNetworkImageUrl, imagePath),
      ),
    );
  }

  Widget _buildImageContent(
      bool isNetworkImage, String? profileImageUrl, String imagePath) {
    Widget imageWidget;

    if (isNetworkImage && profileImageUrl != null) {
      imageWidget = Image.network(
        profileImageUrl,
        fit: BoxFit.cover,
        width: 54,
        height: 54,
      );
    } else {
      imageWidget = Image.asset(
        'assets/images/profile/$imagePath.png',
        fit: BoxFit.cover,
        width: 54,
        height: 54,
      );
    }

    // 이미지를 원형으로 클리핑
    return ClipRRect(
      borderRadius: BorderRadius.circular(27), // 54 / 2
      child: imageWidget,
    );
  }
}
