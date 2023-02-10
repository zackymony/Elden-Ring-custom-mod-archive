RegisterTableGoal(GOAL_RuneHunterKnightAxe315000_Battle, "GOAL_RuneHunterKnightAxe315000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RuneHunterKnightAxe315000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(3000000, 3000)
    arg1:EnableUnfavorableAttackCheck(3000000, 3001)
    arg1:EnableUnfavorableAttackCheck(3000000, 3002)
    arg1:EnableUnfavorableAttackCheck(3000000, 3004)
    arg1:EnableUnfavorableAttackCheck(3000000, 3005)
    arg1:EnableUnfavorableAttackCheck(3000000, 3006)
    arg1:EnableUnfavorableAttackCheck(3000000, 3007)
    arg1:EnableUnfavorableAttackCheck(3000000, 3008)
    arg1:EnableUnfavorableAttackCheck(3000000, 3009)
    arg1:EnableUnfavorableAttackCheck(3000000, 3010)
    arg1:EnableUnfavorableAttackCheck(3000000, 3011)
    arg1:EnableUnfavorableAttackCheck(3000000, 3014)
    arg1:EnableUnfavorableAttackCheck(3000000, 3016)
    arg1:EnableUnfavorableAttackCheck(3000000, 3020)
    arg1:EnableUnfavorableAttackCheck(4000000, 3000)
    arg1:EnableUnfavorableAttackCheck(4000000, 3001)
    arg1:EnableUnfavorableAttackCheck(4000000, 3002)
    arg1:EnableUnfavorableAttackCheck(4000000, 3003)
    arg1:EnableUnfavorableAttackCheck(4000000, 3005)
    arg1:EnableUnfavorableAttackCheck(4000000, 3006)
    arg1:EnableUnfavorableAttackCheck(4000000, 3007)
    arg1:EnableUnfavorableAttackCheck(4000000, 3010)
    arg1:EnableUnfavorableAttackCheck(4000000, 3011)
    arg1:EnableUnfavorableAttackCheck(4000000, 3013)
    arg1:EnableUnfavorableAttackCheck(4000000, 3015)
    arg1:EnableUnfavorableAttackCheck(4000000, 3016)
    arg1:EnableUnfavorableAttackCheck(4000000, 3020)
    arg1:SetNumber(5, 0)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = arg1:GetEventRequest()
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 11809)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 11810)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 11811)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 11813)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 11822)
    local local7 = arg1:HasSpecialEffectId(TARGET_SELF, 11820)
    local local8 = arg1:HasSpecialEffectId(TARGET_SELF, 11821)
    local local9 = arg1:HasSpecialEffectId(TARGET_SELF, 11825)
    if arg1:IsRiding(TARGET_SELF) == false then
        if arg1:HasSpecialEffectId(TARGET_SELF, 11805) and arg1:ReserveRide(10) == true then
            local0[14] = 100
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 11805) == false and arg1:HasSpecialEffectId(TARGET_SELF, 11825) == true and 200 < arg1:GetRandam_Int(0, 100) * arg1:GetNumber(5) then
            local0[13] = 100
            local0[40] = 5
        elseif 8 < local3 then
            local0[13] = 1000
            local0[15] = 10
            local0[16] = 10
            local0[17] = 10
            local0[40] = 10
        elseif 2 < local3 then
            local0[11] = 60
            local0[15] = 100
            local0[16] = 40
            local0[17] = 10
            local0[18] = 85
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, 260, 3) then
            local0[17] = 10
            local0[18] = 85
            local0[45] = 5
        else
            local0[12] = 15
            local0[15] = 5
            local0[17] = 50
            local0[45] = 30
        end
    elseif local3 < 1.5 then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 260, 3) then
            local0[3] = 30
            local0[6] = 90
            local0[10] = 30
            local0[43] = 10
        else
            local0[3] = 40
            local0[5] = 40
            local0[10] = 30
            local0[43] = 10
        end
    elseif local3 < 5 then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 260, 6) then
            local0[1] = 40
            local0[3] = 30
            local0[4] = 25
            local0[5] = 20
            local0[6] = 90
            local0[9] = 20
            local0[10] = 30
            local0[43] = 10
        else
            local0[3] = 40
            local0[4] = 20
            local0[5] = 10
            local0[6] = 30
            local0[43] = 10
        end
    elseif local3 < 10 then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 150, 260, 12) then
            local0[10] = 30
            local0[43] = 10
            local0[9] = 60
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 160, 260, 12) then
            local0[2] = 15
            local0[4] = 20
            local0[9] = 20
        else
            local0[4] = 40
            local0[10] = 25
        end
    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 150, 260, 20) then
        local0[10] = 30
        local0[43] = 10
        local0[9] = 60
    else
        local0[2] = 40
        local0[9] = 40
        local0[42] = 40
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 10 + arg1:GetRandam_Int(0, 5), local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3001, 10 + arg1:GetRandam_Int(0, 5), local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3006, 10 + arg1:GetRandam_Int(0, 5), local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3010, 5 + arg1:GetRandam_Int(0, 10), local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3011, 10 + arg1:GetRandam_Int(0, 5), local0[5], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3020, 10 + arg1:GetRandam_Int(0, 5), local0[6], 1)
    local0[9] = SetCoolTime(arg1, arg2, 3005, 5 + arg1:GetRandam_Int(10, 15), local0[9], 1)
    local0[10] = SetCoolTime(arg1, arg2, 3012, 10 + arg1:GetRandam_Int(0, 5), local0[10], 15)
    local0[13] = SetCoolTime(arg1, arg2, 3020, 3 + arg1:GetRandam_Int(0, 5), local0[13], 0)
    local0[17] = SetCoolTime(arg1, arg2, 3007, 10 + arg1:GetRandam_Int(0, 5), local0[17], 1)
    local0[49] = SetCoolTime(arg1, arg2, 3006, 10 + arg1:GetRandam_Int(0, 5), local0[49], 0)
    local0[49] = SetCoolTime(arg1, arg2, 3006, 10 + arg1:GetRandam_Int(0, 5), local0[49], 0)
    local0[49] = SetCoolTime(arg1, arg2, 3004, 10 + arg1:GetRandam_Int(0, 5), local0[49], 0)
    local0[49] = SetCoolTime(arg1, arg2, 3020, 3 + arg1:GetRandam_Int(0, 5), local0[49], 0)
    if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 180, 90, 6) == false then
        local0[6] = 0
    end
    if 3 < local3 then
        local0[12] = 0
        local0[18] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 11825) == false then
        local0[13] = 0
    end
    local1[1] = REGIST_FUNC(arg1, arg2, RuneHunterKnightAxe315000_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, RuneHunterKnightAxe315000_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, RuneHunterKnightAxe315000_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, RuneHunterKnightAxe315000_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, RuneHunterKnightAxe315000_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, RuneHunterKnightAxe315000_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, RuneHunterKnightAxe315000_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, RuneHunterKnightAxe315000_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, RuneHunterKnightAxe315000_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, RuneHunterKnightAxe315000_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, RuneHunterKnightAxe315000_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, RuneHunterKnightAxe315000_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, RuneHunterKnightAxe315000_Act13)
    local1[14] = REGIST_FUNC(arg1, arg2, RuneHunterKnightAxe315000_Act14)
    local1[15] = REGIST_FUNC(arg1, arg2, RuneHunterKnightAxe315000_Act15)
    local1[16] = REGIST_FUNC(arg1, arg2, RuneHunterKnightAxe315000_Act16)
    local1[17] = REGIST_FUNC(arg1, arg2, RuneHunterKnightAxe315000_Act17)
    local1[18] = REGIST_FUNC(arg1, arg2, RuneHunterKnightAxe315000_Act18)
    local1[19] = REGIST_FUNC(arg1, arg2, RuneHunterKnightAxe315000_Act19)
    local1[20] = REGIST_FUNC(arg1, arg2, RuneHunterKnightAxe315000_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, RuneHunterKnightAxe315000_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, RuneHunterKnightAxe315000_Act22)
    local1[40] = REGIST_FUNC(arg1, arg2, RuneHunterKnightAxe315000_Act40)
    local1[41] = REGIST_FUNC(arg1, arg2, RuneHunterKnightAxe315000_Act41)
    local1[42] = REGIST_FUNC(arg1, arg2, RuneHunterKnightAxe315000_Act42)
    local1[43] = REGIST_FUNC(arg1, arg2, RuneHunterKnightAxe315000_Act43)
    local1[44] = REGIST_FUNC(arg1, arg2, RuneHunterKnightAxe315000_Act44)
    local1[45] = REGIST_FUNC(arg1, arg2, RuneHunterKnightAxe315000_Act45)
    local1[48] = REGIST_FUNC(arg1, arg2, RuneHunterKnightAxe315000_Act48)
    local1[49] = REGIST_FUNC(arg1, arg2, RuneHunterKnightAxe315000_Act49)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, RuneHunterKnightAxe315000_ActAfter_AdjustSpace), local2)
    return 
