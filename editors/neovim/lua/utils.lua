local function array_includes(table, item)
  for _, value in ipairs(table) do
    if value == item then
      return true
    end
  end

  return false
end

local function table_flat_merge(table_a, table_b)
  for key, value in pairs(table_b) do
    table_a[key] = value
  end

  return table_a
end

local function table_deep_merge(t1, t2)
  for k, v in pairs(t2) do
    if (type(v) == "table") and (type(t1[k] or false) == "table") then
      table_merge(t1[k], t2[k])
    else
      t1[k] = v
    end
  end
  return t1
end


return {
  array_includes = array_includes,
  table_deep_merge = table_deep_merge,
  table_flat_merge = table_flat_merge
}
