local shallowCopyAndAssign = function (...)
    local args = {...}
    local merged = args[1] or {}

    for i = 2, #args do
        local tbl = args[i]
        for k, v in pairs(tbl) do
            merged[k] = v
        end
    end
end

return {
	shallowCopyAndAssign = shallowCopyAndAssign
}