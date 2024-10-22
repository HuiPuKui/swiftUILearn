//
//  ProfileViewModel.swift
//  TanTan
//
//  Created by HuiPuKui on 2024/10/22.
//

import Foundation
import SwiftUI
import PhotosUI

class ProfileViewModel: ObservableObject {
    @Published var selectedImage: UIImage? = nil
    @Published var imageSelection: PhotosPickerItem? = nil {
        didSet {
            setImage(from: imageSelection)
        }
    }
    
    func setImage(from imageSelection: PhotosPickerItem?) {
        guard let imageSelection else { return }
        Task {
            if let data = try? await imageSelection.loadTransferable(type: Data.self) {
                if let uiImage = UIImage(data: data) {
                    selectedImage = uiImage
                    return 
                }
            }
        }
    }
}
