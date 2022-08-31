//
//  ViewController.swift
//  SwiftUIinUIKit
//
//  Created by Mon P. on 31/08/2022.
//
//Interoperability from UIKit to SwiftUI, based on iOS Academy YT Channel

import UIKit
import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 220, height: 50))
        view.addSubview(button)
        button.center = view.center
        button.setTitle("Show SwiftUI", for: .normal)
        button.backgroundColor = .systemPink
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
        
        @objc func didTapButton() {
            //SwiftUI interop
            let vc = UIHostingController(rootView: SettingScreen())
            present(vc, animated: true)
        }
        
}

