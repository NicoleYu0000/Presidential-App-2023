//
//  Candidate.swift
//  Presidential App 2023
//
//  Created by Nicole Yu on 2023/8/26.
//

import Foundation

struct Candidate: Identifiable, Codable {
    
    var id = UUID()
    var name: String
    var age: Double
    var yearsOfExperience: Double
    var mianCareer: String
    var votes: Int = 0
}
