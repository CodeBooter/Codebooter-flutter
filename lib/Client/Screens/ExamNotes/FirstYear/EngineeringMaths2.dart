import 'dart:io';
import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class EngineeringMaths1 extends StatefulWidget {
  const EngineeringMaths1({Key? key}) : super(key: key);

  @override
  _EngineeringMaths1State createState() => _EngineeringMaths1State();
}

class _EngineeringMaths1State extends State<EngineeringMaths1> {
  final String pdfUrl =
      'https://raw.githubusercontent.com/Manav-khadka/dfsfsd/715236bc87e59d18bff4384fd40f55bbf8f9eb45/math%201.pdf';
  late String localPath;
  bool isPdfDownloaded = false;
  String downloadMessage = "Click download icon to start download";
  double downloadProgress = 0;

  @override
  void initState() {
    super.initState();
    checkPdfExistence();
  }

  Future<void> downloadPdf() async {
    final directory = await getApplicationSupportDirectory();
    localPath = '${directory.path}/mathematicsII.pdf';
    final file = File(localPath);

    if (await file.exists()) {
      setState(() {
        isPdfDownloaded = true;
      });
    } else {
      final dio = Dio();
      dio.download(
        pdfUrl,
        localPath,
        onReceiveProgress: (received, total) {
          if (total != -1) {
            setState(() {
              downloadProgress = received / total;
              downloadMessage =
                  "Downloading ${(downloadProgress * 100).toStringAsFixed(0)}%";
            });
          }
        },
      ).then((_) {
        setState(() {
          isPdfDownloaded = true;
        });
      });
    }
  }

  Future<void> checkPdfExistence() async {
    final directory = await getApplicationSupportDirectory();
    localPath = '${directory.path}/mathematicsII.pdf';
    final file = File(localPath);

    if (await file.exists()) {
      setState(() {
        isPdfDownloaded = true;
      });
    } else {
      setState(() {
        isPdfDownloaded = false;
      });
    }
  }

  Future<void> deletePdf() async {
    final file = File(localPath);
    if (await file.exists()) {
      await file.delete();
      setState(() {
        isPdfDownloaded = false;
        downloadProgress = 0;
        downloadMessage = "Click download icon to start download";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              if (isPdfDownloaded) {
                deletePdf();
              } else {
                downloadPdf();
              }
            },
            icon: Icon(
              isPdfDownloaded ? Icons.delete : Icons.download,
              color: Colors.black,
            ),
          ),
        ],
        title: Text(
          'Mathematics II  ',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: isPdfDownloaded
            ? SfPdfViewer.file(File(localPath))
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(value: downloadProgress),
                  SizedBox(height: dimension.val20),
                  Text(
                    downloadMessage,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: dimension.font20,
                    ),
                  ),
                  SizedBox(height: dimension.val20),
                  IconButton(
                    onPressed: () {
                      downloadPdf();
                    },
                    icon: Icon(
                      Icons.download,
                      color: Colors.black,
                      size: dimension.val60,
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
