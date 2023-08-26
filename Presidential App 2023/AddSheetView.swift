//
//  AddSheetView.swift
//  Presidential App 2023
//
//  Created by Nicole Yu on 2023/8/26.
//

import SwiftUI

struct AddSheetView: View {
    
    @Binding var candidates: [Candidate]
    @State private var name = ""
    @State private var mainCareer = ""
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        Form {
            Section {
                TextField("Enter a title", text: $name)
                TextField("Enter a subtitle", text: $mainCareer)
            }
            
            Section {
                Button("Save", role: .none) {
                    //let newCandidate = Candidate(name: name, mainCareer: mainCareer)
                    //candidates.append(newCandidate)
                    //dismiss()
                }
                Button("Cancel", role: .destructive) {
                    // code to cancel
                    dismiss()
                }
            }
        }
    }
}

struct AddSheetView_Previews: PreviewProvider {
    static var previews: some View {
        AddSheetView(candidates: .constant([]))
    }
}
