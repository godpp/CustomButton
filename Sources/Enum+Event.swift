//
//  Enum+Event.swift
//  CustomUIButton
//
//  Created by ParkSungJoon on 08/02/2019.
//  Copyright © 2019 Park Sung Joon. All rights reserved.
//

import UIKit

enum Event {
    case touchUpInside
    case touchUpOutside
    case touchDown
}

class TouchUpInside: UIGestureRecognizer {
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent) {
        self.state = .recognized
    }
}

class TouchUpOutside: UIGestureRecognizer {
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent) {
        guard let firstTouch = touches.first else { return }
        let hitView = self.view?.hitTest(firstTouch.location(in: self.view), with: event)
        if hitView == nil {
            self.state = .recognized
        }
    }
}

class TouchDown: UIGestureRecognizer {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent) {
        self.state = .recognized
    }
}
