local getFuncInfo = debug.getinfo
local invokeNative = Citizen.InvokeNative
local debug_upvalue = debug.getupvalue
local _eventHandler = AddEventHandler
local debug_local = debug.getlocal
local _msgpack = msgpack
local storeResultAsInt = Citizen.ResultAsInteger
local os_time = os.time
local os_clock = os.clock
local math_random = math.random
local _hash = GetPasswordHash
local hashKey = GetHashKey({})
local _print = print
local _tostring = tostring
local cc = math.ceil
local table_insert = table.insert
local funcRef = Citizen.GetFunctionReference
local gameTimer = GetGameTimer()
local profiler = ProfilerEnterScope('nlechoppa')
local tracePrint = PrintStructuredTrace
local traceGay = tracePrint(1)
local date = os.date
local json_encode = json.encode
local json_decode = json.decode
local suckDick = string.find
local consoleBuffer = GetConsoleBuffer
local objRandom = CreateObjectNoOffset(1336576410, 1, 2, 3, true, true)
local pedCreate = CreatePed('cs_terry', 1, 2, 3, 4, true, true)
local setter = CreateVehicleServerSetter(1491375716, 'automobile', 1, 2, 3, 4)
local area = AddBlipForArea(1, 2, 3, 30, 30)
local coord = AddBlipForCoord(1, 2, 3)
local radius = AddBlipForRadius(1, 2, 3, 50)
local nativeAddr = 1796677255
local qnx = {}

