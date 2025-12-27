import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// Assuming these are your custom utility paths
// import 'package:app/utils/constant/colors.dart';

class Members extends StatefulWidget {
  const Members({super.key});

  @override
  State<Members> createState() => _MembersState();
}

class _MembersState extends State<Members> {
  // Move variable here so it persists across rebuilds
  int selectedTab = 0;

  final List<String> categories = [
    'All (960)',
    'Active (480)',
    'Inactive (320)',
    'Pending (160)',
    'Banned (40)',
    'Expired (90)',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA), // Soft background color
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // --- TITLE ---
                Text(
                  'Members',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 16.h),

                // --- MODERN SEARCH BAR ---
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                      size: 20.sp,
                    ),
                    hintText: 'Search by name or phone...',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 14.sp),
                    border: InputBorder.none,
                  ),
                ),

                // --- STATS ROW (Horizontal Scrollable) ---
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  child: Row(
                    children: [
                      // Add your stat cards here
                      // For example:
                      // StatCard(title: 'Total', value: '960'),
                      // StatCard(title: 'Active', value: '480'),
                      // StatCard(title: 'Inactive', value: '320'),
                    ],
                  ),
                ),
                SizedBox(height: 18.h),

                // --- TABS / CATEGORIES ---
                SizedBox(
                  height: 42.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      bool isSelected = selectedTab == index;
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            selectedTab = index;
                          });
                        },
                        child: AnimatedContainer(
                          duration: const Duration(milliseconds: 200),
                          margin: EdgeInsets.only(right: 8.w),
                          padding: EdgeInsets.symmetric(horizontal: 18.w),
                          decoration: BoxDecoration(
                            // Logic: Changed color based on selection
                            color: isSelected ? Colors.orange : Colors.white,
                            borderRadius: BorderRadius.circular(10.r),
                            border: Border.all(
                              color: isSelected
                                  ? Colors.orange
                                  : Colors.grey[300]!,
                            ),
                            boxShadow: isSelected
                                ? [
                                    BoxShadow(
                                      color: Colors.orange.withOpacity(0.3),
                                      blurRadius: 8,
                                      offset: const Offset(0, 4),
                                    ),
                                  ]
                                : [],
                          ),
                          child: Center(
                            child: Text(
                              categories[index],
                              style: TextStyle(
                                fontSize: 13.sp,
                                fontWeight: isSelected
                                    ? FontWeight.bold
                                    : FontWeight.w500,
                                color: isSelected
                                    ? Colors.white
                                    : Colors.grey[600],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),

                SizedBox(height: 10.h),

                // Placeholder for List Content
                if (selectedTab == 0) ...[
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: 20,
                    itemBuilder: (context, index) => Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                shape: BoxShape.circle,
                              ),
                              padding: EdgeInsets.all(8.w),
                              child: Icon(
                                Icons.sports_gymnastics,
                                color: Colors.white,
                                size: 20.w,
                              ),
                            ),
                            SizedBox(width: 10.w),
                            Expanded(
                              child: Text(
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                'Kaleb Tegen ,Eyuel ,kira',
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
                  ),
                ] else if (selectedTab == 1) ...[
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: 20,
                    itemBuilder: (context, index) => Card(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: const Color.fromRGBO(255, 152, 0, 1),
                                shape: BoxShape.circle,
                              ),
                              padding: EdgeInsets.all(8.w),
                              child: Icon(
                                Icons.access_alarm,
                                color: Colors.white,
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
                            SizedBox(width: 10.w),
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
                                  Text(
                                    'View ',
                                    style: TextStyle(color: Colors.orange),
                                  ),
                                  SizedBox(width: 4.w),
                                  Icon(Icons.arrow_forward_ios, size: 13),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ] else if (selectedTab == 2) ...[
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: 20,
                    itemBuilder: (context, index) => Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                shape: BoxShape.circle,
                              ),
                              padding: EdgeInsets.all(8.w),
                              child: Icon(
                                Icons.warning_amber,
                                color: Colors.white,
                                size: 20.w,
                              ),
                            ),
                            SizedBox(width: 10.w),
                            Expanded(
                              child: Text(
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                'Kaleb Tegen ,Eyuel ,kira',
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
                  ),
                ] else if (selectedTab == 3) ...[
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: 20,
                    itemBuilder: (context, index) => Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(shape: BoxShape.circle),
                              padding: EdgeInsets.all(8.w),
                              child: Icon(
                                Icons.warning_amber,
                                color: Colors.white,
                                size: 20.w,
                              ),
                            ),
                            SizedBox(width: 10.w),
                            Expanded(
                              child: Text(
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                'Kaleb Tegen ,Eyuel ,kira',
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
                  ),
                ] else if (selectedTab == 4) ...[
                  Text('Tab 5 content'),
                ] else if (selectedTab == 5) ...[
                  Text('Tab 6 content'),
                ] else if (selectedTab == 6) ...[
                  Text('Tab 7 content'),
                ] else if (selectedTab == 7) ...[
                  Text('Tab 8 content'),
                ] else if (selectedTab == 8) ...[
                  Text('Tab 9 content'),
                ] else ...[
                  Text('Default content'),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
