import 'dart:io';
import 'package:codebooter_study_app/utils/Colors.dart';
import 'package:codebooter_study_app/utils/Dimensions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:provider/provider.dart';

import 'package:codebooter_study_app/AppState.dart';

class ChemistryNotes extends StatefulWidget {
  const ChemistryNotes({Key? key}) : super(key: key);

  @override
  _ChemistryNotesState createState() => _ChemistryNotesState();
}

class _ChemistryNotesState extends State<ChemistryNotes> {
  final String pdfUrl =
      'https://drive.google.com/uc?export=download&id=1f5Wyvb-oMyuzZElIp1kEsO9Ql4Xb6qRL'; // Replace 'YOUR_FILE_ID' with the actual file ID from Google Drive
  late String localPath;
  bool isPdfDownloaded = false;
  bool isDownloading = false;
  String downloadMessage = "Click the download icon to start the download";
  double downloadProgress = 0.0;
  int totalBytes = 0;
  int receivedBytes = 0;

  @override
  void initState() {
    super.initState();
    checkPdfExistence();
  }

  Future<void> downloadPdf() async {
    setState(() {
      isDownloading = true;
    });

    final directory = await getApplicationSupportDirectory();
    localPath = '${directory.path}/chemistry.pdf';
    final file = File(localPath);

    if (await file.exists()) {
      setState(() {
        isPdfDownloaded = true;
        isDownloading = false;
      });
    } else {
      final request = http.Request('GET', Uri.parse(pdfUrl));
      final streamedResponse = await request.send();

      if (streamedResponse.statusCode == 200) {
        totalBytes = streamedResponse.contentLength ?? 0;

        final fileStream = file.openWrite();
        receivedBytes = 0;

        await streamedResponse.stream.listen(
          (List<int> data) {
            if (!mounted) return; // Check if the widget is still mounted

            fileStream.add(data);
            receivedBytes += data.length;

            setState(() {
              downloadProgress = receivedBytes / totalBytes;
            });
          },
          onDone: () async {
            await fileStream.close();
            setState(() {
              isPdfDownloaded = true;
              isDownloading = false;
            });
          },
          onError: (error) {
            setState(() {
              isDownloading = false;
            });
          },
        );
      }
    }
  }

  Future<void> checkPdfExistence() async {
    final directory = await getApplicationSupportDirectory();
    localPath = '${directory.path}/chemistry.pdf';
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
  void dispose() {
    super.dispose();
    // Dispose any resources here
  }

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
    return Scaffold(
      backgroundColor:
          appState.isDarkMode ? AppColors.primaryColor : Colors.white,
      appBar: AppBar(
        backgroundColor:
            appState.isDarkMode ? AppColors.primaryColor : Colors.white,
        iconTheme: IconThemeData(
          color: appState.isDarkMode ? Colors.white : Colors.black,
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
              color: appState.isDarkMode ? Colors.white : Colors.black,
            ),
          ),
        ],
        title: Text(
          'Chemistry Notes 1st Year',
          style: TextStyle(
              color: appState.isDarkMode ? Colors.white : Colors.black),
        ),
      ),
      body: Center(
        child: isPdfDownloaded
            ? SfPdfViewer.file(File(localPath))
            : isDownloading
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CircularProgressIndicator(),
                      SizedBox(height: Dimension.val20),
                      Text(
                        'Downloading...',
                        style: TextStyle(
                          color:
                              appState.isDarkMode ? Colors.white : Colors.black,
                          fontSize: Dimension.font20,
                        ),
                      ),
                      SizedBox(height: Dimension.val10),
                      LinearProgressIndicator(
                        minHeight: 30,
                        value: downloadProgress,
                        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                        valueColor: AlwaysStoppedAnimation<Color>(
                          appState.isDarkMode ? Colors.white : Colors.blue,
                        ),
                      ),
                      SizedBox(height: Dimension.val10),
                      Text(
                        '${(receivedBytes / 1024 / 1024).toStringAsFixed(2)} MB / ${(totalBytes / 1024 / 1024).toStringAsFixed(2)} MB',
                        style: TextStyle(
                          color:
                              appState.isDarkMode ? Colors.white : Colors.black,
                          fontSize: Dimension.font16,
                        ),
                      ),
                      const Text(
                        "Note: Don't leave the screen until the download finishes. "
                        "If an error occurs, delete the file and then download it again.",
                        style: TextStyle(color: Colors.red),
                        textAlign: TextAlign.center,
                      )
                    ],
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          downloadPdf();
                        },
                        icon: Icon(
                          Icons.download,
                          color:
                              appState.isDarkMode ? Colors.white : Colors.black,
                          size: Dimension.val60,
                        ),
                      ),
                      SizedBox(
                        height: Dimension.val20,
                      ),
                      Text(
                        downloadMessage,
                        style: TextStyle(
                          color:
                              appState.isDarkMode ? Colors.white : Colors.black,
                          fontSize: Dimension.font20,
                        ),
                      ),
                    ],
                  ),
      ),
    );
  }
}
