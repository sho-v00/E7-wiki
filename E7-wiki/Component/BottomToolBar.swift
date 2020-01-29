//
//  BottomToolBar.swift
//  E7-wiki
//
//  Created by Shota Ito on 2020/01/27.
//  Copyright © 2020 Shota Ito. All rights reserved.
//

import UIKit
import WebKit

protocol BottomToolBarDelegate: class {
    func goBack(wv: WKWebView)
    func goForward(wv: WKWebView)
}

extension BottomToolBarDelegate {
    func goBack(wv: WKWebView) {
        wv.goBack()
    }
    func goForward(wv: WKWebView) {
        wv.goForward()
    }
}

final class BottomToolBar: UIView {
    
    private(set) var backButton: UIButton!
    private(set) var forwadButton: UIButton!
    weak var delegate: BottomToolBarDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        let buttonSize = CGSize(width:40,height:40)
        let offseetUnderBottom:CGFloat = 50
        let yPos = (UIScreen.main.bounds.height - offseetUnderBottom)
        let buttonPadding:CGFloat = 10

        let backButtonPos = CGPoint(x:buttonPadding, y:yPos)
        let forwardButtonPos = CGPoint(x:(buttonPadding + buttonSize.width + buttonPadding), y:yPos)

        backButton = UIButton(frame: CGRect(origin: backButtonPos, size: buttonSize))
        forwadButton = UIButton(frame: CGRect(origin:forwardButtonPos, size:buttonSize))

        self.addSubview(backButton)
        backButton.setTitle("<", for: .normal)
        backButton.setTitle("< ", for: .highlighted)
        backButton.setTitleColor(.white, for: .normal)
        backButton.layer.backgroundColor = UIColor.black.cgColor
        backButton.layer.opacity = 0.6
        backButton.layer.cornerRadius = 5.0
        backButton.isHidden = true
        backButton.snp.makeConstraints { make in
            make.height.width.equalTo(40)
            make.left.bottom.equalToSuperview().inset(30)
        }
        
        self.addSubview(forwadButton)
        forwadButton.setTitle(">", for: .normal)
        forwadButton.setTitle(" >", for: .highlighted)
        forwadButton.setTitleColor(.white, for: .normal)
        forwadButton.layer.backgroundColor = UIColor.black.cgColor
        forwadButton.layer.opacity = 0.6
        forwadButton.layer.cornerRadius = 5.0
        forwadButton.isHidden = true
        forwadButton.snp.makeConstraints { make in
            make.height.width.equalTo(40)
            make.left.bottom.equalTo(backButton)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
