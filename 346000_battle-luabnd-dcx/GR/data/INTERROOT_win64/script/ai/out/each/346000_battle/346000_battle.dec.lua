RegisterTableGoal(GOAL_ChimeraJsLeotype346000_Battle, "ChimeraJsLeotype346000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_ChimeraJsLeotype346000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3002)
    arg1:EnableUnfavorableAttackCheck(0, 3003)
    arg1:EnableUnfavorableAttackCheck(0, 3004)
    arg1:EnableUnfavorableAttackCheck(0, 3005)
    arg1:EnableUnfavorableAttackCheck(0, 3006)
    arg1:EnableUnfavorableAttackCheck(0, 3008)
    arg1:EnableUnfavorableAttackCheck(0, 3009)
    arg1:EnableUnfavorableAttackCheck(0, 3010)
    arg1:EnableUnfavorableAttackCheck(0, 3011)
    arg1:EnableUnfavorableAttackCheck(0, 3020)
    arg1:EnableUnfavorableAttackCheck(0, 3021)
    arg1:EnableUnfavorableAttackCheck(0, 3022)
    arg1:EnableUnfavorableAttackCheck(0, 3023)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
        local0[2] = 0
        local0[3] = 0
        local0[4] = 20
        local0[8] = 30
        local0[17] = 30
        local0[20] = 20
    elseif 10 <= local3 then
        local0[1] = 60
        local0[13] = 40
    elseif 7 <= local3 then
        local0[1] = 30
        local0[2] = 10
        local0[3] = 10
        local0[4] = 0
        local0[5] = 20
        local0[6] = 0
        local0[7] = 0
        local0[8] = 0
        local0[9] = 20
        local0[10] = 30
        local0[11] = 0
        local0[13] = 0
        local0[14] = 0
        local0[15] = 0
        local0[16] = 30
        local0[18] = 0
        local0[19] = 0
        local0[20] = 0
    elseif 4 <= local3 then
        local0[1] = 0
        local0[2] = 30
        local0[3] = 20
        local0[4] = 0
        local0[5] = 10
        local0[6] = 10
        local0[7] = 40
        local0[8] = 0
        local0[9] = 10
        local0[10] = 20
        local0[11] = 0
        local0[13] = 0
        local0[14] = 0
        local0[15] = 0
        local0[16] = 20
        local0[18] = 0
        local0[19] = 0
        local0[20] = 0
    elseif 1.5 <= local3 then
        local0[1] = 0
        local0[2] = 40
        local0[3] = 20
        local0[4] = 10
        local0[5] = 70
        local0[6] = 20
        local0[7] = 0
        local0[8] = 0
        local0[9] = 0
        local0[10] = 0
        local0[11] = 70
        local0[13] = 0
        local0[14] = 0
        local0[15] = 0
        local0[16] = 10
        local0[18] = 0
        local0[19] = 0
        local0[20] = 20
    else
        local0[1] = 0
        local0[2] = 20
        local0[3] = 20
        local0[4] = 50
        local0[5] = 70
        local0[6] = 10
        local0[7] = 0
        local0[8] = 30
        local0[9] = 0
        local0[10] = 0
        local0[11] = 70
        local0[13] = 0
        local0[14] = 0
        local0[15] = 0
        local0[16] = 0
        local0[18] = 0
        local0[19] = 0
        local0[20] = 20
    end
    local0[2] = SetCoolTime(arg1, arg2, 3001, 10, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3009, 10, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3006, 10, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3007, 30, local0[5], 0)
    local0[6] = SetCoolTime(arg1, arg2, 3020, 10, local0[6], 0)
    local0[7] = SetCoolTime(arg1, arg2, 3010, 10, local0[7], 0)
    local0[8] = SetCoolTime(arg1, arg2, 3011, 10, local0[8], 0)
    local0[9] = SetCoolTime(arg1, arg2, 3024, 10, local0[9], 0)
    local0[10] = SetCoolTime(arg1, arg2, 3025, 10, local0[10], 0)
    local0[11] = SetCoolTime(arg1, arg2, 3027, 20, local0[11], 0)
    local0[18] = SetCoolTime(arg1, arg2, 6002, 10, local0[18], 0)
    local0[19] = SetCoolTime(arg1, arg2, 6000, 10, local0[19], 0)
    local0[20] = SetCoolTime(arg1, arg2, 6001, 10, local0[20], 0)
    local1[1] = REGIST_FUNC(arg1, arg2, ChimeraJsLeotype346000_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, ChimeraJsLeotype346000_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, ChimeraJsLeotype346000_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, ChimeraJsLeotype346000_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, ChimeraJsLeotype346000_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, ChimeraJsLeotype346000_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, ChimeraJsLeotype346000_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, ChimeraJsLeotype346000_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, ChimeraJsLeotype346000_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, ChimeraJsLeotype346000_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, ChimeraJsLeotype346000_Act11)
    local1[13] = REGIST_FUNC(arg1, arg2, ChimeraJsLeotype346000_Act13)
    local1[14] = REGIST_FUNC(arg1, arg2, ChimeraJsLeotype346000_Act14)
    local1[15] = REGIST_FUNC(arg1, arg2, ChimeraJsLeotype346000_Act15)
    local1[16] = REGIST_FUNC(arg1, arg2, ChimeraJsLeotype346000_Act16)
    local1[17] = REGIST_FUNC(arg1, arg2, ChimeraJsLeotype346000_Act17)
    local1[18] = REGIST_FUNC(arg1, arg2, ChimeraJsLeotype346000_Act18)
    local1[19] = REGIST_FUNC(arg1, arg2, ChimeraJsLeotype346000_Act19)
    local1[20] = REGIST_FUNC(arg1, arg2, ChimeraJsLeotype346000_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, ChimeraJsLeotype346000_Act21)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, ChimeraJsLeotype346000_ActAfter_AdjustSpace), local2)
    return 
