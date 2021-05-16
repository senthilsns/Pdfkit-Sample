//
//  PDFPreviewViewController.swift
//  PDFKitExample
//
//  Created by K, Senthil Kumar EX1 on 11/05/21.
//

import UIKit
import PDFKit

class PDFPreviewViewController: UIViewController {
    
    public var documentData: Data?
    @IBOutlet weak var pdfView: PDFView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let data = documentData {
            pdfView.document = PDFDocument(data: data)
            pdfView.autoScales = true
            
            print("PDF Version :\(String(describing: pdfView.document!.majorVersion)).\(String(describing: pdfView.document!.minorVersion))")
            
            pdfView.document?.write(toFile: "Path To Save the File.")

        }
    }
}
