//
//  ViewController.swift
//  TWDevice
//
//  Created by Vision on 2023/12/27.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "控制器"
    }
    
//    override var prefersStatusBarHidden: Bool {
//        return true
//    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print("kd_statusBarX---\(UIDevice.kd_statusBarX())")
        print("kd_statusBarHeight---\(UIDevice.kd_statusBarHeight())")
        print("kd_safeAreaTop---\(UIDevice.kd_safeAreaTop())")
        print("kd_navigationBarHeight---\(UIDevice.kd_navigationBarHeight())")
        print("navigationBarheight---\(String(describing:(self.navigationController?.navigationBar.frame.size.height)!))")
        print("kd_tabBarHeight---\(UIDevice.kd_tabBarHeight())")
        if let TabBarButton = self.tabBarController?.tabBar.subviews.first(where: { TabBarButton in TabBarButton.isKind(of: NSClassFromString("UITabBarButton")!) }) {
            print("TabBarButtonY---\(String(describing:(TabBarButton.frame.origin.y)))")
            print("TabBarButtonHeight---\(String(describing:(TabBarButton.frame.size.height)))")
        }
        print("kd_safeAreaBottom---\(UIDevice.kd_safeAreaBottom())")
        print("kd_tabBarFullHeight---\(UIDevice.kd_tabBarFullHeight())")
        print("tabBarHeight---\(String(describing:(self.tabBarController?.tabBar.frame.size.height)!))")
    }
}

