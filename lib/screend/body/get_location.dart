import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GetLocation extends StatefulWidget {
  const GetLocation({Key? key}) : super(key: key);

  @override
  State<GetLocation> createState() => _GetLocationState();
}

class _GetLocationState extends State<GetLocation> {
  //Kartaning ko'rsatish kerak bo'lgan joyi

  static const double lat = 41.28826428478046;
  static const double long = 69.20095897228717;

  //Toshkent shahar IIBB
  static const double latTwo = 41.30082525709757;
  static const double longTwo = 69.28443394694524;

  // Chilonzor tumani IIBB
  static const double latOne = 41.28826428478046;
  static const double longOne = 69.20095897228717;

  //Kartaning boshlang'ich ko'rsatish joyi
  //Bunda Samarqand  ko'rsatilgan
  static const CameraPosition location =
      CameraPosition(target: LatLng(lat, long), zoom: 10);
  MapType _currentMapType = MapType.normal;
  final Set<Marker> _markers = {};
//ikkita List o'chmasdan list nomli listdan chiqarishimiz
// mumkun unda karta ochilgan birdan marker ham chiqadi
  final List<Marker> marker = [];
  final List<Marker> list = [
    // //Birinchi markerni
    const Marker(
      markerId: MarkerId('Toshkent shahar IIBB'),
      position: LatLng(
        latOne,
        longOne,
      ),
    ),
    //Ikkinchi Marker
    const Marker(
      markerId: MarkerId('2'),
      position: LatLng(
        latTwo,
        longTwo,
      ),
    )
  ];

//Listdagi Markerlarni ikkinchi listga qo'shyapmiz
  void addMarker() {
    marker.addAll(list);
  }

  int currentIndex = 0;
  void _changeMapType() {
    setState(() {
      _currentMapType = _currentMapType == MapType.normal
          ? MapType.satellite
          : MapType.normal;
    });
  }

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
        ),
        child: Stack(
          children: [
            GoogleMap(
              initialCameraPosition: location,
              markers: Set.of(marker),
              mapType: _currentMapType,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.only(left: 10),
                            hintText: "Search 'Smartphone'",
                            hintStyle: const TextStyle(
                              color: Colors.tealAccent,
                              fontWeight: FontWeight.w500,
                            ),
                            prefixIcon: const Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(28),
                              borderSide: const BorderSide(color: Colors.red),
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(28),
                                borderSide: const BorderSide(
                                  color: Colors.black45,
                                  width: 4,
                                )),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(28),
                                borderSide: const BorderSide(
                                  color: Colors.black38,
                                  width: 4,
                                )),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      GestureDetector(
                        onTap: () {
                          addMarker();
                          setState(() {});
                        },
                        child: Container(
                          width: 54,
                          height: 52,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.deepPurpleAccent,
                          ),
                          child: const Icon(
                            Icons.more_horiz_sharp,
                            color: Colors.white54,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Align(
                    alignment: Alignment.topRight,
                    child: FloatingActionButton(
                      onPressed: _changeMapType,
                      backgroundColor: Colors.deepPurpleAccent,
                      child: const Icon(
                        Icons.map,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
