local Configuration = require(script.Parent.Parent.Configuration)
local Roact = Configuration.Roact
local RoactAnimate = Configuration.RoactAnimate
local t = Configuration.t

local SHADOW_IMAGE = "rbxassetid://1316045217"
local CENTER_UDIM2 = UDim2.fromScale(0.5, 0.5)
local EMPTY_UDIM2 = UDim2.new()

local SHADOW_SETTINGS = {
	[0] = {
		Umbra = {
			Transparency = 1,
			Blur = 0,
		},

		Penumbra = {
			Transparency = 1,
			Blur = 0,
		},

		Ambient = {
			Transparency = 1,
			Blur = 0,
		},
	},

	[1] = {
		Umbra = {
			Transparency = 1 - 0.14,
			Blur = 2,
		},

		Penumbra = {
			Transparency = 1 - 0.12,
			Blur = 2,
			Offset = UDim2.fromOffset(0, 2),
		},

		Ambient = {
			Transparency = 0.8,
			Blur = 3,
			Offset = UDim2.fromOffset(0, 1),
		},
	},

	[2] = {
		Umbra = {
			Transparency = 1 - 0.14,
			Blur = 4,
		},

		Penumbra = {
			Transparency = 1 - 0.12,
			Blur = 4,
			Offset = UDim2.fromOffset(0, 3),
		},

		Ambient = {
			Transparency = 0.8,
			Blur = 5,
			Offset = UDim2.fromOffset(0, 1),
		},
	},

	[3] = {
		Umbra = {
			Transparency = 1 - 0.14,
			Blur = 3,
			Offset = UDim2.fromOffset(0, 3),
		},

		Penumbra = {
			Transparency = 1 - 0.12,
			Blur = 4,
			Offset = UDim2.fromOffset(0, 3),
		},

		Ambient = {
			Transparency = 0.8,
			Blur = 8,
			Offset = UDim2.fromOffset(0, 1),
		},
	},

	[4] = {
		Umbra = {
			Transparency = 1 - 0.14,
			Blur = 4,
			Offset = UDim2.fromOffset(0, 2),
		},

		Penumbra = {
			Transparency = 1 - 0.12,
			Blur = 5,
			Offset = UDim2.fromOffset(0, 4),
		},

		Ambient = {
			Transparency = 0.8,
			Blur = 10,
			Offset = UDim2.fromOffset(0, 1),
		},
	},

	[6] = {
		Umbra = {
			Transparency = 1 - 0.14,
			Blur = 10,
			Offset = UDim2.fromOffset(0, 6),
		},

		Penumbra = {
			Transparency = 1 - 0.12,
			Blur = 18,
			Offset = UDim2.fromOffset(0, 1),
		},

		Ambient = {
			Transparency = 0.8,
			Blur = 5,
			Offset = UDim2.fromOffset(0, 3),
		},
	},

	[8] = {
		Umbra = {
			Transparency = 1 - 0.14,
			Blur = 10,
			Offset = UDim2.fromOffset(0, 8),
		},

		Penumbra = {
			Transparency = 1 - 0.12,
			Blur = 14,
			Offset = UDim2.fromOffset(0, 3),
		},

		Ambient = {
			Transparency = 0.8,
			Blur = 15,
			Offset = UDim2.fromOffset(0, 4),
		},
	},

	[9] = {
		Umbra = {
			Transparency = 1 - 0.14,
			Blur = 12,
			Offset = UDim2.fromOffset(0, 9),
		},

		Penumbra = {
			Transparency = 1 - 0.12,
			Blur = 16,
			Offset = UDim2.fromOffset(0, 3),
		},

		Ambient = {
			Transparency = 0.8,
			Blur = 6,
			Offset = UDim2.fromOffset(0, 5),
		},
	},

	[12] = {
		Umbra = {
			Transparency = 1 - 0.14,
			Blur = 17,
			Offset = UDim2.fromOffset(0, 12),
		},

		Penumbra = {
			Transparency = 1 - 0.12,
			Blur = 22,
			Offset = UDim2.fromOffset(0, 5),
		},

		Ambient = {
			Transparency = 0.8,
			Blur = 8,
			Offset = UDim2.fromOffset(0, 7),
		},
	},

	[16] = {
		Umbra = {
			Transparency = 1 - 0.14,
			Blur = 24,
			Offset = UDim2.fromOffset(0, 16),
		},

		Penumbra = {
			Transparency = 1 - 0.12,
			Blur = 30,
			Offset = UDim2.fromOffset(0, 6),
		},

		Ambient = {
			Transparency = 0.8,
			Blur = 10,
			Offset = UDim2.fromOffset(0, 8),
		},
	},
}

local SHADOW_TWEEN_DATA = {
	Time = 0.1,
	EasingStyle = "Deceleration",
	StepType = "Heartbeat",
}

local Shadow = Roact.PureComponent:extend("MaterialShadow")
Shadow.defaultProps = {
	ZIndex = 1,
}

Shadow.validateProps = t.interface({
	Elevation = t.union(
		t.literal(0),
		t.literal(1),
		t.literal(2),
		t.literal(3),
		t.literal(4),
		t.literal(6),
		t.literal(8),
		t.literal(9),
		t.literal(12),
		t.literal(16)
	),

	ZIndex = t.optional(t.integer),
})

