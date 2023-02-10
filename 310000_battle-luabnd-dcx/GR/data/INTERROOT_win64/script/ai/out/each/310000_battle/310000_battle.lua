RegisterTableGoal(GOAL_hagetakakishi310000_Battle, "hagetakakishi310000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_hagetakakishi310000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3003)
    arg1:EnableUnfavorableAttackCheck(0, 3004)
    arg1:EnableUnfavorableAttackCheck(0, 3008)
    arg1:EnableUnfavorableAttackCheck(0, 3009)
    arg1:EnableUnfavorableAttackCheck(0, 3010)
    arg1:EnableUnfavorableAttackCheck(0, 3011)
    arg1:EnableUnfavorableAttackCheck(0, 3017)
    arg1:EnableUnfavorableAttackCheck(0, 3018)
    arg1:EnableUnfavorableAttackCheck(0, 3019)
    arg1:EnableUnfavorableAttackCheck(0, 3020)
    arg1:EnableUnfavorableAttackCheck(0, 3021)
    arg1:EnableUnfavorableAttackCheck(0, 3022)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16409)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16411)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16413)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 16414)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16415)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
        if 2.8 <= local3 then
            local0[24] = 100
        else
            local0[1] = 10
            local0[2] = 20
            local0[11] = 60
            local0[24] = 10
        end
    elseif 9.5 <= local3 then
        local0[1] = 10
        local0[2] = 10
        local0[3] = 0
        local0[4] = 10
        local0[5] = 0
        local0[6] = 0
        local0[7] = 0
        local0[8] = 30
        local0[9] = 50
        local0[10] = 10
    elseif 7.5 <= local3 then
        local0[1] = 10
        local0[2] = 10
        local0[3] = 0
        local0[4] = 35
        local0[5] = 0
        local0[6] = 0
        local0[7] = 0
        local0[8] = 20
        local0[9] = 0
        local0[12] = 35
    elseif 4 <= local3 then
        local0[1] = 20
        local0[2] = 10
        local0[3] = 0
        local0[4] = 20
        local0[5] = 0
        local0[6] = 10
        local0[7] = 0
        local0[8] = 20
        local0[9] = 20
        local0[12] = 30
    elseif 2 <= local3 then
        local0[1] = 20
        local0[2] = 30
        local0[3] = 10
        local0[4] = 20
        local0[5] = 0
        local0[6] = 10
        local0[7] = 10
        local0[8] = 0
        local0[9] = 0
        local0[10] = 20
    else
        local0[1] = 20
        local0[2] = 35
        local0[3] = 10
        local0[4] = 0
        local0[5] = 5
        local0[6] = 10
        local0[7] = 10
        local0[8] = 0
        local0[9] = 0
        local0[10] = 0
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 6, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3001, 6, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3004, 16, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3017, 8, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3018, 8, local0[5], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3008, 12, local0[6], 1)
    local0[7] = SetCoolTime(arg1, arg2, 3010, 8, local0[7], 1)
    local0[8] = SetCoolTime(arg1, arg2, 3011, 12, local0[8], 1)
    local0[9] = SetCoolTime(arg1, arg2, 3012, 8, local0[9], 1)
    local0[10] = SetCoolTime(arg1, arg2, 3019, 16, local0[10], 1)
    local0[11] = SetCoolTime(arg1, arg2, 3019, 12, local0[11], 1)
    local0[12] = SetCoolTime(arg1, arg2, 3019, 8, local0[12], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, hagetakakishi310000_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, hagetakakishi310000_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, hagetakakishi310000_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, hagetakakishi310000_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, hagetakakishi310000_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, hagetakakishi310000_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, hagetakakishi310000_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, hagetakakishi310000_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, hagetakakishi310000_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, hagetakakishi310000_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, hagetakakishi310000_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, hagetakakishi310000_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, hagetakakishi310000_Act13)
    local1[14] = REGIST_FUNC(arg1, arg2, hagetakakishi310000_Act14)
    local1[23] = REGIST_FUNC(arg1, arg2, hagetakakishi310000_Act23)
    local1[24] = REGIST_FUNC(arg1, arg2, hagetakakishi310000_Act24)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, hagetakakishi310000_ActAfter_AdjustSpace), local2)
    return 
