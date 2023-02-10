RegisterTableGoal(GOAL_BlackSword210000_Battle, "BlackSword210000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BlackSword210000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3002)
    arg1:EnableUnfavorableAttackCheck(0, 3003)
    arg1:EnableUnfavorableAttackCheck(0, 3004)
    arg1:EnableUnfavorableAttackCheck(0, 3005)
    arg1:EnableUnfavorableAttackCheck(0, 3006)
    arg1:EnableUnfavorableAttackCheck(0, 3007)
    arg1:EnableUnfavorableAttackCheck(0, 3008)
    arg1:EnableUnfavorableAttackCheck(0, 3010)
    arg1:EnableUnfavorableAttackCheck(0, 3012)
    arg1:EnableUnfavorableAttackCheck(0, 3014)
    arg1:EnableUnfavorableAttackCheck(0, 3015)
    arg1:EnableUnfavorableAttackCheck(0, 3016)
    arg1:EnableUnfavorableAttackCheck(0, 3018)
    arg1:EnableUnfavorableAttackCheck(0, 3019)
    arg1:SetStringIndexedNumber("isRunRate", 0)
    arg1:SetStringIndexedNumber("isFirstAttack", 0)
    arg1:SetStringIndexedNumber("isThrowSeal", 0)
    arg1:SetStringIndexedNumber("ReduceCTLightWave", 0)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    arg1:SetStringIndexedNumber("Dist_SideStep", 5)
    arg1:SetStringIndexedNumber("Dist_BackStep", 5)
    arg1:DeleteObserve(0)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 38)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 79)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 83)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 14540)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 14541)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 14542)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 14543)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 14544)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 14545)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 14546)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 6992)
    if arg1:HasSpecialEffectId(TARGET_SELF, 14547) == false then
        arg1:SetStringIndexedNumber("isRunRate", 100)
    else
        arg1:SetStringIndexedNumber("isRunRate", 0)
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == true then
        arg1:SetStringIndexedNumber("isThrowSeal", 1)
        arg1:SetStringIndexedNumber("ReduceCTLightWave", 8)
    end
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local5 = arg1:GetEventRequest()
    if arg1:GetStringIndexedNumber("isFirstAttack") == 0 and arg1:HasSpecialEffectId(TARGET_SELF, 14547) then
        arg1:SetStringIndexedNumber("isFirstAttack", 1)
        local0[15] = 10000
    elseif arg1:IsRiding(TARGET_ENE_0) == true and arg1:HasSpecialEffectId(TARGET_SELF, 14547) == false then
        local0[20] = 100
    elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 79) then
        local0[17] = 100
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 14506) == true and arg1:HasSpecialEffectId(TARGET_SELF, 14507) == false and arg1:GetStringIndexedNumber("isFirstAttack") == 0 then
        arg1:SetStringIndexedNumber("isFirstAttack", 1)
        local0[7] = 100
    elseif local3 < 4 then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 160, 180, 6) then
            local0[5] = 20
            local0[8] = 10
            local0[9] = 25
            local0[11] = 25
            local0[13] = 30
            local0[15] = 20
            local0[16] = 20
        else
            local0[5] = 10
            local0[47] = 90
            local0[8] = 1
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 14532) then
            local0[8] = 360
            local0[47] = 180
        end
    elseif local3 < 6 then
        local0[4] = 35
        local0[8] = 10
        local0[9] = 15
        local0[11] = 15
        local0[13] = 25
        local0[15] = 20
        local0[16] = 20
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
            local0[47] = 5000
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 14532) then
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                local0[8] = 800
            end
            local0[47] = 5000
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 14506) == false then
        local0[4] = 30
        local0[5] = 15
        local0[9] = 25
        local0[13] = 20
        local0[15] = 20
        local0[16] = 15
        local0[14] = 40
        local0[49] = 10
        if arg1:HasSpecialEffectId(TARGET_SELF, 14530) then
            if arg1:GetRandam_Int(1, 100) < 30 then
                local0[49] = 999
            end
            local0[14] = 80
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
            local0[47] = 5000
        end
        if arg1:HasSpecialEffectId(TARGET_SELF, 14532) then
            local0[14] = 300
            local0[22] = 240
            local0[49] = 240
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
                local0[47] = 5000
            end
        end
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) and arg1:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) then
            local0[14] = 1000
        end
    else
        local0[14] = 30
        local0[47] = 70
        local0[8] = 1
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) then
        local0[11] = 0
    end
    if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 240) then
        local0[8] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 14506) == false then
        local0[7] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 14506) == true and arg1:HasSpecialEffectId(TARGET_SELF, 14507) == false then
        local0[7] = 100
        local0[49] = 40
        local0[14] = 0
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 14547) then
        local0[9] = 0
        local0[11] = 0
        local0[12] = 0
        local0[14] = 0
        local0[16] = 0
        local0[20] = 0
        local0[21] = 0
    else
        local0[15] = 0
    end
    if arg1:GetStringIndexedNumber("isThrowSeal") == true then
        local0[11] = 0
        local0[20] = 0
        local0[21] = 0
    end
    local0[4] = SetCoolTime(arg1, arg2, 3003, 10 + arg1:GetRandam_Int(0, 5), local0[4], 0)
    local0[5] = SetCoolTime(arg1, arg2, 3006, 10 + arg1:GetRandam_Int(0, 5), local0[5], 0)
    local0[7] = SetCoolTime(arg1, arg2, 3008, 25, local0[7], 0)
    local0[8] = SetCoolTime(arg1, arg2, 3009, 5, local0[8], 0)
    local0[9] = SetCoolTime(arg1, arg2, 3010, 5 + arg1:GetRandam_Int(0, 5), local0[9], 0)
    local0[10] = SetCoolTime(arg1, arg2, 3011, 10 + arg1:GetRandam_Int(0, 5), local0[10], 0)
    local0[11] = SetCoolTime(arg1, arg2, 3012, 10 + arg1:GetRandam_Int(0, 5), local0[11], 0)
    local0[12] = SetCoolTime(arg1, arg2, 3014, 10 + arg1:GetRandam_Int(0, 5), local0[12], 0)
    if arg1:HasSpecialEffectId(TARGET_SELF, 14532) == false then
        local0[14] = SetCoolTime(arg1, arg2, 3017, 5 + arg1:GetRandam_Int(0, 5), local0[14], 0)
    else
        local0[14] = SetCoolTime(arg1, arg2, 3017, 3, local0[14], 1)
    end
    local0[15] = SetCoolTime(arg1, arg2, 3018, 10 + arg1:GetRandam_Int(0, 5), local0[15], 0)
    local0[21] = SetCoolTime(arg1, arg2, 3021, 10 + arg1:GetRandam_Int(0, 5), local0[21], 0)
    local0[22] = SetCoolTime(arg1, arg2, 3011, 10, local0[22], 0)
    local0[44] = SetCoolTime(arg1, arg2, 3002, 10 + arg1:GetRandam_Int(0, 5), local0[44], 1)
    local0[44] = SetCoolTime(arg1, arg2, 3003, 5 + arg1:GetRandam_Int(0, 5), local0[44], 1)
    local0[45] = SetCoolTime(arg1, arg2, 3003, 10 + arg1:GetRandam_Int(0, 5), local0[45], 1)
    local0[45] = SetCoolTime(arg1, arg2, 3002, 5 + arg1:GetRandam_Int(0, 5), local0[45], 1)
    if arg1:HasSpecialEffectId(TARGET_SELF, 14532) == false then
        local0[49] = SetCoolTime(arg1, arg2, 2002, 20, local0[49], 1)
        local0[49] = SetCoolTime(arg1, arg2, 2003, 20, local0[49], 1)
    end
    local1[1] = REGIST_FUNC(arg1, arg2, BlackSword210000_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, BlackSword210000_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, BlackSword210000_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, BlackSword210000_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, BlackSword210000_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, BlackSword210000_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, BlackSword210000_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, BlackSword210000_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, BlackSword210000_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, BlackSword210000_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, BlackSword210000_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, BlackSword210000_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, BlackSword210000_Act13)
    local1[14] = REGIST_FUNC(arg1, arg2, BlackSword210000_Act14)
    local1[15] = REGIST_FUNC(arg1, arg2, BlackSword210000_Act15)
    local1[16] = REGIST_FUNC(arg1, arg2, BlackSword210000_Act16)
    local1[17] = REGIST_FUNC(arg1, arg2, BlackSword210000_Act17)
    local1[18] = REGIST_FUNC(arg1, arg2, BlackSword210000_Act18)
    local1[19] = REGIST_FUNC(arg1, arg2, BlackSword210000_Act19)
    local1[20] = REGIST_FUNC(arg1, arg2, BlackSword210000_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, BlackSword210000_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, BlackSword210000_Act22)
    local1[40] = REGIST_FUNC(arg1, arg2, BlackSword210000_Act40)
    local1[41] = REGIST_FUNC(arg1, arg2, BlackSword210000_Act41)
    local1[42] = REGIST_FUNC(arg1, arg2, BlackSword210000_Act42)
    local1[42] = REGIST_FUNC(arg1, arg2, BlackSword210000_Act42)
    local1[43] = REGIST_FUNC(arg1, arg2, BlackSword210000_Act43)
    local1[44] = REGIST_FUNC(arg1, arg2, BlackSword210000_Act44)
    local1[45] = REGIST_FUNC(arg1, arg2, BlackSword210000_Act45)
    local1[46] = REGIST_FUNC(arg1, arg2, BlackSword210000_Act46)
    local1[47] = REGIST_FUNC(arg1, arg2, BlackSword210000_Act47)
    local1[48] = REGIST_FUNC(arg1, arg2, BlackSword210000_Act48)
    local1[49] = REGIST_FUNC(arg1, arg2, BlackSword210000_Act49)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, BlackSword210000_ActAfter_AdjustSpace), local2)
    return 
