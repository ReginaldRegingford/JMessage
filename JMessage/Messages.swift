//
//  Messages.swift
//  JMessage
//
//  Created by Jared Gilstrap on 1/13/24.
//

import Foundation
import SwiftUI
import WebKit

struct MessageLaunch: NSViewControllerRepresentable{
    func makeNSViewController(context: Context) -> Messages {
        let vc = Messages()
        return vc
    }
    
    func updateNSViewController(_ nsViewController: Messages, context: Context) {
        
    }
    
    typealias NSViewControllerType = Messages
    
    
}

class Messages: NSViewController, WKUIDelegate {
    
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string:"https://messages.google.com/web/conversations")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
}
