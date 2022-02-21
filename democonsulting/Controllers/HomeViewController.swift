//
//  ViewController.swift
//  democonsulting
//
//  Created by chinonso on 2/19/22.
//

import UIKit
import Firebase

class HomeViewController: UIViewController {
    

    //    let screenNameArray = ["home", "purchase", "checkout", "pdp", "plp"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Home"
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        //Log Screenview
        screenView(screen_name: title ?? "");

    }
    
    @IBAction func screenView(_ sender: UIButton) {
        screenView(screen_name: title ?? "");
    }
    
    @IBAction func otherAction(_ sender: UIButton) {
        screenView(screen_name: title ?? "");
    }

    func screenView(screen_name: String){
        Analytics.logEvent(AnalyticsEventScreenView, parameters:
                            [AnalyticsParameterScreenName: screen_name,
                             "app_screen_name": screen_name
        ])
    }
    
    func setUserProperty(user_property_name: String, user_property_value: String){
        Analytics.setUserProperty(user_property_value, forName: user_property_name)
    }
    

}

