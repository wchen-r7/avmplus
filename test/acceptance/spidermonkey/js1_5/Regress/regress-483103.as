/* -*- Mode: C++; tab-width: 2; indent-tabs-mode: nil; c-basic-offset: 2 -*- */
/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */
import com.adobe.test.Assert;


var gTestfile = 'regress-483103.js';
//-----------------------------------------------------------------------------
var BUGNUMBER = 483103;
var summary = 'TM: Do not assert: p->isQuad()';
var actual = '';
var expect = '';


//-----------------------------------------------------------------------------
addtestcases();
//-----------------------------------------------------------------------------

function addtestcases()
{

  //printBugNumber(BUGNUMBER);
  //printStatus (summary);



  var t = new String("");
  for (var j = 0; j < 3; ++j) {
    var e = t.charAt("-1");
  }



  Assert.expectEq(summary, expect, actual);


}

