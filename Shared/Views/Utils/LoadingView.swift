//
//  LoadingView.swift
//  Projet IOSWeb (iOS)
//
//  Created by user188385 on 27/03/2021.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        VStack{
            Text("Loading, please wait").font(.title)
            Spinner(isAnimating: true, style: .large, color: .black)
        }
    }
}

struct Spinner: UIViewRepresentable {
    let isAnimating: Bool
    let style: UIActivityIndicatorView.Style
    let color: UIColor

    func makeUIView(context: UIViewRepresentableContext<Spinner>) -> UIActivityIndicatorView {
        let spinner = UIActivityIndicatorView(style: style)
        spinner.hidesWhenStopped = true
        spinner.color = color
        return spinner
    }

    func updateUIView(_ uiView: UIActivityIndicatorView, context: UIViewRepresentableContext<Spinner>) {
        isAnimating ? uiView.startAnimating() : uiView.stopAnimating()
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