function Shadow:init(props)
	assert(props.Elevation and SHADOW_SETTINGS[props.Elevation], "props.Elevation is invalid")
	local shadowProps = SHADOW_SETTINGS[props.Elevation]

	self:setState({
		_umbraTransparency = RoactAnimate.Value.new(shadowProps.Umbra.Transparency),
		_umbraSize = RoactAnimate.Value.new(UDim2.new(1, shadowProps.Umbra.Blur, 1, shadowProps.Umbra.Blur)),
		_umbraPosition = RoactAnimate.Value.new(CENTER_UDIM2 + (shadowProps.Umbra.Offset or EMPTY_UDIM2)),
		_penumbraTransparency = RoactAnimate.Value.new(shadowProps.Penumbra.Transparency),
		_penumbraSize = RoactAnimate.Value.new(UDim2.new(1, shadowProps.Penumbra.Blur, 1, shadowProps.Penumbra.Blur)),
		_penumbraPosition = RoactAnimate.Value.new(CENTER_UDIM2 + (shadowProps.Penumbra.Offset or EMPTY_UDIM2)),
		_ambientTransparency = RoactAnimate.Value.new(shadowProps.Ambient.Transparency),
		_ambientSize = RoactAnimate.Value.new(UDim2.new(1, shadowProps.Ambient.Blur, 1, shadowProps.Ambient.Blur)),
		_ambientPosition = RoactAnimate.Value.new(CENTER_UDIM2 + (shadowProps.Ambient.Offset or EMPTY_UDIM2)),
	})
end

function Shadow:willUpdate(nextProps)
	local shadowProps = SHADOW_SETTINGS[nextProps.Elevation]
	local animation = table.create(9)
	animation[1] = RoactAnimate(self.state._umbraTransparency, SHADOW_TWEEN_DATA, shadowProps.Umbra.Transparency)
	animation[2] = RoactAnimate(self.state._umbraSize, SHADOW_TWEEN_DATA, UDim2.new(1, shadowProps.Umbra.Blur, 1, shadowProps.Umbra.Blur))
	animation[3] = RoactAnimate(self.state._umbraPosition, SHADOW_TWEEN_DATA, CENTER_UDIM2 + (shadowProps.Umbra.Offset or EMPTY_UDIM2))
	animation[4] = RoactAnimate(self.state._penumbraTransparency, SHADOW_TWEEN_DATA, shadowProps.Penumbra.Transparency)
	animation[5] = RoactAnimate(self.state._penumbraSize, SHADOW_TWEEN_DATA, UDim2.new(1, shadowProps.Penumbra.Blur, 1, shadowProps.Penumbra.Blur))
	animation[6] = RoactAnimate(self.state._penumbraPosition, SHADOW_TWEEN_DATA, CENTER_UDIM2 + (shadowProps.Penumbra.Offset or EMPTY_UDIM2))
	animation[7] = RoactAnimate(self.state._ambientTransparency, SHADOW_TWEEN_DATA, shadowProps.Ambient.Transparency)
	animation[8] = RoactAnimate(self.state._ambientSize, SHADOW_TWEEN_DATA, UDim2.new(1, shadowProps.Ambient.Blur, 1, shadowProps.Ambient.Blur))
	animation[9] = RoactAnimate(self.state._ambientPosition, SHADOW_TWEEN_DATA, CENTER_UDIM2 + (shadowProps.Ambient.Offset or EMPTY_UDIM2))

	RoactAnimate.Parallel(animation):Start()
end

function Shadow:render()
	return Roact.createElement("Frame", {
		Name = "ShadowRoot",
		ZIndex = self.props.ZIndex,
		BackgroundTransparency = 1,
		Size = UDim2.fromScale(1, 1),
		[Roact.Ref] = function(rbx)
			self._rbx = rbx
		end,
	}, {
		Umbra = Roact.createElement(RoactAnimate.ImageLabel, {
			BackgroundTransparency = 1,
			Image = SHADOW_IMAGE,
			ImageColor3 = Color3.new(),
			ImageTransparency = self.state._umbraTransparency,
			Size = self.state._umbraSize,
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = self.state._umbraPosition,
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = Rect.new(10, 10, 118, 118),
		}),

		Penumbra = Roact.createElement(RoactAnimate.ImageLabel, {
			BackgroundTransparency = 1,
			Image = SHADOW_IMAGE,
			ImageColor3 = Color3.new(),
			ImageTransparency = self.state._penumbraTransparency,
			Size = self.state._penumbraSize,
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = self.state._penumbraPosition,
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = Rect.new(10, 10, 118, 118),
		}),

		Ambient = Roact.createElement(RoactAnimate.ImageLabel, {
			BackgroundTransparency = 1,
			Image = SHADOW_IMAGE,
			ImageColor3 = Color3.new(),
			ImageTransparency = self.state._ambientTransparency,
			Size = self.state._ambientSize,
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = self.state._ambientPosition,
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = Rect.new(10, 10, 118, 118),
		}),
	})
end

return Shadow
