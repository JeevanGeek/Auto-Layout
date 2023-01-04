//
//  ViewController.swift
//  Auto Layout
//
//  Created by Jeevan Chandra Joshi on 04/01/23.
//

import UIKit

class ViewController: UIViewController {
    private let firstView: UIView = {
        let myView = UIView()
        myView.backgroundColor = .systemCyan
        myView.translatesAutoresizingMaskIntoConstraints = false
        return myView
    }()

    private let secondView: UIView = {
        let myView = UIView()
        myView.backgroundColor = .systemPink
        myView.translatesAutoresizingMaskIntoConstraints = false
        return myView
    }()

    private let thirdView: UIView = {
        let myView = UIView()
        myView.backgroundColor = .systemMint
        myView.translatesAutoresizingMaskIntoConstraints = false
        return myView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        addSubview()
        addConstraint()
    }

    private func addSubview() {
        view.addSubview(firstView)
        view.addSubview(secondView)
        view.addSubview(thirdView)
    }

    private func addConstraint() {
        NSLayoutConstraint.activate([
            firstView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            firstView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            firstView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            firstView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),

            secondView.centerXAnchor.constraint(equalTo: firstView.centerXAnchor),
            secondView.centerYAnchor.constraint(equalTo: firstView.centerYAnchor),
            secondView.widthAnchor.constraint(equalTo: firstView.widthAnchor, multiplier: 0.5),
            secondView.heightAnchor.constraint(equalTo: firstView.heightAnchor, multiplier: 0.5),

            thirdView.centerXAnchor.constraint(equalTo: secondView.centerXAnchor),
            thirdView.centerYAnchor.constraint(equalTo: secondView.centerYAnchor),
            thirdView.widthAnchor.constraint(equalToConstant: 100),
            thirdView.heightAnchor.constraint(equalToConstant: 100),
        ])
    }
}
