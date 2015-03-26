/* -*- Mode: C++; tab-width: 2; indent-tabs-mode: nil; c-basic-offset: 2 -*- */
/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */
import com.adobe.test.Assert;


var gTestfile = 'regress-425360.js';
//-----------------------------------------------------------------------------
var BUGNUMBER = 425360;
var summary = 'Do not assert: !cx->throwing';
var actual = 'No Crash';
var expect = 'No Crash';

function finishaddtestcases()
{
  gDelayTestDriverEnd = false;
  Assert.expectEq(summary, expect, actual);
  jsTestDriverEnd();
}

function throwBlah()
{
  throw 'blah';
}

//printBugNumber(BUGNUMBER);
//printStatus (summary);
 
if (typeof window == 'undefined')
{
  expect = actual = 'Not tested. Requires browser.';
  Assert.expectEq(summary, expect, actual);
}
else
{
  gDelayTestDriverEnd = true;
  window.onerror = null;
  setTimeout('finishaddtestcases()', 1000);
  window.onload = (function () { setInterval('throwBlah()', 0); });
  setInterval('foo(', 0);
}



