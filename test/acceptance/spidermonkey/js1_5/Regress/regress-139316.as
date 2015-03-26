/* -*- Mode: C++; tab-width: 2; indent-tabs-mode: nil; c-basic-offset: 2 -*- */
/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */
import com.adobe.test.Assert;


var gTestfile = 'regress-139316.js';
//-----------------------------------------------------------------------------
var BUGNUMBER = 139316;
var summary = 'Do not crash in js_ReportIsNotDefined()';
var actual = 'No Crash';
var expect = 'No Crash';

print(new Error().getStackTrace)

//printBugNumber(BUGNUMBER);
//printStatus (summary);

var str = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";

function makeError ()
{
  try
  {
    foo();
  }
  catch (e)
  {
    print('catch')
    return e;
  }
}


f = function ()
{
  var e = makeError (function c(){}, function  (){},
             {a: 1}, null, undefined,
             Number.MAX_VALUE, 0, new Number(1),
             "hello world", str, new String ("newstring"),
             true, new Boolean(0),
             new Date());

    try {
        e.getStackTrace();
    } catch (e) {
        // do nothing
    }
}

  f();

 
Assert.expectEq(summary, expect, actual);


