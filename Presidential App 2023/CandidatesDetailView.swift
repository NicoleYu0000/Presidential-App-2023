//
//  CandidatesDetailView.swift
//  Presidential App 2023
//
//  Created by Nicole Yu on 2023/8/26.
//

import SwiftUI

struct CandidateDetailView: View {
    
    @Binding var candidate: Candidate
    
    var body: some View {
        Form {
            Section("Name") {
                TextField("Enter name", text: $candidate.name)
            }
            
            Section("Age") {
                Slider(value: $candidate.age, in: 21...99)
                Text("\(candidate.age)")
            }
            
            Section("Career"){
                TextField("Enter Career",text:$candidate.mianCareer)
               //Text("🪂")
                //Text("Demo has a amazing career of sky diving! \nVote for him so every Singaporean can learn to fly in the sky!")
            }
            
            Section("Vote here") {
                Text("\(candidate.votes)")
                Button("Vote for this candidate") {
                    candidate.votes += 1
                }
            }
            
        }
    }
}

struct CandidateDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CandidateDetailView(candidate: .constant(Candidate(name: "Demo", age: 50, yearsOfExperience: 2, mianCareer: "⛷️")))
    }
}
