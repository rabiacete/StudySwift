//
//  ViewController.swift
//  09Timer
//






import UIKit


var timer : Timer?
let timerSure = 2.5
var CalismaSayisi = 0

var timer2 : Timer?x

 

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        timer = Timer.scheduledTimer(withTimeInterval: timerSure, repeats: true, block: zamanSonuTimer)
        
        timer2 = Timer.scheduledTimer(timeInterval: timerSure, target: self, selector: #selector(zamanSonuTimer2), userInfo: nil, repeats: true)

    }
    
    
    
    
func zamanSonuTimer(t : Timer)
       {
        print("Zamansonu")
        CalismaSayisi += 1
        
        if CalismaSayisi == 3{
            timer?.invalidate()
        }}
        
    
    @objc func zamanSonuTimer2(t : Timer)
       {
        print("Zamansonu")
        CalismaSayisi += 1
        
        if CalismaSayisi == 3{
            timer?.invalidate()
        }}
        
    
    
    
    
    }