end

function ChimeraJsLeotype346000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 10.5, 0, 999, 0, 0, 3, 3)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    local local1 = 0
    local local2 = 0
    local local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3000, TARGET_ENE_0, 10, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ChimeraJsLeotype346000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 5.5, 0, 999, 0, 0, 3, 3)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    local local1 = 0
    local local2 = 0
    local local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, 3001, TARGET_ENE_0, 10, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ChimeraJsLeotype346000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 5.5, 0, 999, 0, 0, 3, 3)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    local local1 = 0
    local local2 = 0
    local local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, 3009, TARGET_ENE_0, 10, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ChimeraJsLeotype346000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 3.8, 0, 999, 0, 0, 3, 3)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    local local1 = 0
    local local2 = 0
    local local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, 3006, TARGET_ENE_0, 10, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ChimeraJsLeotype346000_Act05(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    local local0 = 0
    local local1 = 0
    local local2 = 0
    if arg0:HasSpecialEffectId(TARGET_SELF, 13073) == false then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, 3007, TARGET_ENE_0, 40, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ChimeraJsLeotype346000_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 5.5, 0, 999, 0, 0, 3, 3)
    local local1 = 0
    local local2 = 0
    local local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, 3020, TARGET_ENE_0, 10, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ChimeraJsLeotype346000_Act07(arg0, arg1, arg2)
    if arg0:GetDist(TARGET_ENE_0) <= 4 then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, 1, -1, -1, TARGET_ENE_0, 3, 0, true)
    end
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    local local0 = 0
    local local1 = 0
    local local2 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3010, TARGET_ENE_0, 10, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ChimeraJsLeotype346000_Act08(arg0, arg1, arg2)
    local local0 = TARGET_SELF
    local local1 = 0
    local local2 = 0
    local local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, 3011, TARGET_ENE_0, 10, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ChimeraJsLeotype346000_Act09(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    local local0 = TARGET_SELF
    local local1 = 0
    local local2 = 0
    local local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, 3024, TARGET_ENE_0, 10, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ChimeraJsLeotype346000_Act10(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    local local0 = TARGET_SELF
    local local1 = 0
    local local2 = 0
    local local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, 3025, TARGET_ENE_0, 10, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ChimeraJsLeotype346000_Act11(arg0, arg1, arg2)
    if arg0:HasSpecialEffectId(TARGET_SELF, 13079) then
        arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
        local local0 = TARGET_SELF
        local local1 = 0
        local local2 = 0
        local local3 = 0
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, 3027, TARGET_ENE_0, 10, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ChimeraJsLeotype346000_Act13(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = -1
    if arg0:GetRandam_Int(1, 100) <= 0 then
        local1 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 9, TARGET_SELF, false, local1)
    return 
end

function ChimeraJsLeotype346000_Act14(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = -1
    if arg0:GetRandam_Int(1, 100) <= 0 then
        local1 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 3, TARGET_SELF, false, local1)
    return 
end

function ChimeraJsLeotype346000_Act15(arg0, arg1, arg2)
    local local0 = 2
    local local1 = 0
    local local2 = -1
    if arg0:GetRandam_Int(1, 100) <= local1 then
        local2 = 9910
    end
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 2, local1, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, local0, TARGET_ENE_0, true, local2)
    return 
end

function ChimeraJsLeotype346000_Act16(arg0, arg1, arg2)
    local local0 = 6
    local local1 = TARGET_SELF
    local local2 = arg0:GetDist(TARGET_ENE_0)
    local local3 = -1
    if arg0:GetRandam_Int(1, 100) <= 0 then
        local3 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Int(1, 3), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, local3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ChimeraJsLeotype346000_Act17(arg0, arg1, arg2)
    local local0 = -1
    if arg0:GetRandam_Int(1, 100) <= 0 then
        local0 = 9910
    end
    arg1:AddSubGoal(GOAL_COMMON_Turn, 0.5, TARGET_ENE_0, 30, local0, GUARD_GOAL_DESIRE_RET_Continue, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ChimeraJsLeotype346000_Act18(arg0, arg1, arg2)
    local local0 = 5
    local local1 = -1
    local local2 = -1
    local local3 = TARGET_ENE_0
    local local4 = 3
    local local5 = 0
    local local6 = true
    if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 15) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, local0, local1, 1, 1, 2, local3, local4, local5, local6)
    elseif arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 180, 15) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, local0, local1, local2, 1, -1, local3, local4, local5, local6)
    elseif arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 180, 15) then
        arg1:AddSubGoal(GOAL_COMMON_StepSafety, local0, local1, local2, -1, 1, local3, local4, local5, local6)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ChimeraJsLeotype346000_Act19(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, 1, -1, -1, TARGET_ENE_0, 3, 0, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ChimeraJsLeotype346000_Act20(arg0, arg1, arg2)
    local local0 = 5
    local local1 = -1
    local local2 = -1
    local local3 = -1
    local local4 = -1
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

function ChimeraJsLeotype346000_Act22(arg0, arg1, arg2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ChimeraJsLeotype346000_Act23(arg0, arg1, arg2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function ChimeraJsLeotype346000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_Template010010_AfterAttackAct, 10)
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
        if arg1:HasSpecialEffectId(TARGET_SELF, 13080) then
            local local0 = arg1:GetRandam_Int(1, 100)
            if arg1:GetRandam_Int(1, 100) <= 50 then
                arg2:ClearSubGoal()
                if 5.5 <= arg1:GetDist(TARGET_ENE_0) then
                    if arg1:GetRandam_Int(1, 3) == 1 then
                        arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, 1, 1, TARGET_ENE_0, 3, 0, true)
                    else
                        arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, -1, 1, TARGET_ENE_0, 3, 0, true)
                    end
                    arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 3, TARGET_SELF, true, -1)
                else
                    arg2:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, -1, -1, -1, TARGET_ENE_0, 3, 0, true)
                end
            else
                arg2:ClearSubGoal()
                if local0 <= 30 then
                    local local1 = arg1:GetDist(TARGET_ENE_0)
                    Approach_Act_Flex(arg1, arg2, 6.5, 0, 999, 0, 0, 3, 3)
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
                    local local2 = 0
                    local local3 = 0
                    local local4 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, 3009, TARGET_ENE_0, 10, 0, 0, 0)
                elseif local0 <= 70 then
                    local local1 = arg1:GetDist(TARGET_ENE_0)
                    Approach_Act_Flex(arg1, arg2, 13.5, 0, 999, 0, 0, 3, 3)
                    local local2 = 0
                    local local3 = 0
                    local local4 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, 3000, TARGET_ENE_0, 10, 0, 0, 0)
                else
                    local local5 = 0
                    local local6 = 0
                    local local7 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 5, 3024, TARGET_ENE_0, 10, 0, 0, 0)
                end
            end
        end
        return true
    elseif arg1:IsInterupt(INTERUPT_FindAttack) then
        if arg1:GetDist(TARGET_ENE_0) <= 6 and arg1:HasSpecialEffectId(TARGET_SELF, 13081) and arg1:GetRandam_Int(1, 100) <= 40 then
            arg2:ClearSubGoal()
            if arg1:GetRandam_Int(1, 100) <= 50 then
                ChimeraJsLeotype346000_Act05(arg1, arg2)
            else
                ChimeraJsLeotype346000_Act06(arg1, arg2)
            end
        end
        return true
    elseif arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 13079) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 5025) then
                local local8 = arg1:GetDist(TARGET_ENE_0)
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
                local local9 = 0
                local local10 = 0
                local local11 = 0
                local local5 = nil
                if local8 <= 3 then
                    if arg1:GetRandam_Int(1, 100) <= 50 then
                        local5 = 3006
                    else
                        local5 = 3007
                    end
                elseif local8 <= 8 then
                    if arg1:GetRandam_Int(1, 100) <= 50 then
                        local5 = 3001
                    else
                        local5 = 3005
                    end
                end
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, local5, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 5026) then
                local local12 = arg1:GetRandam_Int(1, 100)
                if arg1:GetDist(TARGET_ENE_0) <= 3 then
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3002, TARGET_ENE_0, 4, 0, 90)
                else
                    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
                    arg2:ClearSubGoal()
                    local local0 = 5
                    local local9 = 3008
                    local local10 = TARGET_ENE_0
                    local local11 = 10
                    local local5 = 0
                    local local6 = 0
                    local local7 = 0
                    if local12 <= 20 then
                        local9 = 3004
                    elseif local12 <= 50 then
                        local9 = 3001
                    end
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, local0, 3003, local10, local11, 0, 0, 0)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, local0, local9, local10, local11, 0, 0, 0)
                end
                return true
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 5027) then
                if arg1:GetDist(TARGET_ENE_0) <= 4 then
                    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
                    arg2:ClearSubGoal()
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
                    local local1 = 3004
                    local local10 = 10
                    local local11 = 0
                    local local5 = 0
                    local local6 = 0
                    if arg1:GetRandam_Int(1, 100) <= 20 then
                        local1 = 3008
                    end
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, local1, TARGET_ENE_0, successDist2, 0, 0, 0)
                else
                    arg2:ClearSubGoal()
                    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, 8, 0, 90)
                end
                return true
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 5032) then
                local local8 = arg1:GetDist(TARGET_ENE_0)
                arg2:ClearSubGoal()
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5032)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
                local local9 = 0
                local local10 = 0
                local local11 = 0
                local local5 = nil
                local local6 = arg1:GetRandam_Int(1, 100)
                if local8 <= 3 then
                    if local6 <= 50 then
                        local5 = 3006
                    else
                        local5 = 3007
                    end
                elseif local8 <= 8 then
                    if local6 <= 50 then
                        local5 = 3001
                    else
                        local5 = 3005
                    end
                end
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, local5, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 5028) then
                arg2:ClearSubGoal()
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
                local local9 = 0
                local local10 = 0
                local local11 = 0
                local local5 = nil
                local local6 = arg1:GetRandam_Int(1, 100)
                if arg1:GetDist(TARGET_ENE_0) <= 3 then
                    if local6 <= 40 then
                        local5 = 3002
                    elseif local6 <= 80 then
                        local5 = 3007
                    else
                        local5 = 3024
                    end
                elseif local6 <= 60 then
                    local5 = 3003
                else
                    local5 = 3024
                end
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, local5, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 5029) then
                local local12 = arg1:GetRandam_Int(1, 100)
                arg2:ClearSubGoal()
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5029)
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
                local local10 = 0
                local local11 = 0
                local local5 = 0
                local local6 = nil
                if arg1:GetDist(TARGET_ENE_0) <= 3 then
                    local6 = 3011
                else
                    local6 = 3010
                end
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, local6, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 5030) then
                if arg1:GetDist(TARGET_ENE_0) <= 11 then
                    arg2:ClearSubGoal()
                    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5030)
                    local local12 = 5
                    local local0 = TARGET_ENE_0
                    local local1 = 10
                    local local9 = 0
                    local local10 = 0
                    local local11 = 0
                    if arg1:GetRandam_Int(1, 100) <= 30 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, local12, 3025, local0, local1, 0, 0, 0)
                    end
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, local12, 3026, local0, local1, 0, 0, 0)
                end
                return true
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 5031) then
                local local12 = arg1:GetRandam_Int(1, 100)
                if arg1:GetDist(TARGET_ENE_0) <= 18 then
                    arg2:ClearSubGoal()
                    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5031)
                    local local11 = 0
                    local local5 = 0
                    local local6 = 0
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3028, TARGET_ENE_0, 10, 0, 0, 0)
                end
                return true
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 5033) then
                local local12 = arg1:GetRandam_Int(1, 100)
                if arg1:GetDist(TARGET_ENE_0) <= 4 then
                    arg2:ClearSubGoal()
                    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5033)
                    local local10 = 0
                    local local11 = 0
                    local local5 = 0
                    local local6 = nil
                    local local7 = arg1:GetRandam_Int(1, 100)
                    if local7 <= 25 then
                        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
                        local6 = 3027
                    elseif local7 <= 50 then
                        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
                        local6 = 3009
                    else
                        local6 = 3011
                    end
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, local6, TARGET_ENE_0, 10, 0, 0, 0)
                end
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5025) then
            local local8 = arg1:GetDist(TARGET_ENE_0)
            if local8 <= 2 then
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
                arg2:ClearSubGoal()
                local local9 = 0
                local local10 = 0
                local local11 = 0
                local local5 = nil
                if arg1:GetRandam_Int(1, 100) <= 50 then
                    local5 = 3006
                    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
                else
                    local5 = 3020
                end
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, local5, TARGET_ENE_0, 10, 0, 0, 0)
            elseif local8 <= 6 then
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
                arg2:ClearSubGoal()
                local local0 = 3005
                local local10 = 0
                local local11 = 0
                local local5 = 0
                local local6 = nil
                if arg1:GetRandam_Int(1, 100) <= 50 then
                    local6 = 3005
                else
                    local6 = 6000
                end
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, local6, TARGET_ENE_0, 10, 0, 0, 0)
            end
            return true
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5026) then
            if arg1:GetDist(TARGET_ENE_0) <= 3 then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3002, TARGET_ENE_0, 4, 0, 90)
            else
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
                arg2:ClearSubGoal()
                local local0 = 5
                local local9 = 3008
                local local10 = TARGET_ENE_0
                local local11 = 10
                local local5 = 0
                local local6 = 0
                local local7 = 0
                if arg1:GetRandam_Int(1, 100) <= 20 then
                    local9 = 3004
                end
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, local0, 3003, local10, local11, 0, 0, 0)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, local0, local9, local10, local11, 0, 0, 0)
            end
            return true
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5027) then
            local local12 = arg1:GetRandam_Int(1, 100)
            if arg1:GetDist(TARGET_ENE_0) <= 4 then
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
                local local1 = 3004
                local local10 = 10
                local local11 = 0
                local local5 = 0
                local local6 = 0
                if local12 <= 30 then
                    local1 = 3008
                elseif local12 <= 50 then
                    local1 = 3020
                end
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, local1, TARGET_ENE_0, successDist2, 0, 0, 0)
            else
                arg2:ClearSubGoal()
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, 8, 0, 90)
            end
            return true
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5032) then
            if arg1:GetRandam_Int(1, 100) <= 40 and arg1:GetDist(TARGET_ENE_0) <= 18 then
                arg2:ClearSubGoal()
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5032)
                local local10 = 0
                local local11 = 0
                local local5 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3026, TARGET_ENE_0, 10, 0, 0, 0)
            end
            return true
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5028) then
            if arg1:GetDist(TARGET_ENE_0) <= 10 and arg1:GetRandam_Int(1, 100) <= 40 then
                arg2:ClearSubGoal()
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
                local local11 = 0
                local local5 = 0
                local local6 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3024, TARGET_ENE_0, 10, 0, 0, 0)
            end
            return true
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5029) then
            local local12 = arg1:GetRandam_Int(1, 100)
            arg2:ClearSubGoal()
            arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5029)
            local local10 = 0
            local local11 = 0
            local local5 = 0
            local local6 = nil
            if arg1:GetDist(TARGET_ENE_0) <= 3 then
                local6 = 3011
            else
                local6 = 3010
            end
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, local6, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5030) then
            local local12 = arg1:GetRandam_Int(1, 100)
            if arg1:GetDist(TARGET_ENE_0) <= 11 then
                arg2:ClearSubGoal()
                arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5030)
                local local11 = 0
                local local5 = 0
                local local6 = 0
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3026, TARGET_ENE_0, 10, 0, 0, 0)
            end
            return true
        end
    end
    return false
end

RegisterTableGoal(GOAL_ChimeraJsLeotype346000_AfterAttackAct, "ChimeraJsLeotype346000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_ChimeraJsLeotype346000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
