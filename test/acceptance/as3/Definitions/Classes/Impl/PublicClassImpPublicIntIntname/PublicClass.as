/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */
/*
 * Public Class PublicClass
 * Class methods
 *
 */

package PublicClassImpPublicIntIntname{

    public class PublicClass implements PublicInt, PublicInt_S{
        
        public function deffunc():String{
            return"PASSED";
        }
        /*PublicInt_S function deffunc():String{
            return"PASSED";
        }*/
        public function accdeffunc(){return PublicInt::deffunc();}
        public function accdeffunc_s(){return PublicInt_S::deffunc();}

       }
}
