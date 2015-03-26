///
/// generated by templates.py -- do not edit
///

/// true if given InstrKind has a template
bool InstrFactory::hasTemplate(InstrKind k) {
  return instr_attrs[k].hastem;
}

/// true if given InstrKind is instance of GotoInstr
bool InstrFactory::isGotoInstr(InstrKind k) {
  return instr_attrs[k].shape == GOTOINSTR_SHAPE;
}

/// true if given InstrKind is instance of ArmInstr
bool InstrFactory::isArmInstr(InstrKind k) {
  return instr_attrs[k].shape == ARMINSTR_SHAPE;
}

/// true if given InstrKind is instance of CatchBlockInstr
bool InstrFactory::isCatchBlockInstr(InstrKind k) {
  return instr_attrs[k].shape == CATCHBLOCKINSTR_SHAPE;
}

/// true if given InstrKind is instance of LabelInstr
bool InstrFactory::isLabelInstr(InstrKind k) {
  return instr_attrs[k].shape == LABELINSTR_SHAPE;
}

/// true if given InstrKind is instance of ConstantExpr
bool InstrFactory::isConstantExpr(InstrKind k) {
  return instr_attrs[k].shape == CONSTANTEXPR_SHAPE;
}

/// true if given InstrKind is instance of StartInstr
bool InstrFactory::isStartInstr(InstrKind k) {
  return instr_attrs[k].shape == STARTINSTR_SHAPE;
}

/// true if given InstrKind is instance of IfInstr
bool InstrFactory::isIfInstr(InstrKind k) {
  return instr_attrs[k].shape == IFINSTR_SHAPE;
}

/// true if given InstrKind is instance of SwitchInstr
bool InstrFactory::isSwitchInstr(InstrKind k) {
  return instr_attrs[k].shape == SWITCHINSTR_SHAPE;
}

/// true if given InstrKind is instance of UnaryExpr
bool InstrFactory::isUnaryExpr(InstrKind k) {
  return instr_attrs[k].shape == UNARYEXPR_SHAPE;
}

/// true if given InstrKind is instance of BinaryExpr
bool InstrFactory::isBinaryExpr(InstrKind k) {
  return instr_attrs[k].shape == BINARYEXPR_SHAPE;
}

/// true if given InstrKind is instance of SetlocalInstr
bool InstrFactory::isSetlocalInstr(InstrKind k) {
  return instr_attrs[k].shape == SETLOCALINSTR_SHAPE;
}

/// true if given InstrKind is instance of StopInstr
bool InstrFactory::isStopInstr(InstrKind k) {
  return instr_attrs[k].shape == STOPINSTR_SHAPE;
}

/// true if given InstrKind is instance of DeoptSafepointInstr
bool InstrFactory::isDeoptSafepointInstr(InstrKind k) {
  return instr_attrs[k].shape == DEOPTSAFEPOINTINSTR_SHAPE;
}

/// true if given InstrKind is instance of DeoptFinishInstr
bool InstrFactory::isDeoptFinishInstr(InstrKind k) {
  return instr_attrs[k].shape == DEOPTFINISHINSTR_SHAPE;
}

/// true if given InstrKind is instance of VoidStmt
bool InstrFactory::isVoidStmt(InstrKind k) {
  return instr_attrs[k].shape == VOIDSTMT_SHAPE;
}

/// true if given InstrKind is instance of NaryStmt0
bool InstrFactory::isNaryStmt0(InstrKind k) {
  return instr_attrs[k].shape == NARYSTMT0_SHAPE;
}

/// true if given InstrKind is instance of SafepointInstr
bool InstrFactory::isSafepointInstr(InstrKind k) {
  return instr_attrs[k].shape == SAFEPOINTINSTR_SHAPE;
}

/// true if given InstrKind is instance of DebugInstr
bool InstrFactory::isDebugInstr(InstrKind k) {
  return instr_attrs[k].shape == DEBUGINSTR_SHAPE;
}

/// true if given InstrKind is instance of DeoptFinishCallInstr
bool InstrFactory::isDeoptFinishCallInstr(InstrKind k) {
  return instr_attrs[k].shape == DEOPTFINISHCALLINSTR_SHAPE;
}

/// true if given InstrKind is instance of NaryStmt1
bool InstrFactory::isNaryStmt1(InstrKind k) {
  return instr_attrs[k].shape == NARYSTMT1_SHAPE;
}

/// true if given InstrKind is instance of UnaryStmt
bool InstrFactory::isUnaryStmt(InstrKind k) {
  return instr_attrs[k].shape == UNARYSTMT_SHAPE;
}

/// true if given InstrKind is instance of CallStmt2
bool InstrFactory::isCallStmt2(InstrKind k) {
  return instr_attrs[k].shape == CALLSTMT2_SHAPE;
}

/// true if given InstrKind is instance of NaryStmt2
bool InstrFactory::isNaryStmt2(InstrKind k) {
  return instr_attrs[k].shape == NARYSTMT2_SHAPE;
}

/// true if given InstrKind is instance of BinaryStmt
bool InstrFactory::isBinaryStmt(InstrKind k) {
  return instr_attrs[k].shape == BINARYSTMT_SHAPE;
}

/// true if given InstrKind is instance of Hasnext2Stmt
bool InstrFactory::isHasnext2Stmt(InstrKind k) {
  return instr_attrs[k].shape == HASNEXT2STMT_SHAPE;
}

/// true if given InstrKind is instance of CallStmt3
bool InstrFactory::isCallStmt3(InstrKind k) {
  return instr_attrs[k].shape == CALLSTMT3_SHAPE;
}

/// true if given InstrKind is instance of NaryStmt3
bool InstrFactory::isNaryStmt3(InstrKind k) {
  return instr_attrs[k].shape == NARYSTMT3_SHAPE;
}

/// true if given InstrKind is instance of CallStmt4
bool InstrFactory::isCallStmt4(InstrKind k) {
  return instr_attrs[k].shape == CALLSTMT4_SHAPE;
}

/// true if given InstrKind is instance of NaryStmt4
bool InstrFactory::isNaryStmt4(InstrKind k) {
  return instr_attrs[k].shape == NARYSTMT4_SHAPE;
}

