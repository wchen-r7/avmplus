/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */
import com.adobe.test.Assert;
import com.adobe.test.Utils;
var CODE = 1005; // Array index is not a positive integer (_).

//-----------------------------------------------------------
//-----------------------------------------------------------

try {
    var result = "no error";
    new Array(1.2);
} catch (err) {
    result = err.toString();
} finally {
    Assert.expectEq("Runtime Error", Utils.RANGEERROR + CODE, Utils.rangeError(result));
}

//-----------------------------------------------------------
//-----------------------------------------------------------
