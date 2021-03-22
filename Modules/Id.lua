local function randomCharacter()
	if math.random(1,2) == 1 then
		return string.char(math.random(65,90))
	else
		return math.random(1,9)
	end
end

return function()
	local num = math.random(60,70)
	local final = ""

	for i = 1, num do
		final = final..randomCharacter()
	end

	return final
end