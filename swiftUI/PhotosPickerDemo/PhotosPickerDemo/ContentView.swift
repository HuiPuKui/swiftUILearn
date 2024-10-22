//
//  ContentView.swift
//  PhotosPickerDemo
//
//  Created by HuiPuKui on 2024/10/23.
//

import SwiftUI
import PhotosUI

class PhotosPickerViewModel: ObservableObject {
    @Published var selectedImage: UIImage? = nil
    @Published var imageSelection: PhotosPickerItem? = nil {
        didSet {
            setImage(from: imageSelection)
        }
    }
    
    func setImage(from selection: PhotosPickerItem?) {
        guard let selection else { return }
        Task {
            if let data = try? await selection.loadTransferable(type: Data.self) {
                if let uiImage = UIImage(data: data) {
                    selectedImage = uiImage
                    return
                }
            }
        }
    }
}

struct ContentView: View {
    
    @StateObject var vm: PhotosPickerViewModel = PhotosPickerViewModel()
    
    var body: some View {
        VStack {
            Text("Pick Image")
            if let image = vm.selectedImage {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 200, height: 200)
                    .cornerRadius(10)
            }
            
            PhotosPicker(selection:$vm.imageSelection, matching: .images) {
                Text("Open the photo library")
                    .foregroundColor(.red)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
