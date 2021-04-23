//
//  WeatherViewController.swift
//  Yumemi-ios-training
//
//  Created by 大塚 周 on 2021/04/23.
//

import UIKit

class WeatherViewController: UIViewController {

    private(set) var weatherView = WeatherView()//懸念点:名前同じ
    
    override func loadView() {
        view = weatherView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        // Do any additional setup after loading the view.
    }
    
}
