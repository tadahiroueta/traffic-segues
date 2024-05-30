//
//  SceneDelegate.swift
//  traffic-segues3
//
//  Created by Ueta, Lucas T on 1/22/24.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        
        let navigationController = UINavigationController(rootViewController: RedViewController())
        navigationController.navigationBar.prefersLargeTitles = true
        
        window!.rootViewController = navigationController
        window!.makeKeyAndVisible()
    }
}

