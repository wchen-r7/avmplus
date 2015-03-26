/* -*- Mode: C++; tab-width: 2; indent-tabs-mode: nil; c-basic-offset: 2 -*- */
/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */
import com.adobe.test.Assert;


var gTestfile = 'regress-440926.js';
//-----------------------------------------------------------------------------
var BUGNUMBER = 440926;
var summary = 'Correctly match regexps with special "i" characters';
var actual = '';
var expect = 'iI#,iI#;iI#,iI#';


//-----------------------------------------------------------------------------
addtestcases();
//-----------------------------------------------------------------------------

function addtestcases()
{

  //printBugNumber(BUGNUMBER);
  //printStatus (summary);

  actual += 'iI\u0130'.replace(/[\u0130]/gi, '#');
  actual += ',' + 'iI\u0130'.replace(/\u0130/gi, '#');

  actual += ';' + 'iI\u0130'.replace(/[\u0130]/gi, '#');
  actual += ',' + 'iI\u0130'.replace(/\u0130/gi, '#');


  Assert.expectEq(summary, expect, actual);


}

