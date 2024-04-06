//
//  ViewController.swift
//  down
//
//  Created by Sumit Pradhan on 06/04/24.
//

import UIKit

class ViewController: UIViewController {
    let button = UIButton()
    let progressView = UIProgressView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupView()
        button.addTarget(self, action: #selector(startDownload), for: .touchUpInside)
    }
    
    @objc private func startDownload() async throws {

    }
    
    private func setupView() {
        view.backgroundColor = .white
        button.setTitle("Download", for: .normal)
        button.setTitleColor(.tintColor, for: .normal)
        button.frame.size = CGSize(width: view.frame.width, height: 100)
        progressView.frame.size = CGSize(width: view.frame.width, height: 50)
        progressView.setProgress(0.0, animated: true)
        button.translatesAutoresizingMaskIntoConstraints = false
        progressView.translatesAutoresizingMaskIntoConstraints = false
        progressView.layer.cornerRadius = 10
        progressView.clipsToBounds = true
        view.addSubview(button)
        view.addSubview(progressView)
        
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            progressView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            progressView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -40),
            progressView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -50),
            progressView.heightAnchor.constraint(equalToConstant: 20),
        ])
    }
}

