import 'package:flutter/material.dart';
import 'package:project_flutter/detail_page.dart';
import 'model/data_belanjaan.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Image.asset(
            'assets/image_logo/logo.png',
            width: 20,
          ),
          backgroundColor: Colors.white,
          elevation: 1,
          actions: [
            IconButton(
              icon: Icon(Icons.mark_email_unread_outlined,
                  color: Colors.grey.shade700),
              onPressed: () {
                // Aksi ketika icon email ditekan
              },
            ),
            IconButton(
              icon: Icon(Icons.notifications_active_outlined,
                  color: Colors.grey.shade700),
              onPressed: () {
                // Aksi ketika icon notifikasi ditekan
              },
            ),
          ],
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      IconButton(
                        onPressed: () {
                          // Aksi ketika tombol kamera ditekan
                        },
                        icon: const Icon(
                          Icons.camera_alt_outlined,
                          color: Colors.black54,
                          size: 25,
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          width: 300,
                          height: 35,
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search',
                              hintStyle: TextStyle(
                                fontSize: 15
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              prefixIcon: const Icon(
                                Icons.search,
                                color: Colors.black54,
                                size: 20,
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 12.0),
                            ),
                            onChanged: (value) {
                              // Aksi ketika teks berubah
                            },
                            onSubmitted: (value) {
                              // Aksi ketika pencarian dikirim
                            },
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          // Aksi ketika tombol filter ditekan
                        },
                        icon: const Icon(
                          Icons.filter_list,
                          color: Colors.black54,
                          size: 25,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Image.asset('assets/image/banner2.png'),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: Text(
                      'Category',
                      style:
                      TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
                    ),
                  ),
                  const SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        _buildCategoryItem('Sepatu'),
                        _buildCategoryItem('Celana'),
                        _buildCategoryItem('Baju'),
                        _buildCategoryItem('Sendal'),
                        _buildCategoryItem('Hoodie'),
                        _buildCategoryItem('Jaket'),
                        _buildCategoryItem('Topi'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Popular',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 18),
                            ),
                            Icon(
                              Icons.local_fire_department,
                              color: Colors.orangeAccent,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'Sort by',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: Colors.black54),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              size: 18,
                              color: Colors.black54,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 330,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: barangBelanjaan.length,
                      itemBuilder: (BuildContext context, index) {
                        final Belanjaan dataBelanjaan =
                        barangBelanjaan[index];
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    DetailPage(dataBelanjaan: dataBelanjaan),
                              ),
                            );
                          },
                          child: Card(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Image.asset(
                                    dataBelanjaan.gambar,
                                    width: 200,
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    dataBelanjaan.nama,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 18,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8.0),
                                    child: Container(
                                      width: 150,
                                      child: Text(
                                        dataBelanjaan.deskripsi,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 1,
                                        style: const TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.black
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.star,
                                        size: 15,
                                        color: Colors.yellow,
                                      ),
                                      const SizedBox(width: 3),
                                      Text(
                                        dataBelanjaan.rating.toString(),
                                        style: const TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black54
                                        ),
                                      ),
                                     const SizedBox(width: 3),
                                      Container(
                                        width: 1.0,
                                        height: 10.0,
                                        color: Colors.grey,
                                      ),
                                     const SizedBox(width: 3),
                                      Text( dataBelanjaan.terjual, style: TextStyle(fontSize: 10,color: Colors.black54, fontWeight: FontWeight.w700),
                                      ),
                                     const SizedBox(width: 3),
                                     const Text('terjual', style: TextStyle(fontSize: 10, color: Colors.black54, fontWeight: FontWeight.w600),)
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          elevation: 8,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.home_filled,
                  color: Colors.blueAccent,
                  size: 30,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite_border,
                  color: Colors.black54,
                  size: 30,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.account_balance_wallet_outlined,
                  color: Colors.black54,
                  size: 30,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.person_outlined,
                  color: Colors.black54,  
                  size: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget _buildCategoryItem(String category) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: <Widget>[
          Text(
            category,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: Colors.grey.shade500,
            ),
          ),
        ],
      ),
    );
  }
}
