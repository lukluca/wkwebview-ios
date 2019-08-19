//
//  WKWebViewController.swift
//  iOSWKWebViewApp
//
//  Created by Luca Tagliabue on 19/08/2019.
//  Copyright © 2019 Luca Tagliabue. All rights reserved.
//

import UIKit
import WebKit

class WKWebViewController: UIViewController {
    
    private var webView: WKWebView!
    
    var pageUrl: String {
        fatalError("Override me!")
    }
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: pageUrl)!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
    }
}

extension WKWebViewController: WKNavigationDelegate {
    
}
