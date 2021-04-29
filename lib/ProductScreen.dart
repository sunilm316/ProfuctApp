import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _renderAppBar(),
      body: renderBody(),
      backgroundColor: Colors.white,
    );
  }

  Widget _renderAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
      ),
      title: Text(
        "Our Product",
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 30),
          child: Icon(
            Icons.more_vert,
            color: Colors.black,
          ),
        )
      ],
    );
  }

  Widget renderBody() {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 30),
      child: ListView(
        children: [
          Text(
            "Your choice",
            style: TextStyle(fontSize: 28),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 35, left: 5, right: 5, top: 25),
            width: MediaQuery.of(context).size.width,
            child: TextFormField(
              textAlign: TextAlign.start,
              decoration: new InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey[300])),
                  contentPadding: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
                  hintText: "Select Product",
                  hintStyle: TextStyle(fontSize: 15)),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height * 0.08,bottom: 20),
                      child: Text(
                        "Top Light",
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Text("Delivery time",
                        style: TextStyle(fontSize: 14, color: Colors.grey)),
                    Padding(
                      padding: const EdgeInsets.only(top: 10,bottom: 30),
                      child: Text("15:30",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                    ),
                    Text("Our contact",
                        style: TextStyle(fontSize: 14, color: Colors.grey)),
                    Padding(
                      padding: const EdgeInsets.only(top: 10,bottom: 30),
                      child: Row(
                        children: [
                          Container(
                              decoration: BoxDecoration(
                                  color: Colors.teal[300],
                                  borderRadius: BorderRadius.circular(13)),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Icon(
                                    Icons.phone,
                                    size: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              )),
                          Container(
                              margin: EdgeInsets.only(left: 10),
                              decoration: BoxDecoration(
                                  color: Colors.amber[700],
                                  borderRadius: BorderRadius.circular(13)),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Icon(
                                    Icons.place,
                                    size: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              )),
                        ],
                      ),
                    ),
                    Text("Filters",
                        style: TextStyle(fontSize: 14, color: Colors.grey)),
                    Container(
                      margin: EdgeInsets.only(top: 10,),
                      padding: EdgeInsets.only(
                          left: 15, right: 15, top: 10, bottom: 10),
                      decoration: BoxDecoration(
                          color: Colors.blue[300],
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.cloud_outlined,
                            color: Colors.white,
                            size: 20,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "cold",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      padding: EdgeInsets.only(
                          left: 15, right: 15, top: 10, bottom: 10),
                      decoration: BoxDecoration(
                          color: Colors.amber[700],
                          borderRadius: BorderRadius.circular(20)),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.cloud_sharp,
                            color: Colors.white,
                            size: 20,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "warm",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                flex: 5,
                child: Container(
                  height: MediaQuery.of(context).size.height/1.36,
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * .07),
                  decoration: BoxDecoration(
                      color: Colors.amber[50].withOpacity(0.8),
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(60))),
                  child: Center(
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height*.15,
                              width: MediaQuery.of(context).size.height*.15,
                              decoration: BoxDecoration(
                                  color: Colors.amber[200],
                                  borderRadius: BorderRadius.circular(20)),
                              child: Image.network(
                                  "https://freepngimg.com/thumb/lamp/20556-1-hanging-lamps.png"),
                            ),
                            Container(
                              height: MediaQuery.of(context).size.height*.15,
                              width: 30,
                              decoration: BoxDecoration(
                                  color: Colors.amber[400],
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(20),
                                      topLeft: Radius.circular(20))),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 25, bottom: 25),
                          height:MediaQuery.of(context).size.height*.15,
                          width: MediaQuery.of(context).size.height*.15,
                          decoration: BoxDecoration(
                              color: Colors.amber[200],
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: Image.network(
                              "https://www.pngpix.com/wp-content/uploads/2016/11/PNGPIX-COM-Hanging-Lamp-PNG-Transparent-Image.png",
                              width: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height*.15,
                          width:MediaQuery.of(context).size.height*.15,
                          decoration: BoxDecoration(
                              color: Colors.amber[200],
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: Image.network(
                              "https://lh3.googleusercontent.com/proxy/oV86SuVsKX-XVv3dos7kmw954u7xMrcf32QkQsLFszUtqMU7CAybPO0axg_rt9pq6AFWMK255KG8gUSitZyTzVppItbs5fR2Fg",
                              width: 60,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
