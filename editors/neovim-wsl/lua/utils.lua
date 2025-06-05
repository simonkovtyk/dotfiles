local function array_includes(_table, item)
  for _, value in ipairs(_table) do
    if value == item then
      return true
    end
  end

  return false
end

local function table_flat_merge(_table_a, _table_b)
  for key, value in pairs(_table_b) do
    _table_a[key] = value
  end

  return _table_a
end

local function table_deep_merge(_table_a, _table_b)
  for k, v in pairs(_table_b) do
    if (type(v) == "table") and (type(_table_a[k] or false) == "table") then
      table_deep_merge(_table_a[k], _table_b[k])
    else
      _table_a[k] = v
    end
  end
  return _table_a
end

local function array_from_table_keys(_table)
  local keys = {}

  for key, _ in pairs(_table) do
    table.insert(keys, key)
  end

  return keys
end

return {
  array_includes = array_includes,
  table_deep_merge = table_deep_merge,
  table_flat_merge = table_flat_merge,
  array_from_table_keys = array_from_table_keys
}
