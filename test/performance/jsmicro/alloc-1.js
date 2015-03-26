/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

var DESC = "Object allocation, one int property";

function allocloop() {
    var v;
    for ( var i=0 ; i < 100000 ; i++ )
	v = {x: i};
    return i;
}

TEST(allocloop, "alloc-1");
