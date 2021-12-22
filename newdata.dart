import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mysql_crud/main.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class NewData extends StatefulWidget {
  @override
  _NewDataState createState() => _NewDataState();
}

class _NewDataState extends State<NewData> {
  TextEditingController cname = new TextEditingController();
  TextEditingController cmobile = new TextEditingController();
  TextEditingController branch = new TextEditingController();
  TextEditingController carmodel = new TextEditingController();
  TextEditingController yearmake = new TextEditingController();
  TextEditingController currentoffer = new TextEditingController();
  TextEditingController discountvalue = new TextEditingController();
  TextEditingController existingornew = new TextEditingController();
  TextEditingController referredcustomer = new TextEditingController();
  TextEditingController referrername = new TextEditingController();
  void addData() {
    var url = "http://20.15.11.61/API_Folder/adddata.php";
    http.post(url, body: {
      "name": cname.text,
      "salesexcutivename": cmobile.text,
      "branch": branch.text,
      "carmodel": carmodel.text,
      "yearmake": yearmake.text,
      "currentoffer": currentoffer.text,
      "discountvalue": discountvalue.text,
      "customerstatus": existingornew.text,
      "referredcustomer": referredcustomer.text,
      "referrername": referrername.text,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Discount Request form"),
      ),
      body: ListView(
        children: [
          TextField(
            controller: cname,
            decoration: InputDecoration(
                hintText: "Enter Name", labelText: "Customer Name"),
          ),
          TextField(
            controller: cmobile,
            decoration: InputDecoration(
                hintText: "Field Sales excutive name",
                labelText: "Field Sales excutive name"),
          ),
          TextField(
            controller: branch,
            decoration:
                InputDecoration(hintText: "Enter Branch", labelText: "Branch"),
          ),
          TextField(
            controller: carmodel,
            decoration: InputDecoration(
                hintText: "Enter Car Model", labelText: "Car Model"),
          ),
          TextField(
            controller: yearmake,
            decoration: InputDecoration(
                hintText: "Enter Year Make", labelText: "Year Make"),
          ),
          TextField(
            controller: currentoffer,
            decoration: InputDecoration(
                hintText: "Enter Current Offer", labelText: "Current Offer"),
          ),
          TextField(
            controller: discountvalue,
            decoration: InputDecoration(
                hintText: "Enter Discount Value", labelText: "Discount Value"),
          ),
          TextField(
            controller: existingornew,
            decoration: InputDecoration(
                hintText: "Enter Existing or new",
                labelText: "Are You Existing Customer or new ?"),
          ),
          TextField(
            controller: referredcustomer,
            decoration: InputDecoration(
                hintText: "Enter Yes or No",
                labelText: "Are You Referred Customer?"),
          ),
          TextField(
            controller: referrername,
            decoration: InputDecoration(
                hintText: "Enter Referrer Name", labelText: "Referrer Name"),
          ),
          MaterialButton(
            child: Text("Add Data"),
            color: Colors.red,
            onPressed: () {
              addData();
              Navigator.of(context).push(
                MaterialPageRoute(builder: (BuildContext context) => Home()),
              );
            },
          ),
        ],
      ),
    );
  }
}
