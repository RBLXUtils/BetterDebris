-- Debris.lua

local Destroy = game.Destroy

local Debris = {}
setmetatable(Debris, Debris)

function Debris:UseRemove()
	Destroy = game.Remove
end

function Debris:UseDestroy()
	Destroy = game.Destroy
end

function Debris:__call(
	seconds: number,
	instance: Instance
)
	assert(
		typeof(seconds) == 'number',
		"Must be number"
	)

	assert(
		typeof(instance) == "Instance",
		"Must be instance"
	)

	task.delay(
		seconds, Destroy, instance
	)
end

return Debris
