//
//  ContentView.swift
//  Presidential App 2023
//
//  Created by Nicole Yu on 2023/8/26.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var candidateManager = CandidateManager()
    @State private var showAddSheet = false
    
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
                        showAddSheet = true
                    } label:{
                        Label("Add Sheet", systemImage:"plus")
                    }
                }
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
            }
                .sheet(isPresented: $showAddSheet) {
                    AddSheetView(candidates: $candidateManager.candidates)
                        .presentationDetents([.medium])
                }
            }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
