/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. */

package PublicClass {

  public class PublicClass {

    var array:Array;
    var boolean:Boolean;
    var date:Date;
    var myFunction:Function;
    var math:Math;
    var number:Number;
    var object:Object;
    var string:String;

    public var pubArray:Array;
    public var pubBoolean:Boolean;
    public var pubDate:Date;
    public var pubFunction:Function;
    public var pubMath:Math;
    public var pubNumber:Number;
    public var pubObject:Object;
    public var pubString:String;

    private var privArray:Array;
    private var privBoolean:Boolean;
    private var privDate:Date;
    private var privFunction:Function;
    private var privMath:Math;
    private var privNumber:Number;
    private var privObject:Object;
    private var privString:String;

    static var statArray:Array;
    static var statBoolean:Boolean;
    static var statDate:Date;
    static var statFunction:Function;
    static var statMath:Math;
    static var statNumber:Number;
    static var statObject:Object;
    static var statString:String;

    public static var pubStatArray:Array;
    public static var pubStatBoolean:Boolean;
    public static var pubStatDate:Date;
    public static var pubStatFunction:Function;
    public static var pubStatMath:Math;
    public static var pubStatNumber:Number;
    public static var pubStatObject:Object;
    public static var pubStatString:String;

    private static var privStatArray:Array;
    private static var privStatBoolean:Boolean;
    private static var privStatDate:Date;
    private static var privStatFunction:Function;
    private static var privStatMath:Math;
    private static var privStatNumber:Number;
    private static var privStatObject:Object;
    private static var privStatString:String;

    // *****************************
    // to be overloaded
    // *****************************

    var overLoadVar;
    public var pubOverLoadVar;
    private var privOverLoadVar;
    static var statOverLoadVar;
    public static var pubStatOverLoadVar;
    private static var privStatOverLoadVar;

    // ****************
    // constructor
    // ****************

    function PublicClass() {
    }

    // *****************
    // Default methods
    // *****************

    function getArray() : Array { return array; }
    function getBoolean() : Boolean { return boolean; }
    function getDate() : Date { return date; }
    function getFunction() : Function { return myFunction; }
    function getMath() : Math { return math; }
    function getNumber() : Number { return number; }
    function getObject() : Object { return object; }
    function getString() : String { return string; }

    function setArray( a:Array ) { array = a; }
    function setBoolean( b:Boolean ) { boolean = b; }
    function setDate( d:Date ) { date = d; }
    function setFunction( f:Function ) { myFunction = f; }
    function setMath( m:Math ) { math = m; }
    function setNumber( n:Number ) { number = n; }
    function setObject( o:Object ) { object = o; }
    function setString( s:String ) { string = s; }

    function setAll( a:Array,
                     b:Boolean,
                     d:Date,
                     f:Function,
                     m:Math,
                     n:Number,
                     o:Object,
                     s:String ) {
        array = a;
        boolean = b;
        date = d;
        myFunction = f;
        math = m;
        number = n;
        object = o;
        string = s;
    }
    
    // *****************
    // virtual methods
    // *****************
    virtual function getVirtualArray() : Array { return array; }
    virtual function getVirtualBoolean() : Boolean { return boolean; }
    virtual function getVirtualDate() : Date { return date; }
    virtual function getVirtualFunction() : Function { return myFunction; }
    virtual function getVirtualMath() : Math { return math; }
    virtual function getVirtualNumber() : Number { return number; }
    virtual function getVirtualObject() : Object { return object; }
    virtual function getVirtualString() : String { return string; }
    virtual function setVirtualArray( a:Array ) { array = a; }
    virtual function setVirtualBoolean( b:Boolean ) { boolean = b; }
    virtual function setVirtualDate( d:Date ) { date = d; }
    virtual function setVirtualFunction( f:Function ) { myFunction = f; }
    virtual function setVirtualMath( m:Math ) { math = m; }
    virtual function setVirtualNumber( n:Number ) { number = n; }
    virtual function setVirtualObject( o:Object ) { object = o; }
    virtual function setVirtualString( s:String ) { string = s; }

    virtual function setVirtualAll( a:Array,
                     b:Boolean,
                     d:Date,
                     f:Function,
                     m:Math,
                     n:Number,
                     o:Object,
                     s:String
                      ) {
        array = a;
        boolean = b;
        date = d;
        myFunction = f;
        math = m;
        number = n;
        object = o;
        string = s;
    }

    // *******************
    // public methods
    // *******************

    public function setPubArray( a:Array ) { pubArray = a; }
    public function setPubBoolean( b:Boolean ) { pubBoolean = b; }
    public function setPubDate( d:Date ) { pubDate = d; }
    public function setPubFunction( f:Function ) { pubFunction = f; }
    public function setPubMath( m:Math ) { pubMath = m; }
    public function setPubNumber( n:Number ) { pubNumber = n; }
    public function setPubObject( o:Object ) { pubObject = o; }
    public function setPubString( s:String ) { pubString = s; }

    public function getPubArray() : Array { return this.pubArray; }
    public function getPubBoolean() : Boolean { return this.pubBoolean; }
    public function getPubDate() : Date { return this.pubDate; }
    public function getPubFunction() : Function { return this.pubFunction; }
    public function getPubMath() : Math { return this.pubMath; }
    public function getPubNumber() : Number { return this.pubNumber; }
    public function getPubObject() : Object { return this.pubObject; }
    public function getPubString() : String { return this.pubString; }

    // *******************
    // private methods
    // *******************

    private function getPrivArray() : Array { return privArray; }
    private function getPrivBoolean() : Boolean { return privBoolean; }
    private function getPrivDate() : Date { return privDate; }
    private function getPrivFunction() : Function { return privFunction; }
    private function getPrivMath() : Math { return privMath; }
    private function getPrivNumber() : Number { return privNumber; }
    private function getPrivObject() : Object { return privObject; }
    private function getPrivString() : String { return privString; }

    private function setPrivArray( a:Array ) { privArray = a; }
    private function setPrivBoolean( b:Boolean ) { privBoolean = b; }
    private function setPrivDate( d:Date ) { privDate = d; }
    private function setPrivFunction( f:Function ) { privFunction = f; }
    private function setPrivMath( m:Math ) { privMath = m; }
    private function setPrivNumber( n:Number ) { privNumber = n; }
    private function setPrivObject( o:Object ) { privObject = o; }
    private function setPrivString( s:String ) { privString = s; }
     
    // *******************
    // static methods
    // *******************

    static function setStatArray(a:Array) { statArray=a; }
    static function setStatBoolean( b:Boolean ) { statBoolean = b; }

    static function getStatArray() { return statArray; }

    // **************************
    // public static methods
    // **************************

    public static function setPubStatArray(a:Array) { pubStatArray=a; }
    public static function setPubStatBoolean( b:Boolean ) { pubStatBoolean = b; }

    public static function getPubStatArray() { return pubStatArray; }

    // **************************
    // private static methods
    // **************************

    private static function setPrivStatArray(a:Array) { privStatArray=a; }
    private static function setPrivStatBoolean( b:Boolean ) { privStatBoolean = b; }

    private static function getPrivStatArray() { return privStatArray; }

    // ***************************
    // to be overloaded
    // ***************************

    function overLoad() { return "This is the parent class"; }
    public function pubOverLoad() { return "This is the parent class"; }
    private function privOverLoad() { return "This is the parent class"; }
    static function statOverLoad() { return "This is the parent class"; }
    public static function pubStatOverLoad() { return "This is the parent class"; }
    private static function privStatOverLoad() { return "This is the parent class"; }

  }
}
