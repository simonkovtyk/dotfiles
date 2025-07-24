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

local function get_nvim_semver()
  local version_info = vim.version()

  return version_info.major .. "." .. version_info.minor .. "." .. version_info.patch
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

local function ellipsis(value, length)
  local value_length = string.len(value);
  local real_length = length - 1;

  if value_length <= real_length then
    return value;
  end

  local special_chars = { " ", "…" }

  while special_chars[string.sub(value, real_length, real_length)] ~= nil do
    real_length = real_length - 1;
  end

  return string.sub(value, 1, real_length) .. "…";
end

return {
  get_nvim_semver = get_nvim_semver,
  array_includes = array_includes,
  table_deep_merge = table_deep_merge,
  table_flat_merge = table_flat_merge,
  array_from_table_keys = array_from_table_keys,
  ellipsis = ellipsis
}
