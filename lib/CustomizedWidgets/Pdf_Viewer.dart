// import 'package:easy_pdf_viewer/easy_pdf_viewer.dart';
import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';
// import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
//
// class PdfViews extends StatefulWidget {
//   PdfViews({Key? key}) : super(key: key);
//
//   @override
//   State<PdfViews> createState() => _PdfViewsState();
// }
//
// class _PdfViewsState extends State<PdfViews> {
//   // late PDFDocument document;
//   // bool _isLoading = true;
//   // loadDocument() async{
//   //   document = await PDFDocument.fromURL("file:///D:/Flutter%20project/my_portfolio/Assets/Mohith_Resume.pdf");
//   //   setState(() {
//   //     _isLoading = false;
//   //   });
//   // }
//   // @override
//   // void initState() {
//   //   // TODO: implement initState
//   //   super.initState();
//   //   loadDocument();
//   // }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Mohith B M"),
//       ),
//       body: PDFViewer(
//         document: PDFDocument.fromAsset("Assets/mn.pdf"),
//       ),
//     );
//   }}
// import 'package:easy_pdf_viewer/easy_pdf_viewer.dart';
// import 'package:flutter/material.dart';
//
// class PdfViews extends StatefulWidget {
//   PdfViews({Key? key}) : super(key: key);
//
//   @override
//   State<PdfViews> createState() => _PdfViewsState();
// }
//
// class _PdfViewsState extends State<PdfViews> {
//   late PDFDocument document;
//   bool _isLoading = true;
//
//   @override
//   void initState() {
//     super.initState();
//     loadDocument();
//   }
//   Future<void> loadDocument() async {
//     final pdfDocument = await PDFDocument.fromURL("Assets/mn.pdf"); // Note the path
//     setState(() {
//       document = pdfDocument;
//       _isLoading = false;
//     });
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Mohith B M"),
//       ),
//       body: _isLoading
//           ? Center(child: CircularProgressIndicator())
//           : PDFViewer(document: document),
//     );
//   }
// }

class PdfViews extends StatefulWidget {
  const PdfViews({super.key});

  @override
  State<PdfViews> createState() => _PdfViewsState();
}

class _PdfViewsState extends State<PdfViews> {
  late PdfControllerPinch pdfcontrollerpinch;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pdfcontrollerpinch = PdfControllerPinch(
        document: PdfDocument.openAsset("Assets/Mohith_Resume.pdf"));
  }

  @override
  Widget build(BuildContext context) {
    return BuildUi();
  }

  Widget BuildUi() {
    return Scaffold(
      appBar: AppBar(title: Text('Mohith B M'),),
      body: Column(
        children: [
          BuildPdf(),
        ],
      ),
    );
  }

  Widget BuildPdf() {
    return Expanded(
        child: Center(
      child: Container(
          height: 1000,
          width: 900,
          child: PdfViewPinch(
            controller: pdfcontrollerpinch,
          )),
    ));
  }
}
