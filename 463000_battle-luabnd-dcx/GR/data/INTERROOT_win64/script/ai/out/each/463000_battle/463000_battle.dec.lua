RegisterTableGoal(GOAL_RuneBear463000_Battle, "RuneBear463000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RuneBear463000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3002)
    arg1:EnableUnfavorableAttackCheck(0, 3003)
    arg1:EnableUnfavorableAttackCheck(0, 3004)
    arg1:EnableUnfavorableAttackCheck(0, 3005)
    arg1:EnableUnfavorableAttackCheck(0, 3006)
    arg1:EnableUnfavorableAttackCheck(0, 3009)
    arg1:EnableUnfavorableAttackCheck(0, 3010)
    arg1:EnableUnfavorableAttackCheck(0, 3016)
    arg1:EnableUnfavorableAttackCheck(0, 3018)
    arg1:EnableUnfavorableAttackCheck(0, 3020)
    arg1:EnableUnfavorableAttackCheck(0, 3021)
    arg1:EnableUnfavorableAttackCheck(0, 3022)
    arg1:EnableUnfavorableAttackCheck(0, 3023)
    arg1:EnableUnfavorableAttackCheck(0, 3024)
    arg1:EnableUnfavorableAttackCheck(0, 3026)
    arg1:EnableUnfavorableAttackCheck(0, 3027)
    arg1:EnableUnfavorableAttackCheck(0, 3032)
    arg1:EnableUnfavorableAttackCheck(0, 3033)
    arg1:EnableUnfavorableAttackCheck(0, 3034)
    arg1:EnableUnfavorableAttackCheck(0, 3035)
    arg1:EnableUnfavorableAttackCheck(0, 3036)
    arg1:EnableUnfavorableAttackCheck(0, 3037)
    arg1:EnableUnfavorableAttackCheck(0, 3038)
    arg1:EnableUnfavorableAttackCheck(0, 3039)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    if arg1:HasSpecialEffectId(TARGET_SELF, 13041) then
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 13042)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 13043)
    end
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetHpRate(TARGET_SELF)
    local local6 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local7 = 1000
    if 1 <= arg1:GetNumber(0) then
        local7 = 1
    end
    local local8 = 0
    if arg1:HasSpecialEffectId(TARGET_SELF, 13040) then
        local8 = 10
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 13041) then
        if local5 <= 0.7 then
            if arg1:GetNumber(1) <= 0 then
                local0[17] = 100
            end
        elseif local5 <= 0.3 and arg1:GetNumber(1) <= 1 then
            local0[17] = 100
        end
    end
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) then
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180) then
            if 8 <= local3 then
                local0[24] = 40
            elseif 3 <= local3 then
                local0[3] = 0
                local0[5] = 40
                local0[9] = 20
                local0[24] = 30
                local0[25] = 10
            else
                local0[3] = 30
                local0[5] = 0
                local0[9] = 30
                local0[24] = 20
                local0[25] = 20
            end
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
            if 8 <= local3 then
                local0[24] = 40
            elseif 3 <= local3 then
                local0[3] = 0
                local0[6] = 40
                local0[9] = 20
                local0[24] = 30
                local0[25] = 10
            else
                local0[3] = 30
                local0[6] = 0
                local0[9] = 30
                local0[24] = 20
                local0[25] = 20
            end
        end
    elseif 15 <= local3 then
        if arg1:HasSpecialEffectId(TARGET_SELF, 13041) then
            local0[1] = 30
            local0[2] = 10
            local0[4] = 10
            local0[10] = 10
            local0[18] = 50 * local7
        else
            local0[1] = 50 * local7
            local0[2] = 30
            local0[4] = 10
            local0[10] = 10
        end
    elseif 7 <= local3 then
        if arg1:HasSpecialEffectId(TARGET_SELF, 13041) then
            local0[1] = 10
            local0[2] = 40
            local0[10] = 20
            local0[11] = 20
            local0[12] = 10
            local0[13] = 0
            local0[14] = 10
        else
            local0[1] = 10 * local7
            local0[2] = 40
            local0[10] = 10
            local0[11] = 30
            local0[12] = 10
            local0[13] = 0
            local0[14] = 10
        end
    elseif 0.5 <= local3 then
        local0[1] = 0
        local0[2] = 40
        local0[3] = 0 + local8
        local0[4] = 10
        local0[5] = 0
        local0[6] = 0
        local0[7] = 10
        local0[8] = 10
        local0[9] = 0
        local0[10] = 0
        local0[11] = 30
        local0[12] = 10
        local0[13] = 0
        local0[14] = 10
    else
        local0[1] = 0
        local0[2] = 0
        local0[3] = 10 + local8
        local0[4] = 0
        local0[5] = 0
        local0[6] = 0
        local0[7] = 10
        local0[8] = 30
        local0[9] = 0
        local0[10] = 0
        local0[11] = 0
        local0[12] = 0
        local0[13] = 20
        local0[14] = 0
        local0[16] = 0
        local0[17] = 0
        local0[18] = 0
        local0[24] = 0
        local0[25] = 30
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 10, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3001, 10, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3002, 10, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3003, 10, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3004, 10, local0[5], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3005, 10, local0[6], 1)
    local0[7] = SetCoolTime(arg1, arg2, 3006, 10, local0[7], 1)
    local0[8] = SetCoolTime(arg1, arg2, 3010, 10, local0[8], 1)
    local0[9] = SetCoolTime(arg1, arg2, 3016, 10, local0[9], 1)
    local0[10] = SetCoolTime(arg1, arg2, 3021, 10, local0[10], 1)
    local0[11] = SetCoolTime(arg1, arg2, 3022, 10, local0[11], 1)
    local0[12] = SetCoolTime(arg1, arg2, 3023, 10, local0[12], 1)
    local0[13] = SetCoolTime(arg1, arg2, 3024, 10, local0[13], 1)
    local0[14] = SetCoolTime(arg1, arg2, 3027, 10, local0[14], 1)
    local0[18] = SetCoolTime(arg1, arg2, 3038, 20, local0[18], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, RuneBear463000_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, RuneBear463000_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, RuneBear463000_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, RuneBear463000_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, RuneBear463000_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, RuneBear463000_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, RuneBear463000_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, RuneBear463000_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, RuneBear463000_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, RuneBear463000_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, RuneBear463000_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, RuneBear463000_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, RuneBear463000_Act13)
    local1[14] = REGIST_FUNC(arg1, arg2, RuneBear463000_Act14)
    local1[16] = REGIST_FUNC(arg1, arg2, RuneBear463000_Act16)
    local1[17] = REGIST_FUNC(arg1, arg2, RuneBear463000_Act17)
    local1[18] = REGIST_FUNC(arg1, arg2, RuneBear463000_Act18)
    local1[24] = REGIST_FUNC(arg1, arg2, RuneBear463000_Act24)
    local1[25] = REGIST_FUNC(arg1, arg2, RuneBear463000_Act25)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, HoundOfBorus_419000_Act02_ActAfter_AdjustSpace), local2)
    return 
