function instant#StartSingleWrapper(...)
	if a:0 == 0 || a:0 > 2
		echoerr "ARGUMENTS: [host] [port (default: 80)]"
		return
	endif

	if a:0 == 1
		call luaeval('require("instant").Start("' .. a:1 .. '")')
	else
		call luaeval('require("instant").Start("' .. a:1 .. '", ' .. a:2 .. ')')
	endif
endfunction

function instant#JoinSingleWrapper(...)
	if a:0 == 0 || a:0 > 2
		echoerr "ARGUMENTS: [host] [port (default: 80)]"
		return
	endif

	if a:0 == 1
		call luaeval('require("instant").Join("' .. a:1 .. '")')
	else
		call luaeval('require("instant").Join("' .. a:1 .. '", ' .. a:2 .. ')')
	endif
endfunction

function instant#StartSessionWrapper(...)
	if a:0 == 0 || a:0 > 2
		echoerr "ARGUMENTS: [host] [port (default: 80)]"
		return
	endif

	if a:0 == 1
		call luaeval('require("instant").StartSession("' .. a:1 .. '")')
	else
		call luaeval('require("instant").StartSession("' .. a:1 .. '", ' .. a:2 .. ')')
	endif
endfunction

function instant#JoinSessionWrapper(...)
	if a:0 == 0 || a:0 > 2
		echoerr "ARGUMENTS: [host] [port (default: 80)]"
		return
	endif

	if a:0 == 1
		call luaeval('require("instant").JoinSession("' .. a:1 .. '")')
	else
		call luaeval('require("instant").JoinSession("' .. a:1 .. '", ' .. a:2 .. ')')
	endif
endfunction

function instant#StartFollowWrapper(...)
	if a:0 == 0 || a:0 > 1
		echoerr "ARGUMENTS: [username]"
		return
	endif

	call luaeval('require("instant").StartFollow("' .. a:1.. '")')
endfunction

function instant#StopFollowWrapper()
	call luaeval('require("instant").StopFollow()')
endfunction

function instant#SaveAllWrapper(bang)
	if a:bang == 1
		call luaeval('require("instant").SaveBuffers(true)')
	else
		call luaeval('require("instant").SaveBuffers(false)')
	endif
endfunction

function instant#StartServerWrapper(...)
	if a:0 == 0
		call luaeval('require("instant.server").StartServer()')
	elseif a:0 == 2
		call luaeval('require("instant.server").StartServer("' .. a:1 .. '",' .. a:2 .. ')')
	else
		echoerr "ARGUMENTS: [host] [port]"
		return
	endif
endfunction
