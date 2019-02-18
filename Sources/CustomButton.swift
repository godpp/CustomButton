//
//  CustomButton.swift
//  CustomUIButton
//
//  Created by ParkSungJoon on 04/02/2019.
//  Copyright © 2019 Park Sung Joon. All rights reserved.
//

import UIKit

class CustomButton: UIView {
    
    lazy var titleLabel: UILabel = {
        let title = UILabel(frame: CGRect.zero)
        title.font = UIFont.systemFont(ofSize: 17)
        title.text = "button"
        title.textColor = UIColor.blue
        title.textAlignment = .center
        title.translatesAutoresizingMaskIntoConstraints = false
        addSubview(title)
        return title
    }()
    
    lazy var imageView: UIImageView = {
        let view = UIImageView(frame: CGRect.zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        addSubview(view)
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        makeConstraints(to: titleLabel)
        makeConstraints(to: imageView)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        makeConstraints(to: titleLabel)
        makeConstraints(to: imageView)
    }
    
    private func makeConstraints<T: UIView>(to object: T) {
        object.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        object.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        object.topAnchor.constraint(equalTo: topAnchor).isActive = true
        object.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
    }
    
    // MARK: - Set Button Title
    func setTitle(_ title: String) {
        titleLabel.text = title
    }
    
    // MARK: - Set Button BackgroundImage
    func setBackgroundImage(_ image: UIImage?) {
        imageView.image = image
        sendSubviewToBack(imageView)
    }
    
    // MARK: - Add Target using UIGestureRecognizer
    func addTarget(_ target: Any?, action: Selector, for event: Event) {
        switch event {
        case .touchUpInside:
            let tapRecognizer = TouchUpInside(target: target, action: action)
            self.addGestureRecognizer(tapRecognizer)
        case .touchUpOutside:
            let tapRecognizer = TouchUpOutside(target: target, action: action)
            self.addGestureRecognizer(tapRecognizer)
        case .touchDown:
            let tapRecognizer = TouchDown(target: target, action: action)
            self.addGestureRecognizer(tapRecognizer)
        }
    }
}
