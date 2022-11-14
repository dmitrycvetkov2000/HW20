//
//  SecondViewController.swift
//  HW20
//
//  Created by Дмитрий Цветков on 14.11.2022.
//

import UIKit

protocol SecondScreenViewProtocol: AnyObject {
    func showDescription(description: String)
}

class SecondViewController: UIViewController {
    
    var descriptionLabel = UILabel()
    
    var presenter: SecondScreenPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        createDateLabel()
        presenter?.getLabelForCurrentTime(label: descriptionLabel)
    }

}

extension SecondViewController: SecondScreenViewProtocol {
    func showDescription(description: String) {
        DispatchQueue.main.async {
            self.descriptionLabel.text = description
        }
    }
}

extension SecondViewController {
    func createDateLabel(){
        view.addSubview(descriptionLabel)
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        descriptionLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        descriptionLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        descriptionLabel.textAlignment = .center
        descriptionLabel.textColor = .black
    }
}
