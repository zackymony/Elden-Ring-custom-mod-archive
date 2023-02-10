RegisterTableGoal(GOAL_LostKnight_DualSword_301010_Battle, "LostKnight_DualSword_301010_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_LostKnight_DualSword_301010_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:SetNumber(1, 0)
    arg1:SetNumber(4, 0)
    arg1:SetNumber(6, 0)
    arg1:SetNumber(10, 0)
    arg1:EnableUnfavorableAttackCheck(1000000, 3000)
    arg1:EnableUnfavorableAttackCheck(1000000, 3001)
    arg1:EnableUnfavorableAttackCheck(1000000, 3002)
    arg1:EnableUnfavorableAttackCheck(1000000, 3003)
    arg1:EnableUnfavorableAttackCheck(1000000, 3004)
    arg1:EnableUnfavorableAttackCheck(1000000, 3005)
    arg1:EnableUnfavorableAttackCheck(1000000, 3006)
    arg1:EnableUnfavorableAttackCheck(1000000, 3007)
    arg1:EnableUnfavorableAttackCheck(1000000, 3008)
    arg1:EnableUnfavorableAttackCheck(1000000, 3009)
    arg1:EnableUnfavorableAttackCheck(1000000, 3010)
    arg1:EnableUnfavorableAttackCheck(1000000, 3012)
    arg1:EnableUnfavorableAttackCheck(1000000, 3013)
    arg1:EnableUnfavorableAttackCheck(1000000, 3015)
    arg1:EnableUnfavorableAttackCheck(1000000, 3016)
    arg1:EnableUnfavorableAttackCheck(1000000, 3017)
    arg1:EnableUnfavorableAttackCheck(1000000, 3018)
    arg1:EnableUnfavorableAttackCheck(1000000, 3019)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetEventRequest()
    local local6 = 1
    local local7 = arg1:HasSpecialEffectId(TARGET_SELF, 10840)
    local local8 = arg1:HasSpecialEffectId(TARGET_SELF, 11139)
    arg1:SetStringIndexedNumber("c3010_DashRate", 100)
    arg1:SetStringIndexedNumber("c3010_WalkDist", 1)
    arg1:SetStringIndexedNumber("c3010_RunDist", 1)
    arg1:SetStringIndexedNumber("c3010_GuardRate", 0)
    arg1:SetStringIndexedNumber("c3010_WalkLife", 1)
    if arg1:HasSpecialEffectId(TARGET_SELF, 10850) == true then
        arg1:SetStringIndexedNumber("c3010_DashRate", 100)
        arg1:SetStringIndexedNumber("c3010_WalkDist", 0)
        arg1:SetStringIndexedNumber("c3010_RunDist", 999)
        arg1:SetStringIndexedNumber("c3010_GuardRate", 0)
        arg1:SetStringIndexedNumber("c3010_WalkLife", 0)
    end
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 16451)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10874)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, PLAN_SP_EFFECT_TRUNK_COLLAPSE)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 10859)
    arg1:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, AI_DIR_TYPE_B, 2.5, TARGET_ENE_0)
    if arg1:HasSpecialEffectId(TARGET_SELF, 10880) == true then
        if arg1:HasSpecialEffectId(TARGET_SELF, 10855) and arg1:GetNumber(1) ~= 1 then
            local0[14] = 50
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 160, 90, 20 - arg1:GetMapHitRadius(TARGET_SELF)) then
            local0[21] = 1
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 140, 90, 3.2 - arg1:GetMapHitRadius(TARGET_SELF) + 2) then
                local0[5] = 50
            end
        elseif 10.5 <= local3 then
            local0[1] = 5
            local0[2] = 5
            local0[3] = 5
            local0[11] = 40
            local0[12] = 20
            local0[18] = 30
        elseif 5.5 <= local3 then
            local0[1] = 10
            local0[2] = 10
            local0[3] = 10
            local0[8] = 10
            local0[11] = 30
            local0[12] = 20
            local0[18] = 30
        elseif 1.5 <= local3 then
            local0[1] = 40
            local0[2] = 40
            local0[7] = 20
            local0[8] = 20
            local0[12] = 40
            local0[13] = 40
            local0[17] = 30
        else
            local0[1] = 40
            local0[2] = 40
            local0[7] = 20
            local0[12] = 30
            local0[13] = 50
            local0[16] = 30
            local0[17] = 20
        end
    elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 160, 90, 20 - arg1:GetMapHitRadius(TARGET_SELF)) then
        local0[21] = 1
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 140, 90, 3.2 - arg1:GetMapHitRadius(TARGET_SELF) + 2) then
            local0[5] = 50
        end
    elseif 10.5 <= local3 then
        local0[18] = 30
        local0[22] = 100
    elseif 5.5 <= local3 then
        local0[1] = 30
        local0[2] = 30
        local0[3] = 30
        local0[8] = 20
        local0[18] = 30
        local0[22] = 20
        local0[24] = 10
    elseif 1.5 <= local3 then
        local0[1] = 50
        local0[2] = 50
        local0[7] = 20
        local0[8] = 20
        local0[17] = 30
    else
        local0[1] = 50
        local0[2] = 50
        local0[7] = 20
        local0[16] = 30
        local0[17] = 20
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 8, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3003, 6, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3004, 6, local0[3], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3008, 5, local0[5], 0)
    local0[5] = SetCoolTime(arg1, arg2, 3009, 5, local0[5], 0)
    local0[16] = SetCoolTime(arg1, arg2, 3018, 20, local0[16], 0)
    local0[17] = SetCoolTime(arg1, arg2, 3019, 20, local0[17], 0)
    local0[18] = SetCoolTime(arg1, arg2, 3020, 70, local0[18], 0)
    if arg1:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == true then
        local0[7] = SetCoolTime(arg1, arg2, 3013, 5, local0[7], 0)
        local0[8] = SetCoolTime(arg1, arg2, 3016, 5, local0[8], 0)
    else
        local0[7] = SetCoolTime(arg1, arg2, 3013, 10, local0[7], 0)
        local0[8] = SetCoolTime(arg1, arg2, 3016, 10, local0[8], 0)
    end
    local local9 = arg1:HasSpecialEffectId(TARGET_SELF, 10840)
    local local10 = arg1:HasSpecialEffectId(TARGET_SELF, 10850)
    if local10 == false then
        local0[17] = 0
    end
    if local9 == false then
        local0[18] = 0
    elseif arg1:GetHpRate(TARGET_SELF) < 0.5 then
        local0[18] = local0[18] * 1.3
        if arg1:GetHpRate(TARGET_SELF) < 0.4 then
            local0[18] = local0[18] * 1.3
            if arg1:GetHpRate(TARGET_SELF) < 0.2 then
                local0[18] = local0[18] * 1.3
            end
        end
    elseif 0.6 < arg1:GetHpRate(TARGET_SELF) then
        local0[18] = 0
    end
    if local9 == true or local10 == true or arg1:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == true then
        local0[7] = local0[7] * 1.3
        local0[8] = local0[8] * 1.5
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == true then
        local0[7] = local0[7] * 3
        local0[8] = local0[8] * 3
    end
    if 5 <= arg1:GetNumber(4) then
        local0[7] = local0[7] * 2
        local0[8] = local0[8] * 2
    end
    if arg1:IsTargetGuard(TARGET_ENE_0) == true then
        local0[7] = local0[7] * 1.5
        local0[16] = local0[16] * 1.5
        local0[17] = local0[17] * 3
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, PLAN_SP_EFFECT_BUDDY_DECLARE) == true and arg1:GetNumber(1) ~= 1 then
        local0[7] = local0[7] * 5
        local0[8] = local0[8] * 5
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 10859) then
        local0[11] = 0
        local0[12] = 0
        local0[13] = 0
    end
    local1[1] = REGIST_FUNC(arg1, arg2, LostKnight_DualSword_301010_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, LostKnight_DualSword_301010_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, LostKnight_DualSword_301010_Act03)
    local1[5] = REGIST_FUNC(arg1, arg2, LostKnight_DualSword_301010_Act05)
    local1[7] = REGIST_FUNC(arg1, arg2, LostKnight_DualSword_301010_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, LostKnight_DualSword_301010_Act08)
    local1[11] = REGIST_FUNC(arg1, arg2, LostKnight_DualSword_301010_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, LostKnight_DualSword_301010_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, LostKnight_DualSword_301010_Act13)
    local1[14] = REGIST_FUNC(arg1, arg2, LostKnight_DualSword_301010_Act14)
    local1[15] = REGIST_FUNC(arg1, arg2, LostKnight_DualSword_301010_Act15)
    local1[16] = REGIST_FUNC(arg1, arg2, LostKnight_DualSword_301010_Act16)
    local1[17] = REGIST_FUNC(arg1, arg2, LostKnight_DualSword_301010_Act17)
    local1[18] = REGIST_FUNC(arg1, arg2, LostKnight_DualSword_301010_Act18)
    local1[21] = REGIST_FUNC(arg1, arg2, LostKnight_DualSword_301010_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, LostKnight_DualSword_301010_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, LostKnight_DualSword_301010_Act23)
    local1[24] = REGIST_FUNC(arg1, arg2, LostKnight_DualSword_301010_Act24)
    local1[31] = REGIST_FUNC(arg1, arg2, LostKnight_DualSword_301010_Act31)
    local1[45] = REGIST_FUNC(arg1, arg2, LostKnight_DualSword_301010_Act45)
    local1[46] = REGIST_FUNC(arg1, arg2, LostKnight_DualSword_301010_Act46)
    local1[47] = REGIST_FUNC(arg1, arg2, LostKnight_DualSword_301010_Act47)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, LostKnight_DualSword_301010_ActAfter_AdjustSpace), local2)
    return 
