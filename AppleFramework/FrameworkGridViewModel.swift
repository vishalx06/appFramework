//
//  FrameworkGridViewModel.swift
//  AppleFramework
//
//  Created by Vishal Sharma on 29/04/24.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    @Published var isShowingDetailView = false
}
