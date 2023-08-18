//
//  View+Extension.swift
//  ABAClone
//
//  Created by Sao Sophea on 10/8/23.
//

import SwiftUI

public enum AppFonts {
    case WorkSansSemiBold(size: CGFloat = 17)
    case WorkSansMedium(size: CGFloat = 17)
    case WorkSansBold(size: CGFloat = 17)
    case WorkSansRegular(size: CGFloat = 17)
    case WorkSansLight(size: CGFloat = 17)
    
    var rawValue: Font? {
        switch self {
        case .WorkSansSemiBold(let size):
            return Font.custom("WorkSans-SemiBold", size: size)
        case .WorkSansBold(let size):
            return Font.custom("WorkSans-Bold", size: size)
        case .WorkSansMedium(size: let size):
            return Font.custom("WorkSans-Medium", size: size)
        case .WorkSansRegular(size: let size):
            return Font.custom("WorkSans-Regular", size: size)
        case .WorkSansLight(size: let size):
            return Font.custom("WorkSans-Light", size: size)
        }
    }
}

extension View {
    func customFont(_ customFont: AppFonts) -> some View {
        self.font(customFont.rawValue)
    }
}

extension View {
    @ViewBuilder
    func `if`<Transform: View>(_ condition: Bool, transform: (Self) -> Transform) -> some View {
        if condition { transform(self) }
        else { self }
    }
}
