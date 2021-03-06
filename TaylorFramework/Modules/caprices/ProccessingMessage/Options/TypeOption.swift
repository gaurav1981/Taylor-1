//
//  TypeOption.swift
//  Caprices
//
//  Created by Dmitrii Celpan on 9/6/15.
//  Copyright © 2015 yopeso.dmitriicelpan. All rights reserved.
//

import Foundation

let TypeLong = "--type"
let TypeShort = "-t"

struct TypeOption: ExecutableOption {
    var analyzePath = NSFileManager.defaultManager().currentDirectoryPath
    var optionArgument : String
    let name = "TypeOption"
    
    init(argument: String = String.Empty) {
        optionArgument = argument
    }
    
    
    func executeOnDictionary(inout dictionary: Options) {
        dictionary[ResultDictionaryTypeKey] = [optionArgument]
    }
    
}
