//
//  ViewController.swift
//  YogaTryout
//
//  Created by Hai Vu on 2/23/19.
//  Copyright © 2019 Hai Vu. All rights reserved.
//

import UIKit
import YogaKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //style for main view
        self.view.configureLayout { (YGLayout) in
            YGLayout.isEnabled = true
            YGLayout.width = YGValue(self.view.bounds.width)
            YGLayout.height = YGValue(self.view.bounds.height)
            YGLayout.flexDirection = YGFlexDirection.column
            YGLayout.justifyContent = YGJustify.center
            YGLayout.alignItems = YGAlign.center
        }
        
        let contentView = UIView()
        contentView.backgroundColor = UIColor.lightGray
        contentView.configureLayout { (YGLayout) in
            YGLayout.isEnabled = true
            YGLayout.flexDirection = YGFlexDirection.row
            YGLayout.width = 320
            YGLayout.height = 80
            YGLayout.padding = 10
        }
        view.addSubview(contentView)
        //child 1
        let child1 = UIView()
        child1.backgroundColor = UIColor.red
        child1.configureLayout { (YGLayout) in
            YGLayout.isEnabled = true
            YGLayout.width = 80
            YGLayout.marginRight = 10
        }
        contentView.addSubview(child1)
        //child 2
        let child2 = UIView()
        child2.backgroundColor = UIColor.green
        child2.configureLayout { (YGLayout) in
            YGLayout.isEnabled = true
            YGLayout.width = 80
            YGLayout.flexGrow = 1
            YGLayout.height = 20
            YGLayout.alignSelf = YGAlign.center
        }
        contentView.addSubview(child2)
        self.view.yoga.applyLayout(preservingOrigin: true)
    }

    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        self.view.configureLayout { (YGLayout) in
            YGLayout.width = YGValue(size.width)
            YGLayout.height = YGValue(size.height)
        }
        self.view.yoga.applyLayout(preservingOrigin: true)
    }

}

