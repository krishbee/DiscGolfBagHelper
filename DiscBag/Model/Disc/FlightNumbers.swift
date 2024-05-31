//
//  DiscStats.swift
//  DiscBag
//
//  Created by Kristoffer Frank on 29/05/2024.
//

struct FlightNumbers {
    var speed: Double
    var glide: Double
    var turn: Double
    var fade: Double
    
    init? (speed: Double, glide: Double, turn: Double, fade: Double) {
        guard (0...15.0).contains(speed) else {
            print("Error: Speed should be between 0 and 15.0")
            return nil
        }
        
        guard (0...9).contains(glide) else {
            print("Error: Glide should be between 0 and 9")
            return nil
        }
        
        guard (-7...1).contains(turn) else {
            print("Error: Turn should be between -7 and 1")
            return nil
        }
        
        guard (0...5).contains(fade) else {
            print("Error: Fade should be between 0 and 5")
            return nil
        }
        
        self.speed = speed
        self.glide = glide
        self.turn = turn
        self.fade = fade
        
    }
}
