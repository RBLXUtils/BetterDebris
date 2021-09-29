-- BetterDebris.lua

local UseReplicatedDestroy = false
local Destroy = UseReplicatedDestroy
	and require(script.Parent:FindFirstChild("ReplicatedDestroy"))

	or game.Destroy

return function(
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
