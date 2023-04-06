import 'dart:async';

import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';
class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final Completer<GoogleMapController> _controller= Completer();
  late GoogleMapController mapController;
  final LatLng _center= LatLng(30.71337552089675, 76.72144908588852);

  void _onMapCreated(GoogleMapController controller){
    mapController=controller;
  }
  List<Marker> _marker=[];
  final List<Marker>  _list=[
    const Marker(
        markerId: MarkerId('1'),
      position: LatLng(30.71337552089675, 76.72144908588852),
      infoWindow: InfoWindow(
        title: 'primary location'
      )
    ),

  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _marker.addAll(_list);
  }

  Future<Position> getusercurrentlocation() async{

    await Geolocator.requestPermission().then((value){

    }).onError((error, stackTrace ){
      print('error');
    });
    return await Geolocator.getCurrentPosition();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
       // onMapCreated: _onMapCreated,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        markers: Set<Marker>.of(_marker),
        initialCameraPosition: CameraPosition(
        target: _center,
        zoom: 17,

      ),

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
                 getusercurrentlocation().then((value) async{
                   print('current location');
                   print(value.latitude.toString()+""+value.longitude.toString());

                   _marker.add(
                    Marker(markerId: MarkerId('4'),

                    position: LatLng(value.latitude,value.longitude),

                    infoWindow: InfoWindow(
                      title: 'my location'

                    )

                    ),


                   );
                   CameraPosition cameraPosition=CameraPosition(
                       target: LatLng(value.latitude,value.longitude),);

                   final GoogleMapController controller= await _controller.future;

                   controller.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
                   setState(() {

                   });
                 });
        },
        child: Icon(Icons.gps_fixed),
      ),
    );
  }


}
