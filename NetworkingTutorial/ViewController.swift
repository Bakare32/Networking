//
//  ViewController.swift
//  NetworkingTutorial
//
//  Created by  Decagon on 06/11/2021.
//

import UIKit

class ViewController: UIViewController {
    
    let textView: UITextView = {
       let textView = UITextView()
        textView.backgroundColor = .red
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()

    let button: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Execute", for: .normal)
        button.addTarget(self, action: #selector(execute), for: .touchUpInside)
        button.backgroundColor = .black
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
//       let service = NetworkService()
//        let request = service.createRequest(route: .temp, method: .post, parameters: ["firstName": "Waris", "lastName": "Bakare"])
//        
//        print("The url is \(request?.url)")
//        print("The body is \(request?.httpBody)")
        NetworkService.shared.firstRequest { (result) in
            switch result {
                
            case .success(let data):
                for dish in data {
                    print(dish.name ?? "")
                }
//                print("The decodeddata is: \(data)")
            case .failure(let error):
                print("The error is \(error.localizedDescription)")
            }
        }
        view.backgroundColor = .blue
        setUpConstraint()
    }
    
    @objc func execute() {
//        fetchData()
//        postData()
    }
    
    func setUpConstraint() {
        view.addSubview(textView)
        view.addSubview(button)
        
        NSLayoutConstraint.activate([
            textView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),
            textView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            textView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            textView.heightAnchor.constraint(equalToConstant: 300),
            
            button.topAnchor.constraint(equalTo: textView.bottomAnchor, constant: 30),
            button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
            button.heightAnchor.constraint(equalToConstant: 52),
            button.widthAnchor.constraint(equalToConstant: 100)
        ])
        
    }
    


}