end

function RuneHunterKnightAxe315000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 4.5, 999, 0, 0, 0, 1, 1)
    local local1 = 3004
    local local2 = 7
    local local3 = 0
    local local4 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, 4, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, 4, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneHunterKnightAxe315000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 16, 0, 0, 0, 0, 1, 1)
    local local1 = 3002
    local local2 = 3004
    local local3 = 4
    local local4 = 7
    local local5 = 0
    local local6 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, 3.5, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneHunterKnightAxe315000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 3006
    local local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local3 = 0
    local local4 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 90, 260, 12) then
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, 0, 0, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local1, TARGET_ENE_0, 0, 0, 0, 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local1, TARGET_ENE_0, 0, 0, 0, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneHunterKnightAxe315000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 10, 0, 0, 0, 0, 1, 1)
    local local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 0, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneHunterKnightAxe315000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 5, 0, 0, 0, 0, 1, 1)
    local local1 = arg0:GetDist(TARGET_ENE_0)
    local local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local3 = 0
    local local4 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, 0, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneHunterKnightAxe315000_Act06(arg0, arg1, arg2)
    local local0 = 0
    local local1 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneHunterKnightAxe315000_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 4.5, 0, 0, 0, 0, 1, 1)
    local local1 = 3004
    local local2 = 7
    local local3 = 0
    local local4 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3014, TARGET_ENE_0, 4, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3016, TARGET_ENE_0, 4, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneHunterKnightAxe315000_Act09(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    Approach_Act_Flex(arg0, arg1, 28, 0, 0, 0, 0, 1, 1)
    if arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, 260, 18) and arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 260, 12) then
        if 50 < arg0:GetRandam_Int(1, 100) then
            arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, arg0:GetRandam_Int(2, 3), TARGET_ENE_0, 10, TARGET_SELF, false, -1, AI_DIR_TYPE_ToBR, arg0:GetRandam_Int(30, 40))
        else
            arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, arg0:GetRandam_Int(2, 3), TARGET_ENE_0, 10, TARGET_SELF, false, -1, AI_DIR_TYPE_ToBL, arg0:GetRandam_Int(30, 40))
        end
    end
    local local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3005, TARGET_ENE_0, 100, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneHunterKnightAxe315000_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 30, 0, 0, 0, 0, 1, 1)
    local local1 = 0
    local local2 = 0
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3012, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneHunterKnightAxe315000_Act11(arg0, arg1, arg2)
    arg0:SetNumber(5, arg0:GetNumber(5) + 1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 5, 0, 999, 0, 0, 1, 1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneHunterKnightAxe315000_Act12(arg0, arg1, arg2)
    arg0:SetNumber(5, arg0:GetNumber(5) + 1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 11809)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 11810)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 11811)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 11813)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneHunterKnightAxe315000_Act13(arg0, arg1, arg2)
    arg0:SetNumber(5, 0)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneHunterKnightAxe315000_Act14(arg0, arg1, arg2)
    arg0:SetNumber(5, 0)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    arg1:AddSubGoal(GOAL_COMMON_Mount, 10, 3)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneHunterKnightAxe315000_Act15(arg0, arg1, arg2)
    arg0:SetNumber(5, arg0:GetNumber(5) + 1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 4, 0, 999, 0, 0, 1, 1)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 11809)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 11810)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 11811)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 11813)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneHunterKnightAxe315000_Act16(arg0, arg1, arg2)
    arg0:SetNumber(5, arg0:GetNumber(5) + 1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 4, 0, 999, 0, 0, 1, 1)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 11809)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 11810)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 11811)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 11813)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneHunterKnightAxe315000_Act17(arg0, arg1, arg2)
    arg0:SetNumber(5, arg0:GetNumber(5) + 1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 4, 0, 999, 0, 0, 1, 1)
    local local1 = 5
    local local2 = 5
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, SuccessDist, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneHunterKnightAxe315000_Act18(arg0, arg1, arg2)
    arg0:SetNumber(5, arg0:GetNumber(5) + 1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 5
    local local2 = 5
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, SuccessDist, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneHunterKnightAxe315000_Act19(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 4, 0, 999, 0, 0, 1, 1)
    local local1 = 3000
    local local2 = 5
    local local3 = 0
    local local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, 5, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3002, TARGET_ENE_0, 3, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneHunterKnightAxe315000_Act20(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneHunterKnightAxe315000_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3026, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneHunterKnightAxe315000_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3027, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneHunterKnightAxe315000_Act40(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 3, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneHunterKnightAxe315000_Act41(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 3, TARGET_SELF, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneHunterKnightAxe315000_Act42(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 2, TARGET_ENE_0, 10, TARGET_SELF, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneHunterKnightAxe315000_Act43(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    if 50 < arg0:GetRandam_Int(1, 100) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, arg0:GetRandam_Int(2, 3), TARGET_ENE_0, 10, TARGET_SELF, false, -1, AI_DIR_TYPE_ToBL, arg0:GetRandam_Int(20, 30))
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, arg0:GetRandam_Int(2, 3), TARGET_ENE_0, 10, TARGET_SELF, false, -1, AI_DIR_TYPE_ToBR, arg0:GetRandam_Int(20, 30))
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneHunterKnightAxe315000_Act44(arg0, arg1, arg2)
    local local0 = 3013
    local local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 1, TARGET_ENE_0, 6, TARGET_SELF, false, -1, AI_DIR_TYPE_ToL, 10)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneHunterKnightAxe315000_Act45(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneHunterKnightAxe315000_Act48(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 1.5, TARGET_ENE_0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneHunterKnightAxe315000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_RuneHunterKnightAxe315001_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local local0 = arg1:GetRandam_Int(1, 100)
    local local1 = arg1:GetDist(TARGET_ENE_0)
    local local2 = arg1:GetHpRate(TARGET_SELF)
    local local3 = arg1:GetNumber(0)
    local local4 = arg1:GetRandam_Int(0, 10)
    local local5 = arg1:GetRandam_Int(0, 5)
    local local6 = arg1:HasSpecialEffectId(TARGET_SELF, 11820)
    local local7 = arg1:HasSpecialEffectId(TARGET_SELF, 11821)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 11822)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    elseif arg1:IsRiding(TARGET_SELF) == false then
        if arg1:IsInterupt(INTERUPT_MovedEnd_OnFailedPath) and arg1:IsRiding(TARGET_SELF) == false and arg1:HasSpecialEffectId(TARGET_SELF, 11805) == false and arg1:HasSpecialEffectId(TARGET_SELF, 11825) == true then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3025, TARGET_ENE_0, 999, 0, 0, 0, 0)
            return true
        elseif arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 11809) and 2 < local1 and local1 < 4 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, 3, 0, 0, 0, 0)
            arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3005, TARGET_ENE_0, 3, 0, 0)
            return true
        elseif arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 11810) and 2 < local1 and local1 < 6 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 10, 0, 0)
            return true
        elseif arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 11811) and 2 < local1 and local1 < 4 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 10, 0, 0)
            return true
        elseif arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 11813) then
            if 20 + local5 <= arg1:GetAttackPassedTime(3020) and arg1:HasSpecialEffectId(TARGET_SELF, 11815) == false and arg1:HasSpecialEffectId(TARGET_SELF, 11805) == false and arg1:HasSpecialEffectId(TARGET_SELF, 11825) == true then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, 10, 0, 0)
                return true
            elseif local1 < 2 and 10 + local5 <= arg1:GetAttackPassedTime(3008) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, 180, 3) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3008, TARGET_ENE_0, 10, 0, 0)
                return true
            elseif local1 < 2 and 10 + local5 <= arg1:GetAttackPassedTime(3007) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 10, 0, 0)
                return true
            elseif local1 < 2 and 10 + local5 <= arg1:GetAttackPassedTime(3006) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 10, 0, 0)
                return true
            elseif 4 < local1 and local1 < 7 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3000, TARGET_ENE_0, 10, 0, 0)
                return true
            end
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 11814) then
            if local1 < 2 and 20 + local5 <= arg1:GetAttackPassedTime(3020) and arg1:HasSpecialEffectId(TARGET_SELF, 11815) == false and arg1:HasSpecialEffectId(TARGET_SELF, 11805) == false and arg1:HasSpecialEffectId(TARGET_SELF, 11825) == true then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, 10, 0, 0)
                return true
            elseif 2 < local1 then
                if local1 < 4 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 10, 0, 0)
                    return true
                elseif local1 < 6 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 10, 0, 0)
                    return true
                end
            end
        end
    end
    if arg1:IsRiding(TARGET_SELF) == true then
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5028) then
            if local1 < 6 then
                if local6 == true then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 4, 0, 90)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 4, 0, 90)
                    return true
                end
            elseif 0.5 < local1 and local1 < 6 and 5 + local5 <= arg1:GetAttackPassedTime(3004) then
                if local6 == true then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 4, 0, 90)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3003, TARGET_ENE_0, 4, 0, 90)
                    return true
                end
            end
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5030) then
            local local8 = arg1:GetMapHitRadius(TARGET_SELF)
            local local9 = 5
            local local10 = arg1:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, local9 + local8, local8, 0)
            local local11 = arg1:GetRandam_Int(AI_DIR_TYPE_L, AI_DIR_TYPE_R)
            if arg1:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_F, local9 + local8, local8, 0) < local9 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, 4, 0, 90)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 220, 90, 5) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 4, 0, 90)
                return true
            end
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5025) then
            local local8 = arg1:GetRandam_Int(1, 100)
            if 30 < arg1:GetRandam_Int(1, 100) then
                if (10 + local5 <= arg1:GetAttackPassedTime(3020) or 90 < local8) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 150, 90, 6) then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3020, TARGET_ENE_0, 10, 0, 0)
                    return true
                elseif 10 + local5 <= arg1:GetAttackPassedTime(3012) or 80 < local8 then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, 10, 0, 0)
                    return true
                else
                    arg2:ClearSubGoal()
                    RuneHunterKnightAxe315000_Act43(arg1, arg2)
                    return true
                end
            end
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5027) then
            if 10 + local5 <= arg1:GetAttackPassedTime(3006) and local1 < 4 then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 10, 0, 0)
                return true
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, 10, 0, 0)
                return true
            end
        elseif arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5029) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 150, 180, 7) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3020, TARGET_ENE_0, 4, 0, 90)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 170, 180, 6) and 15 + local5 <= arg1:GetAttackPassedTime(3007) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 10, 0, 0)
                return true
            end
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 11822) then
            if local1 <= 4 and 40 < local0 then
                if local6 == true then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, 4, 0, 90)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, 4, 0, 90)
                    return true
                end
            elseif 3 <= local1 and local1 < 10 and 10 < local0 then
                if local6 == true then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 4, 0, 90)
                    return true
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 4, 0, 90)
                    return true
                end
            end
        end
        if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 180, 180, 4) then
            if 15 + local5 <= arg1:GetAttackPassedTime(3007) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 10, 0, 0)
                return true
            elseif 10 + local5 <= arg1:GetAttackPassedTime(3006) then
                arg2:ClearSubGoal()
                arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 10, 0, 0)
                return true
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, 10, 0, 0)
                return true
            end
        end
    end
    return false
