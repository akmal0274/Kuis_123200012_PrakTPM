import 'package:flutter/material.dart';
import 'package:kuis_prak/rental_car.dart';

class HalamanDetail extends StatefulWidget {
  final RentalCar rent;
  const HalamanDetail({Key? key, required this.rent}) : super(key: key);

  @override
  State<HalamanDetail> createState() => _HalamanDetailState();
}

class _HalamanDetailState extends State<HalamanDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.rent.brand + " " + widget.rent.model),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.network(
            widget.rent.images[0],
            width: 200,
            height: 200,
          ),
          Text(
            widget.rent.brand + " " + widget.rent.model,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
              child: Column(
            children: [
              Text(
                "Brand\t: " + widget.rent.brand,
                textAlign: TextAlign.left,
              ),
              Text("Model\t: " + widget.rent.model),
              Text("Tahun\t: " + widget.rent.year.toString()),
              Text("Biaya Sewa\t: " + widget.rent.rentalPricePerDay),
              Text("Status\t: "),
              Text("Deskripsi",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
              Text(widget.rent.description)
            ],
          ))
        ],
      ),
    );
  }
}
