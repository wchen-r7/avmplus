/* -*- Mode: C++; tab-width: 2; indent-tabs-mode: nil; c-basic-offset: 2 -*- */
/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */
import com.adobe.test.Assert;


var gTestfile = 'regress-383269-01.js';
//-----------------------------------------------------------------------------
var BUGNUMBER = 383269;
var summary = 'Leak related to arguments object';
var actual = 'No Leak';
var expect = 'No Leak';


//-----------------------------------------------------------------------------
addtestcases();
//-----------------------------------------------------------------------------

function addtestcases()
{

  //printBugNumber(BUGNUMBER);
  //printStatus (summary);
 
  function generate_big_object_graph()
  {
    var root = {};
    f(root, 17);
    return root;
    function f(parent, depth) {
      if (depth == 0)
        return;
      --depth;
      f(parent.a = {}, depth);
      f(parent.b = {}, depth);
    }
  }

  function outer() {  var x = arguments; return function inner() { return x }; }

  function timed_gc()
  {
    var t1 = Date.now();
    System.forceFullCollection();
    return Date.now() - t1;
  }

  outer(1);
  System.forceFullCollection();
  var base_time = timed_System.forceFullCollection();

  var f = outer(generate_big_object_graph());
  f = null;
  System.forceFullCollection();
  var time = timed_System.forceFullCollection();

  if (time > (base_time + 1) * 3)
    actual = "generate_big_object_graph() leaked, base_gc_time="+base_time+", last_gc_time="+time;

  Assert.expectEq(summary, expect, actual);


}