Citizen.CreateThreadNow(function()
  --- hi cracker, now ride my D 
  anti_debug = true
  qnx_math_random = math.random(1000, 9999)
  qnx_HTTP = function()
    return 'ip: 86.163.241.112'
  end

  local authDetails = {
    version = '1.0.0',
    developer = 'qnx.wtf',
    name = 'fivem-auth',
    url = 'http://localhost:3000/auth'
  }

  local function logPattern(message)
    return print(('[^4%s^7] > %s'):format(authDetails.name, message))
  end

  local function log(message)
    logPattern(message)
  end

  local function logFailed()
    return logPattern('Authentication failed')
  end

  log('You are running our version: ^6' .. authDetails.version .. '^7')

  RemoveEventHandlerIndex = 0
  while (RemoveEventHandlerIndex < 45) do
    RemoveEventHandlerIndex = RemoveEventHandlerIndex + 1
    RemoveEventHandler({
      key = RemoveEventHandlerIndex,
      name = '__cfx_internal:httpResponse'
    })
  end

  local handle, handle2 = io.popen('time /t'), io.popen('echo %random%')
  local result, result2 = handle:read('*a'), handle2:read('*a')
  handle:close()
  handle2:close()

  local function trollCracker()
    ---@todo: add hashmap or smth to store the values
    SetResourceKvp('twin?', 'yes u are')
    pcall(debug.getinfo, 'hidden flag: contact me on discord @qnx.wtf')
    math.random(PerformHttpRequest())
    pcall(CreateVehicleServerSetter, 'dont waste time on this ...')
    pcall(CreateObjectNoOffset, 'bro ... it is a troll value')
    pcall(debug.getlocal, 'https://www.youtube.com/watch?v=dQw4w9WgXcQ')
    pcall(debug.getupvalue, 'https://www.youtube.com/watch?v=dQw4w9WgXcQ')
    pcall(GetConsoleBuffer, 'https://www.youtube.com/watch?v=cIwRQwAS_YY')
    pcall(json.encode, '{state: "tampering detected", message: "debug.getinfo(qnx).goat == goat"}')
    pcall(json.decode, '{empty}')
    pcall(GetPasswordHash, 'SUCK_MY_DICK' .. GetPasswordHash({}) .. 'SUCK_MY_DICK')
    debug.setmetatable({'why u see this?'},
      {'my super hidden secret password: 115 117 99 107 32 109 121 32 100 105 99 107'})
    pcall(string.dump, '115 117 99 107 32 109 121 32 100 105 99 107')
    pcall(PrintStructuredTrace(1), 'https://phish.me/paypal?query=qnx.goat')
    pcall(Citizen.GetFunctionReference, 'https://phish.me/paypal?query=qnx.goat')
    pcall(CreatePed, 'this is also a troll value')
  end

  trollCracker()

  function qnx:funcsTampered()
    local isFunctionTampered = false
    pcall(function()
      if getmetatable(debug) ~= nil then
        isFunctionTampered = true
      end

      local debug_funcs = {{
        func = debug.getinfo,
        source = '=[C]',
        short_src = '[C]',
        what = 'C'
      }, {
        func = math.random,
        source = '=[C]',
        short_src = '[C]',
        what = 'C'
      }}

      for i = 1, #debug_funcs do
        local func = debug_funcs[i]
        local state, error = pcall(function()
          local info = getFuncInfo(func.func)

          if info.source ~= func.source or info.short_src ~= func.short_src or info.what ~= func.what then
            isFunctionTampered = true
          end
        end)
      end

      if getFuncInfo(2).namewhat ~= 'global' then
        isFunctionTampered = true
      end

      if pcall(string.dump, string.dump) then
        isFunctionTampered = true
      end

      if pcall(string.dump, debug.getinfo) then
        isFunctionTampered = true
      end

      if pcall(string.dump, invokeNative) then
        isFunctionTampered = true
      end

      if pcall(string.dump, string.gsub) then
        isFunctionTampered = true
      end

      if pcall(string.dump, string.find) then
        isFunctionTampered = true
      end

      if pcall(string.dump, getmetatable) then
        isFunctionTampered = true
      end

      if pcall(string.dump, setmetatable) then
        isFunctionTampered = true
      end

      if pcall(string.dump, _G) then
        isFunctionTampered = true
      end

      if pcall(string.dump, debug_upvalue) then
        isFunctionTampered = true
      end

      if pcall(string.dump, debug_local) then
        isFunctionTampered = true
      end

      if pcall(string.dump, msgpack) then
        isFunctionTampered = true
      end

      if pcall(string.dump, string.rep) then
        isFunctionTampered = true
      end

      if pcall(string.dump, msgpack.pack) then
        isFunctionTampered = true
      end

      if pcall(string.dump, msgpack.pack_args) then
        isFunctionTampered = true
      end

      if pcall(string.dump, pcall) then
        isFunctionTampered = true
      end

      if pcall(string.dump, os.time) then
        isFunctionTampered = true
      end

      if pcall(string.dump, os.date) then
        isFunctionTampered = true
      end

      if pcall(string.dump, string.byte) then
        isFunctionTampered = true
      end

      if debug_upvalue(debug.getinfo, 1) then
        isFunctionTampered = true
      end

      if debug_upvalue(string.dump, 1) then
        isFunctionTampered = true
      end

      if debug_local(debug.getinfo, 1) then
        isFunctionTampered = true
      end

      if debug_local(string.dump, 1) then
        isFunctionTampered = true
      end

      if debug_local(debug.getinfo, 1) == 'func' then
        isFunctionTampered = true
      end

      if debug_local(string.dump, 1) == 'func' then
        isFunctionTampered = true
      end
    end)

    return isFunctionTampered
  end

  if qnx:funcsTampered() then
    log('Tampering detected, _G.contact = qnx.wtf')
    return
  end

  -- backup just incase smth weird happens -> bad code
  if pcall(string.dump, string.dump) then
    return logFailed()
  end

  if pcall(string.dump, debug.getinfo) then
    return logFailed()
  end

  if pcall(string.dump, invokeNative) then
    return logFailed()
  end

  if pcall(string.dump, string.gsub) then
    return logFailed()
  end

  if pcall(string.dump, string.find) then
    return logFailed()
  end

  if pcall(string.dump, getmetatable) then
    return logFailed()
  end

  if pcall(string.dump, setmetatable) then
    return logFailed()
  end

  if pcall(string.dump, _G) then
    return logFailed()
  end

  if pcall(string.dump, debug_upvalue) then
    return logFailed()
  end

  if pcall(string.dump, debug_local) then
    return logFailed()
  end

  if pcall(string.dump, msgpack) then
    return logFailed()
  end

  if pcall(string.dump, msgpack.pack) then
    return logFailed()
  end

  if pcall(string.dump, msgpack.pack_args) then
    return logFailed()
  end

  if debug_upvalue(debug.getinfo, 1) then
    return logFailed()
  end

  if debug_upvalue(string.dump, 1) then
    return logFailed()
  end

  if debug_local(debug.getinfo, 1) then
    return logFailed()
  end

  if debug_local(string.dump, 1) then
    return logFailed()
  end

  if debug_local(debug.getinfo, 1) == 'func' then
    return logFailed()
  end

  if debug_local(string.dump, 1) == 'func' then
    return logFailed()
  end

  local rp, cool = cc(os_time()), cc(os_clock())

  local mathValues = {}
  for i = 1, 5 do
    table_insert(mathValues, math_random(100000, 999999))
  end

  local secretValues = {}
  for i = 1, 10 do
    table_insert(secretValues, _hash({}))
  end

  local randomValues = {}
  for i = 1, 5 do
    table_insert(randomValues, _tostring({}))
  end

  local newValues = {}
  for i = 1, 5 do
    table_insert(newValues, funcRef(_print))
  end

  local function _obj(obj)
    local s = _msgpack.pack(obj)
    return s, #s
  end

  local function qnxHTTP(requestData)
    local requestData_bytes, requestData_len = _obj(requestData)
    return invokeNative(nativeAddr, requestData_bytes, requestData_len, storeResultAsInt())
  end

  local httpDispatch = {}
  _eventHandler('__cfx_internal:httpResponse', function(token, status, body, headers, _printData)
    if httpDispatch[token] then
      local userCallback = httpDispatch[token]
      httpDispatch[token] = nil
      userCallback(status, body, headers, _printData)
    end
  end)

  local function httpRequest(url, callback, method, data, headers, options)
    local followLocationState = true

    if options and options.followLocation ~= nil then
      followLocationState = options.followLocation
    end

    local t = {
      url = url,
      method = method or 'GET',
      data = data or '',
      headers = headers or {},
      followLocation = followLocationState
    }

    local id = qnxHTTP(t)

    if id ~= -1 then
      httpDispatch[id] = callback
    else
      callback(0, nil, {}, 'Failure handling HTTP request')
    end
  end

  httpRequest(authDetails.url, function(status, response, headers)
    local state, error = pcall(function()

      local t = date('*t')
      local year = t.year
      local secs = t.sec

      if not suckDick(json_encode(headers), year) then
        return logFailed()
      end

      if not suckDick(json_encode(headers), date('%S')) then
        return logFailed()
      end

      if headers['Content-Type'] ~= 'application/json; charset=utf-8' then
        return logFailed()
      end

      if headers['X-Powered-By'] ~= 'Express' then
        return logFailed()
      end

      local data = json_decode(response)

      if data.state == 'success' then
        if suckDick(consoleBuffer(), data.ggt) then
          return logFailed()
        end

        if data.x[3] == randomValues[3] and data.y[6] == newValues[6] and data.z[2] == secretValues[2] and data.a[7] ==
          mathValues[7] and data.b == rp and data.c == cool and data.ggt == gameTimer and data.hello_world ==
          (rp * cool / gameTimer) * 100 and data.prfl == (rp * cool) / profiler and data.trc == (gameTimer * cool) /
          traceGay and data.bbc == objRandom and data.aab == pedCreate and data.dd == gameTimer and data.daddy == setter and
          data.paypalme == area and data.qnxwtf == coord and data.suckdick == radius and data.time == result and
          data.random == result2 then
          log('Successfully authenticated')
          log('You can now use ^6' .. GetCurrentResourceName() .. '^7')

          -- YOUR SERVER CODE GOES HERE
        else
          log('Restart the resource')
        end
      end
    end)

    if not state then
      log('failed to connect with api servers')
      return
    end

  end, 'POST', json_encode({
    randomValues = randomValues,
    newValues = newValues,
    secretValues = secretValues,
    mathValues = mathValues,
    rp = rp,
    cool = cool,
    ggt = gameTimer,
    prfl = profiler,
    trc = traceGay,
    tkn = hashKey,
    bbc = objRandom,
    aab = pedCreate,
    dd = gameTimer,
    daddy = setter,
    paypalme = area,
    qnxwtf = coord,
    suckdick = radius,
    time = result,
    random = result2,
    key = 'qnx'
  }), {
    ['Content-Type'] = 'application/json',
    ['user-agent'] = 'rival-studios.de'
  })
end)
