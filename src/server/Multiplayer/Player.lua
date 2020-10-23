local AssertType = require(game.ReplicatedStorage.Shared.AssertType)

local Player = {}

function Player:new(player)
    AssertType:is_non_nil(player, "Player passed cannot be nil!")
    AssertType:is_classname(player, "Player")
    local self = {}
    self.marvelous_count = 0
    self.perfect_count = 0
    self.great_count = 0
    self.good_count = 0
    self.bad_count = 0
    self.miss_count = 0
    self.accuracy = 0
    self.combo = 0
    self.max_combo = 0
    self.score = 0
    self.name = ""
    self.player = player

    self.is_ready = false
    self.loading = false
    self.is_finished = false

    function self:cons()
        self.name = self.player.Name
    end

    function self:update_stats(stats)
        AssertType:is_non_nil(stats, "Stats cannot be nil!")
        AssertType:is_number(stats.marvelous_count, "Marvelous count must be a number!")
        AssertType:is_number(stats.perfect_count, "Perfect count must be a number!")
        AssertType:is_number(stats.great_count, "Great count must be a number!")
        AssertType:is_number(stats.good_count, "Good count must be a number!")
        AssertType:is_number(stats.bad_count, "Bad count must be a number!")
        AssertType:is_number(stats.miss_count, "Miss count must be a number!")
        AssertType:is_number(stats.accuracy, "Accuracy must be a number!")
        AssertType:is_number(stats.max_combo, "Max combo must be a number!")
        AssertType:is_number(stats.score, "Score must be a number!")
        AssertType:is_number(stats.combo, "Combo must be a number!")

        self.marvelous_count = stats.marvelous_count
        self.perfect_count = stats.perfect_count
        self.great_count = stats.great_count
        self.good_count = stats.good_count
        self.bad_count = stats.bad_count
        self.miss_count = stats.miss_count
        self.accuracy = stats.accuracy
        self.max_combo = stats.max_combo
        self.score = stats.score
        self.combo = stats.combo
    end

    function self:set_loading(val)
        AssertType:is_bool(val)
        self.loading = val
    end

    function self:set_finished(val)
        AssertType:is_bool(val)
        self.is_finished = val
    end

    function self:set_ready(val)
        AssertType:is_bool(val)
        self.is_ready = val
    end

    self:cons()

    return self
end

return Player