end

function LostKnight_DualSword_301010_Act01(arg0, arg1, arg2)
    arg0:SetNumber(4, arg0:GetNumber(4) + 1)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:HasSpecialEffectId(TARGET_SELF, 10840)
    if arg0:HasSpecialEffectId(TARGET_SELF, 10850) == true or arg0:HasSpecialEffectId(TARGET_SELF, 11139) == true or 11 <= arg0:GetDist(TARGET_ENE_0) and arg0:HasSpecialEffectId(TARGET_SELF, 10880) == false then
        Approach_Act_Flex(arg0, arg1, 5.6 - arg0:GetMapHitRadius(TARGET_SELF), 0, 999, 100, 0, 0, 6)
    else
        Approach_Act_Flex(arg0, arg1, 5.6 - arg0:GetMapHitRadius(TARGET_SELF), 5.6 - arg0:GetMapHitRadius(TARGET_SELF) + 6, 5.6 - arg0:GetMapHitRadius(TARGET_SELF) + 6, arg0:GetStringIndexedNumber("c3010_DashRate"), 0, 3, 6)
    end
    local local2 = 3002
    local local3 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3000, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 140, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3001, TARGET_ENE_0, 9.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LostKnight_DualSword_301010_Act02(arg0, arg1, arg2)
    arg0:SetNumber(4, arg0:GetNumber(4) + 1)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetDist(TARGET_ENE_0)
    local local2 = arg0:HasSpecialEffectId(TARGET_SELF, 10840)
    if arg0:HasSpecialEffectId(TARGET_SELF, 10850) == true or arg0:HasSpecialEffectId(TARGET_SELF, 11139) == true or 11 <= arg0:GetDist(TARGET_ENE_0) and arg0:HasSpecialEffectId(TARGET_SELF, 10880) == false then
        Approach_Act_Flex(arg0, arg1, 5.1 - arg0:GetMapHitRadius(TARGET_SELF), 0, 999, 100, 0, 0, 6)
    else
        Approach_Act_Flex(arg0, arg1, 5.1 - arg0:GetMapHitRadius(TARGET_SELF), 5.1 - arg0:GetMapHitRadius(TARGET_SELF) + 6, 5.1 - arg0:GetMapHitRadius(TARGET_SELF) + 6, arg0:GetStringIndexedNumber("c3010_DashRate"), 0, 3, 6)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3003, TARGET_ENE_0, 4.3 - arg0:GetMapHitRadius(TARGET_SELF), 0, 140, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3005, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LostKnight_DualSword_301010_Act03(arg0, arg1, arg2)
    arg0:SetNumber(4, arg0:GetNumber(4) + 1)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:HasSpecialEffectId(TARGET_SELF, 10840)
    if arg0:HasSpecialEffectId(TARGET_SELF, 10850) == true or arg0:HasSpecialEffectId(TARGET_SELF, 11139) == true or 11 <= arg0:GetDist(TARGET_ENE_0) and arg0:HasSpecialEffectId(TARGET_SELF, 10880) == false then
        Approach_Act_Flex(arg0, arg1, 9.7 - arg0:GetMapHitRadius(TARGET_SELF), 0, 999, 100, 0, 0, 6)
    else
        Approach_Act_Flex(arg0, arg1, 9.7 - arg0:GetMapHitRadius(TARGET_SELF), 9.7 - arg0:GetMapHitRadius(TARGET_SELF) + 6, 9.7 - arg0:GetMapHitRadius(TARGET_SELF) + 6, arg0:GetStringIndexedNumber("c3010_DashRate"), 0, 3, 6)
    end
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3004, TARGET_ENE_0, 4.3 - arg0:GetMapHitRadius(TARGET_SELF), 0, 90, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3005, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LostKnight_DualSword_301010_Act05(arg0, arg1, arg2)
    local local0 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 3.2 - arg0:GetMapHitRadius(TARGET_SELF) + 20
    local local3 = arg0:GetStringIndexedNumber("c3010_DashRate")
    local local4 = 0
    local local5 = 4
    local local6 = 8
    local local7 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    local local8 = 180
    arg0:SetTimer(5, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3009, TARGET_ENE_0, DIST_None, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LostKnight_DualSword_301010_Act07(arg0, arg1, arg2)
    arg0:SetNumber(1, 1)
    arg0:SetNumber(4, 0)
    Approach_Act_Flex(arg0, arg1, 7.4 - arg0:GetMapHitRadius(TARGET_SELF), 7.4 - arg0:GetMapHitRadius(TARGET_SELF) + 6, 7.4 - arg0:GetMapHitRadius(TARGET_SELF) + 6, arg0:GetStringIndexedNumber("c3010_DashRate"), 0, 3, 6)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3013, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 180, 0, 0)
    arg0:SetTimer(0, 7)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LostKnight_DualSword_301010_Act08(arg0, arg1, arg2)
    arg0:SetNumber(1, 1)
    arg0:SetNumber(4, 0)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16451)
    Approach_Act_Flex(arg0, arg1, 9.2 - arg0:GetMapHitRadius(TARGET_SELF), 9.2 - arg0:GetMapHitRadius(TARGET_SELF) + 6, 9.2 - arg0:GetMapHitRadius(TARGET_SELF) + 6, arg0:GetStringIndexedNumber("c3010_DashRate"), 0, 3, 4)
    local local1 = 3017
    local local2 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3016, TARGET_ENE_0, 999, 0, 180, 0, 0)
    arg0:SetTimer(0, 7)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LostKnight_DualSword_301010_Act09(arg0, arg1, arg2)
    local local0 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 6
    local local2 = 2.5 - arg0:GetMapHitRadius(TARGET_SELF) + 6
    local local3 = arg0:GetStringIndexedNumber("c3010_DashRate")
    local local4 = 0
    local local5 = 3
    local local6 = 6
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3017, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 180, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LostKnight_DualSword_301010_Act11(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10875)
    arg0:SetNumber(1, 1)
    arg0:SetNumber(15, 1)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6000, TARGET_ENE_0, 0, AI_DIR_TYPE_F, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LostKnight_DualSword_301010_Act12(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10875)
    arg0:SetNumber(1, 1)
    if 50 < arg0:GetRandam_Int(1, 100) then
        arg0:SetNumber(15, 3)
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6002, TARGET_ENE_0, 0, AI_DIR_TYPE_L, 2)
    else
        arg0:SetNumber(15, 4)
        arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6003, TARGET_ENE_0, 0, AI_DIR_TYPE_R, 2)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LostKnight_DualSword_301010_Act13(arg0, arg1, arg2)
    arg0:SetNumber(1, 1)
    local local0 = arg0:GetRandam_Int(1, 100)
    local local1 = arg0:GetRandam_Int(1, 100)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10875)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10876)
    arg0:SetNumber(1, 1)
    arg0:SetNumber(15, 2)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6001, TARGET_ENE_0, 0, AI_DIR_TYPE_B, 2)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LostKnight_DualSword_301010_Act14(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10875)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10876)
    arg0:SetNumber(1, 1)
    local local0 = 5
    local local1 = 3015
    local local2 = 6
    local local3 = 0
    local local4 = 180
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16660)
    arg0:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 16656)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16666)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16658)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 16655)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 10126)
    local local5 = arg0:GetRandam_Int(1, 100)
    arg0:SetTimer(WARP_TIMER, 0)
    arg1:AddSubGoal(GOAL_COMMON_SpinStep, 5, 6010, TARGET_NONE, 0, AI_DIR_TYPE_F, 2)
    local local6 = arg0:GetDist(TARGET_ENE_0)
    local local7 = arg0:GetRandam_Int(1, 100)
    select_Attack1 = 3017
    selectFate_1F = 70
    selectFate_1B = 10
    selectFate_1L = 10
    selectFate_1R = 10
    selectFate_2F = 0
    selectFate_2B = 0
    selectFate_2L = 0
    selectFate_2R = 0
    warpDist_1F = 2.5
    warpDist_1B = 2.5
    warpDist_1L = 2.5
    warpDist_1R = 2.5
    warpDist_2F = 0
    warpDist_2B = 0
    warpDist_2L = 0
    warpDist_2R = 0
    same_Angle = 0
    local local8 = 0
    local local9 = 0
    local local10 = arg0:GetMapHitRadius(TARGET_SELF)
    local local11 = arg0:GetDist(TARGET_ENE_0)
    local local12 = arg0:GetRelativeAngleFromTarget(TARGET_ENE_0)
    if arg0:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_F, warpDist_1F + local10, local10, 0) <= warpDist_1F then
        selectFate_1F = 0
    end
    if arg0:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_B, warpDist_1B + local10, local10, 0) <= warpDist_1B then
        selectFate_1B = 0
    end
    if arg0:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_L, warpDist_1L + local10, local10, 0) <= warpDist_1L then
        selectFate_1L = 0
    end
    if arg0:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_R, warpDist_1R + local10, local10, 0) <= warpDist_1R then
        selectFate_1R = 0
    end
    if arg0:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_F, warpDist_2F + local10, local10, 0) <= warpDist_2F then
        selectFate_2F = 0
    end
    if arg0:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_B, warpDist_2B + local10, local10, 0) <= warpDist_2B then
        selectFate_2B = 0
    end
    if arg0:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_L, warpDist_2L + local10, local10, 0) <= warpDist_2L then
        selectFate_2L = 0
    end
    if arg0:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_R, warpDist_2R + local10, local10, 0) <= warpDist_2R then
        selectFate_2B = 0
    end
    local local13 = arg0:GetRandam_Int(0, selectFate_1F + selectFate_1B + selectFate_1L + selectFate_1R + selectFate_2F + selectFate_2B + selectFate_2L + selectFate_2R)
    local local14 = AI_DIR_TYPE_F
    local local15 = 0
    local local16 = 3027
    local local17 = TARGET_ENE_0
    if selectFate_1F + selectFate_1B + selectFate_1L + selectFate_1R + selectFate_2F + selectFate_2B + selectFate_2L + selectFate_2R == 0 then
        arg0:SetNumber(6, 1)
        local14 = AI_DIR_TYPE_F
        local15 = 0
        local16 = 3027
    elseif selectFate_1F ~= 0 and local13 <= selectFate_1F then
        local14 = AI_DIR_TYPE_F
        local15 = warpDist_1F
        local16 = select_Attack1
        local17 = TARGET_ENE_0
    elseif selectFate_1B ~= 0 and local13 <= selectFate_1F + selectFate_1B then
        local14 = AI_DIR_TYPE_B
        local15 = warpDist_1B
        local16 = select_Attack1
        local17 = TARGET_ENE_0
    elseif selectFate_1L ~= 0 and local13 <= selectFate_1F + selectFate_1B + selectFate_1L then
        local14 = AI_DIR_TYPE_L
        local15 = warpDist_1L
        local16 = select_Attack1
        local17 = TARGET_ENE_0
    elseif selectFate_1R ~= 0 and local13 <= selectFate_1F + selectFate_1B + selectFate_1L + selectFate_1R then
        local14 = AI_DIR_TYPE_R
        local15 = warpDist_1R
        local16 = select_Attack1
        local17 = TARGET_ENE_0
    end
    arg1:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, AI_DIR_TYPE_B, 2.5, TARGET_ENE_0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3026, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    GetWellSpace_Odds = 100
    return GetWellSpace_Odds
