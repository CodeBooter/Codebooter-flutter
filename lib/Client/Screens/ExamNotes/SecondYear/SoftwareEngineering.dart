import 'dart:io';
import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class SoftwareEngineering extends StatefulWidget {
  const SoftwareEngineering({Key? key}) : super(key: key);

  @override
  _SoftwareEngineeringState createState() => _SoftwareEngineeringState();
}

class _SoftwareEngineeringState extends State<SoftwareEngineering> {
  final String pdfUrl =
      'https://ia902709.us.archive.org/0/items/read3_20230704/read3.pdf';
  late String localPath;
  bool isPdfDownloaded = false;
  String downloadMessage = "Click download icon to start download";

  @override
  void initState() {
    super.initState();
    checkPdfExistence();
  }

  Future<void> downloadPdf() async {
    final directory = await getApplicationSupportDirectory();
    localPath = '${directory.path}/se.pdf';
    final file = File(localPath);

    if (await file.exists()) {
      setState(() {
        isPdfDownloaded = true;
      });
    } else {
      final response = await HttpClient().getUrl(Uri.parse(pdfUrl));
      final downloadedFile = await response.close();
      final bytes = await consolidateHttpClientResponseBytes(downloadedFile);
      await file.writeAsBytes(bytes);
      setState(() {
        isPdfDownloaded = true;
      });
    }
  }

  Future<void> checkPdfExistence() async {
    final directory = await getApplicationSupportDirectory();
    localPath = '${directory.path}/se.pdf';
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
        title: const Text(
          ' Software Engineering Notes ',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: isPdfDownloaded
            ? SfPdfViewer.file(File(localPath))
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
                  SizedBox(
                    height: dimension.val20,
                  ),
                  Text(downloadMessage,
                      style: TextStyle(
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontSize: dimension.font20)),
                ],
              ),
      ),
    );
  }
}
