import 'package:flutter/material.dart';
import 'package:projectassignment/product.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 1),
          child: Column(
            children: [
              Image.asset(
                'assets/images/carrot.png',
                cacheHeight: 35,
                cacheWidth: 25,
              ),
              const SizedBox(
                height: 5,
              ),
              const Text('Calicut,Kerala'),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(15)),
                child: TextFormField(
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search",
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                      )),
                ),
              ),
              Container(
                height: 150,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset('assets/images/vegbanner.png'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Exclusive Offers",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      'See all',
                      style: TextStyle(color: Colors.green),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    BuildColumWithRow(
                        "assets/images/apple.jpg", "RedApple", "1kg", "5.99"),
                    BuildColumWithRow(
                        "assets/images/chilli.jpg", "chilli", "3kg", "4.99"),
                    BuildColumWithRow(
                        "assets/images/ginger.jpg", "Ginger", "5kg", "2.99"),
                    BuildColumWithRow(
                        "assets/images/apple.jpg", "Red Apple", "1kg", "5.99"),
                    BuildColumWithRow(
                        "assets/images/ginger.jpg", "Ginger", "5kg", "2.99"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Best Selling",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      'See all',
                      style: TextStyle(color: Colors.green),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    BuildColumWithRow("assets/images/beefbone.png", "Beef bone",
                        "1kg", "5.99"),
                    BuildColumWithRow("assets/images/beverages.png",
                        "beverages", "3kg", "4.99"),
                    BuildColumWithRow("assets/images/cocacola.png", "Coca Cola",
                        "5kg", "2.99"),
                    BuildColumWithRow(
                        "assets/images/diary.png", "Diary", "1kg", "5.99"),
                    BuildColumWithRow("assets/images/cocacola.png", "Coca Cola",
                        "5kg", "2.99"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding BuildColumWithRow(
      String img, String name, String title, String price) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
              height: 220,
              width: 160,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset(
                    img,
                    fit: BoxFit.cover,
                  ))),
          const SizedBox(
            height: 10,
          ),
          Text(
            name,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            title,
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Text(
                "\$ $price",
                style: TextStyle(color: Colors.green, fontSize: 20),
              ),
              const SizedBox(
                width: 10,
              ),
              MaterialButton(
                onPressed: () {},
                color: Colors.green,
                child: const Icon(
                  Icons.add_outlined,
                  color: Colors.white,
                  size: 15,
                ),
                minWidth: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
              )
            ],
          ),
        ],
      ),
    );
  }
}
