import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopper_design/utils/styles.dart';

class CardPage extends StatefulWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  _CardPageState createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              cartTiles(
                itemTitle: 'AirPods Max',
                itemPrice: '\$199.99',
                color: const Color(0xfffef8e0),
                img: ('assets/head2.png'),
              ),
              const SizedBox(height: 12),
              cartTiles(
                itemTitle: 'Q-Seven Wireless',
                itemPrice: '\$199.99',
                color: const Color(0xFF80D38E),
                img: ('assets/purple.png'),
              ),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.fromLTRB(14, 0, 14, 4),
                child: Column(
                  children: [
                    Text(
                      'Payment Methods',
                      style: GoogleFonts.poppins(
                        fontSize: 17,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.purple.shade100,
                  ),
                  child: Image.asset('assets/mastercard.png'),
                ),
                title: Text(
                  'Travel Card',
                  style: GoogleFonts.poppins(
                    //color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'Mastercard - 3356',
                  style: GoogleFonts.montserrat(
                    color: Colors.grey,
                    fontSize: 15,
                  ),
                ),
                trailing: const Icon(
                  Icons.navigate_next,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('Total order'),
              Text(
                '\$698',
                style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ],
          ),
          const SizedBox(height: 100),
          Padding(
            padding: const EdgeInsets.fromLTRB(14.0, 0.0, 14.0, 0.0),
            child: MaterialButton(
              onPressed: () {},
              child: const Text(
                'Proceed to Payment',
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
              color: Colors.black,
              minWidth: double.infinity,
              height: 60,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget cartTiles(
      {String? itemTitle, String? itemPrice, Color? color, String? img}) {
    return ListTile(
      contentPadding: const EdgeInsets.fromLTRB(14, 0, 14, 4),
      leading: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color!,
        ),
        child: Image.asset(img!),
      ),
      title: Text(
        itemTitle!,
        style: GoogleFonts.poppins(
          color: Colors.grey,
          fontSize: 17,
          fontWeight: FontWeight.w800,
        ),
      ),
      subtitle: Text(
        itemPrice!,
        style: GoogleFonts.montserrat(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.w900,
        ),
      ),
      trailing: const Icon(
        Icons.delete,
        color: Colors.black,
      ),
    );
  }
}
