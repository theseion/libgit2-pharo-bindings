doits
setUpGToolkit
	(Smalltalk at: #GTPlayground) registerToolsOn: Smalltalk tools.
	(Smalltalk at: #GTInspector) registerToolsOn: Smalltalk tools.
	(Smalltalk at: #GTGenericStackDebugger) registerToolsOn: Smalltalk tools.
	(Smalltalk at: #GTGenericStackDebugger) registerExtraToolsOn: Smalltalk tools.
	(Smalltalk at: #GTGlamourDebugger) registerToolsOn: Smalltalk tools.
	(Smalltalk at: #ACGlamourDebugger) registerToolsOn: Smalltalk tools.
	(Smalltalk at: #GTSUnitDebugger) registerToolsOn: Smalltalk tools.
	(Smalltalk at: #GTMoldableDebugger) enableDebuggerWindowDistinctColor: true