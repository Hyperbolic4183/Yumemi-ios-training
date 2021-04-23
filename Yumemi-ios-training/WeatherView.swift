//
//  WeatherView.swift
//  Yumemi-ios-training
//
//  Created by 大塚 周 on 2021/04/23.
//

import UIKit

class WeatherView: UIView {
    
    //画面サイズを取得
    let screenWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height
    
    //UI部品を定義する
    let weatherImageView = UIImageView()
    let closeButton = UIButton()
    let reloadButton = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        setupWeatherImageView()
        setupCloseButton()
        setupReloadButton()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //UI部品の初期設定を行う
    private func setupWeatherImageView() {
        addSubview(weatherImageView)
        //Session1では画像の指定がされていないので,とりあえずSF Symbolsに設定
        let image = UIImage(systemName: "sun.max")
        weatherImageView.image = image
        //配置周りの設定
        let x = screenWidth/4
        let y = (screenHeight-screenWidth/2)/2
        let width = screenWidth/2
        let height = screenWidth/2
        let size = CGSize(width: width, height: height)
        let point = CGPoint(x: x, y: y)
        weatherImageView.frame = CGRect(origin: point, size: size)
    }
    
    private func setupCloseButton() {
        closeButton.setTitle("close", for: .normal)
        closeButton.setTitleColor(UIColor(red: 72/255, green: 152/255, blue: 235/255, alpha: 1.0), for: .normal)
        addSubview(closeButton)
        let x = screenWidth/4
        let y = screenHeight/2 + screenWidth/4 + 80
        let width = screenWidth/4
        let sizeOfCloseLabel = closeButton.sizeThatFits(CGSize(width: CGFloat.greatestFiniteMagnitude, height: CGFloat.greatestFiniteMagnitude))
        let point = CGPoint(x: x, y: y)
        closeButton.frame = CGRect(origin: point, size: CGSize(width: width, height: sizeOfCloseLabel.height))
        
        //ボタンが押されている時の処理
        closeButton.addTarget(self, action: #selector(closeButtonTouchDown), for: .touchDown)
    }
    @objc func closeButtonTouchDown() {
        print("ボタンが押された")
        closeButton.setTitleColor(UIColor(red: 72/255, green: 152/255, blue: 235/255, alpha: 0.2), for: .highlighted)
    }
    
    private func setupReloadButton() {
        reloadButton.setTitle("reload", for: .normal)
        reloadButton.setTitleColor(UIColor(red: 72/255, green: 152/255, blue: 235/255, alpha: 1.0), for: .normal)
        addSubview(reloadButton)
        let x = screenWidth/2
        let y = screenHeight/2 + screenWidth/4 + 80
        let width = screenWidth/4
        let sizeOfreloadLabel = reloadButton.sizeThatFits(CGSize(width: CGFloat.greatestFiniteMagnitude, height: CGFloat.greatestFiniteMagnitude))
        let point = CGPoint(x: x, y: y)
        reloadButton.frame = CGRect(origin: point, size: CGSize(width: width, height: sizeOfreloadLabel.height))
        
        closeButton.addTarget(self, action: #selector(reloadButtonTouchDown), for: .touchDown)
    }
    @objc func reloadButtonTouchDown() {
        print("ボタンが押された")
        reloadButton.setTitleColor(UIColor(red: 72/255, green: 152/255, blue: 235/255, alpha: 0.2), for: .highlighted)
    }
    
}
