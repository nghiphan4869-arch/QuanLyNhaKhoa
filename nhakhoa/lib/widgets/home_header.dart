import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment:
              CrossAxisAlignment.start,
          children: const [
            Text(
              "Xin chào,",
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 5),
            Text(
              "Bùi Thị Ngọc Như",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Row(
              children: [
                Icon(
                  Icons.favorite_outline,
                  color: Colors.blue,
                  size: 18,
                ),
                SizedBox(width: 5),
                Text(
                  "Chăm sóc nụ cười, nâng tầm tự tin",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),

        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_none,
              ),
            ),

            const CircleAvatar(
              radius: 25,
              backgroundColor:
                  Color(0xffd6df73),
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
            )
          ],
        )
      ],
    );
  }
}