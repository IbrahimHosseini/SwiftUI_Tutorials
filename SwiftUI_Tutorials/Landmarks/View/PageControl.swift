//
//  PageControl.swift
//  SwiftUI_Tutorials
//
//  Created by Ibrahim Hosseini on 1/27/23.
//

import UIKit
import SwiftUI

struct PageControl: UIViewRepresentable {

    var numberOfPage: Int
    @Binding var currentPage: Int

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    func makeUIView(context: Context) -> UIPageControl {
        let pageControl = UIPageControl()
        pageControl.numberOfPages = numberOfPage
        pageControl.addTarget(context.coordinator,
                              action: #selector(Coordinator.updateCurrentPage(sender:)),
                              for: .valueChanged)

        return pageControl
    }

    func updateUIView(_ uiView: UIPageControl, context: Context) {
        uiView.currentPage = currentPage
    }

    class Coordinator: NSObject {
        var control: PageControl

        init(_ control: PageControl) {
            self.control = control
        }

        @objc
        func updateCurrentPage(sender: UIPageControl) {
            control.currentPage = sender.currentPage
        }
    }
}
