//
//  FrameworkDetailView.swift
//  AppleFramework
//
//  Created by Vishal Sharma on 28/04/24.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            HStack{
                Spacer()
                
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
//                    isShowingDetailView = false
                }, label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                    
            })
            }.padding()
            
            Spacer()
            
            FrameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                
            } label: {
                Label("Learn More", systemImage: "book.fill")
            }
            .buttonStyle(.bordered)
            .controlSize(.large)
            .tint(.red)
            
        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
}
