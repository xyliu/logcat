" Vim syntax file
" Language:		logcat
" Maintainers:		Naseer Ahmed <naseer.ahmed@gmail.com>
"			Lertsenem <lertsenem@yahoo.fr>
" Latest Revision:	2013-06-19

if exists("b:current_syntax")
    finish
endif

" Particular settings
set nonumber
colorscheme default

" Define colors
hi def log_date_color ctermfg=darkgrey

hi def log_hour_color ctermfg=197
hi def log_millisec_color ctermfg=205
hi def log_num_color ctermfg=grey

hi def log_processNumber_color ctermfg=178
hi def log_processName_color cterm=bold

hi def dbg_color ctermbg=red

" Violet
hi def kw_fatal_color ctermfg=yellow ctermbg=darkblue
hi def kw_error_color ctermfg=red
hi def kw_warning_color ctermfg=lightcyan
hi def kw_info_color ctermfg=darkgreen
hi def kw_debug_color ctermfg=darkblue
hi def kw_verbose_color ctermfg=grey
hi def kw_kernel_color ctermfg=yellow guifg=yellow guibg=lightgrey

" Define regions
"syn region reg_date start="^" end="$" fold transparent contains=log_date,log_hour,log_millisec,log_num keepend
"syn region reg_infos start="[F|E|W|I|D|V]/" end=":" fold transparent contains=log_processName,log_processNumber keepend


" Define keywords
syn keyword log_fatal contained F
syn keyword log_error contained E
syn keyword log_warning contained W
syn keyword log_info contained I
syn keyword log_debug contained D
syn keyword log_verbose contained V

syn region log_string  start=/'/ end=/'/ end=/$/ skip=/\\./
syn region log_string  start=/"/ end=/"/ skip=/\\./

syn match reg_verbose '\(V/\| V \).*$'
syn match reg_debug '\(D/\| D \).*$'
syn match reg_info '\(I/\| I \).*$'
syn match reg_warning '\(W/\| W \).*$'

syn match log_KERNEL  '\c.* KERNEL .*'
syn match log_error    '\c.*\<\(FATAL\|ERROR\|ERRORS\|FAIL\|FAILED\|FAILURE\|DEBUG\).*'
syn match log_warning  '\c.*\<\(WARNING\|DELETE\|DELETING\|DELETED\|RETRY\|RETRYING\).*'

syn match reg_error '\(E/\| E \).*$'
syn match reg_fatal '\(F/\| F \).*$'


syn match log_number   '0x[0-9a-fA-F]*\|\[<[0-9a-f]\+>\]\|\<\d[0-9a-fA-F]*'
syn match log_date '\(Jan\|Feb\|Mar\|Apr\|May\|Jun\|Jul\|Aug\|Sep\|Oct\|Nov\|Dec\) [ 0-9]\d *'
syn match log_date '\d\{4}-\d\d-\d\d'
syn match log_date '^\d\d-\d\d \d\d:\d\d:\d\d\.\d\d\d'


" Define links
hi def link log_num log_num_color
hi def link log_date log_date_color
hi def link log_hour log_hour_color
hi def link log_millisec log_millisec_color
hi def link log_string	String

"hi def link log_processNumber log_processNumber_color
"hi def link log_processName log_processName_color

hi def link log_fatal kw_fatal_color
hi def link log_error kw_error_color


hi def link log_KERNEL kw_kernel_color

hi def link log_warning kw_warning_color
hi def link log_info kw_info_color
hi def link log_debug kw_debug_color
hi def link log_verbose kw_verbose_color

hi def link reg_fatal kw_fatal_color
hi def link reg_error kw_error_color
hi def link reg_warning kw_warning_color
hi def link reg_info kw_info_color
hi def link reg_debug kw_debug_color
hi def link reg_verbose kw_verbose_color
