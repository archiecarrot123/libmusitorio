function add_music (tracks, menutrack, menutrack_included)
    log(serpent.block(tracks))
    for i, track in ipairs(tracks) do
        if not track.track_type then --if the track type is undefined then set it
            if i%2 == 1 then --if the track number is odd it is a main track otherwise it is an interlude
                track.track_type = "main-track"
            else
                track.track_type = "interlude" --making some tracks interludes fixes the problem where the game will play one song and then just stop
            end
        end
        
        data:extend({
        {   type = "ambient-sound",
            name = track.trackname,
            sound = {filename = track.file},
            track_type = track.track_type
        }})
    end
    if menutrack ~= 0 then
        if menutrack_included then
            data:extend({
            {   type = "ambient-sound",
                name = tracks[menutrack].trackname,
                sound = {filename = tracks[menutrack].file},
                track_type = "menu-track"
            }})
        else
            data.raw["ambient-sound"][tracks[menutrack].trackname].track_type = "menu-track"
        end
    end
end
