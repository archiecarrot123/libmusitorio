if settings.startup["musitorio-remove-title-music"].value then
    data.raw["ambient-sound"]["main-menu"] = nil
end
if settings.startup["musitorio-remove-game-music"].value then
    tracknames = {
        "after-the-crash", "automation", "resource-deficiency", 
        "are-we-alone", "beyond-factory-outskirts", "censeqs-discrepancy",
        "efficiency-program", "expansion", "the-search-for-iron",
        "gathering-horizon", "research-and-minerals", "solar-intervention",
        "the-oil-industry", "the-right-tools", "pollution", "turbine-dynamics",
        "sentient", "anomaly", "first-light", "transmit", "swell-pad",
        "world-ambience-3", "world-ambience-4", "world-ambience-5",
        "world-ambience-6"
    }
    for i, track in ipairs(tracknames) do
        data.raw["ambient-sound"][track] = nil
    end
end
