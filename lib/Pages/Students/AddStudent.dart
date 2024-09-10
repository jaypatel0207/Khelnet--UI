import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:khelnet/Custome%20Widget/CustomAppBar.dart';

class Addstudent extends StatefulWidget {
  const Addstudent({super.key});

  @override
  State<Addstudent> createState() => _AddstudentState();
}

class _AddstudentState extends State<Addstudent> {
  File? _image;
  bool _basicInfoExpanded = true;
  final TextEditingController _centerController = TextEditingController();
  String selectedCenter = ""; // Track the selected center
  final TextEditingController _batchController = TextEditingController();
  String selectedBatch = "";
  final TextEditingController _fatherController = TextEditingController();
  final TextEditingController _PlanController = TextEditingController();
  String selectedPlan = ""; // Track the selected center
   final TextEditingController _additionalChargeController = TextEditingController();
  String selectedCharges = ""; 



  DateTime? _selectedDate;
  TextEditingController _dateController = TextEditingController();

  DateTime? _selectedDueDate;
  final TextEditingController _DuedateController = TextEditingController();

  String selectedAdditionalCharges = "";

  //String? _selectedValue = "Fees Paid";
  List<String> _options = [
    "Fees Paid (Current Month)",
    "Fees Unpaid (Current Month)"
  ];
  bool _isSelected = false;
  String? _selectedValue;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        _dateController.text =
            "${picked.toLocal()}".split(' ')[0]; // Format the date as desired
      });
    }
  }

  void _selectDueDate() async {
    final DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1950),
        lastDate: DateTime(2200));
    if (pickedDate != null) {
      setState(() {
        _selectedDueDate = pickedDate;
        _DuedateController.text = "${pickedDate.toLocal()}"
            .split(' ')[0]; // Format the date as desired
      });
    }
  }

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        _image = null;
      }
    });
  }

  Widget _buildListTile(String center, StateSetter setModalState) {
    return ListTile(
      title: Text(center),
      tileColor: selectedCenter == center ? Colors.blue.withOpacity(0.2) : null,
      onTap: () {
        setModalState(() {
          selectedCenter = center; // Update selected center in the bottom sheet
        });
      },
    );
  }

  Widget _buildListTileBatch(String Batch, StateSetter setModalState) {
    return ListTile(
      title: Text(Batch),
      tileColor: selectedBatch == Batch ? Colors.blue.withOpacity(0.2) : null,
      onTap: () {
        setModalState(() {
          selectedBatch = Batch; // Update selected center in the bottom sheet
        });
      },
    );
  }

  Widget _buildListTilePlan(String Plan, StateSetter setModalState) {
    return ListTile(
      title: Text(Plan),
      tileColor: selectedPlan == Plan ? Colors.blue.withOpacity(0.2) : null,
      onTap: () {
        setModalState(() {
          selectedPlan = Plan; // Update selected center in the bottom sheet
        });
      },
    );
  }

  Widget _buildListTileAdditionalCharges(
      String AdditionalCharges, StateSetter setModalState) {
    return ListTile(
      title: Text(AdditionalCharges),
      tileColor: selectedCharges == AdditionalCharges
          ? Colors.blue.withOpacity(0.2)
          : null,
      onTap: () {
        setModalState(() {
          selectedCharges =
              AdditionalCharges; // Update selected center in the bottom sheet
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).copyWith(dividerColor: Colors.transparent);

    return Scaffold(
      appBar: const CustomAppBar(
        title: "Add Student",
      ),
      backgroundColor: Colors.white,

      // AppBar(
      //   title: const Text(
      //     'Add Student',
      //     style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18),
      //   ),
      //   centerTitle: true,
      // ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
         const     SizedBox(height: 20),
              InkWell(
                onTap: _pickImage,
                child: Center(
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: _image != null
                        ? Image.file(_image!).image
                        : Image.asset("assets/images/image.png").image,
                  ),
                ),
              ),
              Theme(
                data: theme,
                child: Padding(
                  padding: const EdgeInsets.only(top: 30, right: 20, left: 20),
                  child: ExpansionTile(
                    title: const Text(
                      'Basic Info',
                      style: TextStyle(
                        color: Color.fromRGBO(9, 96, 186, 1),
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    initiallyExpanded: _basicInfoExpanded,
                    onExpansionChanged: (value) {
                      setState(() {
                        _basicInfoExpanded = value;
                      });
                    },
                    children: [
                      // Add additional information fields here
                      TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color.fromRGBO(247, 247, 247, 1),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(26),
                            borderSide: const BorderSide(
                                color: Colors.transparent, width: 1.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(26),
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(186, 186, 186, 1),
                                width: 1.5),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(26),
                            borderSide: const BorderSide(
                                color: Color.fromRGBO(186, 186, 186, 1),
                                width: 1.5),
                          ),
                          hintText: 'Student Name',
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 25),
                          hintStyle: const TextStyle(
                            color: Color.fromRGBO(186, 186, 186, 1),
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),

                      Padding(
                        padding:
                            const EdgeInsets.only(top: 11, right: 0, left: 0),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color.fromRGBO(247, 247, 247, 1),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(26),
                              borderSide: const BorderSide(
                                  color: Colors.transparent, width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(26),
                              borderSide: const BorderSide(
                                  color: Color.fromRGBO(186, 186, 186, 1),
                                  width: 1.5),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(26),
                              borderSide: const BorderSide(
                                  color: Color.fromRGBO(186, 186, 186, 1),
                                  width: 1.5),
                            ),
                            hintText: 'Contact Number',
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 25),
                            hintStyle: const TextStyle(
                              color: Color.fromRGBO(186, 186, 186, 1),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding:
                            const EdgeInsets.only(top: 11, right: 0, left: 0),
                        child: TextField(
                          controller: _centerController,
                          style: const TextStyle(color: Colors.blue),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color.fromRGBO(247, 247, 247, 1),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(26),
                              borderSide: const BorderSide(
                                  color: Colors.transparent, width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(26),
                              borderSide: const BorderSide(
                                  color: Color.fromRGBO(186, 186, 186, 1),
                                  width: 1.5),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(26),
                              borderSide: const BorderSide(
                                  color: Color.fromRGBO(186, 186, 186, 1),
                                  width: 1.5),
                            ),
                            suffixIcon: IconButton(
                              onPressed: () {
                                Get.bottomSheet(showModalBottomSheet(
                                  context: context,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(20.0)),
                                  ),
                                  builder: (BuildContext context) {
                                    return StatefulBuilder(
                                      builder: (BuildContext context,
                                          StateSetter setModalState) {
                                        return Container(
                                          height: 550,
                                          padding: const EdgeInsets.all(16.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              const Center(
                                                child: Text(
                                                  'Assign Center',
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(height: 25.0),
                                              Expanded(
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    border: Border.all(
                                                        color: const Color
                                                            .fromRGBO(
                                                            238, 234, 234, 1)),
                                                  ),
                                                  child: ListView(
                                                    children: [
                                                      _buildListTile('Center 1',
                                                          setModalState),
                                                      const Divider(
                                                        height: 10,
                                                        color: Colors.white,
                                                      ),
                                                      _buildListTile('Center 2',
                                                          setModalState),
                                                      const Divider(
                                                        height: 10,
                                                        color: Colors.white,
                                                      ),
                                                      _buildListTile('Center 3',
                                                          setModalState),
                                                      const Divider(
                                                        height: 10,
                                                        color: Colors.white,
                                                      ),
                                                      _buildListTile('Center 4',
                                                          setModalState),
                                                      const Divider(
                                                        height: 10,
                                                        color: Colors.white,
                                                      ),
                                                      _buildListTile('Center 5',
                                                          setModalState),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      _centerController.text =
                                                          selectedCenter;
                                                    });
                                                    Navigator.pop(
                                                        context); // Close the bottom sheet
                                                  },
                                                  child: Center(
                                                    child: Container(
                                                      width: 347,
                                                      height: 51,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  103),
                                                          gradient: const LinearGradient(
                                                              begin: Alignment
                                                                  .centerLeft,
                                                              end: Alignment
                                                                  .centerRight,
                                                              colors: [
                                                                Color.fromRGBO(
                                                                    13,
                                                                    149,
                                                                    211,
                                                                    1),
                                                                Color.fromRGBO(
                                                                    9,
                                                                    96,
                                                                    186,
                                                                    1)
                                                              ])),
                                                      child: const Center(
                                                          child: Text(
                                                        "Done",
                                                        style: TextStyle(
                                                            fontSize: 17,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            color:
                                                                Colors.white),
                                                      )),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ) as Widget);
                              },
                              icon: const Icon(Icons.keyboard_arrow_down),
                              color: Colors.blue,
                            ),
                            hintText: 'Assign Center',
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 25),
                            hintStyle: const TextStyle(
                              color: Color.fromRGBO(186, 186, 186, 1),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding:
                            const EdgeInsets.only(top: 11, right: 0, left: 0),
                        child: TextField(
                          controller: _batchController,
                          style: const TextStyle(color: Colors.blue),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color.fromRGBO(247, 247, 247, 1),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(26),
                              borderSide: const BorderSide(
                                  color: Colors.transparent, width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(26),
                              borderSide: const BorderSide(
                                  color: Color.fromRGBO(186, 186, 186, 1),
                                  width: 1.5),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(26),
                              borderSide: const BorderSide(
                                  color: Color.fromRGBO(186, 186, 186, 1),
                                  width: 1.5),
                            ),
                            suffixIcon: IconButton(
                              onPressed: () {
                                Get.bottomSheet(showModalBottomSheet(
                                  context: context,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(20.0)),
                                  ),
                                  builder: (BuildContext context) {
                                    return StatefulBuilder(
                                      builder: (BuildContext context,
                                          StateSetter setModalState) {
                                        return Container(
                                          height: 550,
                                          padding: const EdgeInsets.all(16.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              const Center(
                                                child: Text(
                                                  'Assign Center',
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(height: 25.0),
                                              Expanded(
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    border: Border.all(
                                                        color: const Color
                                                            .fromRGBO(
                                                            238, 234, 234, 1)),
                                                  ),
                                                  child: ListView(
                                                    children: [
                                                      _buildListTileBatch(
                                                          'Batch 1',
                                                          setModalState),
                                                      const Divider(
                                                        height: 10,
                                                        color: Colors.white,
                                                      ),
                                                      _buildListTileBatch(
                                                          'Batch 2',
                                                          setModalState),
                                                      const Divider(
                                                        height: 10,
                                                        color: Colors.white,
                                                      ),
                                                      _buildListTileBatch(
                                                          'Batch 3',
                                                          setModalState),
                                                      const Divider(
                                                        height: 10,
                                                        color: Colors.white,
                                                      ),
                                                      _buildListTileBatch(
                                                          'Batch 4',
                                                          setModalState),
                                                      const Divider(
                                                        height: 10,
                                                        color: Colors.white,
                                                      ),
                                                      _buildListTileBatch(
                                                          'Batch 5',
                                                          setModalState),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      _batchController.text =
                                                          selectedBatch;
                                                    });
                                                    Navigator.pop(
                                                        context); // Close the bottom sheet
                                                  },
                                                  child: Center(
                                                    child: Container(
                                                      width: 347,
                                                      height: 51,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  103),
                                                          gradient: const LinearGradient(
                                                              begin: Alignment
                                                                  .centerLeft,
                                                              end: Alignment
                                                                  .centerRight,
                                                              colors: [
                                                                Color.fromRGBO(
                                                                    13,
                                                                    149,
                                                                    211,
                                                                    1),
                                                                Color.fromRGBO(
                                                                    9,
                                                                    96,
                                                                    186,
                                                                    1)
                                                              ])),
                                                      child: const Center(
                                                          child: Text(
                                                        "Done",
                                                        style: TextStyle(
                                                            fontSize: 17,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            color:
                                                                Colors.white),
                                                      )),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ) as Widget);
                              },
                              icon: const Icon(Icons.keyboard_arrow_down),
                              color: Colors.blue,
                            ),
                            hintText: 'Assign Batch',
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 25),
                            hintStyle: const TextStyle(
                              color: Color.fromRGBO(186, 186, 186, 1),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding:
                            const EdgeInsets.only(top: 11, right: 0, left: 0),
                        child: TextField(
                          // controller: _batchController,
                          style: const TextStyle(color: Colors.blue),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color.fromRGBO(247, 247, 247, 1),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(26),
                              borderSide: const BorderSide(
                                  color: Colors.transparent, width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(26),
                              borderSide: const BorderSide(
                                  color: Color.fromRGBO(186, 186, 186, 1),
                                  width: 1.5),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(26),
                              borderSide: const BorderSide(
                                  color: Color.fromRGBO(186, 186, 186, 1),
                                  width: 1.5),
                            ),
                            suffixIcon: IconButton(
                              onPressed: () {
                                Get.bottomSheet(showModalBottomSheet(
                                  context: context,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(20.0)),
                                  ),
                                  builder: (BuildContext context) {
                                    return StatefulBuilder(
                                      builder: (BuildContext context,
                                          StateSetter setModalState) {
                                        return Container(
                                          height: 650,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: Colors.white),
                                          padding: const EdgeInsets.all(16.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              const Center(
                                                child: Text(
                                                  'Additional Info',
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(height: 20.0),
                                              Flexible(
                                                child: ListView(
                                                  shrinkWrap: true,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 11,
                                                              right: 0,
                                                              left: 0),
                                                      child: Container(
                                                        height: 50,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        26)),
                                                        child: Center(
                                                          child: TextField(
                                                            controller:
                                                                _fatherController,
                                                            decoration:
                                                                InputDecoration(
                                                              filled: true,
                                                              fillColor:
                                                                  const Color
                                                                      .fromRGBO(
                                                                      248,
                                                                      247,
                                                                      247,
                                                                      1),
                                                              border:
                                                                  OutlineInputBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            26),
                                                                borderSide: const BorderSide(
                                                                    color: Colors
                                                                        .transparent,
                                                                    width: 1.0),
                                                              ),
                                                              enabledBorder:
                                                                  OutlineInputBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            26),
                                                                borderSide: const BorderSide(
                                                                    color: Color
                                                                        .fromRGBO(
                                                                            186,
                                                                            186,
                                                                            186,
                                                                            1),
                                                                    width: 1.5),
                                                              ),
                                                              focusedBorder:
                                                                  OutlineInputBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            26),
                                                                borderSide: const BorderSide(
                                                                    color: Color
                                                                        .fromRGBO(
                                                                            186,
                                                                            186,
                                                                            186,
                                                                            1),
                                                                    width: 1.5),
                                                              ),
                                                              hintText:
                                                                  'Father Name',
                                                              contentPadding:
                                                                  const EdgeInsets
                                                                      .symmetric(
                                                                      vertical:
                                                                          15,
                                                                      horizontal:
                                                                          25),
                                                              hintStyle:
                                                                  const TextStyle(
                                                                color: Color
                                                                    .fromRGBO(
                                                                        186,
                                                                        186,
                                                                        186,
                                                                        1),
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 11,
                                                              right: 0,
                                                              left: 0),
                                                      child: Container(
                                                        height: 50,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        26)),
                                                        child: Center(
                                                          child: TextField(
                                                            keyboardType:
                                                                TextInputType
                                                                    .number,
                                                            decoration:
                                                                InputDecoration(
                                                              filled: true,
                                                              fillColor:
                                                                  const Color
                                                                      .fromRGBO(
                                                                      247,
                                                                      247,
                                                                      247,
                                                                      1),
                                                              border:
                                                                  OutlineInputBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            26),
                                                                borderSide: const BorderSide(
                                                                    color: Colors
                                                                        .transparent,
                                                                    width: 1.0),
                                                              ),
                                                              enabledBorder:
                                                                  OutlineInputBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            26),
                                                                borderSide: const BorderSide(
                                                                    color: Color
                                                                        .fromRGBO(
                                                                            186,
                                                                            186,
                                                                            186,
                                                                            1),
                                                                    width: 1.5),
                                                              ),
                                                              focusedBorder:
                                                                  OutlineInputBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            26),
                                                                borderSide: const BorderSide(
                                                                    color: Color
                                                                        .fromRGBO(
                                                                            186,
                                                                            186,
                                                                            186,
                                                                            1),
                                                                    width: 1.5),
                                                              ),
                                                              hintText:
                                                                  'Alternate Mobile Number',
                                                              contentPadding:
                                                                  const EdgeInsets
                                                                      .symmetric(
                                                                      vertical:
                                                                          15,
                                                                      horizontal:
                                                                          25),
                                                              hintStyle:
                                                                  const TextStyle(
                                                                color: Color
                                                                    .fromRGBO(
                                                                        186,
                                                                        186,
                                                                        186,
                                                                        1),
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 11,
                                                              right: 0,
                                                              left: 0),
                                                      child: TextField(
                                                        readOnly:
                                                            true, // Add this line to make the text field read only
                                                        controller:
                                                            _dateController,
                                                        decoration:
                                                            InputDecoration(
                                                          filled: true,
                                                          fillColor: const Color
                                                              .fromRGBO(
                                                              247, 247, 247, 1),
                                                          border:
                                                              OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        26),
                                                            borderSide:
                                                                const BorderSide(
                                                                    color: Colors
                                                                        .transparent,
                                                                    width: 1.0),
                                                          ),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        26),
                                                            borderSide:
                                                                const BorderSide(
                                                                    color: Color
                                                                        .fromRGBO(
                                                                            186,
                                                                            186,
                                                                            186,
                                                                            1),
                                                                    width: 1.5),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        26),
                                                            borderSide:
                                                                const BorderSide(
                                                                    color: Color
                                                                        .fromRGBO(
                                                                            186,
                                                                            186,
                                                                            186,
                                                                            1),
                                                                    width: 1.5),
                                                          ),
                                                          hintText: 'DOB',
                                                          suffixIcon:
                                                              IconButton(
                                                            onPressed: () {
                                                              _selectDate(
                                                                  context); // Call the _selectDate function here
                                                            },
                                                            icon: const Icon(
                                                                Icons
                                                                    .date_range_outlined,
                                                                color: Colors
                                                                    .blue),
                                                          ),
                                                          contentPadding:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                                  vertical: 15,
                                                                  horizontal:
                                                                      25),
                                                          hintStyle:
                                                              const TextStyle(
                                                            color:
                                                                Color.fromRGBO(
                                                                    186,
                                                                    186,
                                                                    186,
                                                                    1),
                                                            fontSize: 14,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 11,
                                                              right: 0,
                                                              left: 0),
                                                      child: Container(
                                                        height: 50,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        26)),
                                                        child: Center(
                                                          child: TextField(
                                                            keyboardType:
                                                                TextInputType
                                                                    .number,
                                                            decoration:
                                                                InputDecoration(
                                                              filled: true,
                                                              fillColor:
                                                                  const Color
                                                                      .fromRGBO(
                                                                      247,
                                                                      247,
                                                                      247,
                                                                      1),
                                                              border:
                                                                  OutlineInputBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            26),
                                                                borderSide: const BorderSide(
                                                                    color: Colors
                                                                        .transparent,
                                                                    width: 1.0),
                                                              ),
                                                              enabledBorder:
                                                                  OutlineInputBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            26),
                                                                borderSide: const BorderSide(
                                                                    color: Color
                                                                        .fromRGBO(
                                                                            186,
                                                                            186,
                                                                            186,
                                                                            1),
                                                                    width: 1.5),
                                                              ),
                                                              focusedBorder:
                                                                  OutlineInputBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            26),
                                                                borderSide: const BorderSide(
                                                                    color: Color
                                                                        .fromRGBO(
                                                                            186,
                                                                            186,
                                                                            186,
                                                                            1),
                                                                    width: 1.5),
                                                              ),
                                                              hintText:
                                                                  'Address',
                                                              contentPadding:
                                                                  const EdgeInsets
                                                                      .symmetric(
                                                                      vertical:
                                                                          15,
                                                                      horizontal:
                                                                          25),
                                                              hintStyle:
                                                                  const TextStyle(
                                                                color: Color
                                                                    .fromRGBO(
                                                                        186,
                                                                        186,
                                                                        186,
                                                                        1),
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 11,
                                                              right: 0,
                                                              left: 0),
                                                      child: Container(
                                                        height: 50,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        26)),
                                                        child: Center(
                                                          child: TextField(
                                                            keyboardType:
                                                                TextInputType
                                                                    .number,
                                                            decoration:
                                                                InputDecoration(
                                                              filled: true,
                                                              fillColor:
                                                                  const Color
                                                                      .fromRGBO(
                                                                      247,
                                                                      247,
                                                                      247,
                                                                      1),
                                                              border:
                                                                  OutlineInputBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            26),
                                                                borderSide: const BorderSide(
                                                                    color: Colors
                                                                        .transparent,
                                                                    width: 1.0),
                                                              ),
                                                              enabledBorder:
                                                                  OutlineInputBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            26),
                                                                borderSide: const BorderSide(
                                                                    color: Color
                                                                        .fromRGBO(
                                                                            186,
                                                                            186,
                                                                            186,
                                                                            1),
                                                                    width: 1.5),
                                                              ),
                                                              focusedBorder:
                                                                  OutlineInputBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            26),
                                                                borderSide: const BorderSide(
                                                                    color: Color
                                                                        .fromRGBO(
                                                                            186,
                                                                            186,
                                                                            186,
                                                                            1),
                                                                    width: 1.5),
                                                              ),
                                                              hintText:
                                                                  'Height( cm )',
                                                              contentPadding:
                                                                  const EdgeInsets
                                                                      .symmetric(
                                                                      vertical:
                                                                          15,
                                                                      horizontal:
                                                                          25),
                                                              hintStyle:
                                                                  const TextStyle(
                                                                color: Color
                                                                    .fromRGBO(
                                                                        186,
                                                                        186,
                                                                        186,
                                                                        1),
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 11,
                                                              right: 0,
                                                              left: 0),
                                                      child: Container(
                                                        height: 50,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        26)),
                                                        child: Center(
                                                          child: TextField(
                                                            keyboardType:
                                                                TextInputType
                                                                    .number,
                                                            decoration:
                                                                InputDecoration(
                                                              filled: true,
                                                              fillColor:
                                                                  const Color
                                                                      .fromRGBO(
                                                                      247,
                                                                      247,
                                                                      247,
                                                                      1),
                                                              border:
                                                                  OutlineInputBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            26),
                                                                borderSide: const BorderSide(
                                                                    color: Colors
                                                                        .transparent,
                                                                    width: 1.0),
                                                              ),
                                                              enabledBorder:
                                                                  OutlineInputBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            26),
                                                                borderSide: const BorderSide(
                                                                    color: Color
                                                                        .fromRGBO(
                                                                            186,
                                                                            186,
                                                                            186,
                                                                            1),
                                                                    width: 1.5),
                                                              ),
                                                              focusedBorder:
                                                                  OutlineInputBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            26),
                                                                borderSide: const BorderSide(
                                                                    color: Color
                                                                        .fromRGBO(
                                                                            186,
                                                                            186,
                                                                            186,
                                                                            1),
                                                                    width: 1.5),
                                                              ),
                                                              hintText:
                                                                  'weight( kg )',
                                                              contentPadding:
                                                                  const EdgeInsets
                                                                      .symmetric(
                                                                      vertical:
                                                                          15,
                                                                      horizontal:
                                                                          25),
                                                              hintStyle:
                                                                  const TextStyle(
                                                                color: Color
                                                                    .fromRGBO(
                                                                        186,
                                                                        186,
                                                                        186,
                                                                        1),
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      height: 20,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: InkWell(
                                                        onTap: () {
                                                          // setState(() {
                                                          //   _batchController.text =
                                                          //       selectedBatch;
                                                          // });
                                                          Navigator.pop(
                                                              context); // Close the bottom sheet
                                                        },
                                                        child: Center(
                                                          child: Container(
                                                            width: 347,
                                                            height: 51,
                                                            decoration: BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            103),
                                                                gradient: const LinearGradient(
                                                                    begin: Alignment
                                                                        .centerLeft,
                                                                    end: Alignment.centerRight,
                                                                    colors: [
                                                                      Color.fromRGBO(
                                                                          13,
                                                                          149,
                                                                          211,
                                                                          1),
                                                                      Color.fromRGBO(
                                                                          9,
                                                                          96,
                                                                          186,
                                                                          1)
                                                                    ])),
                                                            child: const Center(
                                                                child: Text(
                                                              "Done",
                                                              style: TextStyle(
                                                                  fontSize: 17,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700,
                                                                  color: Colors
                                                                      .white),
                                                            )),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ) as Widget);
                              },
                              icon: const Icon(Icons.keyboard_arrow_down),
                              color: Colors.blue,
                            ),
                            hintText: 'Additional Info',
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 25),
                            hintStyle: TextStyle(
                              color: _fatherController.text.isNotEmpty
                                  ? const Color.fromRGBO(186, 186, 186, 1)
                                  : Colors.blue,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          //readOnly: true,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Theme(
                data: theme,
                child: Padding(
                  padding: const EdgeInsets.only(top: 30, right: 20, left: 20),
                  child: ExpansionTile(
                    title: const Text("Manage Fees"),
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 11, right: 0, left: 0),
                        child: TextField(
                          controller: _PlanController,
                          style: const TextStyle(color: Colors.blue),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color.fromRGBO(247, 247, 247, 1),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(26),
                              borderSide: const BorderSide(
                                  color: Colors.transparent, width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(26),
                              borderSide: const BorderSide(
                                  color: Color.fromRGBO(186, 186, 186, 1),
                                  width: 1.5),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(26),
                              borderSide: const BorderSide(
                                  color: Color.fromRGBO(186, 186, 186, 1),
                                  width: 1.5),
                            ),
                            suffixIcon: IconButton(
                              onPressed: () {
                                Get.bottomSheet(showModalBottomSheet(
                                  context: context,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(20.0)),
                                  ),
                                  builder: (BuildContext context) {
                                    return StatefulBuilder(
                                      builder: (BuildContext context,
                                          StateSetter setModalState) {
                                        return Container(
                                          height: 550,
                                          padding: const EdgeInsets.all(16.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              const Center(
                                                child: Text(
                                                  'Assign Center',
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(height: 25.0),
                                              Expanded(
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    border: Border.all(
                                                        color: const Color
                                                            .fromRGBO(
                                                            238, 234, 234, 1)),
                                                  ),
                                                  child: ListView(
                                                    children: [
                                                      _buildListTilePlan(
                                                          'Plan 1',
                                                          setModalState),
                                                      const Divider(
                                                        height: 10,
                                                        color: Colors.white,
                                                      ),
                                                      _buildListTilePlan(
                                                          'Plan 2',
                                                          setModalState),
                                                      const Divider(
                                                        height: 10,
                                                        color: Colors.white,
                                                      ),
                                                      _buildListTilePlan(
                                                          'Plan 3',
                                                          setModalState),
                                                      const Divider(
                                                        height: 10,
                                                        color: Colors.white,
                                                      ),
                                                      _buildListTilePlan(
                                                          'Plan 4',
                                                          setModalState),
                                                      const Divider(
                                                        height: 10,
                                                        color: Colors.white,
                                                      ),
                                                      _buildListTilePlan(
                                                          'Plan 5',
                                                          setModalState),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      _PlanController.text =
                                                          selectedPlan;
                                                    });
                                                    Navigator.pop(
                                                        context); // Close the bottom sheet
                                                  },
                                                  child: Center(
                                                    child: Container(
                                                      width: 347,
                                                      height: 51,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  103),
                                                          gradient: const LinearGradient(
                                                              begin: Alignment
                                                                  .centerLeft,
                                                              end: Alignment
                                                                  .centerRight,
                                                              colors: [
                                                                Color.fromRGBO(
                                                                    13,
                                                                    149,
                                                                    211,
                                                                    1),
                                                                Color.fromRGBO(
                                                                    9,
                                                                    96,
                                                                    186,
                                                                    1)
                                                              ])),
                                                      child: const Center(
                                                          child: Text(
                                                        "Done",
                                                        style: TextStyle(
                                                            fontSize: 17,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            color:
                                                                Colors.white),
                                                      )),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ) as Widget);
                              },
                              icon: const Icon(Icons.keyboard_arrow_down),
                              color: Colors.blue,
                            ),
                            hintText: 'Assign Plan',
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 25),
                            hintStyle: const TextStyle(
                              color: Color.fromRGBO(186, 186, 186, 1),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 11, right: 0, left: 0),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color.fromRGBO(247, 247, 247, 1),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(26),
                              borderSide: const BorderSide(
                                  color: Colors.transparent, width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(26),
                              borderSide: const BorderSide(
                                  color: Color.fromRGBO(186, 186, 186, 1),
                                  width: 1.5),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(26),
                              borderSide: const BorderSide(
                                  color: Color.fromRGBO(186, 186, 186, 1),
                                  width: 1.5),
                            ),
                            hintText: 'Fees Amount',
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 25),
                            hintStyle: const TextStyle(
                              color: Color.fromRGBO(186, 186, 186, 1),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 11,
                          right: 0,
                          left: 0,
                        ),
                        child: TextField(
                          readOnly:
                              true, // Add this line to make the text field read only
                          controller: _DuedateController,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color.fromRGBO(247, 247, 247, 1),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(26),
                              borderSide: const BorderSide(
                                  color: Colors.transparent, width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(26),
                              borderSide: const BorderSide(
                                  color: Color.fromRGBO(186, 186, 186, 1),
                                  width: 1.5),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(26),
                              borderSide: const BorderSide(
                                  color: Color.fromRGBO(186, 186, 186, 1),
                                  width: 1.5),
                            ),
                            hintText: 'Due Date (Latest Due Date)',
                            suffixIcon: IconButton(
                              onPressed:
                                  _selectDueDate, // Call the _selectDate function here
                              icon: const Icon(Icons.date_range_outlined,
                                  color: Colors.blue),
                            ),
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 25),
                            hintStyle: const TextStyle(
                              color: Color.fromRGBO(186, 186, 186, 1),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 11, right: 0, left: 0),
                        child: TextField(
                          // keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color.fromRGBO(247, 247, 247, 1),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(26),
                              borderSide: const BorderSide(
                                  color: Colors.transparent, width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(26),
                              borderSide: const BorderSide(
                                  color: Color.fromRGBO(186, 186, 186, 1),
                                  width: 1.5),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(26),
                              borderSide: const BorderSide(
                                  color: Color.fromRGBO(186, 186, 186, 1),
                                  width: 1.5),
                            ),
                            hintText: 'Sessions',
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 25),
                            hintStyle: const TextStyle(
                              color: Color.fromRGBO(186, 186, 186, 1),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 11, right: 0, left: 0),
                        child: TextField(
                          controller: _additionalChargeController,
                          style: const TextStyle(color: Colors.blue),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color.fromRGBO(247, 247, 247, 1),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(26),
                              borderSide: const BorderSide(
                                  color: Colors.transparent, width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(26),
                              borderSide: const BorderSide(
                                  color: Color.fromRGBO(186, 186, 186, 1),
                                  width: 1.5),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(26),
                              borderSide: const BorderSide(
                                  color: Color.fromRGBO(186, 186, 186, 1),
                                  width: 1.5),
                            ),
                            suffixIcon: IconButton(
                              onPressed: () {
                                Get.bottomSheet(showModalBottomSheet(
                                  context: context,
                                  shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(20.0)),
                                  ),
                                  builder: (BuildContext context) {
                                    return StatefulBuilder(
                                      builder: (BuildContext context,
                                          StateSetter setModalState) {
                                        return Container(
                                          height: 550,
                                          padding: const EdgeInsets.all(16.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              const Center(
                                                child: Text(
                                                  'Assign Center',
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(height: 25.0),
                                              Expanded(
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                    border: Border.all(
                                                        color: const Color
                                                            .fromRGBO(
                                                            238, 234, 234, 1)),
                                                  ),
                                                  child: ListView(
                                                    children: [
                                                      _buildListTileAdditionalCharges(
                                                          'CGST',
                                                          setModalState),
                                                      const Divider(
                                                        height: 10,
                                                        color: Colors.white,
                                                      ),
                                                      _buildListTileAdditionalCharges(
                                                          'SGST',
                                                          setModalState),
                                                      const Divider(
                                                        height: 10,
                                                        color: Colors.white,
                                                      ),
                                                      _buildListTileAdditionalCharges(
                                                          'GST', setModalState),
                                                      const Divider(
                                                        height: 10,
                                                        color: Colors.white,
                                                      ),
                                                      _buildListTileAdditionalCharges(
                                                          'Service Charges',
                                                          setModalState),
                                                      const Divider(
                                                        height: 10,
                                                        color: Colors.white,
                                                      ),
                                                      _buildListTileAdditionalCharges(
                                                          'Additional Fees',
                                                          setModalState),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: InkWell(
                                                  onTap: () {
                                                    setState(() {
                                                      _additionalChargeController.text =
                                                          selectedCharges;
                                                    });
                                                    Navigator.pop(
                                                        context); // Close the bottom sheet
                                                  },
                                                  child: Center(
                                                    child: Container(
                                                      width: 347,
                                                      height: 51,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  103),
                                                          gradient: const LinearGradient(
                                                              begin: Alignment
                                                                  .centerLeft,
                                                              end: Alignment
                                                                  .centerRight,
                                                              colors: [
                                                                Color.fromRGBO(
                                                                    13,
                                                                    149,
                                                                    211,
                                                                    1),
                                                                Color.fromRGBO(
                                                                    9,
                                                                    96,
                                                                    186,
                                                                    1)
                                                              ])),
                                                      child: const Center(
                                                          child: Text(
                                                        "Done",
                                                        style: TextStyle(
                                                            fontSize: 17,
                                                            fontWeight:
                                                                FontWeight.w700,
                                                            color:
                                                                Colors.white),
                                                      )),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ) as Widget);
                              },
                              icon: const Icon(Icons.keyboard_arrow_down),
                              color: Colors.blue,
                            ),
                            hintText: 'Additonal Charges',
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 15, horizontal: 25),
                            hintStyle: const TextStyle(
                              color: Color.fromRGBO(186, 186, 186, 1),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      Column(
                        children: _options.map((option) {
                          return RadioListTile(
                            title: Text(option),
                            value: option,
                            groupValue: _selectedValue,
                            onChanged: (value) {
                              setState(() {
                                if (_selectedValue == value) {
                                  _selectedValue = null;
                                  _isSelected = false;
                                } else {
                                  _selectedValue = value;
                                  _isSelected = true;
                                }
                              });
                            },
                          );
                        }).toList(),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 70,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      _PlanController.text = selectedPlan;
                    });
                    Navigator.pop(context); // Close the bottom sheet
                  },
                  child: Center(
                    child: Container(
                      width: 347,
                      height: 51,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(103),
                          gradient: const LinearGradient(
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                              colors: [
                                Color.fromRGBO(13, 149, 211, 1),
                                Color.fromRGBO(9, 96, 186, 1)
                              ])),
                      child: const Center(
                          child: Text(
                        "Add Student",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      )),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
