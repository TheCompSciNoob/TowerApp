//
//  ViewController.swift
//  TowerApp
//
//  Created by Cluster 5 on 7/20/18.
//  Copyright © 2018 Chi.Chow. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    //Outlets
    @IBOutlet weak var spatializeButton: UIButton!
    
    //Variables
    var soundPlayer: AVAudioPlayer? = nil
    let sound = Bundle.main.url(forResource: "ZOOM0050_Tr1", withExtension: "WAV")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        do {
            try soundPlayer = AVAudioPlayer(contentsOf: sound!)
            soundPlayer?.volume = 1
            soundPlayer?.numberOfLoops = 3
            soundPlayer?.prepareToPlay()
            soundPlayer?.play()
            print("Number of channels: \(soundPlayer?.numberOfChannels ?? 0)")
        } catch {
            print("Could not load file.")
        }
    }
    
    @IBAction func spatialize(_ sender: UIButton) {
        let ranX = drand48() * 200 - 100
        let ranY = drand48() * 200 - 100
        let ranZ = drand48() * 200 - 100
        print("\(ranX), \(ranY), \(ranZ)")
    }
}

