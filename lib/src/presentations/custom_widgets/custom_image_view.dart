import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cached_network_image/cached_network_image.dart'; // For caching network images
import 'dart:io';

import 'package:laziness_slayer/src/utils/enums.dart'; // For file images

class CustomImageView extends StatelessWidget {
  final String imagePath;
  final ImageType imageType;
  final double? height;
  final double? width;
  final BoxFit boxFit;
  const CustomImageView(
      {super.key,
      required this.imagePath,
      required this.imageType,
      this.height,
      this.width,
      this.boxFit = BoxFit.cover});

  @override
  Widget build(BuildContext context) {
    switch (imageType) {
      case ImageType.assets:
        return Image.asset(
          imagePath,
          height: height,
          width: width,
          fit: boxFit,
          errorBuilder: (context, error, stackTrace) => _imageNotFoundWidget(),
        );
      case ImageType.network:
        return CachedNetworkImage(
          imageUrl: imagePath,
          height: height,
          width: width,
          fit: boxFit,
          placeholder: (context, url) => _loadingWidget(),
          errorWidget: (context, url, error) => _errorWidget(),
        );
      case ImageType.file:
        return Image.file(
          File(imagePath),
          height: height,
          width: width,
          fit: boxFit,
          errorBuilder: (context, error, stackTrace) => _imageNotFoundWidget(),
        );
      case ImageType.svg:
        return SvgPicture.asset(
          imagePath,
          height: height,
          width: width,
          placeholderBuilder: (context) => _loadingWidget(),
        );
      default:
        return _errorWidget(); // Default case if no imageType matches
    }
  }

  Widget _loadingWidget() {
    return const Center(child: CircularProgressIndicator());
  }

  Widget _errorWidget() {
    return Center(
      child: Icon(
        Icons.error,
        color: Colors.red,
        size: 40.r,
      ),
    );
  }

  Widget _imageNotFoundWidget() {
    return const Center(
      child: Icon(
        Icons.image_not_supported,
        color: Colors.grey,
        size: 40.0,
      ),
    );
  }
}
