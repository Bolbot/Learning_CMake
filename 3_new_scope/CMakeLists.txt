cmake_minimum_required(VERSION 2.8)
project(foo NONE)

function(foo)
	message("[foo] got from parent: { abc = '${abc}', xyz = '${xyz}' }")
	unset(abc)
	message("[foo] 'unset(abc)' remove variable from foo scope: { abc = '${abc}', xyz = '${xyz}' }")
endfunction()

function(boo)
	message("[boo] got from parent: { abc = '${abc}', xyz = '${xyz}' }")
	set(xyz "987654321")
	message("[boo]: 'set(xyz ...)' modify boo scope: { abc = '${abc}', xyz = '${xyz}' }")
endfunction()

set(abc "123456789")
set(xyz "404040404")

message("Top level scope state: {abc = '${abc}', xyz = '${xyz}' }")

foo()
boo()
foo()
