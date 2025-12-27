import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TodayAlert extends StatelessWidget {
  const TodayAlert({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Today\'s Alerts',
          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8.h),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.green.shade100,
                    shape: BoxShape.circle,
                  ),
                  padding: EdgeInsets.all(8.w),
                  child: Icon(
                    Icons.warning_amber,
                    color: Colors.green.withValues(alpha: 0.6),
                    size: 20.w,
                  ),
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: Text(
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    '10 members expired today - kaleb, Eyuel, kira',
                  ),
                ),
                SizedBox(width: 8.w),
                TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: Size.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('View '),
                      SizedBox(width: 4.w),
                      Icon(Icons.arrow_forward_ios, size: 13),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

        SizedBox(height: 2.h),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.green.shade100,
                    shape: BoxShape.circle,
                  ),
                  padding: EdgeInsets.all(8.w),
                  child: Icon(
                    Icons.warning_amber,
                    color: Colors.green.withValues(alpha: 0.6),
                    size: 20.w,
                  ),
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: Text(
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    '20 pending payment need to be followed up on',
                  ),
                ),
                SizedBox(width: 8.w),
                TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: Size.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('View '),
                      SizedBox(width: 4.w),
                      Icon(Icons.arrow_forward_ios, size: 13),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

        SizedBox(height: 2.h),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.green.shade100,
                    shape: BoxShape.circle,
                  ),
                  padding: EdgeInsets.all(8.w),
                  child: Icon(
                    Icons.warning_amber,
                    color: Colors.green.withValues(alpha: 0.6),
                    size: 20.w,
                  ),
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: Text(
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    '5 members expiring soon - Alex, Sam, Jordan',
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: Size.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('View '),
                      SizedBox(width: 4.w),
                      Icon(Icons.arrow_forward_ios, size: 13),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 2.h),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.green.shade100,
                    shape: BoxShape.circle,
                  ),
                  padding: EdgeInsets.all(8.w),
                  child: Icon(
                    Icons.warning_amber,
                    color: Colors.green.withValues(alpha: 0.6),
                    size: 20.w,
                  ),
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: Text(
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    '10 members expired today - kaleb, Eyuel, kira',
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: Size.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('View '),
                      SizedBox(width: 4.w),
                      Icon(Icons.arrow_forward_ios, size: 13),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

        SizedBox(height: 2.h),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.green.shade100,
                    shape: BoxShape.circle,
                  ),
                  padding: EdgeInsets.all(8.w),
                  child: Icon(
                    Icons.warning_amber,
                    color: Colors.green.withValues(alpha: 0.6),
                    size: 20.w,
                  ),
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: Text(
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    '10 members expired today - kaleb, Eyuel, kira',
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: Size.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('View '),
                      SizedBox(width: 4.w),
                      Icon(Icons.arrow_forward_ios, size: 13),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),

        SizedBox(height: 2.h),
        Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.green.shade100,
                    shape: BoxShape.circle,
                  ),
                  padding: EdgeInsets.all(8.w),
                  child: Icon(
                    Icons.warning_amber,
                    color: Colors.green.withValues(alpha: 0.6),
                    size: 20.w,
                  ),
                ),
                SizedBox(width: 10.w),
                Expanded(
                  child: Text(
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    '10 members expired today - kaleb, Eyuel, kira',
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                    minimumSize: Size.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('View '),
                      SizedBox(width: 4.w),
                      Icon(Icons.arrow_forward_ios, size: 13),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
