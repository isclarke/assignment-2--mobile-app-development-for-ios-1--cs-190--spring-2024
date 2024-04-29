
//  ViewController.swift
//  mobileappdevassingment2
//
//  Created by Isaiah Clarke on 4/16/24.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {
    @IBOutlet weak var numberField: UITextField!
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var drawButton: UIButton!
    //use Spritekit view like the bouncyball app
    @IBOutlet weak var diamondHome: SKView!
    
    
    var scene: SKScene!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //implement scene, so shape can actually be placed
        self.scene = SKScene(size: view.bounds.size)
        diamondHome.presentScene(scene)
    }
    
    
    @IBAction func drawButtonTap(_ sender: Any) {
        if let diamondSize = Int(numberField.text!) {
            let diamondShapeSize = CGFloat(diamondSize)
            
            let diamond = SKShapeNode(rect: CGRect(x : 0, y: 0, width: diamondShapeSize, height: diamondShapeSize))
            diamond.fillColor = .blue
            diamond.lineWidth = 2
            diamond.lineCap = .round
            diamond.lineJoin = .round
            
            let path = UIBezierPath()
            //this feature is used to create the lines, as it says in it's description
            path.move(to: CGPoint(x: diamondShapeSize / 2, y: 0))
            path.addLine(to: CGPoint(x: diamondShapeSize, y: diamondShapeSize / 2))
            path.addLine(to: CGPoint(x: diamondShapeSize / 2, y: diamondShapeSize))
            path.addLine(to: CGPoint(x: 0, y: diamondShapeSize / 2))
            path.close()
            
            //use cgPath to connect dots
            diamond.path = path.cgPath
            
            //get in center of box, using dicussion from class
            let centerOfView = CGPoint(x: scene.frame.width / 2, y: scene.frame.height / 2)
            diamond.position = centerOfView
            scene.addChild(diamond)
            
            //add feature that removes diamond aftet a second
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                diamond.removeFromParent()
            }
        } else {
            topLabel.text = "not a num!"
        }
    }
}