end

RegisterTableGoal(GOAL_RuneHunterKnightAxe315001_AfterAttackAct, "RuneHunterKnightAxe315001_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RuneHunterKnightAxe315001_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetToTargetAngle(TARGET_ENE_0)
    arg1:SetStringIndexedNumber("DistMin_AAA", -999)
    arg1:SetStringIndexedNumber("DistMax_AAA", 7)
    arg1:SetStringIndexedNumber("BaseDir_AAA", AI_DIR_TYPE_F)
    arg1:SetStringIndexedNumber("Angle_AAA", 180)
    arg1:SetStringIndexedNumber("DistMin_Inter_AAA", 1)
    arg1:SetStringIndexedNumber("DistMax_Inter_AAA", 10)
    arg1:SetStringIndexedNumber("BaseAng_Inter_AAA", 0)
    arg1:SetStringIndexedNumber("Ang_Inter_AAA", 180)
    if 5 <= local0 then
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 80)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 70)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
    elseif 2 <= local0 then
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 80)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 50)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 30)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 10)
    else
        arg1:SetStringIndexedNumber("Odds_Guard_AAA", 80)
        arg1:SetStringIndexedNumber("Odds_NoAct_AAA", 50)
        arg1:SetStringIndexedNumber("Odds_BackAndSide_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_Back_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_Backstep_AAA", 5)
        arg1:SetStringIndexedNumber("Odds_Sidestep_AAA", 10)
        arg1:SetStringIndexedNumber("Odds_BsAndSide_AAA", 15)
    end
    arg2:AddSubGoal(GOAL_COMMON_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
