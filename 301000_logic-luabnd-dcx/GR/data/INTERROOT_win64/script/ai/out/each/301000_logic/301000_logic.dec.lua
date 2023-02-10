function LostKnight_301000_Logic(arg0)
    COMMON_Initialize(arg0)
    if COMMON_EasySetup_Initial(arg0) == false then
        local local0 = arg0:GetEventRequest()
        local local1 = arg0:GetDist(TARGET_ENE_0)
        local local2 = arg0:IsSearchTarget(TARGET_ENE_0)
        local local3 = arg0:GetDist(POINT_INITIAL)
        local local4 = GetCurrentTimeType(arg0)
        local local5 = arg0:GetPrevTargetState()
        local local6 = arg0:GetCurrTargetState()
        local local7 = arg0:HasSpecialEffectId(TARGET_SELF, 10890)
        local local8 = arg0:HasSpecialEffectId(TARGET_SELF, 10164)
        local local9 = arg0:HasSpecialEffectId(TARGET_SELF, 10850)
        local local10 = arg0:HasSpecialEffectId(TARGET_SELF, 10851)
        local local11 = arg0:IsBattleState()
        if AI_TARGET_STATE__SEARCH <= local6 and local7 == true and arg0:HasSpecialEffectId(TARGET_SELF, 10891) == true then
            arg0:AddTopGoal(GOAL_COMMON_Turn, 1.5, TARGET_ENE_0, 45)
            arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, 20001, TARGET_ENE_0, DIST_None, 0, 0)
        elseif local6 <= AI_TARGET_STATE__NONE and local7 == true and arg0:HasSpecialEffectId(TARGET_SELF, 10892) == true then
            arg0:AddTopGoal(GOAL_COMMON_Wait, 2, TARGET_NONE)
            arg0:AddTopGoal(GOAL_COMMON_AttackTunableSpin, 10, 20000, TARGET_ENE_0, DIST_None, 0, 0)
        else
            COMMON_EasySetup3(arg0)
        end
    end
    return 
end

function LostKnight_301000_Interupt(arg0, arg1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetDist(TARGET_FRI_0)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = arg0:HasSpecialEffectId(TARGET_ENE_0, 90)
    local local4 = arg0:HasSpecialEffectId(TARGET_SELF, 10164)
    local local5 = arg0:HasSpecialEffectId(TARGET_SELF, 10850)
    local local6 = arg0:HasSpecialEffectId(TARGET_SELF, 10851)
    local local7 = arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, PLAN_SP_EFFECT_FALL_FROM_HORSE)
    if arg0:IsLadderAct(TARGET_SELF) then
        return false
    else
        return 
    end
end

return 
