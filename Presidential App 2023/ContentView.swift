//
//  ContentView.swift
//  Presidential App 2023
//
//  Created by Nicole Yu on 2023/8/26.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var candidateManager = CandidateManager()
    
    var body: some View {
        NavigationStack {
            List($candidateManager.candidates) { $candidate in
                NavigationLink {
                    CandidateDetailView(candidate: $candidate)
                } label: {
                    HStack {
                        Text(candidate.name)
                        Spacer()
                        Text("\(candidate.votes)")
                    }
                }
            }
            .navigationTitle("Candidates 2023")
            .toolbar {
                ToolbarItem {
                    Button {
                    candidateManager.candidates = Candidate.sampleCandidates
                    } label: {
                        Label("Load sample data", systemImage: "clipboard")
                    }
                }
            }
            .toolbar{
                ToolbarItem{
                    Button{
                        //code
                    } label:{
                        Label("Add Sheet", systemImage:"plus")
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
