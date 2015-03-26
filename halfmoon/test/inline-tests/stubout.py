#!/usr/bin/python

# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.

instr_names = [#  "setslot", "atom2scriptobject", "getslot", "cknullobject", "loadenv",  "callmethod", "return","getouterscope",
# "getouterscope", #finds it here..
 "start",                 
 "template",             
 "return",               
 "throw",                
 "goto",                 
 "label",                
 "if",                   
 "switch",               
 "arm",                  
 "const",                
 "coerce",               
 "cast",                 
 "castobject",           
 "tonumber",             
 "toint",                
 "touint",               
 "toboolean",            
 "d2b",                  
 "caststring",           
 "castns",               
 "cknull",               
 "cknullobject",         
 "cktimeout",            
 "abc_hasnext",          
 "abc_hasnext2",         
 "never",                
 "call",                 
 "construct",            
 "constructsuper",       
 "loadenv_namespace",    
 "loadenv_boolean",      
 "loadenv_number",       
 "loadenv_string",       
 "loadenv_interface",    
 "loadenv",              
 "loadenv_atom",         
 "loadinitenv",           
 "loadsuperinitenv",      
 "newobject",             
 "newarray",              
 "applytype",             
 "newinstance",           
 "abc_convert_s",         
 "abc_esc_xelem",         
 "abc_esc_xattr",         
 "abc_typeof",            
 "speculate_int",        
 "speculate_number",     
 "speculate_numeric",    
 "speculate_string",     
 "speculate_object",     
 "speculate_array",      
 "speculate_bool",       
 "ckfilter",             
 "abc_add",              
 "addd",                 
 "concat_strings",       
 "abc_nextname",         
 "abc_nextvalue",        
 "lessthan",             
 "lessequals",           
 "greaterthan",          
 "greaterequals",        
 "abc_instanceof",       
 "abc_istype",           
 "abc_istypelate",       
 "abc_astype",           
 "abc_astypelate",       
 "abc_in",               
 "divd",                 
 "modulo",               
 "subd",                 
 "muld",                 
 "addi",                 
 "subi",                 
 "muli",                 
 "ori",                  
 "andi",                 
 "xori",                 
 "lshi",                 
 "rshi",                 
 "rshui",                
 "noti",                 
 "negi",                 
 "negd",                 
 "not",                  
 "newactivation",        
 "abc_finddef",          
 "abc_findpropstrict",   
 "abc_findpropstrictx",  
 "abc_findpropstrictns", 
 "abc_findpropstrictnsx",
 "abc_findproperty",     
 "abc_findpropertyx",    
 "abc_findpropertyns",   
 "abc_findpropertynsx",  
 "newclass",             
 "newfunction",          
 "abc_getsuper",         
 "abc_getsuperx",        
 "abc_getsuperns",       
 "abc_getsupernsx",      
 "abc_getdescendants",   
 "abc_getdescendantsx",  
 "abc_getdescendantsns", 
 "abc_getdescendantsnsx",
 "abc_callprop",         
 "abc_callpropx",        
 "abc_callpropns",       
 "abc_callpropnsx",      
 "abc_callproplex",      
 "abc_callproplexx",     
 "abc_callproplexns",    
 "abc_callproplexnsx",   
 "abc_constructprop",    
 "abc_constructpropx",   
 "abc_constructpropns",  
 "abc_constructpropnsx", 
 "abc_callsuper",        
 "abc_callsuperx",       
 "abc_callsuperns",      
 "abc_callsupernsx",     
 "callstatic",           
 "callmethod",           
 "callinterface",        
 "newcatch",             
 "setslot",              
 "getslot",              
 "slottype",             
 "getouterscope",        
 "safepoint",            
 "breakpoint",           
 "setlocal",             
 "newstate",             
 "deopt_safepoint",      
 "deopt_finish",         
 "deopt_finishcall",     
 "string2atom",          
 "double2atom",          
 "int2atom",             
 "uint2atom",            
 "scriptobject2atom",    
 "bool2atom",            
 "ns2atom",              
 "atom2bool",            
 "atom2double",          
 "atom2string",          
 "atom2int",             
 "atom2uint",            
 "atom2scriptobject",    
 "i2d",                  
 "u2d",                  
 "d2i",                  
 "d2u",                  
 "toslot",               
 "toprimitive",          
 "eqi",                  
 "lti",                  
 "lei",                  
 "gti",                  
 "gei",                  
 "eqd",                  
 "ltd",                  
 "led",                  
 "gtd",                  
 "ged",                  
 "equi",                 
 "ltui",                 
 "leui",                 
 "gtui",                 
 "geui",                 
 "eqb",                  
 "doubletoint32",        
 "i2u",                  
 "u2i",                  
 "abc_dxnslate",         
 "abc_dxns",             
 "li8",                  
 "li16",                 
 "li32",                 
 "lf32",                 
 "lf64",                 
 "si8",                  
 "si16",                 
 "si32",                 
 "sf32",                 
 "sf64",                 
 "abc_equals",           
 "eqp",                  
 "eqs",                  
 "abc_strictequals",     
 "abc_setsuper",         
 "abc_setsuperx",        
 "abc_setsuperns",       
 "abc_setsupernsx",      
 "abc_deleteprop",       
 "abc_deletepropx",      
 "abc_deletepropns",     
 "abc_deletepropnsx",    
 "abc_getprop",          
 "abc_getpropx",         
 "getpropertylate_u",    
 "getpropertylate_i",    
 "getpropertylate_d",    
 "array_get_u",          
 "array_get_i",          
 "array_get_d",          
 "vectorint_get_u",      
 "vectorint_get_i",      
 "vectorint_get_d",      
 "vectoruint_get_u",     
 "vectoruint_get_i",     
 "vectoruint_get_d",     
 "vectordouble_get_u",   
 "vectordouble_get_i",   
 "vectordouble_get_d",   
 "abc_getpropns",        
 "abc_getpropnsx",       
 "abc_setprop",          
 "abc_setpropx",         
 "setpropertylate_u",    
 "setpropertylate_i",    
 "setpropertylate_d",    
 "array_set_u",          
 "array_set_i",          
 "array_set_d",          
 "vectorint_set_u",      
 "vectorint_set_i",      
 "vectorint_set_d",      
 "vectoruint_set_u",     
 "vectoruint_set_i",     
 "vectoruint_set_d",     
 "vectordouble_set_u",   
 "vectordouble_set_i",   
 "vectordouble_set_d",   
 "abc_setpropns",        
 "abc_setpropnsx",       
 "abc_initprop",         
 "abc_initpropx",        
 "abc_initpropns",       
 "abc_initpropnsx",      
 "abc_increment",        
 "abc_decrement",        
 "abc_increment_i",      
 "abc_decrement_i",      
 "abc_not",              
 "abc_negate",           
 "abc_bitnot",           
 "abc_negate_i",         
 "abc_sxi1",             
 "abc_sxi8",             
 "abc_sxi16",            
 "abc_checkfilter",      
 "abc_li8",              
 "abc_li16",             
 "abc_li32",             
 "abc_lf32",             
 "abc_lf64",             
 "abc_si8",              
 "abc_si16",             
 "abc_si32",             
 "abc_sf32",             
 "abc_sf64",             
 "abc_subtract",         
 "abc_multiply",         
 "abc_modulo",           
 "abc_divide",           
 "abc_add_i",            
 "abc_subtract_i",       
 "abc_multiply_i",       
 "abc_bitor",            
 "abc_bitand",           
 "abc_bitxor",           
 "abc_lshift",           
 "abc_rshift",           
 "abc_urshift",          
 "add_ui",               
 "add_nn",               
 "add_ss",               
 "abc_lessthan",         
 "abc_greaterequals",    
 "abc_greaterthan",      
 "abc_lessequals",       
 "abc_equals_ii",        
 "abc_equals_uu",        
 "abc_equals_bb",        
 "abc_equals_nn",        
 "abc_equals_pp",        
 "abc_equals_ss",        
 "abc_getslot",          
 "abc_getprop_slot",     
 "getpropx_u",           
 "getpropx_i",           
 "getpropx_d",           
 "getpropx_au",          
 "getpropx_ai",          
 "getpropx_ad",          
 "getpropx_viu",         
 "getpropx_vii",         
 "getpropx_vid",         
 "getpropx_vuu",         
 "getpropx_vui",         
 "getpropx_vud",         
 "getpropx_vdu",         
 "getpropx_vdi",         
 "getpropx_vdd",         
 "abc_setprop_slot",     
 "setpropx_u",           
 "setpropx_i",           
 "setpropx_d",           
 "setpropx_au",          
 "setpropx_ai",          
 "setpropx_ad",          
 "setpropx_viu",         
 "setpropx_vii",         
 "setpropx_vid",         
 "setpropx_vuu",         
 "setpropx_vui",         
 "setpropx_vud",         
 "setpropx_vdu",         
 "setpropx_vdi",         
 "setpropx_vdd",         
 "abc_setslot",          
 "findprop2finddef",     
 "findprop2getouter",    
 "callprop_string",      
 "coerce_any",           
 "coerce_object",        
 "coerce_number",        
 "coerce_int",           
 "coerce_uint",          
 "coerce_boolean",       
 "coerce_string",        
 "coerce_ns",            
 "inttouint",            
 "uinttoint",            
 "numbertoint",          
 "numbertouint",         
 "abc_modulo_and"];

def set_var( skip_list ):
    return "DEBUG_STUB_LIST=" + skip_list + "\\; "
    
#print instr_names

xx=[ "setslot", "atom2scriptobject", "getslot", "cknullobject", "loadenv",  "callmethod", "return","getouterscope"]

import os

avm_cmd =  " ../objdir/shell/avmshell -Dnodebugger ./fdc.abc "
skip_list = ''

for name in instr_names:
    skip_list += "\\;" + name
    #print "set_var=", set_var
    #rc = os.system("env " + set_var + " printenv DEBUG_STUB_LIST")
    cmd = "env INLINE=1 MODE=4 %s %s" % ( set_var(skip_list) , avm_cmd)
    rc = os.system(cmd)
    print "rc=", rc
    if rc != 0 :
        print "FAILED: ", cmd
    else:
        print "worked: ", cmd
        print "last stub added was", name
        break
    

