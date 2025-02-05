//
//  ContentView.swift
//  FrameWorker
//
//  Created by Jeffrey Michael Flynn on 1/9/24.
//

import SwiftUI

struct FrameWorkerGridView: View {
    
    @StateObject var viewModel = FrameWorkerGridViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks) { framework in
                        FrameWorkerTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFrameWorker = framework
                            }
                    }
                }
                .navigationTitle("🍎 Frameworks")
                // option to convert "sheet" to "full screen" - replace .sheet with .fullScreenCover - leave attributes
                .sheet(isPresented: $viewModel.isShowingDetail) {
                    FrameWorkerDetailView(framework: viewModel.selectedFrameWorker ?? MockData.sampleFramework,
                                          isShowingDetailView: $viewModel.isShowingDetail, isShowingSafariView: false)
                }
            }
        }
    }
}

#Preview {
    FrameWorkerGridView()
        .preferredColorScheme(.dark)
}
