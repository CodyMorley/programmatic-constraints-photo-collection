//
//  ThemeHelper.swift
//  PhotoCollection
//
//  Created by Spencer Curtis on 8/2/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import UIKit

class ThemeHelper {
    //MARK: - Properties -
    private let themePreferenceKey = "themePreference"
    var themePreference: String? {
        return UserDefaults.standard.string(forKey: themePreferenceKey)
    }
    
    
    //MARK: - Initializers -
    init() {
        guard themePreference == nil else { return }
        setThemePreferenceToDark()
    }
    
    
    //MARK: - Actions -
    func setThemePreferenceToDark() {
        UserDefaults.standard.set("Dark", forKey: themePreferenceKey)
    }
    
    func setThemePreferenceToBlue() {
        UserDefaults.standard.set("Blue", forKey: themePreferenceKey)
    }
}
