import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:qalla/core/utils/strings/home_string_constants.dart';
import '../../../app/config/theme/app_colors.dart';
import '../../../app/config/theme/dimens.dart';
import '../../../app/config/theme/spacing.dart';
import '../../../domain/entities/event_entity.dart';
import '../../../domain/entities/market_entity.dart';

class EventCardCombined extends StatelessWidget {
  final EventEntity event;
  const EventCardCombined({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      padding: const EdgeInsets.all(padding18),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(radius5),
        border: Border.all(color: AppColors.greyColor, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(children: [
            CircleAvatar(
              backgroundImage: CachedNetworkImageProvider(event.image128Url),
              radius: 20,
              backgroundColor: AppColors.lightGrey,
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                event.title,
                style: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 14,
                    color: AppColors.darkBlueColor),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ]),
          const VerticalSpacing(space: 24),
          ...event.markets
              .take(2)
              .map((market) => _buildMarketRow(context, market)),
          const VerticalSpacing(space: 24),
          _buildFooter(context, event.totalVolume, event.endsAt),
        ],
      ),
    );
  }


  Widget _buildMarketRow(BuildContext context, MarketEntity market) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              child: Text(market.title,
                  style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                      fontFamily: customFontFamily,
                      color: AppColors.marketTitleColor
                  )
              )
          ),
          Row(
            children: [
              _buildMarketOptionButton(context, HomeStringConstants.yesText, market.yesPrice, isYes: true),
              const SizedBox(width: 6),
              _buildMarketOptionButton(context, HomeStringConstants.noText, market.noPrice, isYes: false),
            ],
          ),
        ],
      ),
    );
  }


  Widget _buildMarketOptionButton(BuildContext context, String label, int price, {required bool isYes}) {
    final color = isYes
        ? AppColors.blueChalk.withAlpha((0.5 * 255).round())
        : AppColors.lightRed.withAlpha((0.5 * 255).round());
    final textColor = isYes ? AppColors.primaryBlue : AppColors.darkRedColor;
    final borderColor = isYes
        ? AppColors.primaryBlue.withAlpha((0.3 * 255).round())
        : AppColors.darkRedColor.withAlpha((0.3 * 255).round());

    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(2),
            border: Border.all(color: borderColor)),
        child: RichText(
          text: TextSpan(
            style: TextStyle(
                fontSize: 12, color: textColor, fontFamily: customFontFamily),
            children: [
              TextSpan(
                  text: '$label ',
                  style: const TextStyle(fontWeight: FontWeight.w600)),
              TextSpan(
                  text: '₦$price',
                  style: const TextStyle(fontWeight: FontWeight.w500)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFooter(
      BuildContext context, double totalVolume, DateTime? endsAt) {
    final formatter = NumberFormat.compactCurrency(
      symbol: '₦',
      decimalDigits: 1,
    );
    String endsAtFormatted = HomeStringConstants.noEndDateText;
    if (endsAt != null) {
      endsAtFormatted = 'Ends ${DateFormat('d\'th\' MMM').format(endsAt)}';
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SvgPicture.asset('assets/icons/ic_bold_barchart.svg'),
            const HorizontalSpacing(space: spacing5),
            Text(formatter.format(totalVolume),
                style: const TextStyle(
                    color: AppColors.darkGrey,
                    fontSize: 12,
                    fontWeight: FontWeight.w500
                )
            ),
          ],
        ),
        Row(
          children: [
            Text(endsAtFormatted,
                style: const TextStyle(
                    color: AppColors.darkGrey,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    fontFamily: customFontFamily)),
            const HorizontalSpacing(space: spacing5),
            SvgPicture.asset('assets/icons/ic_favourite.svg'),
          ],
        )
      ],
    );
  }
}
