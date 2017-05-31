//
//  WebViewController.swift
//  Zomato
//
//  Created by Madhukar on 29/11/16.
//  Copyright © 2016 WeidBee. All rights reserved.
//

import UIKit

class WebViewController: UIViewController, UIWebViewDelegate
{
    @IBOutlet weak var web: UIWebView!
    var webLink = NSURL()

    override func viewDidLoad()
    {
        super.viewDidLoad()
        web.loadRequest(NSURLRequest(url: webLink as URL) as URLRequest)
    }
    
    func webViewDidStartLoad(_ webView: UIWebView)
    {
        AFWrapper.svprogressHudShow(title: "Loading...", view: self)
    }
    func webViewDidFinishLoad(_ webView: UIWebView)
    {
        AFWrapper.svprogressHudDismiss(view: self)
    }
    
    @IBAction func backBtnAction(_ sender: Any)
    {
        self.dismiss(animated: true, completion: nil)
    }

}
