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
                        getFlightDetails(),
                        getTravailInformationUI(),
                        getSearchButton()
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


  Widget getTravailInformationUI() {
    return Column(
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.only(top: 8, bottom: 8),
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(left: 16.0 , top :10),
            child: Text("Traveler Information",
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
                        hintText: "First Name",
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
                        hintText: "Last Name",
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
                        hintText: "Birth Date",
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
                        hintText: "Gender",
                      ),
                    ),
                  ),
            ),

            Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(top: 8, bottom: 8),
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 16.0 , top :16),
                child: Text("Only required on International",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
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
                        hintText: "Passport ID",
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
                        hintText: "Passport Expiration",
                      ),
                    ),
                  ),
            ),

        Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.only(top: 15, bottom: 10),
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(left: 16.0 , top :10),
            child: Text("Carry On",
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
                  padding: EdgeInsets.only(left: 10),
                  width: MediaQuery.of(context).size.width,
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Checkbox(
                            value: personalItemBool ,
                            onChanged: (value) {setState(() {
                              personalItemBool = value;
                            });},
                        ),
                        Text( "Personal item",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                        
                        Text( " \$0.00",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                      ],
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
                  width: MediaQuery.of(context).size.width,
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Checkbox(
                            value: noHandBagBool ,
                            onChanged: (value) {setState(() {
                              noHandBagBool = value;
                            });},
                        ),
                        Text( "No Hand Baggage",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                        
                        Text( " \$0.00",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                      ],
                    ),
                  ),
            ),

        Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.only(top: 15, bottom: 10),
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.only(left: 16.0 , top :10),
            child: Text("Checked Bagage",
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
                  padding: EdgeInsets.only(left: 10),
                  width: MediaQuery.of(context).size.width,
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Checkbox(
                            value: noCheckBagBool ,
                            onChanged: (value) {setState(() {
                              noCheckBagBool = value;
                            });},
                        ),
                        Text( "No Checked bagage",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                        
                        Text( " \$0.00",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                      ],
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
                  width: MediaQuery.of(context).size.width,
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Checkbox(
                            value: oneCheckBagBool ,
                            onChanged: (value) {setState(() {
                              oneCheckBagBool = value;
                            });},
                        ),
                        Text( "One Checked Baggage",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                        
                        Text( " \$43.29",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                      ],
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
                  width: MediaQuery.of(context).size.width,
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Checkbox(
                            value: oneCheckBagBool ,
                            onChanged: (value) {setState(() {
                              oneCheckBagBool = value;
                            });},
                        ),
                        Text( "Two Checked Baggage",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                        
                        Text( " \$116.90",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                      ],
                    ),
                  ),
            ),
      
      ],
    );
        
  }

  Widget getFlightDetails(){
    return Column(
      children: <Widget>[
        Container(
              padding: EdgeInsets.only(bottom: 5),
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      blurRadius: 5.0,
                      spreadRadius: 5.0,
                    ),
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
                                  child: Text("10 Feb | Departure",
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
                                  
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      Expanded(
                                        child: Column(
                                          children: <Widget>[
                                            Container(                
                                              padding: EdgeInsets.only(left:10, top:5),
                                              margin: EdgeInsets.only(bottom:3),
                                                alignment: Alignment.centerLeft,
                                                child: Text("5 : 30 AM Dallas (DFW)",
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w800
                                                  ),
                                                ),
                                              ),

                                              Container(    
                                                alignment: Alignment.centerLeft,               
                                                padding: EdgeInsets.only(left:10, top:5),
                                                margin: EdgeInsets.only(bottom:3),
                                                  child: Text("9 : 13 AM Fort Lauderdale (FLL)",
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight: FontWeight.w800
                                                    ),
                                                  ),
                                              ),

                                              ],
                                          ),
                                      ),
                                      
                                      Container(
                                        margin: EdgeInsets.only(right: 10, ),
                                        color: Colors.blueAccent,
                                        child: Image.asset(
                                          "assets/images/delta_logo.png",height: 20,width: 20,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),     
                            
                              Container(
                                width: MediaQuery.of(context).size.width-20,       
                                padding: EdgeInsets.only(top :10),
                                  child: Text("2 h 43 mn",
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600
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
              
        ),

        Container(
              margin: EdgeInsets.only(top:25),
              padding: EdgeInsets.only(bottom: 5),
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      blurRadius: 2.0,
                      spreadRadius: 2.0,
                    ),
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
                                  child: Text("20 Feb | Return",
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
                                  
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      Expanded(
                                        child: Column(
                                          children: <Widget>[
                                            Container(                
                                              padding: EdgeInsets.only(left:10, top:5),
                                              margin: EdgeInsets.only(bottom:3),
                                                alignment: Alignment.centerLeft,
                                                child: Text("5 : 30 AM Dallas (DFW)",
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight: FontWeight.w800
                                                  ),
                                                ),
                                              ),

                                              Container(    
                                                alignment: Alignment.centerLeft,               
                                                padding: EdgeInsets.only(left:10, top:5),
                                                margin: EdgeInsets.only(bottom:3),
                                                  child: Text("9 : 13 AM Fort Lauderdale (FLL)",
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight: FontWeight.w800
                                                    ),
                                                  ),
                                              ),

                                              ],
                                          ),
                                      ),
                                      
                                      Container(
                                        margin: EdgeInsets.only(right: 10, ),
                                        color: Colors.blueAccent,
                                        child: Image.asset(
                                          "assets/images/delta_logo.png",height: 20,width: 20,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),     
                            
                              Container(
                                width: MediaQuery.of(context).size.width-20,       
                                padding: EdgeInsets.only(top :10),
                                  child: Text("2 h 43 mn",
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600
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
                  "Confirm Booking",
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

  Widget getSearchButton(){
    return Container(
      margin: EdgeInsets.only(left:16.0, right:16, top : 30),
      
      decoration: BoxDecoration(
        border: Border.all(color: Colors.lightBlue)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FlatButton(
            child: Text("",style: TextStyle(
                fontSize: 19.0 , fontWeight: FontWeight.bold)),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