end

function LostKnight_DualSword_301010_Act15(arg0, arg1, arg2)
    local local0 = 2.7 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = 2.7 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 2.7 - arg0:GetMapHitRadius(TARGET_SELF) + 20
    local local3 = 0
    local local4 = 0
    local local5 = 4
    local local6 = 8
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3015, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 180, 0, 0)
    arg0:SetTimer(0, 7)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LostKnight_DualSword_301010_Act16(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 5, 999, 999, 0, 0, 4, 8)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3018, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 180, 0, 0)
    arg0:SetTimer(4, 15)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LostKnight_DualSword_301010_Act17(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3019, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 3, 110, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LostKnight_DualSword_301010_Act18(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3020, TARGET_SELF, 4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 180, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LostKnight_DualSword_301010_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LostKnight_DualSword_301010_Act22(arg0, arg1, arg2)
    Approach_Act_Flex(arg0, arg1, 2, 0, 999, 100, 0, 0, 4)
    if 30 < arg0:GetRandam_Int(1, 100) then
        local local0 = 3002
        local local1 = 4 - arg0:GetMapHitRadius(TARGET_SELF)
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3000, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 140, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3001, TARGET_ENE_0, 9.4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    else
        arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3004, TARGET_ENE_0, 4.3 - arg0:GetMapHitRadius(TARGET_SELF), 0, 90, 0, 0)
        arg1:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3005, TARGET_ENE_0, 4 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LostKnight_DualSword_301010_Act23(arg0, arg1, arg2)
    local local0 = 10
    local local1 = arg0:GetRandam_Int(1, 100)
    if local0 <= arg0:GetDist(TARGET_ENE_0) then
        Approach_Act(arg0, arg1, local0, 30, Odds_Guard, 3)
    end
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 4, TARGET_ENE_0, local0, TARGET_ENE_0, false, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LostKnight_DualSword_301010_Act24(arg0, arg1, arg2)
    local local0 = 0
    local local1 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LostKnight_DualSword_301010_ActCP3(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LostKnight_DualSword_301010_Act45(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LostKnight_DualSword_301010_Act46(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LostKnight_DualSword_301010_Act47(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3021, TARGET_ENE_0, DIST_None, 0, 90)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function LostKnight_DualSword_301010_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_LostKnight_DualSword_301010_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local local0 = arg1:GetDist(TARGET_ENE_0)
    local local1 = arg1:GetDist(TARGET_FRI_0)
    local local2 = arg1:GetRandam_Int(1, 100)
    local local3 = arg1:GetPrevTargetState()
    local local4 = arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, PLAN_SP_EFFECT_FALL_FROM_HORSE)
    local local5 = arg1:HasSpecialEffectId(TARGET_SELF, 10880)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 10874)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    elseif arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) then
        if arg1:GetSpecialEffectActivateInterruptId(5025) then
            if local0 <= 3 and arg1:GetStringIndexedNumber("c3010count_att3001") < 1 then
                if 40 < local2 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3001, TARGET_ENE_0, 9.4 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
                    arg1:SetStringIndexedNumber("c3010count_att3001", arg1:GetStringIndexedNumber("c3010count_att3001") + 1)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3002, TARGET_ENE_0, 4 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
                    arg1:SetStringIndexedNumber("c3010count_att3001", 0)
                    return true
                end
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboFinal, 5, 3002, TARGET_ENE_0, 4 - arg1:GetMapHitRadius(TARGET_SELF), 0, 0)
                arg1:SetStringIndexedNumber("c3010count_att3001", 0)
                return true
            end
        elseif arg1:GetSpecialEffectActivateInterruptId(16451) and (arg1:HasSpecialEffectId(TARGET_SELF, 10840) == true or arg1:HasSpecialEffectId(TARGET_SELF, 10850) == true) and arg1:GetDist(TARGET_ENE_0) <= 4 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 10, 3017, TARGET_ENE_0, DistToAtt3, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_Damaged) then
        local local6 = arg1:GetRandam_Int(1, 100) * 1
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 180, 90, 4) then
            if not not arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 90, 90, 3) or arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 90, 90, 3) then
                if 70 < local6 and 20 <= arg1:GetAttackPassedTime(3018) then
                    arg2:ClearSubGoal()
                    LostKnight_DualSword_301010_Act16(arg1, arg2)
                    return true
                elseif 10 < local6 then
                    arg2:ClearSubGoal()
                    LostKnight_DualSword_301010_Act05(arg1, arg2)
                    return true
                end
            elseif arg1:GetTimer(5) == 0 then
                arg2:ClearSubGoal()
                LostKnight_DualSword_301010_Act05(arg1, arg2)
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_FindAttack) and arg1:GetTimer(4) == 0 then
        local local7 = 1
        if arg1:GetHpRate(TARGET_SELF) < 0.7 then
            local7 = 1.8
        end
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 170, 90, 3) and 80 < arg1:GetRandam_Int(1, 100) * local7 then
            arg2:ClearSubGoal()
            LostKnight_DualSword_301010_Act16(arg1, arg2)
            return true
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5029) == true and arg1:HasSpecialEffectId(TARGET_ENE_0, 10859) == false then
        local local6 = arg1:GetDist(TARGET_ENE_0)
        local local7 = arg1:GetRandam_Int(1, 100)
        selectFate_ToB = 1
        selectFate_ToBL = 1
        selectFate_ToBR = 1
        selectFate_ToL = 1
        selectFate_ToR = 1
        warpDist_x = arg1:GetRandam_Int(3, 5)
        if arg1:GetNumber(15) == 1 then
            selectFate_ToBL = 0
            selectFate_ToBR = 0
            selectFate_ToL = 0
            selectFate_ToR = 0
        elseif arg1:GetNumber(15) ~= 2 then
            if arg1:GetNumber(15) == 3 then
                selectFate_ToB = 0
                selectFate_ToBR = 0
                selectFate_ToR = 0
            elseif arg1:GetNumber(15) == 4 then
                selectFate_ToB = 0
                selectFate_ToBL = 0
                selectFate_ToL = 0
            end
        end
        local local8 = 4 - arg1:GetMapHitRadius(TARGET_SELF)
        local local9 = 0
        local local10 = 0
        local local11 = arg1:GetMapHitRadius(TARGET_SELF)
        local local12 = arg1:GetDist(TARGET_ENE_0)
        local local13 = arg1:GetRelativeAngleFromTarget(TARGET_ENE_0)
        if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToB, warpDist_x + local11, local11, 0) <= warpDist_x then
            selectFate_ToB = 0
        end
        if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBL, warpDist_x + local11, local11, 0) <= warpDist_x then
            selectFate_ToBL = 0
        end
        if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToBR, warpDist_x + local11, local11, 0) <= warpDist_x then
            selectFate_ToBR = 0
        end
        if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToL, warpDist_x + local11, local11, 0) <= warpDist_x then
            selectFate_ToL = 0
        end
        if arg1:GetExistMeshOnLineDistEx(TARGET_ENE_0, AI_DIR_TYPE_ToR, warpDist_x + local11, local11, 0) <= warpDist_x then
            selectFate_ToR = 0
        end
        local local14 = arg1:GetRandam_Int(0, selectFate_ToB + selectFate_ToBL + selectFate_ToBR + selectFate_ToL + selectFate_ToR)
        local local15 = AI_DIR_TYPE_ToB
        local local16 = 0
        local local17 = TARGET_ENE_0
        if selectFate_ToB + selectFate_ToBL + selectFate_ToBR + selectFate_ToL + selectFate_ToR == 0 then
            arg1:SetNumber(15, 5)
        elseif AI_DIR_TYPE_ToB ~= 0 and local14 <= selectFate_ToB then
            local15 = AI_DIR_TYPE_ToB
            local16 = warpDist_x
            local17 = TARGET_ENE_0
        elseif selectFate_2 ~= 0 and local14 <= selectFate_ToB + selectFate_ToBL then
            local15 = AI_DIR_TYPE_ToBL
            local16 = warpDist_x
            local17 = TARGET_ENE_0
        elseif selectFate_3 ~= 0 and local14 <= selectFate_ToB + selectFate_ToBL + selectFate_ToBR then
            local15 = AI_DIR_TYPE_ToBR
            local16 = warpDist_x
            local17 = TARGET_ENE_0
        elseif selectFate_4 ~= 0 and local14 <= selectFate_ToB + selectFate_ToBL + selectFate_ToBR + selectFate_ToL then
            local15 = AI_DIR_TYPE_ToL
            local16 = warpDist_x
            local17 = TARGET_ENE_0
        elseif selectFate_4 ~= 0 and local14 <= selectFate_ToB + selectFate_ToBL + selectFate_ToBR + selectFate_ToL + selectFate_ToR then
            local15 = AI_DIR_TYPE_ToR
            local16 = warpDist_x
            local17 = TARGET_ENE_0
        end
        if arg1:GetNumber(15) == 2 then
            arg2:ClearSubGoal()
            arg1:SetNumber(15, 0)
            arg2:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_SELF, AI_DIR_TYPE_B, local16, local17, arg1:GetRandam_Int(5, 7), -2)
            arg1:AddTopGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0)
        elseif arg1:GetNumber(15) == 5 then
            arg2:ClearSubGoal()
            arg1:SetNumber(15, 0)
            arg2:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, local15, local16, local17, 5, -2)
            arg1:AddTopGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0)
        else
            arg2:ClearSubGoal()
            arg1:SetNumber(15, 0)
            arg2:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0, local15, local16, local17, 5, -2)
            arg1:AddTopGoal(GOAL_COMMON_Wait, 0.5, TARGET_ENE_0)
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 10874) then
        arg1:SetNumber(10, arg1:GetNumber(10) + 1)
        if arg1:GetNumber(10) == 1 then
            local local8 = arg1:GetRandam_Int(0, 100)
        elseif arg1:GetNumber(10) == 2 then
            local local8 = arg1:GetRandam_Int(30, 100)
        elseif 3 <= arg1:GetNumber(10) then
            local local8 = arg1:GetRandam_Int(60, 100)
        end
        if 80 < arg1:GetRandam_Int(1, 100) and arg1:GetDist(TARGET_ENE_0) <= 5 then
            arg1:SetNumber(10, 0)
            local local8 = arg1:GetRandam_Int(0, 100)
            if local5 == true then
                if 60 < local8 then
                    arg2:ClearSubGoal()
                    LostKnight_DualSword_301010_Act12(arg1, arg2)
                elseif 20 < local8 then
                    arg2:ClearSubGoal()
                    LostKnight_DualSword_301010_Act13(arg1, arg2)
                elseif 10 < local8 then
                    LostKnight_DualSword_301010_Act07(arg1, arg2)
                else
                    LostKnight_DualSword_301010_Act08(arg1, arg2)
                end
            elseif 50 < local8 then
                LostKnight_DualSword_301010_Act07(arg1, arg2)
            else
                LostKnight_DualSword_301010_Act08(arg1, arg2)
            end
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 10875) and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 150) and arg1:GetDist(TARGET_ENE_0) <= 4 then
        if 40 < arg1:GetRandam_Int(1, 100) then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3025, TARGET_ENE_0, 4, 0, 90)
            return true
        else
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3026, TARGET_ENE_0, 4, 0, 90)
            return true
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 10876) then
        local local7 = arg1:GetRandam_Int(1, 100)
        if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 200) and 4 <= arg1:GetDist(TARGET_ENE_0) then
            local local8 = arg1:GetRandam_Int(0, 100)
            if 50 < local8 then
                arg2:ClearSubGoal()
                LostKnight_DualSword_301010_Act12(arg1, arg2)
            elseif 20 < local8 then
                LostKnight_DualSword_301010_Act24(arg1, arg2)
            else
                arg2:ClearSubGoal()
                LostKnight_DualSword_301010_Act11(arg1, arg2)
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_Shoot) then
        arg2:ClearSubGoal()
        arg1:SetStringIndexedNumber("c3010_DashRate", 100)
        if local5 == true then
            if 90 < local2 then
                arg2:ClearSubGoal()
                LostKnight_DualSword_301010_Act11(arg1, arg2)
                return true
            end
        elseif 4 <= local0 then
            arg2:ClearSubGoal()
            LostKnight_DualSword_301010_Act22(arg1, arg2)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_Damaged) then
        local local6 = arg1:GetDist(TARGET_ENE_0)
        local local7 = arg1:GetRandam_Int(1, 100)
        if local5 == true then
            if 5 <= local6 then
                if 90 < local7 then
                    arg2:ClearSubGoal()
                    LostKnight_DualSword_301010_Act11(arg1, arg2)
                end
            elseif 90 < local7 then
                arg2:ClearSubGoal()
                LostKnight_DualSword_301010_Act13(arg1, arg2)
            end
        elseif 5 <= local6 then
            arg2:ClearSubGoal()
            LostKnight_DualSword_301010_Act22(arg1, arg2)
        end
    end
    return false
end

RegisterTableGoal(GOAL_LostKnight_DualSword_301010_AfterAttackAct, "LostKnight_DualSword_301010_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_LostKnight_DualSword_301010_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
