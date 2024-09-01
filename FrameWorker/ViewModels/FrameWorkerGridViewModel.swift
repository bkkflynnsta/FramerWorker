//
//  FrameWorkerGridViewModel.swift
//  FrameWorker
//
//  Created by Jeffrey Michael Flynn on 1/9/24.
//

import SwiftUI


class FrameWorkerGridViewModel: ObservableObject {
    
    var selectedFrameWorker: Framework? {
        didSet { isShowingDetail = true }
    }
        
    @Published var isShowingDetail = false
    
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
}
