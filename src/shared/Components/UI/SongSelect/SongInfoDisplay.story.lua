local Roact = require(game.ReplicatedStorage.Libraries.Roact)

local SongInfoDisplay = require(game.ReplicatedStorage.Shared.Components.UI.SongSelect.SongInfoDisplay)

return function(target)
    local testApp = Roact.createElement(SongInfoDisplay, {
        song_key = 1
    })

    local fr = Roact.mount(testApp, target)

    return function()
        Roact.unmount(fr)
    end 
end