end

function RuneBear463000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 14, 0, 999, 100, 0, 3, 3)
    local local1 = 0
    local local2 = 0
    local local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3000, TARGET_ENE_0, 10, 0, 0, 0)
    arg0:SetNumber(0, 1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneBear463000_Act02(arg0, arg1, arg2)
    local local0 = 0
    if 8 <= arg0:GetDist(TARGET_ENE_0) then
        local0 = 80
    end
    if arg0:GetRandam_Int(1, 100) <= 20 + local0 then
        local local1 = arg0:GetDist(TARGET_ENE_0)
        Approach_Act_Flex(arg0, arg1, 6, 0, 999, 100, 0, 3, 3)
    else
        local local1 = arg0:GetDist(TARGET_ENE_0)
        Approach_Act_Flex(arg0, arg1, 3, 0, 999, 0, 0, 0.5, 0.5)
    end
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local local2 = 0
    local local3 = 0
    local local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 3, 3001, TARGET_ENE_0, 10, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneBear463000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 5.5, 0, 999, 0, 0, 3, 3)
    if arg0:HasSpecialEffectId(TARGET_SELF, 13041) then
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    end
    local local1 = 3036
    local local2 = 0
    local local3 = 0
    local local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, 3002, TARGET_ENE_0, 2, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneBear463000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 5.5, 0, 999, 100, 0, 3, 3)
    if arg0:HasSpecialEffectId(TARGET_SELF, 13041) then
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    end
    local local1 = 0
    local local2 = 0
    local local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3003, TARGET_ENE_0, 10, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneBear463000_Act05(arg0, arg1, arg2)
    local local0 = 5
    local local1 = TARGET_ENE_0
    local local2 = TARGET_SELF
    local local3 = 0
    local local4 = 0
    local local5 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 13041) then
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    end
    if 2.7 <= arg0:GetDist(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, local0, 3004, local1, 4, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, local0, 3020, local1, successDist2)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneBear463000_Act06(arg0, arg1, arg2)
    local local0 = 5
    local local1 = TARGET_ENE_0
    local local2 = TARGET_SELF
    local local3 = 0
    local local4 = 0
    local local5 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 13041) then
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    end
    if 2.7 <= arg0:GetDist(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, local0, 3005, local1, 4, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, local0, 3022, local1, successDist2)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneBear463000_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 4.5, 0, 999, 100, 0, 3, 3)
    local local1 = 0
    local local2 = 0
    local local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3006, TARGET_ENE_0, 10, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneBear463000_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 8.5, 0, 999, 100, 0, 3, 3)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    local local1 = 0
    local local2 = 0
    local local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3010, TARGET_ENE_0, 10, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneBear463000_Act09(arg0, arg1, arg2)
    local local0 = 3016
    local local1 = TARGET_SELF
    local local2 = 0
    local local3 = 0
    local local4 = 0
    if arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_L, 180) then
        local0 = 3018
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, local0, TARGET_ENE_0, 10, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneBear463000_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 5, 0, 999, 100, 0, 3, 3)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    local local1 = 3001
    local local2 = 0
    local local3 = 0
    local local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3021, TARGET_ENE_0, 10, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneBear463000_Act11(arg0, arg1, arg2)
    local local0 = 0
    if 8 <= arg0:GetDist(TARGET_ENE_0) then
        local0 = 80
    end
    if arg0:GetRandam_Int(1, 100) <= 20 + local0 then
        local local1 = arg0:GetDist(TARGET_ENE_0)
        Approach_Act_Flex(arg0, arg1, 6, 0, 999, 100, 0, 3, 3)
    else
        local local1 = arg0:GetDist(TARGET_ENE_0)
        Approach_Act_Flex(arg0, arg1, 3, 0, 999, 0, 0, 0.5, 0.5)
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 13041) then
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    end
    local local1 = 5
    local local2 = TARGET_ENE_0
    local local3 = 0
    local local4 = 0
    local local5 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, local1, 3032, local2, 4, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, local1, 3026, local2, successDist2, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneBear463000_Act12(arg0, arg1, arg2)
    local local0 = 0
    if 8 <= arg0:GetDist(TARGET_ENE_0) then
        local0 = 80
    end
    if arg0:GetRandam_Int(1, 100) <= 20 + local0 then
        local local1 = arg0:GetDist(TARGET_ENE_0)
        Approach_Act_Flex(arg0, arg1, 6, 0, 999, 100, 0, 3, 3)
    else
        local local1 = arg0:GetDist(TARGET_ENE_0)
        Approach_Act_Flex(arg0, arg1, 3, 0, 999, 0, 0, 0.5, 0.5)
    end
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    local local2 = 0
    local local3 = 0
    local local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3033, TARGET_ENE_0, 10, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneBear463000_Act13(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 13041) then
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    end
    local local0 = 0
    local local1 = 0
    local local2 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3034, TARGET_ENE_0, 10, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneBear463000_Act14(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 5.5, 0, 999, 100, 0, 3, 3)
    local local1 = 0
    local local2 = 0
    local local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3035, TARGET_ENE_0, 10, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneBear463000_Act16(arg0, arg1, arg2)
    local local0 = TARGET_SELF
    local local1 = 0
    local local2 = 0
    local local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, 3030, TARGET_ENE_0, 10, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneBear463000_Act17(arg0, arg1, arg2)
    local local0 = -1
    if arg0:GetRandam_Int(1, 100) <= 0 then
        local0 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 60, local0, GUARD_GOAL_DESIRE_RET_Continue, true)
    local local1 = TARGET_SELF
    local local2 = 0
    local local3 = 0
    local local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3031, TARGET_ENE_0, 10, 0, 0, 0)
    if arg0:GetNumber(1) <= 0 then
        arg0:SetNumber(1, 1)
    elseif arg0:GetNumber(1) <= 1 then
        arg0:SetNumber(1, 2)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneBear463000_Act18(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 23, 0, 999, 100, 0, 3, 3)
    local local1 = 0
    local local2 = 0
    local local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3038, TARGET_ENE_0, 10, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneBear463000_Act24(arg0, arg1, arg2)
    local local0 = -1
    if arg0:GetRandam_Int(1, 100) <= 0 then
        local0 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 60, local0, GUARD_GOAL_DESIRE_RET_Continue, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneBear463000_Act25(arg0, arg1, arg2)
    local local0 = 5
    local local1 = -1
    local local2 = -1
    local local3 = 1
    local local4 = 2
    local local5 = TARGET_ENE_0
    local local6 = 3
    local local7 = 0
    local local8 = true
    if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 180, 15) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, local0, local1, local2, 1, -1, local5, local6, local7, local8)
    elseif arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 180, 15) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, local0, local1, local2, -1, 1, local5, local6, local7, local8)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneBear463000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_RuneBear463000_AfterAttackAct, 10)
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
        arg2:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, AI_DIR_TYPE_ToB, 5, TARGET_ENE_0, 5, -2)
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3037, TARGET_ENE_0, 10, 0, 0, 0)
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5025) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
            arg2:ClearSubGoal()
            local local0 = arg1:GetDist(TARGET_ENE_0)
            local local1 = arg1:GetRandam_Int(1, 100)
            if local0 <= 0.1 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 13041) then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
                end
                local local2 = 0
                local local3 = 0
                local local4 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3024, TARGET_ENE_0, 10, 0, 0, 0)
            elseif local0 <= 5 then
                local local2 = 0
                local local3 = 0
                local local4 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3027, TARGET_ENE_0, 10, 0, 0, 0)
            else
                local local5 = 5
                local local6 = TARGET_ENE_0
                local local2 = 10
                local local3 = 0
                local local4 = 0
                local local7 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, local5, 3022, local6, local2, 0, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, local5, 3026, local6, local2, 0, 0, 0)
            end
            return true
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5028) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
            arg2:ClearSubGoal()
            local local1 = arg1:GetRandam_Int(1, 100)
            if arg1:GetDist(TARGET_ENE_0) <= 8 then
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
                local local2 = 0
                local local3 = 0
                local local4 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3023, TARGET_ENE_0, 10, 0, 0, 0)
            end
            return true
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5029) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5029)
            arg2:ClearSubGoal()
            local local0 = arg1:GetDist(TARGET_ENE_0)
            if local0 <= 0.1 then
                if arg1:HasSpecialEffectId(TARGET_SELF, 13041) then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
                end
                local local2 = 0
                local local3 = 0
                local local4 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3024, TARGET_ENE_0, 10, 0, 0, 0)
            elseif local0 <= 5 then
                if arg1:GetRandam_Int(1, 100) <= 70 then
                    local local2 = 0
                    local local3 = 0
                    local local4 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3027, TARGET_ENE_0, 10, 0, 0, 0)
                else
                    local local5 = 5
                    local local6 = TARGET_ENE_0
                    local local2 = 10
                    local local3 = 0
                    local local4 = 0
                    local local7 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, local5, 3022, local6, local2, 0, 0, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, local5, 3026, local6, local2, 0, 0, 0)
                end
            end
            return true
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5030) then
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5030)
            arg2:ClearSubGoal()
            local local0 = arg1:GetDist(TARGET_ENE_0)
            local local1 = arg1:GetRandam_Int(1, 100)
            if local0 <= 3 then
                local local2 = 0
                local local3 = 0
                local local4 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3036, TARGET_ENE_0, 10, 0, 0, 0)
            elseif local0 <= 5.5 then
                if arg1:IsFinishTimer(0) then
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
                    arg1:SetTimer(0, 5)
                end
                local local2 = 0
                local local3 = 0
                local local4 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3023, TARGET_ENE_0, 10, 0, 0, 0)
            end
            return true
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13042) then
            arg2:ClearSubGoal()
            local local1 = arg1:GetRandam_Int(1, 100)
            if 5 <= arg1:GetDist(TARGET_ENE_0) then
                local local2 = 0
                local local3 = 0
                local local4 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3039, TARGET_ENE_0, 10, 0, 0, 0)
            end
            return true
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 13043) then
            arg2:ClearSubGoal()
            local local1 = arg1:GetRandam_Int(1, 100)
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 170) and 2 <= arg1:GetDist(TARGET_ENE_0) then
                local local2 = 0
                local local3 = 0
                local local4 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3037, TARGET_ENE_0, 10, 0, 0, 0)
            end
            return true
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5031) then
            arg2:ClearSubGoal()
            arg1:Replaning()
            return true
        end
    end
    return false
end

RegisterTableGoal(GOAL_RuneBear463000_AfterAttackAct, "RuneBear463000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RuneBear463000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
