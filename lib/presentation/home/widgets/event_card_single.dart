import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import '../../../app/config/theme/app_colors.dart';
import '../../../app/config/theme/dimens.dart';
import '../../../app/config/theme/spacing.dart';
import '../../../core/utils/strings/home_string_constants.dart';
import '../../../domain/entities/event_entity.dart';

class EventCardSingle extends StatelessWidget {
  final EventEntity event;
  const EventCardSingle({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    final market = event.markets.first;

    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      padding: const EdgeInsets.all(padding18),
      decoration: BoxDecoration(
          color: AppColors.whiteColor,
          borderRadius: BorderRadius.circular(radius5),
          border: Border.all(color: AppColors.greyColor, width: 1)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(children: [
            CircleAvatar(
              backgroundImage: CachedNetworkImageProvider(event.image128Url),
              radius: 20,
              backgroundColor: AppColors.lightGrey,
            ),
            const HorizontalSpacing(space: spacing12),
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
          const VerticalSpacing(space: spacing24),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  children: [
                    _buildBuyButton(context, 'Buy Yes - ₦${market.yesPrice}',
                        isYes: true),
                    const VerticalSpacing(space: spacing8),
                    _ProfitText(
                        from: market.yesPriceForEstimate,
                        to: market.yesProfitForEstimate)
                  ],
                ),
              ),
              const HorizontalSpacing(space: spacing15),
              Expanded(
                child: Column(
                  children: [
                    _buildBuyButton(context, 'Buy No - ₦${market.noPrice}',
                        isYes: false),
                    const VerticalSpacing(space: spacing8),
                    _ProfitText(
                        from: market.noPriceForEstimate,
                        to: market.noProfitForEstimate)
                  ],
                ),
              ),
            ],
          ),
          const VerticalSpacing(space: spacing24),
          _buildFooter(context, event.trades, event.endsAt)
        ],
      ),
    );
  }


  Widget _buildBuyButton(BuildContext context, String label, {required bool isYes}) {
    final color = isYes ? AppColors.blueChalk : AppColors.lightRed;
    final textColor = isYes ? AppColors.primaryBlue : AppColors.darkRedColor;
    final borderColor = isYes
        ? AppColors.primaryBlue.withAlpha((0.3 * 255).round())
        : AppColors.darkRedColor.withAlpha((0.3 * 255).round());

    final parts = label.split(' - ');
    final prefix = parts[0];
    final price = parts[1];

    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 10),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(2),
          border: Border.all(color: borderColor),
        ),
        child: Center(
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              style: TextStyle(
                  fontSize: 12,
                  color: textColor,
                  fontFamily: customFontFamily),
              children: <TextSpan>[
                TextSpan(
                    text: prefix,
                    style: const TextStyle(fontWeight: FontWeight.w500)),
                TextSpan(
                    text: ' - $price',
                    style: const TextStyle(fontWeight: FontWeight.w600)),
              ],
            ),
          ),
        ),
      ),
    );
  }


  Widget _buildFooter(BuildContext context, int trades, DateTime? endsAt) {
    String endsAtFormatted = HomeStringConstants.noEndDateText;
    if (endsAt != null) {
      endsAtFormatted = 'Ends ${DateFormat('d\'th\' MMM').format(endsAt)}';
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SvgPicture.asset('assets/icons/ic_light_barchart.svg'),
            const HorizontalSpacing(space: spacing5),
            Text('$trades Trades',
                style: const TextStyle(
                    color: AppColors.darkGrey,
                    fontSize: 12,
                    fontWeight: FontWeight.w500)
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
            SvgPicture.asset('assets/icons/ic_bookmark.svg')
          ],
        )
      ],
    );
  }
}


class _ProfitText extends StatelessWidget {
  final double from;
  final double to;

  const _ProfitText({required this.from, required this.to});

  String _format(double amount) {
    if (amount == 0) return '₦0';
    return '₦${NumberFormat.compact().format(amount)}';
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          _format(from),
          style: const TextStyle(
            color: AppColors.darkGrey,
            fontSize: 12,
            fontWeight: FontWeight.w600,
            fontFamily: customFontFamily,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 11.0),
          child: SvgPicture.asset('assets/icons/ic_arrow_forward.svg'),
        ),
        Text(
          _format(to),
          style: const TextStyle(
              color: AppColors.greenColor,
              fontWeight: FontWeight.w600,
              fontSize: 12,
              fontFamily: customFontFamily
          ),
        ),
      ],
    );
  }
}