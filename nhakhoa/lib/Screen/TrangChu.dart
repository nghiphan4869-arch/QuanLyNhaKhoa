import 'package:flutter/material.dart';
import '../widgets/home_banner.dart';
import '../widgets/home_header.dart';
import '../widgets/menu_card.dart';
import '../widgets/section_title.dart';
import '../widgets/bottom_nav.dart';

class TrangChu extends StatelessWidget {
  const TrangChu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          const Color(0xfff5f5f5),

      body: SafeArea(
        child: SingleChildScrollView(
          padding:
              const EdgeInsets.all(16),
          child: Column(
            children: [

              const HomeHeader(),

              const SizedBox(height: 20),

              const HomeBanner(),

              const SizedBox(height: 25),

              const SectionTitle(
                title: "Lịch hẹn",
              ),

              Row(
                children: [
                  MenuCard(
                    icon:
                        Icons.add_box_outlined,
                    title: "Đặt lịch khám",
                    color:
                        const Color(0xffefe5f2),
                  ),
                  const SizedBox(width: 10),
                  MenuCard(
                    icon: Icons.calendar_month,
                    title: "Xem lịch hẹn",
                    color:
                        const Color(0xffefe5f2),
                  ),
                  const SizedBox(width: 10),
                  MenuCard(
                    icon: Icons.cancel,
                    title: "Hủy lịch hẹn",
                    color:
                        const Color(0xffefe5f2),
                  ),
                ],
              ),

              const SizedBox(height: 25),

              const SectionTitle(
                title: "Điều trị",
              ),

              Row(
                children: [
                  MenuCard(
                    icon:
                        Icons.health_and_safety,
                    title:
                        "Tiến trình điều trị",
                    color:
                        const Color(0xffdff0e6),
                  ),
                  const SizedBox(width: 10),
                  MenuCard(
                    icon: Icons.receipt,
                    title: "Đơn thuốc",
                    color:
                        const Color(0xffdff0e6),
                  ),
                  const SizedBox(width: 10),
                  MenuCard(
                    icon: Icons.refresh,
                    title: "Tái khám",
                    color:
                        const Color(0xffdff0e6),
                  ),
                ],
              ),
               const SizedBox(height: 25),

              const SectionTitle(
                title: "Phản hồi sức khỏe",
              ),

              Row(
                children: [
                  MenuCard(
                    icon:
                        Icons.help_outline,
                    title:
                        "Phản hồi",
                    color:
                        const Color(0xffefe5d8),
                  ),
                  const SizedBox(width: 10),
                  MenuCard(
                    icon: Icons.sentiment_satisfied_alt,
                    title: "Cập nhật tình trạng",
                    color:
                        const Color(0xffefe5d8),
                  ),
                  const SizedBox(width: 10),
                  MenuCard(
                    icon: Icons.image_outlined,
                    title: "Upload hình ảnh",
                    color:
                        const Color(0xffefe5d8),
                  ),
                ],
              ),
            ],
          ),
        ),
            ),
      bottomNavigationBar: const BottomNav(
        currentIndex: 2,
      ),
    );
  }
}