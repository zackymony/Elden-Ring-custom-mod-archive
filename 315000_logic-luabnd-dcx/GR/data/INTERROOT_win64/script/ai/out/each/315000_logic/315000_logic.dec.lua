function RuneHunterKnight315000_Logic(arg0)
    COMMON_Initialize(arg0)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 11805)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 11825)
    if COMMON_EasySetup_Initial(arg0) == false then
        local local0 = arg0:GetEventRequest()
        local local1 = arg0:IsSearchTarget(TARGET_ENE_0)
        local local2 = arg0:GetDist(TARGET_ENE_0)
        if local0 == 100 then
            arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 5, POINT_INITIAL, 0.5, TARGET_SELF, true, -1)
        elseif local0 == 110 then
            arg0:AddTopGoal(GOAL_COMMON_ApproachTarget, 5, POINT_INITIAL, 0.5, TARGET_SELF, false, -1)
        else
            COMMON_EasySetup3(arg0)
        end
    end
    return 
end

function RuneHunterKnight315000_Interupt(arg0, arg1)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 11805)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 11825)
    if arg0:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg0:HasSpecialEffectId(TARGET_SELF, 11805) and arg0:ReserveRide(10) == true then
        arg1:ClearSubGoal()
        arg1:AddSubGoal(GOAL_COMMON_Mount, 10, 3, 5)
        return true
    elseif arg0:IsInterupt(INTERUPT_MovedEnd_OnFailedPath) and arg0:IsRiding(TARGET_SELF) == false and arg0:HasSpecialEffectId(TARGET_SELF, 11805) == false and arg0:HasSpecialEffectId(TARGET_SELF, 11825) == true then
        arg1:ClearSubGoal()
        local local0 = arg0:GetDist(TARGET_ENE_0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, 999, 0, 0, 0, 0)
        return true
    else
        return false
    end
end

return 
