/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */
include "unicodeUtil.as";
include "unicodeNegativeUtil.as";

// var SECTION = "Bopomofo";
// var VERSION = "ECMA_3";
// var TITLE = "Test String functions (search, match, split, replace) on all unicode characters";


var array = new Array();
var item = 0;
getTestCases();

var testcases = array;

function getTestCases():void {
  // Bopomofo
  testUnicodeRange(0x3100, 0x312F);
  negativeTestUnicodeRange(0x3100, 0x312F);
}
