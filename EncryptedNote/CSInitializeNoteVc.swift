//
//  CSInitializeNoteVc.swift
//  EncryptedNote
//
//  Created by Cstars on 2017/6/15.
//  Copyright © 2017年 cstars. All rights reserved.
//

import UIKit

class CSInitializeNoteVc: UIViewController {
    @IBOutlet weak var createNoteBtn: UIButton!

    @IBOutlet weak var importNoteBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.navigationController?.isNavigationBarHidden = true
//        self.title = "创建笔记本"
        self.createNoteBtn.layer.cornerRadius = 5
        self.createNoteBtn.layer.masksToBounds = true
        self.importNoteBtn.layer.cornerRadius = 5
        self.importNoteBtn.layer.masksToBounds = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func createNewNote(_ sender: Any) {
        let secureInfoInputVc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "CSSecureInfoInputVc")
        self.navigationController?.pushViewController(secureInfoInputVc, animated: true)
    }


    @IBAction func importNote(_ sender: Any) {
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}
