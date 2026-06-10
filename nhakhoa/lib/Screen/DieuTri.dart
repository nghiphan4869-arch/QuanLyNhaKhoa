import 'package:flutter/material.dart';
import 'package:nhakhoa/Screen/NhacLichHen.dart';
import '../widgets/bottom_nav.dart';

class DieuTri extends StatefulWidget {
  const DieuTri({super.key});

  @override
  State<DieuTri> createState() => _DieuTriState();
}

class _DieuTriState extends State<DieuTri> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5f5f5),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(12),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),

            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
//Header
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Điều trị",
                      style: TextStyle(
                        fontSize: 34,
                        fontWeight:
                            FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const NhacLich(),),);
                      },
                      icon: const Icon(
                        Icons.notifications_none,
                      ),
                    )
                  ],
                ),

                const Text(
                  "Theo dõi quá trình điều trị và kế hoạch của bạn",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),

                const SizedBox(height: 20),
//Kế hoạch điều trị
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color(0xffeef5ff),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Colors.blue.shade100,
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Kế hoạch điều trị hiện tại",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),

                            SizedBox(height: 8),

                            Text(
                              "Niềng răng chỉnh nha",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            SizedBox(height: 8),

                            Row(
                              children: [
                                Icon(
                                  Icons.calendar_month,
                                  size: 18,
                                  color: Colors.blue,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "Bắt đầu: 27/05/2026",
                                ),
                              ],
                            )
                          ],
                        ),
                      ),

                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.blue,
                      )
                    ],
                  ),
                ),

                const SizedBox(height: 20),
//Tab
                DefaultTabController(
                  length: 3,
                  child: Column(
                    children: [
                      TabBar(
                        labelColor: Colors.blue,
                        unselectedLabelColor: Colors.grey,
                        indicatorColor: Colors.blue,
                        tabs: const [
                          Tab(text: "Tổng quan"),
                          Tab(text: "Lịch điều trị"),
                          Tab(text: "Hồ sơ điều trị"),
                        ],
                      ),

                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.62,
                        child: TabBarView(
                          children: [
                            _tongQuan(),
                            _lichDieuTri(),
                            _hoSoDieuTri(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      bottomNavigationBar:
          const BottomNav(
        currentIndex: 1,
      ),
    );
  }
//TAB TỔNG QUAN
  Widget _tongQuan() {
    return Column(
      children: [

        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: const Color(0xfff8fbff),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 10,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 10,
                        color: Colors.green,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 10,
                        color: Colors.blue,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 10,
                        color: Colors.grey.shade300,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10),

              Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Chuẩn bị"),
                  Text("Đang điều trị"),
                  Text("Hoàn tất"),
                ],
              )
            ],
          )
        ),

        const SizedBox(height: 15),

        Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: const Color(0xfff8fbff),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 10,
              ),
            ],
          ),
          child: Row(
            children: [
              Container(
                width: 55,
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Center(
                  child: Text(
                    "28",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const SizedBox(width: 15),

              const Expanded(
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [
                    Text(
                      "15:30 - BS.ABC",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Tái khám và điều chỉnh mắc cài",
                    ),
                  ],
                ),
              )
            ],
          ),
        ),

        const SizedBox(height: 15),

        Container(
          padding:
              const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius:
                BorderRadius.circular(15),
          ),
          child: Column(
            children: [
              _info(
                "Phương pháp điều trị",
                "Niềng răng mắc cài kim loại",
              ),
              _info(
                "Tổng số buổi dự kiến",
                "24 buổi",
              ),
              _info(
                "Số buổi đã thực hiện",
                "1/24 buổi",
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius:
                BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              const CircleAvatar(
                radius: 28,
                child: Icon(Icons.person),
              ),

              const SizedBox(width: 12),

              const Expanded(
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [
                    Text(
                      "BS. ABC",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Chuyên khoa: chỉnh nha",
                    ),
                  ],
                ),
              ),

              CircleAvatar(
                backgroundColor: Colors.blue.shade100,
                child: IconButton(
                  icon: const Icon(Icons.message_outlined),
                  onPressed: () {},
                ),
              ),

              SizedBox(width: 8),

              CircleAvatar(
                backgroundColor:
                    Colors.blue.shade50,
                child: IconButton(
                  icon: const Icon(Icons.phone),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
//TAB LỊCH ĐIỀU TRỊ
  Widget _lichDieuTri() {
    return Column(
      children: [
        _treatmentItem(
          "Thăm khám và chuẩn đoán",
          true,
        ),
        _treatmentItem(
          "Lập kế hoạch điều trị",
          true,
        ),
        _treatmentItem(
          "Đang điều trị",
          false,
        ),
        _treatmentItem(
          "Điều chỉnh mắc cài lần 1",
          false,
        ),
      ],
    );
  }
//TAB HỒ SƠ ĐIỀU TRỊ
  Widget _hoSoDieuTri() {
    return Column(
      children: [

        Container(
          padding:
              const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius:
                BorderRadius.circular(15),
          ),
          child: const Row(
            mainAxisAlignment:
                MainAxisAlignment
                    .spaceAround,
            children: [
              Column(
                children: [
                  Icon(Icons.calendar_month,
                      color: Colors.blue),
                  Text("24"),
                  Text("Tổng số buổi"),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.check_circle,
                      color: Colors.green),
                  Text("14"),
                  Text("Đã thực hiện"),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.access_time,
                      color: Colors.orange),
                  Text("10"),
                  Text("Còn lại"),
                ],
              ),
            ],
          ),
        ),

        const SizedBox(height: 15),

        _card(
          "Chuẩn đoán",
          "Răng hô nhẹ, khớp cắn hạng III do sai lệch răng.",
        ),

        const SizedBox(height: 15),

        _card(
          "Phương pháp điều trị",
          "Niềng răng mắc cài kim loại",
        ),

        const SizedBox(height: 15),

        ListTile(
          tileColor:
              const Color(0xfff7f7f7),
          shape:
              RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(15),
          ),
          leading: const CircleAvatar(
            child: Icon(Icons.person),
          ),
          title: const Text("BS. ABC"),
          subtitle:
              const Text("Chỉnh nha"),
          trailing: Row(
            mainAxisSize:
                MainAxisSize.min,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                    Icons.message),
              ),
              IconButton(
                onPressed: () {},
                icon:
                    const Icon(Icons.phone),
              ),
            ],
          ),
        ),
      ],
    );
  }
//Hàm phụ
  Widget _info(
      String title,
      String value) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(
              vertical: 8),
      child: Row(
        mainAxisAlignment:
            MainAxisAlignment
                .spaceBetween,
        children: [
          Text(title),
          Text(
            value,
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }

  Widget _card(
      String title,
      String content) {
    return Container(
      width: double.infinity,
      padding:
          const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius:
            BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight:
                  FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Text(content),
        ],
      ),
    );
  }

  Widget _treatmentItem(
      String title,
      bool done) {
    return Card(
      margin:
          const EdgeInsets.only(bottom: 15),
      child: ListTile(
        leading: const Icon(
          Icons.event_note,
          color: Colors.blue,
        ),
        title: Text(title),
        subtitle:
            const Text("BS. ABC"),
        trailing: done
            ? const Icon(
                Icons.check_circle,
                color: Colors.blue,
              )
            : null,
      ),
    );
  }
}