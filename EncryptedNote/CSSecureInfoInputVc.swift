//
//  CSSecureInfoInputVc.swift
//  EncryptedNote
//
//  Created by Cstars on 2017/6/15.
//  Copyright © 2017年 cstars. All rights reserved.
//

import UIKit

class CSSecureInfoInputVc: UIViewController {
    @IBOutlet weak var completeBtn: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.completeBtn.layer.cornerRadius = 5
        self.completeBtn.layer.masksToBounds = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func back(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }

    @IBAction func completeBtnTapped(_ sender: Any) {
        let noteListVc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "CSNoteListVc")
        self.navigationController?.pushViewController(noteListVc, animated: true)
    }
    
    
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}
