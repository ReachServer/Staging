-----------------------------------------
-- ID: 5582
-- Item: plate_of_patlican_salata
-- Food Effect: 180Min, All Races
-----------------------------------------
-- Agility 4
-- Vitality -1
-- Evasion +6
-- hHP +2
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
    target:addStatusEffect(EFFECT_FOOD,0,0,10800,5582);
end;

function onEffectGain(target, effect)
    target:addMod(MOD_AGI, 4);
    target:addMod(MOD_VIT, -1);
    target:addMod(MOD_EVA, 6);
    target:addMod(MOD_HPHEAL, 2);
end;

function onEffectLose(target, effect)
    target:delMod(MOD_AGI, 4);
    target:delMod(MOD_VIT, -1);
    target:delMod(MOD_EVA, 6);
    target:delMod(MOD_HPHEAL, 2);
end;
