//
//  Solution.swift
//  Calculator Layout Project
//
//  Created by Renat Nazyrov on 14.08.2023.
//

import UIKit

class Solution: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    func setupViews() {
        let zeroStack = createStackView()
        let buttonAC = makeButton(withText: "C")
        let buttonSign = makeButton(withText: "±")
        let buttonPercentage = makeButton(withText: "%")
        let buttonDivision = makeButton(withText: "÷")
        
        zeroStack.addArrangedSubview(buttonAC)
        zeroStack.addArrangedSubview(buttonSign)
        zeroStack.addArrangedSubview(buttonPercentage)
        zeroStack.addArrangedSubview(buttonDivision)
        view.addSubview(zeroStack)
        
        zeroStack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        zeroStack.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        zeroStack.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        let firstStack = createStackView()
        let button7 = makeButton(withText: "7")
        let button8 = makeButton(withText: "8")
        let button9 = makeButton(withText: "9")
        let buttonMultiplication = makeButton(withText: "×")
        
        firstStack.addArrangedSubview(button7)
        firstStack.addArrangedSubview(button8)
        firstStack.addArrangedSubview(button9)
        firstStack.addArrangedSubview(buttonMultiplication)
        view.addSubview(firstStack)
    
        firstStack.topAnchor.constraint(equalTo: zeroStack.bottomAnchor, constant: 8).isActive = true
        firstStack.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        firstStack.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        let secondStack = createStackView()
        let button4 = makeButton(withText: "4")
        let button5 = makeButton(withText: "5")
        let button6 = makeButton(withText: "6")
        let buttonMinus = makeButton(withText: "–")
        
        secondStack.addArrangedSubview(button4)
        secondStack.addArrangedSubview(button5)
        secondStack.addArrangedSubview(button6)
        secondStack.addArrangedSubview(buttonMinus)
        view.addSubview(secondStack)
        
        secondStack.topAnchor.constraint(equalTo: firstStack.bottomAnchor, constant: 8).isActive = true
        secondStack.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        secondStack.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        let thirdStack = createStackView()
        let button1 = makeButton(withText: "1")
        let button2 = makeButton(withText: "2")
        let button3 = makeButton(withText: "3")
        let buttonPlus = makeButton(withText: "+")
        
        thirdStack.addArrangedSubview(button1)
        thirdStack.addArrangedSubview(button2)
        thirdStack.addArrangedSubview(button3)
        thirdStack.addArrangedSubview(buttonPlus)
        view.addSubview(thirdStack)
        
        thirdStack.topAnchor.constraint(equalTo: secondStack.bottomAnchor, constant: 8).isActive = true
        thirdStack.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        thirdStack.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        let fourthStack = createStackView()
        
        let buttonComma = makeButton(withText: ",")
        let button0 = makeButton(withText: "0")
        let buttonEquals = makeButton(withText: "=")
        
        fourthStack.addArrangedSubview(button0)
        fourthStack.addArrangedSubview(buttonComma)
        fourthStack.addArrangedSubview(buttonEquals)
        view.addSubview(fourthStack)
        

        fourthStack.topAnchor.constraint(equalTo: thirdStack.bottomAnchor, constant: 8).isActive = true
        fourthStack.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        fourthStack.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        //три проблемые строки ниже, которые создают ошибки в терминале из-за constraints
        button0.widthAnchor.constraint(equalTo: fourthStack.widthAnchor, multiplier: 0.49).isActive = true
        buttonComma.widthAnchor.constraint(equalTo: fourthStack.widthAnchor, multiplier: 0.24).isActive = true
        buttonEquals.widthAnchor.constraint(equalTo: fourthStack.widthAnchor, multiplier: 0.235).isActive = true
    }
}

func makeButton(withText title: String) -> UIButton {
    let button = UIButton(type: .system)
    button.translatesAutoresizingMaskIntoConstraints = false

    var config = UIButton.Configuration.filled()
    config.baseBackgroundColor = .gray
//    config.cornerStyle = .capsule
//    config.contentInsets = NSDirectionalEdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10)
    button.configuration = config

    let attributedText = NSMutableAttributedString(string: title, attributes: [
        NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 90),
        NSAttributedString.Key.foregroundColor: UIColor.white,
        NSAttributedString.Key.kern: 1
        ])
    button.frame = CGRect(x: 0, y: 0, width: 500, height: 500)
    button.setAttributedTitle(attributedText, for: .normal) // not button.setTitle()
    button.titleLabel?.numberOfLines = 1
    return button
}

func createStackView() -> UIStackView {
    let stackView = UIStackView()
    stackView.axis = .horizontal
    stackView.translatesAutoresizingMaskIntoConstraints = false
    stackView.alignment = .fill
    stackView.distribution = .fillEqually
    stackView.spacing = 8
    stackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 0, leading: 8, bottom: 0, trailing: 8)
    
    return stackView
}
