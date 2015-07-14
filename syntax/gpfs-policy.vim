" Vim syntax file
" Language:     GPFS Policy
" Maintainer:   Jez Tucker <jtucker@pixitmedia.com>
" Last Change:  2015 13 Jul
" Version:      0.1

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if !exists("main_syntax")
	if version < 600
		syntax clear
	elseif exists("b:current_syntax")
		finish
	endif
	let main_syntax = 'gpfs-policy'
endif

" case insensitive
syntax case ignore

" GPFS Policy Rule keywords
syn keyword gpRule ACTION DIRECTORIES_PLUS DELETE ESCAPE EXCLUDE EXEC
syn keyword gpRule LIMIT MIGRATE OPTS REPLICATE RULE SET SHOW SIZE
syn keyword gpRule THRESHOLD FILESET_QUOTAS FILESET_QUOTA_SOFT GROUP_QUOTAS
syn keyword gpRule GROUP_QUOTA_SOFT POOL_CAPACITIES USER_QUOTAS 
syn keyword gpRule USER_QUOTA_SOFT WEIGHT
syn match   gpRule 'EXTERNAL LIST'
syn match   gpRule 'FOR FILESET'
syn match   gpRule 'FROM POOL'
syn match   gpRule 'FROM GROUP'
syn match   gpRule 'RESTORE TO POOL'
syn match   gpRule 'TO POOL'
syn match   gpRule 'SET POOL'

" GPFS Policy SQL keywords
syn keyword gpSQL ACCESS_TIME BLOCKSIZE CHANGE_TIME CLONE_DEPTH CLONE_IS_PARENT
syn keyword gpSQL CLONE_PARENT_FILESET_ID CLONE_PARENT_INODE
syn keyword gpSQL CLONE_PARENT_IS_SNAP CLONE_PARENT_SNAP_ID CREATION_TIME
syn keyword gpSQL DEVICE_ID DIRECTORY_HASH FILE_HEAT FILE_SIZE FILESET_NAME
syn keyword gpSQL GENERATION GROUP_ID INODE KB_ALLOCATED MODE
syn keyword gpSQL MISC_ATTRIBUTES MODIFICATION_SNAPID MODIFICATION_TIME NAME
syn keyword gpSQL NLINK PATH_NAME POOL_NAME RDEVICE_ID USER_ID

" GPFS Policy built in functions
syn keyword gpFunc GetXattrs SetBGF SetWAD SetWADFG SetXattr XATTR
syn keyword gpFunc XATTR_FLOAT XATTR_INTEGER CHAR CONCAT HEX LENGTH LOWER
syn keyword gpFunc REGEX REGEXREPLACE SUBSTR SUBSTRING UPPER VARCHAR INT
syn keyword gpFunc MOD CURRENT_DATE CURRENT_TIMESTAMP DAYOFWEEK DAYOFYEAR
syn keyword gpFunc DAY DAYS DAYSINMONTH DAYSINYEAR HOUR MINUTE MONTH QUARTER
syn keyword gpFunc SECOND TIMESTAMP WEEK YEAR SNAP_ID GetEnv GetMMConfig

" GPFS Policy condititionals
syn keyword gpCond WHEN WHERE IS NOT LIKE AND OR THEN ELSE CASE END
syn match   gpCond '='
syn match   gpCond '<'
syn match   gpCond '>'
syn match   gpCond '>='
syn match   gpCond '<='

" GPFS Policy macro
syn keyword gpMacro define

" GPFS Policy comments
syn region gpComment start="/\*" end="\*/"

" GPFS Policy strings
" - double quotes "
" - single quotes '
syn region gpStringDbl start=+"+ end=+"\|$+
syn region gpStringSgl start=+'+ end=+'\|$+

" GPFS Policy SHOW delimiter
syn match gpDelim '||'

" Numbers
syn match gpNumber '\d\+'

" GPFS Policy booleans
syn keyword gpBoolean TRUE FALSE

" Highlight Definitions
" Ref: http://vimdoc.sourceforge.net/htmldoc/syntax.html#tag-highlight
hi def link gpRule	Statement	
hi def link gpSQL	Type
hi def link gpFunc	Function
hi def link gpCond	Conditional
hi def link gpMacro	Macro
hi def link gpComment	Comment
hi def link gpStringDbl	String
hi def link gpStringSgl	String
hi def link gpDelim	Delimiter
hi def link gpNumber    Number
hi def link gpBoolean	Boolean

" EOF
