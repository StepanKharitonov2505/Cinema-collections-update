//
//  FilmDetail.swift
//  TZcinema
//
//  Created by Степан Харитонов on 04.01.2022.
//

import UIKit

class CreatorInfoViewController: UIViewController {

    @IBOutlet weak var authorView: UIView!
    @IBOutlet weak var authorAvatar: UIImageView!
    @IBOutlet weak var backgroundView: UIView!
    
    var visualEffectView: UIView?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        avatarConfig()
        blurMotion()
    }
    
    private func avatarConfig() {
        authorView.backgroundColor = .white
        
        authorView.layer.shadowColor = UIColor.link.cgColor
        authorView.layer.shadowOffset = CGSize.zero
        authorView.layer.shadowRadius = 10
        authorView.layer.shadowOpacity = 0.7
        
        authorAvatar.image = UIImage(named: "author")
        
        authorView.layer.cornerRadius = authorView.frame.width/2
        authorAvatar.layer.cornerRadius = authorAvatar.frame.width/2
    }
    
    private func blurMotion() {
        backgroundView.backgroundColor = .clear
        let blurEffect = UIBlurEffect(style: .dark)
            let visualEffectView = UIVisualEffectView(effect: blurEffect)
            visualEffectView.frame = self.view.frame
            self.view.addSubview(visualEffectView)
            self.view.sendSubviewToBack(visualEffectView)
            self.visualEffectView = visualEffectView
        visualEffectView.alpha = 1
    }

}
