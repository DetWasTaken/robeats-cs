local Roact = require(script.Parent.Parent.Parent.ReplicatedStorage.Roact)
local SettingsUI = Roact.PureComponent:extend("SettingsUI")

function SettingsUI:init()
end

function SettingsUI:render()
	return Roact.createElement("Frame", {
		Name = "SettingsUI",
		AnchorPoint = Vector2.new(0.5, 0.5),
		BackgroundColor3 = Color3.fromRGB(35, 35, 35),
		BorderSizePixel = 0,
		Position = UDim2.new(0.5, 0, 0.5, 0),
		Size = UDim2.new(1, 0, 1, 0),
	}, {
		Roact.createElement("Frame", {
			Name = "TabContainer",
			AnchorPoint = Vector2.new(0.5, 0),
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Position = UDim2.new(0.5, 0, 0.00999999978, 0),
			Size = UDim2.new(0.985000014, 0, 0.0549999997, 0),
		}, {
			Roact.createElement("TextButton", {
				Name = "BackButton",
				BackgroundColor3 = Color3.fromRGB(20, 20, 20),
				Size = UDim2.new(0.200000003, 0, 1, 0),
				Font = Enum.Font.SourceSansBold,
				Text = "",
				TextColor3 = Color3.fromRGB(0, 0, 0),
				TextSize = 22,
				TextWrapped = true,
			}, {
				Roact.createElement("UICorner", {
					CornerRadius = UDim.new(0, 4),
				}),
				Roact.createElement("TextLabel", {
					Name = "Label",
					AnchorPoint = Vector2.new(0.5, 0.5),
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BackgroundTransparency = 1,
					Position = UDim2.new(0.5, 0, 0.5, 0),
					Size = UDim2.new(0.75, 0, 0.5, 0),
					Font = Enum.Font.GothamSemibold,
					Text = "Back",
					TextColor3 = Color3.fromRGB(255, 255, 255),
					TextScaled = true,
					TextSize = 14,
					TextWrapped = true,
				})
			}),
			Roact.createElement("UIGridLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				CellPadding = UDim2.new(0.00999999978, 0, 0.100000001, 0),
				CellSize = UDim2.new(0.189999998, 0, 1, 0),
			}),
			Roact.createElement("TextButton", {
				Name = "Reset",
				BackgroundColor3 = Color3.fromRGB(255, 20, 20),
				Position = UDim2.new(0.0905456394, 0, 0.843999922, 0),
				Size = UDim2.new(0.178646594, 0, 0.100000001, 0),
				Font = Enum.Font.SourceSans,
				Text = "",
				TextColor3 = Color3.fromRGB(0, 0, 0),
				TextSize = 25,
				TextWrapped = true,
			}, {
				Roact.createElement("UICorner", {
					CornerRadius = UDim.new(0, 4),
				}),
				Roact.createElement("TextLabel", {
					Name = "Label",
					AnchorPoint = Vector2.new(0.5, 0.5),
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BackgroundTransparency = 1,
					Position = UDim2.new(0.5, 0, 0.5, 0),
					Size = UDim2.new(0.75, 0, 0.5, 0),
					Font = Enum.Font.GothamSemibold,
					Text = "Reset",
					TextColor3 = Color3.fromRGB(255, 255, 255),
					TextScaled = true,
					TextSize = 14,
					TextWrapped = true,
				})
			})
		}),
		Roact.createElement("Frame", {
			Name = "SectionContainer",
			AnchorPoint = Vector2.new(0.5, 1),
			BackgroundColor3 = Color3.fromRGB(255, 255, 255),
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Position = UDim2.new(0.5, 0, 0.99000001, 0),
			Size = UDim2.new(0.985000014, 0, 0.915000021, 0),
		}, {
			Roact.createElement("Frame", {
				Name = "Keybinds",
				AnchorPoint = Vector2.new(0.5, 0),
				BackgroundColor3 = Color3.fromRGB(25, 25, 25),
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Position = UDim2.new(0.5, 0, 0, 0),
				Size = UDim2.new(1, 0, 0.200000003, 0),
			}, {
				Roact.createElement("TextLabel", {
					Name = "Label",
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BackgroundTransparency = 1,
					Position = UDim2.new(0.0149999997, 0, 0.0500000007, 0),
					Size = UDim2.new(0.25, 0, 0.150000006, 0),
					Font = Enum.Font.GothamSemibold,
					Text = "Keybinds",
					TextColor3 = Color3.fromRGB(255, 255, 255),
					TextScaled = true,
					TextSize = 20,
					TextStrokeTransparency = 0,
					TextWrapped = true,
					TextXAlignment = Enum.TextXAlignment.Left,
				}),
				Roact.createElement("TextButton", {
					Name = "Keybind1",
					BackgroundColor3 = Color3.fromRGB(15, 15, 15),
					BorderSizePixel = 0,
					Position = UDim2.new(0.0399999805, 0, 0.472151011, 0),
					Size = UDim2.new(0.200000003, 0, 0.417849004, 0),
					Font = Enum.Font.SourceSans,
					Text = "",
					TextColor3 = Color3.fromRGB(0, 0, 0),
					TextScaled = true,
					TextSize = 14,
					TextTransparency = 1,
					TextWrapped = true,
				}, {
					Roact.createElement("UITextSizeConstraint", {
						MaxTextSize = 20,
						MinTextSize = 7,
					}),
					Roact.createElement("TextLabel", {
						Name = "Label",
						BackgroundColor3 = Color3.fromRGB(255, 255, 255),
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						Position = UDim2.new(0, 0, -0.400000006, 0),
						Size = UDim2.new(1, 0, 0.349999994, 0),
						Font = Enum.Font.GothamSemibold,
						Text = "Track 1",
						TextColor3 = Color3.fromRGB(255, 255, 255),
						TextScaled = true,
						TextSize = 14,
						TextWrapped = true,
					}),
					Roact.createElement("UICorner", {
						CornerRadius = UDim.new(0, 4),
					}),
					Roact.createElement("TextLabel", {
						Name = "KeybindLabel",
						AnchorPoint = Vector2.new(0.5, 0.5),
						BackgroundColor3 = Color3.fromRGB(255, 255, 255),
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						Position = UDim2.new(0.5, 0, 0.5, 0),
						Size = UDim2.new(0.5, 0, 0.5, 0),
						Font = Enum.Font.GothamSemibold,
						Text = "A",
						TextColor3 = Color3.fromRGB(255, 255, 255),
						TextScaled = true,
						TextSize = 14,
						TextWrapped = true,
					})
				}),
				Roact.createElement("TextButton", {
					Name = "Keybind2",
					BackgroundColor3 = Color3.fromRGB(15, 15, 15),
					BorderSizePixel = 0,
					Position = UDim2.new(0.280000031, 0, 0.472151011, 0),
					Size = UDim2.new(0.200000003, 0, 0.417849004, 0),
					Font = Enum.Font.SourceSans,
					Text = "",
					TextColor3 = Color3.fromRGB(0, 0, 0),
					TextScaled = true,
					TextSize = 14,
					TextTransparency = 1,
					TextWrapped = true,
				}, {
					Roact.createElement("UITextSizeConstraint", {
						MaxTextSize = 20,
						MinTextSize = 7,
					}),
					Roact.createElement("TextLabel", {
						Name = "Label",
						BackgroundColor3 = Color3.fromRGB(255, 255, 255),
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						Position = UDim2.new(0, 0, -0.400000006, 0),
						Size = UDim2.new(1, 0, 0.349999994, 0),
						Font = Enum.Font.GothamSemibold,
						Text = "Track 2",
						TextColor3 = Color3.fromRGB(255, 255, 255),
						TextScaled = true,
						TextSize = 14,
						TextWrapped = true,
					}),
					Roact.createElement("UICorner", {
						CornerRadius = UDim.new(0, 4),
					}),
					Roact.createElement("TextLabel", {
						Name = "KeybindLabel",
						AnchorPoint = Vector2.new(0.5, 0.5),
						BackgroundColor3 = Color3.fromRGB(255, 255, 255),
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						Position = UDim2.new(0.5, 0, 0.5, 0),
						Size = UDim2.new(0.5, 0, 0.5, 0),
						Font = Enum.Font.GothamSemibold,
						Text = "S",
						TextColor3 = Color3.fromRGB(255, 255, 255),
						TextScaled = true,
						TextSize = 14,
						TextWrapped = true,
					})
				}),
				Roact.createElement("TextButton", {
					Name = "Keybind3",
					BackgroundColor3 = Color3.fromRGB(15, 15, 15),
					BorderSizePixel = 0,
					Position = UDim2.new(0.512000084, 0, 0.472151011, 0),
					Size = UDim2.new(0.200000003, 0, 0.417849004, 0),
					Font = Enum.Font.SourceSans,
					Text = "",
					TextColor3 = Color3.fromRGB(0, 0, 0),
					TextScaled = true,
					TextSize = 14,
					TextTransparency = 1,
					TextWrapped = true,
				}, {
					Roact.createElement("UITextSizeConstraint", {
						MaxTextSize = 20,
						MinTextSize = 7,
					}),
					Roact.createElement("TextLabel", {
						Name = "Label",
						BackgroundColor3 = Color3.fromRGB(255, 255, 255),
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						Position = UDim2.new(0, 0, -0.400000006, 0),
						Size = UDim2.new(1, 0, 0.349999994, 0),
						Font = Enum.Font.GothamSemibold,
						Text = "Track 3",
						TextColor3 = Color3.fromRGB(255, 255, 255),
						TextScaled = true,
						TextSize = 14,
						TextWrapped = true,
					}),
					Roact.createElement("UICorner", {
						CornerRadius = UDim.new(0, 4),
					}),
					Roact.createElement("TextLabel", {
						Name = "KeybindLabel",
						AnchorPoint = Vector2.new(0.5, 0.5),
						BackgroundColor3 = Color3.fromRGB(255, 255, 255),
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						Position = UDim2.new(0.5, 0, 0.5, 0),
						Size = UDim2.new(0.5, 0, 0.5, 0),
						Font = Enum.Font.GothamSemibold,
						Text = "K",
						TextColor3 = Color3.fromRGB(255, 255, 255),
						TextScaled = true,
						TextSize = 14,
						TextWrapped = true,
					})
				}),
				Roact.createElement("TextButton", {
					Name = "Keybind4",
					BackgroundColor3 = Color3.fromRGB(15, 15, 15),
					BorderSizePixel = 0,
					Position = UDim2.new(0.747999907, 0, 0.472151011, 0),
					Size = UDim2.new(0.200000003, 0, 0.417849004, 0),
					Font = Enum.Font.SourceSans,
					Text = "",
					TextColor3 = Color3.fromRGB(0, 0, 0),
					TextScaled = true,
					TextSize = 14,
					TextTransparency = 1,
					TextWrapped = true,
				}, {
					Roact.createElement("UITextSizeConstraint", {
						MaxTextSize = 20,
						MinTextSize = 7,
					}),
					Roact.createElement("TextLabel", {
						Name = "Label",
						BackgroundColor3 = Color3.fromRGB(255, 255, 255),
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						Position = UDim2.new(0, 0, -0.400000006, 0),
						Size = UDim2.new(1, 0, 0.349999994, 0),
						Font = Enum.Font.GothamSemibold,
						Text = "Track 4",
						TextColor3 = Color3.fromRGB(255, 255, 255),
						TextScaled = true,
						TextSize = 14,
						TextWrapped = true,
					}),
					Roact.createElement("UICorner", {
						CornerRadius = UDim.new(0, 4),
					}),
					Roact.createElement("TextLabel", {
						Name = "KeybindLabel",
						AnchorPoint = Vector2.new(0.5, 0.5),
						BackgroundColor3 = Color3.fromRGB(255, 255, 255),
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						Position = UDim2.new(0.5, 0, 0.5, 0),
						Size = UDim2.new(0.5, 0, 0.5, 0),
						Font = Enum.Font.GothamSemibold,
						Text = "L",
						TextColor3 = Color3.fromRGB(255, 255, 255),
						TextScaled = true,
						TextSize = 14,
						TextWrapped = true,
					})
				}),
				Roact.createElement("UICorner", {
					CornerRadius = UDim.new(0, 4),
				})
			}),
			Roact.createElement("Frame", {
				Name = "Offset",
				BackgroundColor3 = Color3.fromRGB(25, 25, 25),
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Position = UDim2.new(0.0571428575, 0, 0.592646599, 0),
				Size = UDim2.new(0.883539081, 0, 0.200000003, 0),
			}, {
				Roact.createElement("TextLabel", {
					Name = "Label",
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BackgroundTransparency = 1,
					Position = UDim2.new(0.0149999997, 0, 0.0500000007, 0),
					Size = UDim2.new(0.25, 0, 0.150000006, 0),
					Font = Enum.Font.GothamSemibold,
					Text = "Offset",
					TextColor3 = Color3.fromRGB(255, 255, 255),
					TextScaled = true,
					TextSize = 20,
					TextStrokeTransparency = 0,
					TextWrapped = true,
					TextXAlignment = Enum.TextXAlignment.Left,
				}),
				Roact.createElement("UICorner", {
					CornerRadius = UDim.new(0, 4),
				}),
				Roact.createElement("TextButton", {
					Name = "Minus",
					AnchorPoint = Vector2.new(0, 0.5),
					BackgroundColor3 = Color3.fromRGB(255, 58, 58),
					BorderSizePixel = 0,
					Position = UDim2.new(0.0500000007, 0, 0.600000024, 0),
					Size = UDim2.new(0.200000003, 0, 0.349999994, 0),
					Font = Enum.Font.SourceSans,
					Text = "",
					TextColor3 = Color3.fromRGB(0, 0, 0),
					TextSize = 14,
				}, {
					Roact.createElement("UICorner", {
						CornerRadius = UDim.new(0, 4),
					}),
					Roact.createElement("TextLabel", {
						Name = "Label",
						AnchorPoint = Vector2.new(0.5, 0.5),
						BackgroundColor3 = Color3.fromRGB(255, 255, 255),
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						Position = UDim2.new(0.5, 0, 0.5, 0),
						Size = UDim2.new(0.5, 0, 0.5, 0),
						Font = Enum.Font.GothamSemibold,
						Text = "-",
						TextColor3 = Color3.fromRGB(255, 255, 255),
						TextScaled = true,
						TextSize = 14,
						TextWrapped = true,
					})
				}),
				Roact.createElement("TextButton", {
					Name = "Plus",
					AnchorPoint = Vector2.new(0, 0.5),
					BackgroundColor3 = Color3.fromRGB(16, 212, 82),
					BorderSizePixel = 0,
					Position = UDim2.new(0.747999966, 0, 0.600000024, 0),
					Size = UDim2.new(0.200000003, 0, 0.349999994, 0),
					Font = Enum.Font.SourceSans,
					Text = "",
					TextColor3 = Color3.fromRGB(0, 0, 0),
					TextSize = 14,
				}, {
					Roact.createElement("UICorner", {
						CornerRadius = UDim.new(0, 4),
					}),
					Roact.createElement("TextLabel", {
						Name = "Label",
						AnchorPoint = Vector2.new(0.5, 0.5),
						BackgroundColor3 = Color3.fromRGB(255, 255, 255),
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						Position = UDim2.new(0.5, 0, 0.5, 0),
						Size = UDim2.new(0.5, 0, 0.5, 0),
						Font = Enum.Font.GothamSemibold,
						Text = "+",
						TextColor3 = Color3.fromRGB(255, 255, 255),
						TextScaled = true,
						TextSize = 14,
						TextWrapped = true,
					})
				}),
				Roact.createElement("TextLabel", {
					Name = "Display",
					AnchorPoint = Vector2.new(0.5, 0.5),
					BackgroundColor3 = Color3.fromRGB(15, 15, 15),
					BorderSizePixel = 0,
					Position = UDim2.new(0.5, 0, 0.600000024, 0),
					Size = UDim2.new(0.449999988, 0, 0.349999994, 0),
					Font = Enum.Font.SourceSans,
					Text = "",
					TextColor3 = Color3.fromRGB(156, 156, 156),
					TextScaled = true,
					TextSize = 14,
					TextTransparency = 1,
					TextWrapped = true,
				}, {
					Roact.createElement("UICorner", {
						CornerRadius = UDim.new(0, 4),
					}),
					Roact.createElement("TextLabel", {
						Name = "Label",
						AnchorPoint = Vector2.new(0.5, 0.5),
						BackgroundColor3 = Color3.fromRGB(255, 255, 255),
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						Position = UDim2.new(0.5, 0, 0.5, 0),
						Size = UDim2.new(0.5, 0, 0.5, 0),
						Font = Enum.Font.GothamSemibold,
						Text = "0",
						TextColor3 = Color3.fromRGB(255, 255, 255),
						TextScaled = true,
						TextSize = 14,
						TextWrapped = true,
					})
				})
			}),
			Roact.createElement("Frame", {
				Name = "Notespeed",
				AnchorPoint = Vector2.new(0.5, 0),
				BackgroundColor3 = Color3.fromRGB(25, 25, 25),
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Position = UDim2.new(0.5, 0, 0.215000004, 0),
				Size = UDim2.new(1, 0, 0.200000003, 0),
			}, {
				Roact.createElement("TextButton", {
					Name = "Minus",
					AnchorPoint = Vector2.new(0, 0.5),
					BackgroundColor3 = Color3.fromRGB(255, 58, 58),
					BorderSizePixel = 0,
					Position = UDim2.new(0.0500000007, 0, 0.600000024, 0),
					Size = UDim2.new(0.200000003, 0, 0.349999994, 0),
					Font = Enum.Font.SourceSans,
					Text = "",
					TextColor3 = Color3.fromRGB(0, 0, 0),
					TextSize = 14,
				}, {
					Roact.createElement("UICorner", {
						CornerRadius = UDim.new(0, 4),
					}),
					Roact.createElement("TextLabel", {
						Name = "Label",
						AnchorPoint = Vector2.new(0.5, 0.5),
						BackgroundColor3 = Color3.fromRGB(255, 255, 255),
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						Position = UDim2.new(0.5, 0, 0.5, 0),
						Size = UDim2.new(0.5, 0, 0.5, 0),
						Font = Enum.Font.GothamSemibold,
						Text = "-",
						TextColor3 = Color3.fromRGB(255, 255, 255),
						TextScaled = true,
						TextSize = 14,
						TextWrapped = true,
					})
				}),
				Roact.createElement("TextButton", {
					Name = "Plus",
					AnchorPoint = Vector2.new(0, 0.5),
					BackgroundColor3 = Color3.fromRGB(16, 212, 82),
					BorderSizePixel = 0,
					Position = UDim2.new(0.747999966, 0, 0.600000024, 0),
					Size = UDim2.new(0.200000003, 0, 0.349999994, 0),
					Font = Enum.Font.SourceSans,
					Text = "",
					TextColor3 = Color3.fromRGB(0, 0, 0),
					TextSize = 14,
				}, {
					Roact.createElement("UICorner", {
						CornerRadius = UDim.new(0, 4),
					}),
					Roact.createElement("TextLabel", {
						Name = "Label",
						AnchorPoint = Vector2.new(0.5, 0.5),
						BackgroundColor3 = Color3.fromRGB(255, 255, 255),
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						Position = UDim2.new(0.5, 0, 0.5, 0),
						Size = UDim2.new(0.5, 0, 0.5, 0),
						Font = Enum.Font.GothamSemibold,
						Text = "+",
						TextColor3 = Color3.fromRGB(255, 255, 255),
						TextScaled = true,
						TextSize = 14,
						TextWrapped = true,
					})
				}),
				Roact.createElement("TextLabel", {
					Name = "Display",
					AnchorPoint = Vector2.new(0.5, 0.5),
					BackgroundColor3 = Color3.fromRGB(15, 15, 15),
					BorderSizePixel = 0,
					Position = UDim2.new(0.5, 0, 0.600000024, 0),
					Size = UDim2.new(0.449999988, 0, 0.349999994, 0),
					Font = Enum.Font.SourceSans,
					Text = "",
					TextColor3 = Color3.fromRGB(156, 156, 156),
					TextScaled = true,
					TextSize = 14,
					TextTransparency = 1,
					TextWrapped = true,
				}, {
					Roact.createElement("UICorner", {
						CornerRadius = UDim.new(0, 4),
					}),
					Roact.createElement("TextLabel", {
						Name = "Label",
						AnchorPoint = Vector2.new(0.5, 0.5),
						BackgroundColor3 = Color3.fromRGB(255, 255, 255),
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						Position = UDim2.new(0.5, 0, 0.5, 0),
						Size = UDim2.new(0.5, 0, 0.5, 0),
						Font = Enum.Font.GothamSemibold,
						Text = "0123456789 ms",
						TextColor3 = Color3.fromRGB(255, 255, 255),
						TextScaled = true,
						TextSize = 14,
						TextWrapped = true,
					})
				}),
				Roact.createElement("TextLabel", {
					Name = "Label",
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BackgroundTransparency = 1,
					Position = UDim2.new(0.0149999997, 0, 0.0500000007, 0),
					Size = UDim2.new(0.25, 0, 0.150000006, 0),
					Font = Enum.Font.GothamSemibold,
					Text = "Notespeed",
					TextColor3 = Color3.fromRGB(255, 255, 255),
					TextScaled = true,
					TextSize = 20,
					TextStrokeTransparency = 0,
					TextWrapped = true,
					TextXAlignment = Enum.TextXAlignment.Left,
				}),
				Roact.createElement("UICorner", {
					CornerRadius = UDim.new(0, 4),
				})
			}),
			Roact.createElement("UIGridLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				CellPadding = UDim2.new(0.00999999978, 0, 0.00999999978, 0),
				CellSize = UDim2.new(0.49000001, 0, 0.200000003, 0),
			}),
			Roact.createElement("Frame", {
				Name = "TimingPresets",
				AnchorPoint = Vector2.new(0.5, 0),
				BackgroundColor3 = Color3.fromRGB(25, 25, 25),
				BorderColor3 = Color3.fromRGB(0, 0, 0),
				BorderSizePixel = 0,
				Position = UDim2.new(0.5, 0, 0, 0),
				Size = UDim2.new(1, 0, 0.200000003, 0),
			}, {
				Roact.createElement("TextLabel", {
					Name = "Label",
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BackgroundTransparency = 1,
					Position = UDim2.new(0.0149999997, 0, 0.0500000007, 0),
					Size = UDim2.new(0.25, 0, 0.150000006, 0),
					Font = Enum.Font.GothamSemibold,
					Text = "Timing Presets",
					TextColor3 = Color3.fromRGB(255, 255, 255),
					TextScaled = true,
					TextSize = 20,
					TextStrokeTransparency = 0,
					TextWrapped = true,
					TextXAlignment = Enum.TextXAlignment.Left,
				}),
				Roact.createElement("TextButton", {
					Name = "Option1",
					BackgroundColor3 = Color3.fromRGB(15, 15, 15),
					BorderSizePixel = 0,
					Position = UDim2.new(0.0399999805, 0, 0.472151011, 0),
					Size = UDim2.new(0.200000003, 0, 0.417849004, 0),
					Font = Enum.Font.SourceSans,
					Text = "",
					TextColor3 = Color3.fromRGB(0, 0, 0),
					TextScaled = true,
					TextSize = 14,
					TextTransparency = 1,
					TextWrapped = true,
				}, {
					Roact.createElement("UITextSizeConstraint", {
						MaxTextSize = 20,
						MinTextSize = 7,
					}),
					Roact.createElement("TextLabel", {
						Name = "Label",
						BackgroundColor3 = Color3.fromRGB(255, 255, 255),
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						Position = UDim2.new(0, 0, -0.400000006, 0),
						Size = UDim2.new(1, 0, 0.349999994, 0),
						Font = Enum.Font.GothamSemibold,
						Text = "Lenient",
						TextColor3 = Color3.fromRGB(255, 255, 255),
						TextScaled = true,
						TextSize = 14,
						TextWrapped = true,
					}),
					Roact.createElement("UICorner", {
						CornerRadius = UDim.new(0, 4),
					}),
					Roact.createElement("TextLabel", {
						Name = "KeybindLabel",
						AnchorPoint = Vector2.new(0.5, 0.5),
						BackgroundColor3 = Color3.fromRGB(255, 255, 255),
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						Position = UDim2.new(0.5, 0, 0.5, 0),
						Size = UDim2.new(0.5, 0, 0.5, 0),
						Font = Enum.Font.GothamSemibold,
						Text = "Set",
						TextColor3 = Color3.fromRGB(255, 255, 255),
						TextScaled = true,
						TextSize = 14,
						TextWrapped = true,
					})
				}),
				Roact.createElement("TextButton", {
					Name = "Option2",
					BackgroundColor3 = Color3.fromRGB(15, 15, 15),
					BorderSizePixel = 0,
					Position = UDim2.new(0.280000031, 0, 0.472151011, 0),
					Size = UDim2.new(0.200000003, 0, 0.417849004, 0),
					Font = Enum.Font.SourceSans,
					Text = "",
					TextColor3 = Color3.fromRGB(0, 0, 0),
					TextScaled = true,
					TextSize = 14,
					TextTransparency = 1,
					TextWrapped = true,
				}, {
					Roact.createElement("UITextSizeConstraint", {
						MaxTextSize = 20,
						MinTextSize = 7,
					}),
					Roact.createElement("TextLabel", {
						Name = "Label",
						BackgroundColor3 = Color3.fromRGB(255, 255, 255),
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						Position = UDim2.new(0, 0, -0.400000006, 0),
						Size = UDim2.new(1, 0, 0.349999994, 0),
						Font = Enum.Font.GothamSemibold,
						Text = "Standard",
						TextColor3 = Color3.fromRGB(255, 255, 255),
						TextScaled = true,
						TextSize = 14,
						TextWrapped = true,
					}),
					Roact.createElement("UICorner", {
						CornerRadius = UDim.new(0, 4),
					}),
					Roact.createElement("TextLabel", {
						Name = "KeybindLabel",
						AnchorPoint = Vector2.new(0.5, 0.5),
						BackgroundColor3 = Color3.fromRGB(255, 255, 255),
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						Position = UDim2.new(0.5, 0, 0.5, 0),
						Size = UDim2.new(0.5, 0, 0.5, 0),
						Font = Enum.Font.GothamSemibold,
						Text = "Set",
						TextColor3 = Color3.fromRGB(255, 255, 255),
						TextScaled = true,
						TextSize = 14,
						TextWrapped = true,
					})
				}),
				Roact.createElement("TextButton", {
					Name = "Option3",
					BackgroundColor3 = Color3.fromRGB(15, 15, 15),
					BorderSizePixel = 0,
					Position = UDim2.new(0.512000084, 0, 0.472151011, 0),
					Size = UDim2.new(0.200000003, 0, 0.417849004, 0),
					Font = Enum.Font.SourceSans,
					Text = "",
					TextColor3 = Color3.fromRGB(0, 0, 0),
					TextScaled = true,
					TextSize = 14,
					TextTransparency = 1,
					TextWrapped = true,
				}, {
					Roact.createElement("UITextSizeConstraint", {
						MaxTextSize = 20,
						MinTextSize = 7,
					}),
					Roact.createElement("TextLabel", {
						Name = "Label",
						BackgroundColor3 = Color3.fromRGB(255, 255, 255),
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						Position = UDim2.new(0, 0, -0.400000006, 0),
						Size = UDim2.new(1, 0, 0.349999994, 0),
						Font = Enum.Font.GothamSemibold,
						Text = "Strict",
						TextColor3 = Color3.fromRGB(255, 255, 255),
						TextScaled = true,
						TextSize = 14,
						TextWrapped = true,
					}),
					Roact.createElement("UICorner", {
						CornerRadius = UDim.new(0, 4),
					}),
					Roact.createElement("TextLabel", {
						Name = "KeybindLabel",
						AnchorPoint = Vector2.new(0.5, 0.5),
						BackgroundColor3 = Color3.fromRGB(255, 255, 255),
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						Position = UDim2.new(0.5, 0, 0.5, 0),
						Size = UDim2.new(0.5, 0, 0.5, 0),
						Font = Enum.Font.GothamSemibold,
						Text = "Set",
						TextColor3 = Color3.fromRGB(255, 255, 255),
						TextScaled = true,
						TextSize = 14,
						TextWrapped = true,
					})
				}),
				Roact.createElement("TextButton", {
					Name = "Option4",
					BackgroundColor3 = Color3.fromRGB(15, 15, 15),
					BorderSizePixel = 0,
					Position = UDim2.new(0.747999907, 0, 0.472151011, 0),
					Size = UDim2.new(0.200000003, 0, 0.417849004, 0),
					Font = Enum.Font.SourceSans,
					Text = "",
					TextColor3 = Color3.fromRGB(0, 0, 0),
					TextScaled = true,
					TextSize = 14,
					TextTransparency = 1,
					TextWrapped = true,
				}, {
					Roact.createElement("UITextSizeConstraint", {
						MaxTextSize = 20,
						MinTextSize = 7,
					}),
					Roact.createElement("TextLabel", {
						Name = "Label",
						BackgroundColor3 = Color3.fromRGB(255, 255, 255),
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						Position = UDim2.new(0, 0, -0.400000006, 0),
						Size = UDim2.new(1, 0, 0.349999994, 0),
						Font = Enum.Font.GothamSemibold,
						Text = "Extreme",
						TextColor3 = Color3.fromRGB(255, 255, 255),
						TextScaled = true,
						TextSize = 14,
						TextWrapped = true,
					}),
					Roact.createElement("UICorner", {
						CornerRadius = UDim.new(0, 4),
					}),
					Roact.createElement("TextLabel", {
						Name = "KeybindLabel",
						AnchorPoint = Vector2.new(0.5, 0.5),
						BackgroundColor3 = Color3.fromRGB(255, 255, 255),
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						Position = UDim2.new(0.5, 0, 0.5, 0),
						Size = UDim2.new(0.5, 0, 0.5, 0),
						Font = Enum.Font.GothamSemibold,
						Text = "Set",
						TextColor3 = Color3.fromRGB(255, 255, 255),
						TextScaled = true,
						TextSize = 14,
						TextWrapped = true,
					})
				}),
				Roact.createElement("UICorner", {
					CornerRadius = UDim.new(0, 4),
				})
			})
		})
	})
end

return SettingsUI
