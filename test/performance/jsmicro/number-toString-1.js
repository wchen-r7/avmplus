/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

var DESC = "<type>.prototype.toString on 3.14159";

function loop() {
    return loop2(3.14159);
}

function loop2(s) {
    var x = "";
    for ( var i=0 ; i < 100000 ; i++ )
	x = "" + s;
    return x;
}

TEST(loop, "number-toString-1");
