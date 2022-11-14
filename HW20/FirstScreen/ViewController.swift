//
//  ViewController.swift
//  HW20
//
//  Created by Дмитрий Цветков on 13.11.2022.
//

import UIKit

protocol FirstScreenViewProtocol: AnyObject {
    func showDate(date: String)
}

class ViewController: UIViewController {
    
    var dateLabel = UILabel()
    
    var presenter: FirstScreenPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        createDateLabel()
        createButton()
        
        presenter?.viewDidLoaded()
    }
}

extension ViewController: FirstScreenViewProtocol {
    func showDate(date: String) {
        DispatchQueue.main.async {
            self.dateLabel.text = date
        }
    }
}

extension ViewController {
    func createDateLabel(){
        view.addSubview(dateLabel)
        dateLabel.translatesAutoresizingMaskIntoConstraints = false
        dateLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        dateLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        dateLabel.textAlignment = .center
    }
    
    func createButton(){
        let button = UIButton()
        view.addSubview(button)
        
        button.backgroundColor = .green
        button.translatesAutoresizingMaskIntoConstraints = false
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -60).isActive = true
        button.widthAnchor.constraint(equalToConstant: 200).isActive = true
        button.heightAnchor.constraint(equalToConstant: 100).isActive = true
        button.setTitle("Next", for: .normal)
        button.layer.cornerRadius = 10
        
        button.addTarget(self, action: #selector(nextScreen), for: .touchUpInside)
    }
    
    @objc func nextScreen() {
        presenter?.didTapNextButton()
    }
}
