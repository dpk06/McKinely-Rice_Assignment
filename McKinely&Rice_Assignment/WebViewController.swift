//
//  WebViewController.swift
//  McKinely&Rice_Assignment
//
//  Created by Deep on 05/03/20.
//  Copyright © 2020 Deepak. All rights reserved.
//

import UIKit
import Webkit
class WebViewController: UIViewController {

    @IBOutlet weak var view_WebView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let url = URL(string: "https://www.youtube.com/watch?v=695PN9xaEhs")
        view_WebView.load(URLRequest(url: url!))
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
