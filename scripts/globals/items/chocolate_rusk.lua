-----------------------------------------
-- ID: 5783
-- Item: chocolate_rusk
-- Food Effect: 30 Min, All Races
-----------------------------------------
-- Increases rate of high-quality synthesis. (?)
-- Reduces chance of synthesis material loss. (?)
-----------------------------------------
require("scripts/globals/status");
-----------------------------------------

function onItemCheck(target)
    local result = 0;
    if (target:hasStatusEffect(EFFECT_FOOD) == true or target:hasStatusEffect(EFFECT_FIELD_SUPPORT_FOOD) == true) then
        result = 246;
    end
    return result;
end;

function onItemUse(target)
    target:addStatusEffect(EFFECT_FOOD,0,0,1800,5783);
end;

-----------------------------------------
-- onEffectGain Action
-----------------------------------------

function onEffectGain(target,effect)
    -- target:addMod(MOD_INCREASES_RATE_OF_HQ_SYNTHESIS, 2);
    -- target:addMod(MOD_REDUCES_CHANCE_OF_MATERIAL_LOSS, 2);
end;

function onEffectLose(target, effect)
    -- target:delMod(MOD_INCREASES_RATE_OF_HQ_SYNTHESIS, 2);
    -- target:delMod(MOD_REDUCES_CHANCE_OF_MATERIAL_LOSS, 2);
end;
