//
//  MusicListVC.swift
//  SwapScreens
//
//  Created by Денис Трясунов on 10/30/16.
//  Copyright © 2016 Денис Трясунов. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func load3rdScreenPressed(_ sender: Any) {
        let songTitle = "No surprises"
        performSegue(withIdentifier: "PlaySongVC", sender: songTitle)
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? PlaySongVC {
            if let song = sender as? String {
                destination.selectedSong = song
            }
        }
        
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }

}
