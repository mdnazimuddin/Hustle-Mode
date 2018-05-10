//
//  ViewController.swift
//  Hustle-mode
//
//  Created by iMac on 5/10/18.
//  Copyright © 2018 iNazim. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet var darkBlue: UIImageView!
    @IBOutlet var powerBtn: UIButton!
    @IBOutlet var cloudHolder: UIView!
    @IBOutlet var rocket: UIImageView!
    @IBOutlet var cloud: UIImageView!
    @IBOutlet var hustlLbl: UILabel!
    @IBOutlet var onLbl: UILabel!
    
    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let path = Bundle.main.path(forResource: "hustle-on", ofType: "wav")!
        let url = URL(fileURLWithPath: path)
        do{
            player = try AVAudioPlayer(contentsOf: url)
            player.prepareToPlay()
        }catch let error as NSError{
            print(error.description)
        }
    }

    @IBAction func Power(_ sender: UIButton) {
        darkBlue.isHidden = true
        powerBtn.isHidden = true
        cloudHolder.isHidden = false
        
        player.play()
        UIView.animate(withDuration: 2.3, animations: {
            self.rocket.frame = CGRect(x: 0, y: 220, width: 375, height: 144)
        }) { (finished) in
            self.hustlLbl.isHidden = false
            self.onLbl.isHidden = false
        }
    }
    


}

