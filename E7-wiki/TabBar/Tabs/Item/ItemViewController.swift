//
//  ItemViewController.swift
//  E7-wiki
//
//  Created by Shota Ito on 2020/01/26.
//  Copyright © 2020 Shota Ito. All rights reserved.
//

import UIKit
import SnapKit
import WebKit

final class ItemViewController: UIViewController, BottomToolBarDelegate {

    private let wkWebView = WKWebView()
    private let bottomToolBar = BottomToolBar()

    private let targetUrl = "https://wiki.denfaminicogamer.jp/epicseven/catalyst"

    override func viewDidLoad() {
        super.viewDidLoad()

        initWebView()
        initLayout()
    }
    
    private func initWebView() {
        wkWebView.frame = view.frame
        wkWebView.navigationDelegate = self
        wkWebView.uiDelegate = self

        // スワイプでの「戻る・すすむ」を有効にする
        wkWebView.allowsBackForwardNavigationGestures = true

        let urlRequest = URLRequest(url:URL(string:targetUrl)!)
        wkWebView.load(urlRequest)
        view.addSubview(wkWebView)
    }
    
    private func initLayout() {
        navigationItem.title = "Wiki"
        
        view.addSubview(bottomToolBar)
        
        bottomToolBar.delegate = self
        bottomToolBar.backButton.addTarget(self, action: #selector(back), for: .touchUpInside)
        bottomToolBar.forwadButton.addTarget(self, action: #selector(forward), for: .touchUpInside)
        
        bottomToolBar.snp.makeConstraints { make in
            make.height.equalTo(40)
            make.right.bottom.left.equalToSuperview()
        }
    }

    @objc private func back() {
        goBack(wv: wkWebView)
    }

    @objc private func forward() {
        goForward(wv: wkWebView)
    }
}

extension ItemViewController: WKNavigationDelegate {
    // ウェブのロード完了時に呼び出される
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        bottomToolBar.backButton.isHidden = (webView.canGoBack) ? false : true
        bottomToolBar.forwadButton.isHidden = (webView.canGoForward) ? false : true
    }
}

// target=_blank対策
extension ItemViewController: WKUIDelegate {
    func webView(_ webView: WKWebView, createWebViewWith configuration: WKWebViewConfiguration,
                 for navigationAction: WKNavigationAction, windowFeatures: WKWindowFeatures) -> WKWebView? {
        if navigationAction.targetFrame == nil {
            webView.load(navigationAction.request)
        }

        return nil
    }
}
