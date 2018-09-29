//
//  ToggleButton.swift
//
//  Created by Jille van der Weerd on 28/09/2018.
//  Copyright © 2018 Jille van der Weerd. All rights reserved.
//

import UIKit

class ToggleButton: UIButton {
    
    var isToggled: Bool = false {
        didSet {
            setImageForState()
        }
    }
    
    /// The image that will be shown when the button is toggled off.
    var offImage: UIImage?
    
    /// The image that will be shown when the button is toggled on.
    var onImage: UIImage?
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    init(frame: CGRect, offImage: UIImage?, onImage: UIImage?) {
        super.init(frame: frame)
        self.onImage = onImage
        self.offImage = offImage
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        addTarget(self, action: #selector(toggle), for: .touchUpInside)
        setImageForState()
    }
    
    /// Toggle the button state to the given boolean.
    func setToggled(on: Bool) {
        isToggled = on
    }
    
    /// Toggle the button.
    @objc func toggle() {
        isToggled = !isToggled
    }
    
    /// Set the right image
    private func setImageForState() {
        if isToggled {
            guard let onImage = onImage else { print("\(self) onImage is nil."); return }
            setImage(onImage, for: .normal)
        } else {
            guard let offImage = offImage else { print("\(self) offImage is nil."); return }
            setImage(offImage, for: .normal)
        }
    }
    
}
