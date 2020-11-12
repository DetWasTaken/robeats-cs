local ScoreOverlay = require(script.Parent.ScoreOverlay)
local Roact = require(game.ReplicatedStorage.Libraries.Roact)

return function(target)
    local fr = Roact.createElement(ScoreOverlay, {
        marvs = 20000045484515336;
        perfs = 54645561516615615115162151615616511651511;
        greats = 41461461533451621536421163541163512615312216153615365131;
        goods = 654534165413654136541365413654132265341256413256413156413165413165413;
        bads = 4514561836458164581314568131564138115413854183645816851468518153114618564185164185;
        misses = 56464531645316451345151515134531451364531164531645311645136451364513645138645136451364513;
        score = 4545646541511451362451362145162345136214516324513624153624153612214513621453261145136211451326453612;
        accuracy = 645131654132116514325614325641321615432615432216514321615432516432161543216514321564231561432156413156413;
        time_left = 5614151632156132516321516321561326135261352161532321532665131531513161532156321156321615321615321651326152316153;
        combo = 5454468546514561364513164513645314513456134516345163645132645314513651342161435264153415636451361543653142651431654165416415615111
    })

    local tree = Roact.mount(fr, target)

    return function()
        Roact.unmount(tree)
    end
end