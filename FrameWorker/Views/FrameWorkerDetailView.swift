//
//  FrameWorkerDetailView.swift
//  FrameWorker
//
//  Created by Jeffrey Michael Flynn on 1/9/24.
//

import SwiftUI

struct FrameWorkerDetailView: View {
    
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    @State var isShowingSafariView: Bool
    
    var body: some View {
        VStack {
            
            XDismissButton(isShowingDetailView: $isShowingDetailView)
            
            Spacer()
            
            FrameWorkerTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
                FrameWorkerButtonView(title: "Learn More")
            }
        }
        .sheet(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "")!)
        })
    }
}

struct FrameWorkerDetailView_Preview: PreviewProvider {
    
    static var previews: some View {
        FrameWorkerDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(true), isShowingSafariView: true)
            .preferredColorScheme(.dark)
    }
}
