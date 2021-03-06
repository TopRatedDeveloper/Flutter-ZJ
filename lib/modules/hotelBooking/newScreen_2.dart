import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:motel/appTheme.dart';

class HotelHomeScreen extends StatefulWidget {
  @override
  _HotelHomeScreenState createState() => _HotelHomeScreenState();
}

class _HotelHomeScreenState extends State<HotelHomeScreen> with TickerProviderStateMixin {
  
  var personalItemBool = false;
  var noHandBagBool = false;
  var noCheckBagBool = false;
  var oneCheckBagBool = false;
  var twoCheckBagBool = false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Stack(
        children: <Widget>[
          InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            onTap: () {
              FocusScope.of(context).requestFocus(FocusNode());
            },
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  getAppBarUI(),

                  Container(
                    child: Column(
                      children: <Widget>[
                        getTripDetails(),
                        getCheckoutUI(),
                        getBookButton()
                      ],
                    ),)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget getCheckoutUI() {
    return Column(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.only(top: 8, bottom: 8),
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(left: 16.0 , top :10),
            child: Text("Check out",
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600
              ),
            ),
          
          ),

        Container(
          width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
            decoration: BoxDecoration(
              color: AppTheme.getTheme().backgroundColor,
              boxShadow: <BoxShadow>[
                BoxShadow(color: Colors.grey, offset: Offset(0, 2), blurRadius: 8.0),
              ],
            ),
            child: Container(                   
                  width: MediaQuery.of(context).size.width/4,
                  padding: EdgeInsets.only(left: 10),
                    child: TextField(
                      textAlign: TextAlign.start,
                      onChanged: (String txt) {},
                      onTap: () {
                      },
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600
                      ),
                      cursorColor: AppTheme.getTheme().primaryColor,
                      decoration: new InputDecoration(

                        border: InputBorder.none,
                        hintText: "Promo Code",
                      ),
                    ),
                  ),
            ),

            Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
            decoration: BoxDecoration(
              color: AppTheme.getTheme().backgroundColor,
              boxShadow: <BoxShadow>[
                BoxShadow(color: Colors.grey, offset: Offset(0, 2), blurRadius: 8.0),
              ],
            ),
            child: Container(                   
                  padding: EdgeInsets.only(left: 10),
                    child: TextField(
                      textAlign: TextAlign.start,
                      onChanged: (String txt) {},
                      onTap: () {
                      },
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600
                      ),
                      cursorColor: AppTheme.getTheme().primaryColor,
                      decoration: new InputDecoration(
                        border: InputBorder.none,
                        hintText: "Name on Card",
                      ),
                    ),
                  ),
            ),

            Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
            decoration: BoxDecoration(
              color: AppTheme.getTheme().backgroundColor,
              boxShadow: <BoxShadow>[
                BoxShadow(color: Colors.grey, offset: Offset(0, 2), blurRadius: 8.0),
              ],
            ),
            child: Container(                   
                  padding: EdgeInsets.only(left: 10),
                    child: TextField(
                      textAlign: TextAlign.start,
                      onChanged: (String txt) {},
                      onTap: () {
                      },
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600
                      ),
                      cursorColor: AppTheme.getTheme().primaryColor,
                      decoration: new InputDecoration(
                        border: InputBorder.none,
                        hintText: "Credit Card Number",
                      ),
                    ),
                  ),
            ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Expanded(
                              child: Container(
                  margin: const EdgeInsets.only(left: 16, right: 8, top: 8, bottom: 8),
                  decoration: BoxDecoration(
                    color: AppTheme.getTheme().backgroundColor,
                    boxShadow: <BoxShadow>[
                      BoxShadow(color: Colors.grey, offset: Offset(0, 2), blurRadius: 8.0),
                    ],
                  ),
                  child: Container(                   
                        padding: EdgeInsets.only(left: 10),
                          child: TextField(
                            textAlign: TextAlign.start,
                            onChanged: (String txt) {},
                            onTap: () {
                            },
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600
                            ),
                            cursorColor: AppTheme.getTheme().primaryColor,
                            decoration: new InputDecoration(
                              border: InputBorder.none,
                              hintText: "Exp Date",
                            ),
                          ),
                        ),
                  ),
              ),

              Expanded(
                  child: Container(
                  margin: const EdgeInsets.only(left: 8, right: 16, top: 8, bottom: 8),
                  decoration: BoxDecoration(
                    color: AppTheme.getTheme().backgroundColor,
                    boxShadow: <BoxShadow>[
                      BoxShadow(color: Colors.grey, offset: Offset(0, 2), blurRadius: 8.0),
                    ],
                  ),
                  child: Container(                   
                        padding: EdgeInsets.only(left: 10),
                          child: TextField(
                            textAlign: TextAlign.start,
                            onChanged: (String txt) {},
                            onTap: () {
                            },
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600
                            ),
                            cursorColor: AppTheme.getTheme().primaryColor,
                            decoration: new InputDecoration(
                              border: InputBorder.none,
                              hintText: "CCV",
                            ),
                          ),
                        ),
                  ),
              )
            ],
          ),

            
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
            decoration: BoxDecoration(
              color: AppTheme.getTheme().backgroundColor,
              boxShadow: <BoxShadow>[
                BoxShadow(color: Colors.grey, offset: Offset(0, 2), blurRadius: 8.0),
              ],
            ),
            child: Container(                   
                  padding: EdgeInsets.only(left: 10),
                    child: TextField(
                      textAlign: TextAlign.start,
                      onChanged: (String txt) {},
                      onTap: () {
                      },
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600
                      ),
                      cursorColor: AppTheme.getTheme().primaryColor,
                      decoration: new InputDecoration(
                        border: InputBorder.none,
                        hintText: "Email Address",
                      ),
                    ),
                  ),
            ),


        Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
            decoration: BoxDecoration(
              color: AppTheme.getTheme().backgroundColor,
              boxShadow: <BoxShadow>[
                BoxShadow(color: Colors.grey, offset: Offset(0, 2), blurRadius: 8.0),
              ],
            ),
            child: Container(                   
                  padding: EdgeInsets.only(left: 10),
                    child: TextField(
                      textAlign: TextAlign.start,
                      onChanged: (String txt) {},
                      onTap: () {
                      },
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600
                      ),
                      cursorColor: AppTheme.getTheme().primaryColor,
                      decoration: new InputDecoration(
                        border: InputBorder.none,
                        hintText: "Phone Number",
                      ),
                    ),
                  ),
            ),
      ],
    );
        
  }

  Widget getTripDetails(){
    return Column(
      children: <Widget>[
        Container(
              padding: EdgeInsets.only(bottom: 15),
              decoration: BoxDecoration(
              color: AppTheme.getTheme().backgroundColor,
              boxShadow: <BoxShadow>[
                BoxShadow(color: Colors.grey, offset: Offset(0, 2), blurRadius: 8.0),
              ],
            ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[

                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(                   
                                padding: EdgeInsets.only(left: 16.0 , top :10),
                                width: MediaQuery.of(context).size.width/2,
                                  child: Text("Trip Summary",
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600
                                    ),
                                  ),
                                ),

                              
                              Container(
                                width: MediaQuery.of(context).size.width-32,
                                  alignment: Alignment.centerLeft,
                                  margin: EdgeInsets.only(top:10,left: 16, right: 16 ),
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: AppTheme.getTheme().backgroundColor,
                                    boxShadow: <BoxShadow>[
                                      BoxShadow(
                                        color: AppTheme.getTheme().dividerColor,
                                        offset: Offset(4, 4),
                                        blurRadius: 16,
                                      ),
                                    ],
                                  ),
                                  
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: <Widget>[
                                          Expanded(
                                              child: Container(                
                                                padding: EdgeInsets.only(left:10, top:5),
                                                margin: EdgeInsets.only(bottom:3),
                                                  alignment: Alignment.centerLeft,
                                                  child: Text("1 Passenger",
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight: FontWeight.w800
                                                    ),
                                                  ),
                                                ),
                                          ),

                                              Container(    
                                                alignment: Alignment.centerLeft,               
                                                padding: EdgeInsets.only(left:10, top:5),
                                                margin: EdgeInsets.only(bottom:3),
                                                  child: Text("\$175 ",
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight: FontWeight.w800
                                                    ),
                                                  ),
                                              ),
                                          
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: <Widget>[
                                          Expanded(
                                              child: Container(                
                                                padding: EdgeInsets.only(left:10, top:5),
                                                margin: EdgeInsets.only(bottom:3),
                                                  alignment: Alignment.centerLeft,
                                                  child: Text("Bagage",
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight: FontWeight.w800
                                                    ),
                                                  ),
                                                ),
                                          ),

                                              Container(    
                                                alignment: Alignment.centerLeft,               
                                                padding: EdgeInsets.only(left:10, top:5),
                                                margin: EdgeInsets.only(bottom:3),
                                                  child: Text("\$0 ",
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight: FontWeight.w800
                                                    ),
                                                  ),
                                              ),
                                          
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: <Widget>[
                                          Expanded(
                                              child: Container(                
                                                padding: EdgeInsets.only(left:10, top:5),
                                                margin: EdgeInsets.only(bottom:3),
                                                  alignment: Alignment.centerLeft,
                                                  child: Text("Automatic Check-in",
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight: FontWeight.w800
                                                    ),
                                                  ),
                                                ),
                                          ),

                                              Container(    
                                                alignment: Alignment.centerLeft,               
                                                padding: EdgeInsets.only(left:10, top:5),
                                                margin: EdgeInsets.only(bottom:3),
                                                  child: Text("Free ",
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight: FontWeight.w800
                                                    ),
                                                  ),
                                              ),
                                          
                                        ],
                                      ),

                                      Padding(
                                        padding: EdgeInsets.only(top:10, bottom:10),
                                        child: Container(
                                          height: 1,
                                          color: Colors.grey.withOpacity(0.4),
                                        ),
                                      ),

                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: <Widget>[
                                          Expanded(
                                              child: Container(                
                                                padding: EdgeInsets.only(left:10, top:5),
                                                margin: EdgeInsets.only(bottom:3),
                                                  alignment: Alignment.centerLeft,
                                                  child: Text("Trip Total",
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight: FontWeight.w800
                                                    ),
                                                  ),
                                                ),
                                          ),

                                              Container(    
                                                alignment: Alignment.centerLeft,               
                                                padding: EdgeInsets.only(left:10, top:5),
                                                margin: EdgeInsets.only(bottom:3),
                                                  child: Text("\$175 ",
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight: FontWeight.w800
                                                    ),
                                                  ),
                                              ),
                                          
                                        ],
                                      ),   
                                    ],
                                  ),
                                ),     
                            ],
                          ),
          
                        ],
                      ),
                      ),
                    
                  ],
                ),
              
        ),
      ],
    );
  }
  
  Widget getAppBarUI() {
    return Container(
      decoration: BoxDecoration(
        color: AppTheme.getTheme().backgroundColor,
        boxShadow: <BoxShadow>[
          BoxShadow(color: AppTheme.getTheme().dividerColor, offset: Offset(0, 2), blurRadius: 8.0),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top, left: 8, right: 8),
        child: Stack(
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              width: AppBar().preferredSize.height + 40,
              height: AppBar().preferredSize.height,
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: BorderRadius.all(
                    Radius.circular(32.0),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.arrow_back),
                  ),
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top/2),
                alignment: Alignment.center,
                child: Text(
                  "Payment",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
  
  Widget getBookButton(){
    return Container(
      margin: EdgeInsets.only(left:16.0, right:16, top : 30),
      
      decoration: BoxDecoration(
        border: Border.all(color: Colors.lightBlue)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FlatButton(
            child: Text("Book Flight For \$175",style: TextStyle(
                fontSize: 19.0 , fontWeight: FontWeight.bold)),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
