//
//  ViewController.swift
//  Xylophone
//
//  Template provided by Angela Yu.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    var audioPlayer : AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
 


    @IBAction func notePressed(_ sender: UIButton) {
        playSound(sender : sender)
    }
    
    func playSound (sender : UIButton) {
        let note = tag2Note(tag: sender.tag)
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: note)
        } catch {
            print(description)
        }
        audioPlayer.play()
    }
    
    func tag2Note (tag : Int) -> URL {
        var result : URL
        switch tag {
            case 1:
                result = Bundle.main.url(forResource: "note1", withExtension: "wav")!
            case 2:
                result = Bundle.main.url(forResource: "note2", withExtension: "wav")!
            case 3:
                result = Bundle.main.url(forResource: "note3", withExtension: "wav")!
            case 4:
                result = Bundle.main.url(forResource: "note4", withExtension: "wav")!
            case 5:
                result = Bundle.main.url(forResource: "note5", withExtension: "wav")!
            case 6:
                result = Bundle.main.url(forResource: "note6", withExtension: "wav")!
            default:
                result = Bundle.main.url(forResource: "note7", withExtension: "wav")!
        }
        return result
    }

}

