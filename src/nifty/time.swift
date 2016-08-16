/*******************************************************************************
 *  tic.swift
 *
 *  This file provides functions for starting an ellapsed time stopwatch.
 *
 *  Author: Philip Erickson
 *  Creation Date: 1 May 2016
 *  Contributors: 
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 *
 *  Copyright 2016 Philip Erickson
 ******************************************************************************/

import Foundation

// TODO: revisit this impl for efficiency and use of Foundation... perhaps 
// instead of NSDate there is a better way to get ellapsed time.

// TODO: Also, switch to Date() once it's implemented in Swift 3

// TODO: make this thread safe, allow for multiple stopwatches, etc... e.g. 
// have tic return a key, pass that key to toc to retrieve the 
// appropriate time

// Start of ellapsed time interval used by tic/toc
internal var _stopwatch = NSDate()

/// Restart a stopwatch timer for measuring performance. Ellapsed time since
/// starting the stopwatch is measured using the toc() function. 
///
/// Note: the stopwatch is automatically started at runtime; to accurately 
/// time a particular code segment, the stopwatch should be reset at the 
/// start of the segment using tic().
public func tic()
{
    _stopwatch = NSDate()
}