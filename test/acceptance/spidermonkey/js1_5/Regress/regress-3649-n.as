/* -*- Mode: C++; tab-width: 2; indent-tabs-mode: nil; c-basic-offset: 2 -*- */
/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */
import com.adobe.test.Assert;


var gTestfile = 'regress-3649-n.js';
//-----------------------------------------------------------------------------
// testcase from bug 2235 mff@research.att.com
var BUGNUMBER = 3649;
var summary = 'gc-checking branch callback.';
var actual = 'error';
var expect = 'error';

DESCRIPTION = summary;
EXPECTED = expect;

//printBugNumber(BUGNUMBER);
//printStatus (summary);
 

var s = "";
s = "abcd";
for (i = 0; i < 100000; i++)  {
  s += s;
}

expect = 'No Crash';
actual = 'No Crash';

Assert.expectEq(summary, expect, actual);

