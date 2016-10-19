//
//  MusicListVC.swift
//  SwappingScreens
//
//  Created by Matthew Wood on 2016-10-18.
//  Copyright © 2016 Matthew. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = UIColor.blue
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backButtonPressed(_ sender: AnyObject) {
        // dismisses the current VC in the stack, showing the one below it
        dismiss(animated: true, completion: nil)
    }

    @IBAction func loadThirdVCButtonPressed(_ sender: AnyObject) {
        // trigger a segue programmatically
        // sender is object/data that you want to send to the VC being transitioned to
        // sender can be any type of object
        
        performSegue(withIdentifier: "showSongVC", sender: "Quit Playing Games with My Heart")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // preparations prior to segue, such as prepping data you want to send
        // called before code in destinationVC
        
        if let destination = segue.destination as? PlaySongVC {
            // identify the destinationVC by the segue name
            
            if let song = sender as? String {
                // set the song in the variable in the destinationVC
               destination.selectedSong = song
            }
        }
    }
}