end

function BlackSword210000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, 3, 0, 999, arg0:GetStringIndexedNumber("isRunRate"), 0, 20, 20)
    local local2 = 0
    local local3 = 0
    arg0:SetNumber(0, 0)
    arg0:SetNumber(1, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3000, TARGET_ENE_0, 3.5, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, 2.5, 0, 999, arg0:GetStringIndexedNumber("isRunRate"), 0, 20, 20)
    local local2 = 0
    local local3 = 0
    arg0:SetNumber(0, 0)
    arg0:SetNumber(1, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3001, TARGET_ENE_0, 3.5, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, 3, 0, 999, arg0:GetStringIndexedNumber("isRunRate"), 0, 20, 20)
    local local2 = 0
    local local3 = 0
    arg0:SetNumber(0, 0)
    arg0:SetNumber(1, 1)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3002, TARGET_ENE_0, 3.5, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, 5.5, 0, 999, arg0:GetStringIndexedNumber("isRunRate"), 0, 20, 20)
    local local2 = 0
    local local3 = 0
    arg0:SetNumber(0, 0)
    arg0:SetNumber(1, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, 3.5, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210000_Act05(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, 5, 0, 999, arg0:GetStringIndexedNumber("isRunRate"), 0, 20, 20)
    local local2 = 0
    local local3 = 0
    arg0:SetNumber(0, 0)
    arg0:SetNumber(1, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3006, TARGET_ENE_0, 3.5, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210000_Act06(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, 6, 0, 999, arg0:GetStringIndexedNumber("isRunRate"), 0, 20, 20)
    local local2 = 0
    local local3 = 0
    arg0:SetNumber(0, 0)
    arg0:SetNumber(1, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 3.5, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210000_Act07(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, 1.5, 0, 999, arg0:GetStringIndexedNumber("isRunRate"), 0, 20, 20)
    local local2 = 0
    local local3 = 0
    arg0:SetNumber(0, 0)
    arg0:SetNumber(1, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 1, 3008, TARGET_ENE_0, 3.5, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210000_Act08(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 0
    local local3 = 0
    arg0:SetNumber(0, 0)
    arg0:SetNumber(1, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, 3.5, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210000_Act09(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, 6, 0, 999, arg0:GetStringIndexedNumber("isRunRate"), 0, 20, 20)
    local local2 = 0
    local local3 = 0
    arg0:SetNumber(0, 0)
    arg0:SetNumber(1, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 3.5, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210000_Act10(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 0
    local local3 = 0
    arg0:SetNumber(0, 0)
    arg0:SetNumber(1, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, 3.5, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210000_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, 6, 0, 999, arg0:GetStringIndexedNumber("isRunRate"), 0, 20, 20)
    local local2 = 0
    local local3 = 0
    arg0:SetNumber(0, 0)
    arg0:SetNumber(1, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, 3.5, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210000_Act12(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, 3.5, 0, 999, arg0:GetStringIndexedNumber("isRunRate"), 0, 20, 20)
    local local2 = 0
    local local3 = 0
    arg0:SetNumber(0, 0)
    arg0:SetNumber(1, 0)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3014, TARGET_ENE_0, 3.5, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210000_Act13(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, 3, 0, 999, arg0:GetStringIndexedNumber("isRunRate"), 0, 20, 20)
    local local2 = 0
    local local3 = 0
    arg0:SetNumber(0, 0)
    arg0:SetNumber(1, 1)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3015, TARGET_ENE_0, 2, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210000_Act14(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 0
    local local3 = 0
    arg0:SetNumber(0, 0)
    arg0:SetNumber(1, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3017, TARGET_ENE_0, 2, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210000_Act15(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, 3.5, 0, 999, arg0:GetStringIndexedNumber("isRunRate"), 0, 20, 20)
    local local2 = 0
    local local3 = 0
    arg0:SetNumber(0, 0)
    arg0:SetNumber(1, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3018, TARGET_ENE_0, 2, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210000_Act16(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, 5, 0, 999, arg0:GetStringIndexedNumber("isRunRate"), 0, 20, 20)
    local local2 = 0
    local local3 = 0
    arg0:SetNumber(0, 0)
    arg0:SetNumber(1, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3004, TARGET_ENE_0, 2, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210000_Act17(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 1, 1, 1, 100, 0, 0.1, 0.1)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3110, TARGET_ENE_0, 3, 0, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210000_Act18(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, 3, 0, 999, arg0:GetStringIndexedNumber("isRunRate"), 0, 20, 20)
    local local1 = 3004
    local local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local3 = 0
    local local4 = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3015, TARGET_ENE_0, local2, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3015, TARGET_ENE_0, local2, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3015, TARGET_ENE_0, 6, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210000_Act19(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, 3, 0, 999, arg0:GetStringIndexedNumber("isRunRate"), 0, 20, 20)
    local local1 = 3004
    local local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local3 = 0
    local local4 = 0
    if local0 <= 50 then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3001, TARGET_ENE_0, local2, 0, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3022, TARGET_ENE_0, local2, 0, 0, 0, 0)
        if local0 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, 6, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, 6, 0, 0)
        end
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3001, TARGET_ENE_0, local2, 0, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, local2, 0, 0, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, local2, 0, 0, 0, 0)
        if local0 <= 50 then
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3007, TARGET_ENE_0, 6, 0, 0)
        else
            arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 10, 3008, TARGET_ENE_0, 6, 0, 0)
        end
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210000_Act20(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, 40, 0, 999, arg0:GetStringIndexedNumber("isRunRate"), 0, 20, 20)
    local local2 = 0
    local local3 = 0
    arg0:SetNumber(0, 0)
    arg0:SetNumber(1, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3020, TARGET_ENE_0, 2, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210000_Act21(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, 10, 0, 999, arg0:GetStringIndexedNumber("isRunRate"), 0, 20, 20)
    local local2 = 0
    local local3 = 0
    arg0:SetNumber(0, 0)
    arg0:SetNumber(1, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3021, TARGET_ENE_0, 2, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210000_Act22(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    Approach_Act_Flex(arg0, arg1, 4, 0, 999, arg0:GetStringIndexedNumber("isRunRate"), 0, 20, 20)
    local local2 = 0
    local local3 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3011, TARGET_ENE_0, 3.5, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210000_Act40(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 1, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    arg0:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 6)
    arg0:SetNumber(0, 0)
    arg0:SetNumber(1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210000_Act41(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 1, TARGET_ENE_0, 3, TARGET_SELF, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210000_Act42(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, 5, 1, -1, -1, -1, TARGET_ENE_0, 3, 0, false)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210000_Act43(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, 1, 1, 1, TARGET_ENE_0, 3, 0, false)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210000_Act44(arg0, arg1, arg2)
    arg0:SetNumber(0, 0)
    arg0:SetNumber(1, 0)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, 1, -1, TARGET_ENE_0, 3, 0, false)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210000_Act45(arg0, arg1, arg2)
    arg0:SetNumber(0, 0)
    arg0:SetNumber(1, 0)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, -1, 1, TARGET_ENE_0, 3, 0, false)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210000_Act46(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 1, TARGET_ENE_0, 8, TARGET_ENE_0, true, -1)
    arg0:SetNumber(0, 0)
    arg0:SetNumber(1, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210000_Act47(arg0, arg1, arg2)
    local local0 = 0.5
    local local1 = 6013
    local local2 = TARGET_ENE_0
    local local3 = 0
    local local4 = AI_DIR_TYPE_R
    local local5 = 0
    local local6 = arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_R, 180)
    if local6 == true then
        local1 = 6012
    end
    if arg0:HasSpecialEffectId(TARGET_SELF, 14547) then
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, local0, local1, local2, local3, local4, local5)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    local local7 = arg0:GetRandam_Int(1, 100)
    if 5 < arg0:GetAttackPassedTime(6002) and 5 < arg0:GetAttackPassedTime(6003) then
        if arg0:HasSpecialEffectId(TARGET_SELF, 14506) then
            local7 = local7 - 80
        elseif arg0:HasSpecialEffectId(TARGET_SELF, 14532) and arg0:GetDist(TARGET_ENE_0) < 6 then
            local7 = local7 - 70
        end
    else
        local7 = local7 + 20
    end
    if local7 < 20 or arg0:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 60, -1, 3) then
        if arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, 5) and local6 == true then
            local1 = 6002
        elseif arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, 5) and local6 == false then
            local1 = 6003
        end
    end
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, local0, local1, local2, local3, local4, local5)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210000_Act48(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 3, TARGET_ENE_0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210000_Act49(arg0, arg1, arg2)
    local local0 = 6
    local local1 = 50
    local local2 = -1
    local local3 = true
    local local4 = 1
    local local5 = 1.5
    local local6 = 0.5
    if arg0:GetTeamOrder(ORDER_TYPE_Role) ~= ROLE_TYPE_Kankyaku and arg0:GetTeamOrder(ORDER_TYPE_Role) ~= ROLE_TYPE_Torimaki then
        local5 = arg0:GetRandam_Float(2.5, 3.5)
        local6 = arg0:GetRandam_Float(2.5, 3.5)
    end
    local local7 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_R, local4)
    local local8 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_L, local4)
    local local9 = arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_F, local4)
    local local10 = arg0:GetDist(TARGET_ENE_0)
    local local11 = arg0:GetRandam_Int(0, 1)
    if local8 ~= true or local7 ~= true then
        if local8 == true and local7 == false then
            local11 = 0
        elseif local8 == false and local7 == true then
            local11 = 1
        elseif local8 == false and local7 == false then
            local11 = 2
        end
    end
    if local1 < local10 then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, arg0:GetRandam_Float(local0, local1), TARGET_SELF, true, local2)
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    elseif local10 <= local1 and local0 <= local10 then
        if local11 <= 1 then
            arg0:AddObserveArea(0, TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 6)
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, local11, 100, local3, false, local2, resultTypeIfGuardSuccess)
        else
            arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 1.5, TARGET_ENE_0, local0, TARGET_SELF, true, local2)
        end
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    elseif local10 < local0 then
        if arg0:IsExistMeshOnLine(TARGET_SELF, AI_DIR_TYPE_B, local4) == true then
            arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, local6, TARGET_ENE_0, arg0:GetRandam_Float(local0, local1), TARGET_ENE_0, local3, local2, GUARD_GOAL_DESIRE_RET_Success)
        elseif local11 <= 1 then
            arg1:AddSubGoal(GOAL_COMMON_SidewayMove, local5, TARGET_ENE_0, local11, 100, local3, false, local2, resultTypeIfGuardSuccess)
        else
            BlackSword210000_Act05(arg0, arg1)
        end
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function BlackSword210000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_BlackSword210000_AfterAttackAct, 10)
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
    local local1 = arg1:GetRandam_Int(1, 100)
    local local2 = arg1:GetDist(TARGET_ENE_0)
    local local3 = arg1:GetHpRate(TARGET_SELF)
    local local4 = arg1:GetNumber(0)
    local local5 = arg1:GetNumber(1)
    local local6 = arg1:GetRandam_Int(0, 10)
    local local7 = arg1:GetRandam_Int(0, 5)
    local local8 = arg1:HasSpecialEffectId(TARGET_SELF, 14547)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    elseif arg1:IsInterupt(INTERUPT_Shoot) and arg1:HasSpecialEffectId(TARGET_SELF, 14506) == false and arg1:HasSpecialEffectId(TARGET_SELF, 14531) then
        if 6 < local2 or local8 == true then
            arg2:ClearSubGoal()
            BlackSword210000_Act47(arg1, arg2)
            return true
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
            local local9 = 3006
            if 10 < arg1:GetAttackPassedTime(3010) then
                local9 = 3010
            elseif 10 < arg1:GetAttackPassedTime(3012) and arg1:GetStringIndexedNumber("isThrowSeal") == false then
                local9 = 3012
            end
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, local9, TARGET_ENE_0, 0, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_Inside_ObserveArea) and arg1:IsInsideObserve(0) and arg1:GetTimer(2) <= 0 then
        arg2:ClearSubGoal()
        arg1:Replaning()
        return true
    elseif arg1:IsInterupt(INTERUPT_FindAttack) and arg1:GetTimer(1) <= 0 and arg1:HasSpecialEffectId(TARGET_SELF, 14531) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 6 + arg1:GetMapHitRadius(TARGET_SELF)) then
        arg1:SetTimer(1, 10)
        arg2:ClearSubGoal()
        if local0 < 33 then
            arg1:SetTimer(2, 0.5)
            arg2:AddSubGoal(GOAL_COMMON_Wait, 0.3, TARGET_ENE_0)
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 0.5, 3010, TARGET_ENE_0, 0, 0, 0)
        elseif local0 < 66 and arg1:GetStringIndexedNumber("isThrowSeal") == false then
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 0.5, 3012, TARGET_ENE_0, 0, 0, 0)
        else
            arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 0.5, 3011, TARGET_ENE_0, 0, 0, 0)
        end
        return true
    elseif arg1:IsInterupt(INTERUPT_Damaged) and arg1:HasSpecialEffectId(TARGET_SELF, 5035) == false then
        if arg1:HasSpecialEffectId(TARGET_SELF, 14506) and local2 < 3 then
            arg2:ClearSubGoal()
            BlackSword210000_Act47(arg1, arg2)
            return true
        elseif local2 < 1.5 then
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                if 20 + local7 <= arg1:GetAttackPassedTime(3009) and arg1:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 9, 0, 0) then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3009, TARGET_ENE_0, 0, 0, 0)
                    return true
                elseif 10 + local7 <= arg1:GetAttackPassedTime(3010) then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, 3010, TARGET_ENE_0, 0, 0, 0)
                    return true
                elseif 10 + local7 <= arg1:GetAttackPassedTime(3012) and arg1:GetStringIndexedNumber("isThrowSeal") == false and 5 + local7 <= arg1:GetAttackPassedTime(3010) and arg1:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == false then
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 3, 3012, TARGET_ENE_0, 0, 0, 0)
                    return true
                else
                    arg2:ClearSubGoal()
                    BlackSword210000_Act47(arg1, arg2)
                    return true
                end
            else
                arg2:ClearSubGoal()
                BlackSword210000_Act47(arg1, arg2)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5030) then
        if arg1:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 5, 0, 0) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, 10, 0, 0, 0)
            return true
        else
            arg2:ClearSubGoal()
            BlackSword210000_Act47(arg1, arg2)
            return true
        end
    elseif arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5031) and 6 < local2 and arg1:HasSpecialEffectId(TARGET_SELF, 14506) and arg1:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == false then
        arg2:ClearSubGoal()
        Approach_Act_Flex(arg1, arg2, 7, 0, 999, arg1:GetStringIndexedNumber("isRunRate"), 0, 20, 20)
        arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3007, TARGET_ENE_0, 6, 0, 0, 0, 0)
        return true
    elseif arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 14532) and local2 < 8 then
            arg2:ClearSubGoal()
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3009, TARGET_ENE_0, 10, 0, 0, 0)
            else
                BlackSword210000_Act47(arg1, arg2)
            end
            return true
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 14540) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 4 + arg1:GetMapHitRadius(TARGET_SELF)) and 12 < arg1:GetAttackPassedTime(3000) and local0 < 30 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 4.5 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3015, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) and local8 == false and arg1:HasSpecialEffectId(TARGET_SELF, 14506) == false and 12 - arg1:GetStringIndexedNumber("ReduceCTLightWave") < arg1:GetAttackPassedTime(3017) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 14541) and local8 == false then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, -1, 3 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3001, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, -1, 4.5 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 14542) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, -1, 4 + arg1:GetMapHitRadius(TARGET_SELF)) and local0 < 30 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 7 + arg1:GetMapHitRadius(TARGET_SELF)) and 20 < arg1:GetAttackPassedTime(3014) and local8 == false and local1 < 60 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, -1, 4.5 + arg1:GetMapHitRadius(TARGET_SELF)) then
                if local8 == true then
                    BlackSword210000_Act47(arg1, arg2)
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 10, 0, 0, 0)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 7.5 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                if arg1:HasSpecialEffectId(TARGET_SELF, 14548) and 20 < arg1:GetAttackPassedTime(3025) then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3025, TARGET_ENE_0, 0, 0, 0, 0)
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 0, 0, 0, 0)
                end
                return true
            elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            else
                arg2:ClearSubGoal()
                BlackSword210000_Act47(arg1, arg2)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 14543) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 4 + arg1:GetMapHitRadius(TARGET_SELF)) and 12 < arg1:GetAttackPassedTime(3000) and local0 < 30 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 7 + arg1:GetMapHitRadius(TARGET_SELF)) and 30 < arg1:GetAttackPassedTime(3012) and arg1:GetStringIndexedNumber("isThrowSeal") == false and local1 < 40 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 10 + arg1:GetMapHitRadius(TARGET_SELF)) and 20 < arg1:GetAttackPassedTime(3010) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 7 + arg1:GetMapHitRadius(TARGET_SELF)) and local8 == false and 20 < arg1:GetAttackPassedTime(3014) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 7.5 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                if arg1:HasSpecialEffectId(TARGET_SELF, 14548) and 20 < arg1:GetAttackPassedTime(3025) then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3025, TARGET_ENE_0, 0, 0, 0, 0)
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 0, 0, 0, 0)
                end
                return true
            elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) and 12 - arg1:GetStringIndexedNumber("ReduceCTLightWave") < arg1:GetAttackPassedTime(3017) and arg1:HasSpecialEffectId(TARGET_SELF, 14506) == false and local8 == false then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 180) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3011, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            else
                arg2:ClearSubGoal()
                BlackSword210000_Act47(arg1, arg2)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 14544) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 4 + arg1:GetMapHitRadius(TARGET_SELF)) and 12 < arg1:GetAttackPassedTime(3000) and local0 < 30 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 3.5 + arg1:GetMapHitRadius(TARGET_SELF)) and 5 < arg1:GetAttackPassedTime(3018) and local8 == true and local0 < 50 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 7 + arg1:GetMapHitRadius(TARGET_SELF)) and 30 < arg1:GetAttackPassedTime(3012) and local8 == true and arg1:GetStringIndexedNumber("isThrowSeal") == false and local1 < 40 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 10 + arg1:GetMapHitRadius(TARGET_SELF)) and local8 == true and 20 < arg1:GetAttackPassedTime(3010) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, -1, 4.5 + arg1:GetMapHitRadius(TARGET_SELF)) then
                if local8 == true then
                    BlackSword210000_Act47(arg1, arg2)
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 10, 0, 0, 0)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 7 + arg1:GetMapHitRadius(TARGET_SELF)) and 30 < arg1:GetAttackPassedTime(3012) and arg1:GetStringIndexedNumber("isThrowSeal") == false then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3012, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 10 + arg1:GetMapHitRadius(TARGET_SELF)) and 20 < arg1:GetAttackPassedTime(3010) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) and 12 - arg1:GetStringIndexedNumber("ReduceCTLightWave") < arg1:GetAttackPassedTime(3017) and local8 == false and arg1:HasSpecialEffectId(TARGET_SELF, 14506) == false then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 14545) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 180, -1, 4 + arg1:GetMapHitRadius(TARGET_SELF)) and 12 < arg1:GetAttackPassedTime(3000) and local0 < 30 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3000, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 3.5 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, 10, 0, 0, 0)
            elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 120) and local8 == false and arg1:HasSpecialEffectId(TARGET_SELF, 14506) == false and 12 - arg1:GetStringIndexedNumber("ReduceCTLightWave") < arg1:GetAttackPassedTime(3017) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 14546) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 4.5 + arg1:GetMapHitRadius(TARGET_SELF)) and local1 < 60 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3016, TARGET_ENE_0, 5, 0, 0, 120)
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3015, TARGET_ENE_0, 5, 0, 0, 120)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 3.5 + arg1:GetMapHitRadius(TARGET_SELF)) and local0 < 60 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3002, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 3.5 + arg1:GetMapHitRadius(TARGET_SELF)) and 5 < arg1:GetAttackPassedTime(3018) and local8 == true and local0 < 50 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3018, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, -1, 4.5 + arg1:GetMapHitRadius(TARGET_SELF)) then
                if local8 == true then
                    BlackSword210000_Act47(arg1, arg2)
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 10, 0, 0, 0)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 10 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3010, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 5026) then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, -1, 4 + arg1:GetMapHitRadius(TARGET_SELF)) and local0 < 30 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3005, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 7 + arg1:GetMapHitRadius(TARGET_SELF)) and 20 < arg1:GetAttackPassedTime(3014) and local8 == false and local1 < 60 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, 10, 0, 0, 0)
                return true
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, -1, 4.5 + arg1:GetMapHitRadius(TARGET_SELF)) then
                if local8 == true then
                    BlackSword210000_Act47(arg1, arg2)
                else
                    arg2:ClearSubGoal()
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3004, TARGET_ENE_0, 10, 0, 0, 0)
                    return true
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, -1, 7.5 + arg1:GetMapHitRadius(TARGET_SELF)) then
                arg2:ClearSubGoal()
                if arg1:HasSpecialEffectId(TARGET_SELF, 14548) and 20 < arg1:GetAttackPassedTime(3025) then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3025, TARGET_ENE_0, 0, 0, 0, 0)
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 0, 0, 0, 0)
                end
                return true
            else
                arg2:ClearSubGoal()
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5032) then
        arg2:ClearSubGoal()
        if arg1:HasSpecialEffectId(TARGET_SELF, 14506) then
            arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, 7, TARGET_ENE_0, 20, TARGET_ENE_0, true, -1)
        else
            arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 7, TARGET_ENE_0, true, -1)
        end
        return true
    elseif arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5034) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 240, 60, 4) then
        if local2 < 3.5 then
            if local0 <= 30 and local8 == false and 20 + local7 <= arg1:GetAttackPassedTime(3014) then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3014, TARGET_ENE_0, 0, 0, 0, 0)
                return true
            end
            arg2:ClearSubGoal()
            if arg1:HasSpecialEffectId(TARGET_SELF, 14548) and 20 < arg1:GetAttackPassedTime(3025) then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3025, TARGET_ENE_0, 0, 0, 0, 0)
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3006, TARGET_ENE_0, 0, 0, 0, 0)
            end
            return true
        else
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 7, TARGET_ENE_0, true, -1)
            return true
        end
    elseif arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 5036) then
        arg2:ClearSubGoal()
        BlackSword210000_Act47(arg1, arg2)
        return true
    elseif arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(79) then
        arg2:ClearSubGoal()
        arg1:Replaning()
        return true
    else
        return false
    end
end

RegisterTableGoal(GOAL_BlackSword210000_AfterAttackAct, "BlackSword210000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_BlackSword210000_AfterAttackAct, true)
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
