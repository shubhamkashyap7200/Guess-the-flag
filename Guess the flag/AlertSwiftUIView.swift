//
//  AlertSwiftUIView.swift
//  Guess the flag
//
//  Created by Shubham on 21/07/23.
//

import SwiftUI

struct AlertSwiftUIView: View {
    @State private var showingAlert = false
    var body: some View {
        VStack {
            Button("Show Alert") {
                showingAlert = true
            }
            .alert("Important Message", isPresented: $showingAlert) {
                Button("OK") {}
                Button("Cancel", role: .cancel) {}
                Button("Delete", role: .destructive) {}
            } message: {
                Text("Test message here")
            }
        }
    }
}

#Preview {
    AlertSwiftUIView()
}
