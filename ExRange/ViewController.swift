//
//  ViewController.swift
//  ExRange
//
//  Created by 김종권 on 2023/10/26.
//

import UIKit

class ViewController: UIViewController {
    private let textView = {
        let v = UITextView()
        v.textColor = .black
        v.text = "iOS 앱 개발 알아가기 cursor 예제 코드"
        v.font = .systemFont(ofSize: 24)
        v.isEditable = true
        v.backgroundColor = .lightGray.withAlphaComponent(0.3)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textView.delegate = self
        
        view.addSubview(textView)
        NSLayoutConstraint.activate([
            textView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            textView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            textView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            textView.heightAnchor.constraint(equalToConstant: 180)
        ])
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
//        textView.becomeFirstResponder()
    }
}

extension ViewController: UITextViewDelegate {
    func textView(
        _ textView: UITextView,
        shouldChangeTextIn range: NSRange,
        replacementText text: String
    ) -> Bool {
//        print("location", range.location)
//        print("length", range.length)
//        print(range.upperBound)
//        print(range.lowerBound)
        return true
    }
    
    func textViewDidChangeSelection(_ textView: UITextView) {
//        print(textView.selectedRange.location)
//        print(textView.selectedRange.length)
        print(textView.selectedRange.lowerBound, textView.selectedRange.upperBound)
    }
}
