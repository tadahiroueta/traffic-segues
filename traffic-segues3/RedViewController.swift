//
//  ViewController.swift
//  traffic-segues3
//
//  Created by Ueta, Lucas T on 1/22/24.
//

import UIKit

class RedViewController: UIViewController {
    var isSegueEnabled = true

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Red"
        navigationItem.backButtonTitle = "Go to Red"
        view.backgroundColor = .systemRed
        
        let content = UIStackView()
        content.axis = .vertical
        content.spacing = 30
        content.alignment = .center
        view.addSubview(content)
        content.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            content.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            content.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        let options = UIStackView()
        options.axis = .horizontal
        options.spacing = 75
        options.alignment = .center
        content.addArrangedSubview(options)
        
        let yellowOption = UIButton()
        yellowOption.setTitle("Push to Yellow", for: .normal)
        yellowOption.setTitleColor(.systemBlue, for: .normal)
        yellowOption.tag = 1
        yellowOption.addTarget(self, action: #selector(push(_:)), for: .touchUpInside)
        options.addArrangedSubview(yellowOption)
        yellowOption.translatesAutoresizingMaskIntoConstraints = false

        let greenOption = UIButton()
        greenOption.setTitle("Push to Green", for: .normal)
        greenOption.setTitleColor(.systemBlue, for: .normal)
        greenOption.tag = 2
        greenOption.addTarget(self, action: #selector(push(_:)), for: .touchUpInside)
        options.addArrangedSubview(greenOption)
        greenOption.translatesAutoresizingMaskIntoConstraints = false
        
        let enableSwitch = UISwitch()
        enableSwitch.isOn = true
        enableSwitch.addTarget(self, action: #selector(enableSegue(_:)), for: .valueChanged)
        content.addArrangedSubview(enableSwitch)
        enableSwitch.translatesAutoresizingMaskIntoConstraints = false
    }
    
    @objc func push(_ sender: UIButton) {
        if !isSegueEnabled { return }
        
        // yellow: 1; green: 2
        if sender.tag == 1 { navigationController!.pushViewController(YellowViewController(), animated: true) }
        else if sender.tag == 2 { navigationController!.pushViewController(GreenViewController(), animated: true)}
    }
    
    @objc func enableSegue(_ sender: UISwitch) { isSegueEnabled = sender.isOn }
}

