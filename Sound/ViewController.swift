//
//  ViewController.swift
//  Sound
//
//  Created by Keitaro Kawahara on 2022/08/20.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet var drumButton: UIButton!
    @IBOutlet var pianoButton: UIButton!
    @IBOutlet var guitarButton: UIButton!

    let drumSoundPlayer = try!AVAudioPlayer(data: NSDataAsset(name: "drumSound")!.data)
    
    let pianoSoundPlayer = try!AVAudioPlayer(data: NSDataAsset(name: "pianoSound")!.data)
    
    let guitarSoundPlayer = try!AVAudioPlayer(data: NSDataAsset(name: "guitarSound")!.data)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func touchDownDrumButton() {
        
        drumButton.setImage(UIImage(named: "drumPlayingImage"), for: .normal)
        
        drumSoundPlayer.currentTime = 0
        
        drumSoundPlayer.play()
        
    }
    
    @IBAction func touchUpDrumButton() {
        
        drumButton.setImage(UIImage(named: "drumImage"), for: .normal)
        
    }
    
    @IBAction func touchDownPianoButton() {
        
        pianoButton.setImage(UIImage(named: "pianoPlayingImage"), for: .normal)
        
        pianoSoundPlayer.currentTime = 0
        
        pianoSoundPlayer.play()
        
    }
    
    @IBAction func touchUpPianoButton(){
        pianoButton.setImage(UIImage(named: "pianoImage"), for: .normal)
    }
    
    @IBAction func touchDownGuitarButton() {
        
        guitarButton.setImage(UIImage(named: "guitarPlayingImage"), for: .normal)
        
        guitarSoundPlayer.currentTime = 0
        
        guitarSoundPlayer.play()
        
    }
    
    @IBAction func touchUpGuitarButton(){
        guitarButton.setImage(UIImage(named: "guitarImage"), for: .normal)
    }
    


}

