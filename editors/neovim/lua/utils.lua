local function array_includes(table, item)
  for _, value in ipairs(table) do
    if value == item then
      return true
    end
  end

  return false
end


return {
  array_includes = array_includes
}
