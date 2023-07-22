import 'package:flutter/material.dart';

import 'get_location.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A132B),
      body: Container(
        width: 490,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xFF33284E),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(45),
            bottomRight: Radius.circular(45),
          ),
          shape: BoxShape.rectangle,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40),
                Container(
                  width: 490,
                  height: 160,
                  decoration: BoxDecoration(
                    color: const Color(0xFF1A132B),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Audi e-tron Sportback",
                                style: TextStyle(
                                  color: Color(0xFFD9C8FF),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            Row(
                              children: [
                                Image.asset("assets/images/power1.png"),
                                const SizedBox(width: 10),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "262",
                                        style: TextStyle(
                                          color: Color(0xFFD9C8FF),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                        ),
                                      ),
                                      Text(
                                        "KILOMETE LEFT",
                                        style: TextStyle(
                                          color: Color(0xFFD9C8FF),
                                          fontWeight: FontWeight.w300,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            Row(
                              children: [
                                Image.asset("assets/images/speed1.png"),
                                const SizedBox(width: 10),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "35%",
                                        style: TextStyle(
                                          color: Color(0xFFD9C8FF),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                        ),
                                      ),
                                      Text(
                                        "CHARGED",
                                        style: TextStyle(
                                          color: Color(0xFFD9C8FF),
                                          fontWeight: FontWeight.w300,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Image.asset(
                          "assets/images/car.png",
                          width: 130,
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Yaqin Nuqtalar",
                  style: TextStyle(
                    color: Color(0xFFE6DAFF),
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "Netherlands, Amesterdam ",
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const GetLocation(),
                        ),
                      ),
                      child: const Text(
                        "Change Location",
                        style: TextStyle(
                          color: Color(0xFF8E63EE),
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  width: 500,
                  height: 130,
                  decoration: BoxDecoration(
                    color: const Color(0xFF1A132B),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 14, vertical: 10),
                    child: Row(
                      children: [
                        Image.asset("assets/images/Rectangle1.png"),
                        const SizedBox(width: 15),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Chilonzor ROVD",
                              style: TextStyle(
                                color: Color(0xFFD9C8FF),
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                              ),
                            ),
                            const Text(
                              "+998901111370",
                              style: TextStyle(
                                color: Color(0xFFD9C8FF),
                                fontWeight: FontWeight.w300,
                                fontSize: 14,
                              ),
                            ),
                            const Text(
                              "amesterdam, netherlands",
                              style: TextStyle(
                                color: Color(0xFFD9C8FF),
                                fontWeight: FontWeight.w300,
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(height: 10),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => GetLocation(),
                                  ),
                                );
                              },
                              child: const Text(
                                "Borish",
                                style: TextStyle(
                                  color: Color(0xFFA680FA),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: 400,
                  height: 130,
                  decoration: BoxDecoration(
                    color: const Color(0xFF1A132B),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 14, vertical: 10),
                    child: Row(
                      children: [
                        Image.asset("assets/images/Rectangle2.png"),
                        const SizedBox(width: 15),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "Chilonzor tumani 1-gom",
                              style: TextStyle(
                                color: Color(0xFFD9C8FF),
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              "+998901111370",
                              style: TextStyle(
                                color: Color(0xFFD9C8FF),
                                fontWeight: FontWeight.w300,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "amesterdam, netherlands",
                              style: TextStyle(
                                color: Color(0xFFD9C8FF),
                                fontWeight: FontWeight.w300,
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "8 ports available",
                              style: TextStyle(
                                color: Color(0xFFA680FA),
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: 400,
                  height: 130,
                  decoration: BoxDecoration(
                    color: const Color(0xFF1A132B),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 14, vertical: 10),
                    child: Row(
                      children: [
                        Image.asset("assets/images/Rectangle3.png"),
                        const SizedBox(width: 15),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              "ChargePoint Station 1",
                              style: TextStyle(
                                color: Color(0xFFD9C8FF),
                                fontWeight: FontWeight.w400,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              "street pulo 25",
                              style: TextStyle(
                                color: Color(0xFFD9C8FF),
                                fontWeight: FontWeight.w300,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              "amesterdam, netherlands",
                              style: TextStyle(
                                color: Color(0xFFD9C8FF),
                                fontWeight: FontWeight.w300,
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "8 ports available",
                              style: TextStyle(
                                color: Color(0xFFA680FA),
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