end

function hagetakakishi310000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 4.5, 0, 999, 0, 0, 10, 10)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16400)
    local local1 = 5
    local local2 = TARGET_ENE_0
    local local3 = 0
    local local4 = 0
    local local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, local1, 3000, local2, 10, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, local1, 3001, local2, successDist2, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function hagetakakishi310000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 4.5, 0, 999, 0, 0, 10, 10)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16401)
    local local1 = 0
    local local2 = 0
    local local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, 3001, TARGET_ENE_0, 10, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function hagetakakishi310000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 6.5, 0, 999, 0, 0, 3, 3)
    local local1 = 0
    local local2 = 0
    local local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, 3004, TARGET_ENE_0, 10, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function hagetakakishi310000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 6.2, 0, 999, 0, 0, 3, 3)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16402)
    local local1 = 0
    local local2 = 0
    local local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3017, TARGET_ENE_0, 10, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function hagetakakishi310000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 2.3, 0, 999, 0, 0, 3, 3)
    local local1 = 0
    local local2 = 0
    local local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3018, TARGET_ENE_0, 10, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function hagetakakishi310000_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 5.5, 0, 999, 0, 0, 3, 3)
    local local1 = 0
    local local2 = 0
    local local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3008, TARGET_ENE_0, 10, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function hagetakakishi310000_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 4, 0, 999, 0, 0, 3, 3)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16408)
    local local1 = 0
    local local2 = 0
    local local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3010, TARGET_ENE_0, 10, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function hagetakakishi310000_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 16.5, 0, 999, 0, 0, 3, 3)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16403)
    local local1 = 0
    local local2 = 0
    local local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3011, TARGET_ENE_0, 10, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function hagetakakishi310000_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 10.5, 0, 999, 0, 0, 3, 3)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16405)
    local local1 = 0
    local local2 = 0
    local local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3023, TARGET_ENE_0, 10, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function hagetakakishi310000_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 5.5, 0, 999, 0, 0, 3, 3)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16410)
    local local1 = 0
    local local2 = 0
    local local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3019, TARGET_ENE_0, 10, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function hagetakakishi310000_Act11(arg0, arg1, arg2)
    local local0 = 0
    local local1 = 0
    local local2 = 0
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 270) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, 3021, TARGET_ENE_0, 10, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function hagetakakishi310000_Act12(arg0, arg1, arg2)
    local local0 = 5
    local local1 = TARGET_ENE_0
    local local2 = 0
    local local3 = 0
    local local4 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16409)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16411)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, local0, 3009, local1, 10, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, local0, 3025, local1, successDist2, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function hagetakakishi310000_Act13(arg0, arg1, arg2)
    local local0 = 5
    local local1 = TARGET_ENE_0
    local local2 = 0
    local local3 = 0
    local local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, local0, 3020, local1, 10, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, local0, 3004, local1, successDist2, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function hagetakakishi310000_Act14(arg0, arg1, arg2)
    local local0 = 5
    local local1 = TARGET_ENE_0
    local local2 = 0
    local local3 = 0
    local local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, local0, 3010, local1, 10, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, local0, 3022, local1, successDist2, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function hagetakakishi310000_Act23(arg0, arg1, arg2)
    local local0 = 3
    local local1 = TARGET_SELF
    local local2 = arg0:GetDist(TARGET_ENE_0)
    local local3 = -1
    if arg0:GetRandam_Int(1, 100) <= 0 then
        local3 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Int(1, 2), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function hagetakakishi310000_Act24(arg0, arg1, arg2)
    local local0 = -1
    if arg0:GetRandam_Int(1, 100) <= 0 then
        local0 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 45, local0, GUARD_GOAL_DESIRE_RET_Continue, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function hagetakakishi310000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_hagetakakishi310001_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    if arg1:IsInterupt(INTERUPT_Shoot) then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, AI_DIR_TYPE_ToR, 3, TARGET_HOSTPLAYER, 5, -2)
        arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3008, TARGET_HOSTPLAYER, 999, local2, local3, 0, 0)
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 16400) then
            arg2:ClearSubGoal()
            local local0 = arg1:GetRandam_Int(1, 100)
            if arg1:GetDist(TARGET_ENE_0) <= 3.8 then
                local local1 = 0
                if arg1:IsTargetGuard(TARGET_ENE_0) then
                    local1 = 20
                end
                if local0 <= 25 + local1 then
                    local local2 = 0
                    local local3 = 0
                    local local4 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3020, TARGET_ENE_0, 10, 0, 0, 0)
                else
                    local local5 = 10
                    local local2 = 0
                    local local3 = 0
                    local local4 = 0
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16401)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3001, TARGET_ENE_0, successDist2, 0, 0, 0)
                end
            else
                if local0 <= 70 then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16404)
                    local local6 = 10
                    local local5 = 0
                    local local2 = 0
                    local local3 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3003, TARGET_ENE_0, successDist2, 0, 0, 0)
                else
                    local local5 = 0
                    local local2 = 0
                    local local3 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3020, TARGET_ENE_0, 10, 0, 0, 0)
                end
                return true
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 16401) then
            arg2:ClearSubGoal()
            local local0 = arg1:GetRandam_Int(1, 100)
            if arg1:GetDist(TARGET_ENE_0) <= 3.8 then
                local local1 = 0
                if arg1:IsTargetGuard(TARGET_ENE_0) then
                    local1 = 30
                end
                if local0 <= 15 + local1 then
                    local local5 = 10
                    local local2 = 0
                    local local3 = 0
                    local local4 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3018, TARGET_ENE_0, successDist2, 0, 0, 0)
                elseif local0 <= 80 then
                    local local5 = 10
                    local local2 = 0
                    local local3 = 0
                    local local4 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3017, TARGET_ENE_0, successDist2, 0, 0, 0)
                else
                    local local5 = 10
                    local local2 = 0
                    local local3 = 0
                    local local4 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3004, TARGET_ENE_0, successDist2, 0, 0, 0)
                end
            else
                if local0 <= 70 then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16405)
                    local local6 = 10
                    local local5 = 0
                    local local2 = 0
                    local local3 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3012, TARGET_ENE_0, successDist2, 0, 0, 0)
                end
                return true
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 16402) then
            arg2:ClearSubGoal()
            if arg1:GetDist(TARGET_ENE_0) <= 4 then
                if arg1:GetRandam_Int(1, 100) > 60 then
                    local local7 = nil
                    if arg1:GetRandam_Int(1, 100) <= 70 then
                        local7 = 3001
                    else
                        local7 = 3020
                    end
                    local local2 = 0
                    local local3 = 0
                    local local4 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, local7, TARGET_ENE_0, 10, 0, 0, 0)
                end
                return true
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 16403) then
            arg2:ClearSubGoal()
            local local0 = arg1:GetRandam_Int(1, 100)
            if arg1:GetDist(TARGET_ENE_0) <= 4 then
                if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 160) then
                    local local6 = 10
                    local local5 = 0
                    local local2 = 0
                    local local3 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3000, TARGET_ENE_0, successDist2, 0, 0, 0)
                elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 200) then
                    local local6 = 10
                    local local5 = 0
                    local local2 = 0
                    local local3 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3001, TARGET_ENE_0, successDist2, 0, 0, 0)
                end
                return true
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 16404) then
            arg2:ClearSubGoal()
            local local0 = arg1:GetRandam_Int(1, 100)
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16407)
            if 7 <= arg1:GetDist(TARGET_ENE_0) then
                local local6 = 10
                local local5 = 0
                local local2 = 0
                local local3 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3014, TARGET_ENE_0, successDist2, 0, 0, 0)
                return true
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 16405) then
            arg2:ClearSubGoal()
            local local0 = arg1:GetRandam_Int(1, 100)
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16406)
            if 5 <= arg1:GetDist(TARGET_ENE_0) then
                local local5 = 0
                local local2 = 0
                local local3 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3013, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 16406) then
            arg2:ClearSubGoal()
            local local0 = arg1:GetRandam_Int(1, 100)
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16407)
            if 5 <= arg1:GetDist(TARGET_ENE_0) then
                local local6 = 10
                local local5 = 0
                local local2 = 0
                local local3 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3014, TARGET_ENE_0, successDist2, 0, 0, 0)
            else
                local local6 = 10
                local local5 = 0
                local local2 = 0
                local local3 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3016, TARGET_ENE_0, successDist2, 0, 0, 0)
                return true
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 16407) then
            arg2:ClearSubGoal()
            local local0 = arg1:GetRandam_Int(1, 100)
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16412)
            if 5 <= arg1:GetDist(TARGET_ENE_0) then
                local local1 = 5
                local local6 = TARGET_ENE_0
                local local5 = 10
                local local2 = 0
                local local3 = 0
                local local4 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, local1, 3015, local6, local5, 0, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, local1, 3016, local6, local5, 0, 0, 0)
                return true
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 16408) then
            arg2:ClearSubGoal()
            if arg1:GetDist(TARGET_ENE_0) <= 4.7 and arg1:GetRandam_Int(1, 100) <= 90 and arg1:HasSpecialEffectId(TARGET_ENE_0, 16414) then
                local local5 = 0
                local local2 = 0
                local local3 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 5, 3022, TARGET_ENE_0, 10, 0, 0, 0)
            end
            return true
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 16409) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16409)
            arg2:ClearSubGoal()
            local local8 = arg1:GetDist(TARGET_ENE_0)
            local local0 = arg1:GetRandam_Int(1, 100)
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16407)
            if local8 > 4 then
                if local8 <= 8 then
                    local local5 = 0
                    local local2 = 0
                    local local3 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3025, TARGET_ENE_0, 10, 0, 0, 0)
                else
                    local local5 = 0
                    local local2 = 0
                    local local3 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3014, TARGET_ENE_0, 10, 0, 0, 0)
                    return true
                end
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 16411) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 16411)
            arg2:ClearSubGoal()
            local local0 = arg1:GetRandam_Int(1, 100)
            if arg1:GetDist(TARGET_ENE_0) <= 3.5 then
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16400)
                local local5 = 0
                local local2 = 0
                local local3 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3000, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 16410) then
            arg2:ClearSubGoal()
            local local0 = arg1:GetRandam_Int(1, 100)
            if arg1:GetRandam_Int(5, 7) <= arg1:GetDist(TARGET_ENE_0) then
                local local6 = 10
                local local5 = 0
                local local2 = 0
                local local3 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3024, TARGET_ENE_0, successDist2, 0, 0, 0)
                return true
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 16412) then
            arg2:ClearSubGoal()
            local local0 = arg1:GetRandam_Int(1, 100)
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16401)
            if arg1:GetDist(TARGET_ENE_0) <= 4 then
                local local7 = nil
                if arg1:GetRandam_Int(1, 100) <= 70 then
                    local7 = 3001
                else
                    local7 = 3020
                end
                local local5 = 10
                local local2 = 0
                local local3 = 0
                local local4 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, local7, TARGET_ENE_0, successDist2, 0, 0, 0)
                return true
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 16415) then
            arg2:ClearSubGoal()
            if arg1:GetDist(TARGET_ENE_0) <= 5 then
                if arg1:GetRandam_Int(1, 100) <= 70 then
                    local local6 = 10
                    local local5 = 0
                    local local2 = 0
                    local local3 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3020, TARGET_ENE_0, successDist2, 0, 0, 0)
                end
                return true
            end
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 5033) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 16413) then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16410)
                if 4 <= arg1:GetDist(TARGET_ENE_0) then
                    if arg1:GetRandam_Int(1, 100) <= 70 then
                        local local1 = arg1:GetRandam_Int(1, 100)
                        local local5 = 10
                        local local2 = 0
                        local local3 = 0
                        local local4 = 0
                        arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3019, TARGET_ENE_0, successDist2, 0, 0, 0)
                    end
                    return true
                end
            else
                arg2:ClearSubGoal()
                arg1:Replaning()
            end
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_UseItem)  then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_HOSTPLAYER, AI_DIR_TYPE_ToR, 3, TARGET_HOSTPLAYER, 5, -2)
        arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, local2, local3, 0, 0)
        return true
    end
end

RegisterTableGoal(GOAL_hagetakakishi310001_AfterAttackAct, "hagetakakishi310001_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_hagetakakishi310001_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
