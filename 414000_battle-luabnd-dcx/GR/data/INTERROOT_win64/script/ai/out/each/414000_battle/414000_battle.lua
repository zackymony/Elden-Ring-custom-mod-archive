RegisterTableGoal(GOAL_SnakeSnail_414000_Battle, "SnakeSnail_414000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_SnakeSnail_414000_Battle, true)
Goal.Initialize = function (arg0, arg1, arg2, arg3)
    arg1:GetStringIndexedNumber("firstattack")
    firstattack = arg1:GetRandam_Int(1, 1)
    arg1:EnableUnfavorableAttackCheck(0, 3000)
    arg1:EnableUnfavorableAttackCheck(0, 3001)
    arg1:EnableUnfavorableAttackCheck(0, 3002)
    arg1:EnableUnfavorableAttackCheck(0, 3003)
    arg1:EnableUnfavorableAttackCheck(0, 3008)
    arg1:EnableUnfavorableAttackCheck(0, 3009)
    arg1:EnableUnfavorableAttackCheck(0, 3010)
    arg1:EnableUnfavorableAttackCheck(1000000, 3000)
    arg1:EnableUnfavorableAttackCheck(1000000, 3001)
    arg1:EnableUnfavorableAttackCheck(2000000, 3001)
    arg1:EnableUnfavorableAttackCheck(2000000, 3002)
    arg1:EnableUnfavorableAttackCheck(2000000, 3003)
    arg1:EnableUnfavorableAttackCheck(2000000, 3004)
    arg1:SetNumber(1, 0)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    if FearOfFire(arg1, arg2, PLAN_SIDEWAYTYPE__NONE) == true and arg1:HasSpecialEffectId(TARGET_SELF, 15093) == false then
        return 
    end
    Init_Pseudo_Global(arg1, arg2)
    arg1:GetStringIndexedNumber("Rolling_Cnt")
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetRandam_Int(1, 100)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    local local5 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local6 = arg1:HasSpecialEffectId(TARGET_SELF, 15050)
    local local7 = arg1:HasSpecialEffectId(TARGET_SELF, 15051)
    local local8 = arg1:HasSpecialEffectId(TARGET_SELF, 15052)
    if arg1:HasSpecialEffectId(TARGET_SELF, 15090) == true then
        if local6 == true and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 150) and arg1:GetNumber(1) == 0 then
            local0[7] = 100
        elseif local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
            if 3 <= local3 then
                local0[14] = 40
                local0[41] = 50
            else
                local0[1] = 5
                local0[14] = 40
                local0[41] = 40
            end
        elseif local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
            if 3 <= local3 then
                local0[3] = 10
                local0[7] = 15
                local0[14] = 30
                local0[41] = 45
            else
                local0[1] = 10
                local0[14] = 40
                local0[41] = 40
            end
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 90) then
            local0[42] = 100
        elseif firstattack == 1 then
            local0[1] = 20
            local0[3] = 25
            local0[7] = 5
            local0[14] = 30
            local0[41] = 25
        elseif 18 <= local3 then
            local0[40] = 100
        elseif 8 <= local3 then
            local0[1] = 10
            local0[3] = 35
            local0[41] = 25
        elseif 3 <= local3 then
            local0[1] = 15
            local0[3] = 40
            local0[7] = 20
            local0[41] = 20
        else
            local0[1] = 50
            local0[14] = 20
            local0[41] = 30
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 15091) == true then
        if local6 == true and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 150) and arg1:GetNumber(1) == 0 then
            local0[8] = 100
        elseif local7 == true and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 150) and arg1:GetNumber(1) == 0 then
            local0[11] = 100
        elseif local8 == true and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 150) and arg1:GetNumber(1) == 0 then
            local0[5] = 5
        elseif local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
            if 3 <= local3 then
                local0[14] = 40
                local0[41] = 50
            else
                local0[2] = 5
                local0[14] = 40
                local0[41] = 40
            end
        elseif local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
            if 3 <= local3 then
                local0[4] = 10
                local0[8] = 15
                local0[5] = 5
                local0[14] = 25
                local0[41] = 30
            else
                local0[2] = 20
                local0[11] = 40
                local0[14] = 40
                local0[41] = 20
            end
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
            local0[42] = 100
        elseif 18 <= local3 then
            local0[40] = 100
        elseif 8 <= local3 then
            local0[4] = 10
            local0[5] = 30
            local0[11] = 20
            local0[14] = 15
        elseif 3 <= local3 then
            local0[2] = 20
            local0[4] = 40
            local0[5] = 10
            local0[8] = 35
            local0[11] = 40
        else
            local0[2] = 50
            local0[11] = 40
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 15092) == true then
        if arg1:HasSpecialEffectId(TARGET_SELF, 15041) == true then
            if arg1:HasSpecialEffectId(TARGET_SELF, 15042) == false then
                local0[30] = 100
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 15044) == true then
                local0[32] = 100
            else
                local0[34] = 100
            end
        elseif arg1:HasSpecialEffectId(TARGET_SELF, 15008) == true then
            local0[12] = 100
        elseif firstattack == 1 then
            local0[12] = 100
        elseif firstattack == 0 then
            if 6 <= local3 then
                if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
                    local0[9] = 30
                    local0[14] = 15
                end
                local0[13] = 40
            else
                local0[13] = 300
                local0[16] = 10
            end
        elseif arg1:GetHpRate(TARGET_ENE_0) == 0 then
            local0[14] = 20
        elseif 6 <= local3 then
            if arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 90) then
                local0[9] = 30
                local0[14] = 5
            end
            local0[9] = 150
            local0[14] = 130
            local0[13] = 10
            local0[16] = 300
        else
            local0[9] = 10
            local0[13] = 300
            local0[16] = 100
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 15093) == true then
        if local6 == true and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 150) and arg1:GetNumber(1) == 0 then
            local0[10] = 100
        elseif local8 == true and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 150) and arg1:GetNumber(1) == 0 then
            local0[6] = 100
        elseif local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
            if 3 <= local3 then
                local0[10] = 5
                local0[6] = 5
                local0[14] = 20
                local0[41] = 40
                local0[44] = 15
                local0[45] = 15
            else
                local0[14] = 30
                local0[41] = 35
                local0[44] = 10
                local0[45] = 10
                local0[23] = 10
            end
        elseif local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
            if 3 <= local3 then
                local0[10] = 15
                local0[6] = 15
                local0[14] = 20
                local0[41] = 15
                local0[44] = 15
                local0[45] = 15
            else
                local0[14] = 30
                local0[41] = 35
                local0[44] = 10
                local0[45] = 10
                local0[23] = 10
            end
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
            local0[42] = 60
            local0[44] = 20
            local0[45] = 20
        elseif firstattack == 1 then
            local0[6] = 50
            local0[10] = 5
            local0[14] = 30
        elseif 18 <= local3 then
            local0[6] = 60
            local0[40] = 40
        elseif 9 <= local3 then
            local0[6] = 40
        elseif 3 <= local3 then
            local0[6] = 20
            local0[10] = 20
            local0[44] = 10
            local0[45] = 10
            local0[23] = 10
        else
            local0[6] = 15
            local0[14] = 10
            local0[44] = 10
            local0[45] = 10
            local0[23] = 35
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 15094) == true then
        if local6 == true and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 150) and arg1:GetNumber(1) == 0 then
            local0[26] = 100
        elseif local7 == true and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 150) and arg1:GetNumber(1) == 0 then
            local0[25] = 100
        elseif local8 == true and arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_F, 150) and arg1:GetNumber(1) == 0 then
            local0[27] = 100
        elseif local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Kankyaku then
            if 3 <= local3 then
                local0[14] = 40
                local0[41] = 50
            else
                local1[1] = 5
                local0[14] = 40
                local0[41] = 40
            end
        elseif local5 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
            if 3 <= local3 then
                local0[3] = 10
                local0[26] = 15
                local0[27] = 5
                local0[14] = 25
                local0[41] = 30
            else
                local1[1] = 20
                local0[25] = 40
                local0[14] = 40
                local0[41] = 20
            end
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 120) then
            local0[42] = 100
        elseif 18 <= local3 then
            local0[40] = 100
        elseif 8 <= local3 then
            local0[3] = 10
            local0[27] = 30
            local0[25] = 20
            local0[14] = 15
        elseif 3 <= local3 then
            local1[1] = 20
            local0[3] = 10
            local0[27] = 10
            local0[26] = 35
            local0[25] = 40
        else
            local1[1] = 50
            local0[25] = 40
        end
    end
    if 0 < arg1:GetTimer(0) then
        local0[5] = 0
        local0[14] = 30
        local0[16] = 0
        local0[43] = 0
        local0[44] = 0
        local0[45] = 0
    end
    if 0 < arg1:GetTimer(1) then
        local0[44] = 500
        local0[45] = 500
    end
    if 0 < arg1:GetTimer(5) then
        local0[33] = 0
    end
    local0[3] = SetCoolTime(arg1, arg2, 3002, 8, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3003, 8, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3010, 8, local0[5], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3003, 10, local0[6], 1)
    local0[7] = SetCoolTime(arg1, arg2, 3004, 8, local0[7], 1)
    local0[8] = SetCoolTime(arg1, arg2, 3005, 8, local0[8], 1)
    local0[9] = SetCoolTime(arg1, arg2, 3000, 8, local0[9], 1)
    local0[10] = SetCoolTime(arg1, arg2, 3001, 5, local0[10], 1)
    local0[11] = SetCoolTime(arg1, arg2, 3006, 8, local0[11], 1)
    local0[13] = SetCoolTime(arg1, arg2, 3001, 10, local0[13], 1)
    local0[14] = SetCoolTime(arg1, arg2, 3007, 8, local0[14], 1)
    local0[25] = SetCoolTime(arg1, arg2, 3011, 8, local0[25], 1)
    local0[26] = SetCoolTime(arg1, arg2, 3012, 8, local0[26], 1)
    local0[27] = SetCoolTime(arg1, arg2, 3013, 8, local0[27], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act09)
    local1[10] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act10)
    local1[11] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act11)
    local1[12] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act13)
    local1[14] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act14)
    local1[15] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act15)
    local1[16] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act16)
    local1[17] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act17)
    local1[18] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act18)
    local1[19] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act19)
    local1[20] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act23)
    local1[24] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act24)
    local1[25] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act25)
    local1[26] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act26)
    local1[27] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act27)
    local1[30] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act30)
    local1[31] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act31)
    local1[32] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act32)
    local1[33] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act33)
    local1[34] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act34)
    local1[35] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act35)
    local1[40] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act40)
    local1[41] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act41)
    local1[42] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act42)
    local1[43] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act43)
    local1[44] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act44)
    local1[45] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act45)
    local1[46] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act46)
    local1[47] = REGIST_FUNC(arg1, arg2, SnakeSnail_414000_Act47)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, SnakeSnail_414000_ActAfter_AdjustSpace), local2)
    return 
end

function SnakeSnail_414000_Act01(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 2.8, 999, 999, 0, 0, 5, 5)
    local local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 180
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3000, TARGET_ENE_0, local1, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3008, TARGET_ENE_0, local1, 0, 0, 0, 0)
    if 1 <= firstattack then
        firstattack = 0
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeSnail_414000_Act02(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 2.8, 999, 999, 0, 0, 5, 5)
    local local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 180
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3001, TARGET_ENE_0, local1, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3009, TARGET_ENE_0, local1, 0, 0, 0, 0)
    if 1 <= firstattack then
        firstattack = 0
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeSnail_414000_Act03(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 5, 999, 999, 0, 0, 5, 5)
    local local1 = 0
    local local2 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    if 1 <= firstattack then
        firstattack = 0
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeSnail_414000_Act04(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 5, 999, 999, 0, 0, 5, 5)
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3003, TARGET_ENE_0, 0, 0, 0, 0, 0)
    if 1 <= firstattack then
        firstattack = 0
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeSnail_414000_Act05(arg0, arg1, arg2)
    arg0:SetNumber(1, 1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 0
    local local2 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3010, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    if 1 <= firstattack then
        firstattack = 0
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeSnail_414000_Act06(arg0, arg1, arg2)
    arg0:SetNumber(1, 1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 25, 0, 999, 100, 0, 5, 5)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    Rolling_Cnt = 0
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 10, 3003, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 120, 0, 0)
    if 1 <= firstattack then
        firstattack = 0
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeSnail_414000_Act07(arg0, arg1, arg2)
    arg0:SetNumber(1, 1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 9, 999, 999, 0, 0, 5, 5)
    local local1 = 0
    local local2 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3004, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    if 1 <= firstattack then
        firstattack = 0
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeSnail_414000_Act08(arg0, arg1, arg2)
    arg0:SetNumber(1, 1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 9, 999, 999, 0, 0, 5, 5)
    local local1 = 0
    local local2 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3005, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    if 1 <= firstattack then
        firstattack = 0
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeSnail_414000_Act09(arg0, arg1, arg2)
    arg0:SetNumber(1, 1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 9
    local local2 = 999
    local local3 = 999
    local local4 = 0
    local local5 = 0
    local local6 = 5
    local local7 = 5
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3000, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 2, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeSnail_414000_Act10(arg0, arg1, arg2)
    arg0:SetNumber(1, 1)
    local local0 = 0
    local local1 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3001, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    if 1 <= firstattack then
        firstattack = 0
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeSnail_414000_Act11(arg0, arg1, arg2)
    arg0:SetNumber(1, 1)
    local local0 = 0
    local local1 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3006, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    if 1 <= firstattack then
        firstattack = 0
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeSnail_414000_Act12(arg0, arg1, arg2)
    arg0:SetTimer(2, 300)
    local local0 = 0
    local local1 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    if firstattack == 1 then
        firstattack = 0
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeSnail_414000_Act13(arg0, arg1, arg2)
    if firstattack == 0 then
        firstattack = 2
    end
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 6, 999, 999, 0, 0, 5, 5)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3001, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 2, 80, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeSnail_414000_Act14(arg0, arg1, arg2)
    if arg0:GetDist(TARGET_ENE_0) <= 5 and arg0:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 270) then
        GetWellSpace_Odds = 0
        return GetWellSpace_Odds
    end
    local local0 = 0
    local local1 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3007, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    if 1 <= firstattack then
        firstattack = 0
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeSnail_414000_Act15(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 13, TARGET_SELF, false, -1)
    if 1 <= firstattack then
        firstattack = 0
    end
    return 
end

function SnakeSnail_414000_Act16(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Int(3, 4), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    if 1 <= firstattack then
        firstattack = 0
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeSnail_414000_Act17(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeSnail_414000_Act18(arg0, arg1, arg2)
    arg0:SetTimer(0, 10)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, 1, -1, -1, TARGET_ENE_0, 3, 0, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeSnail_414000_Act19(arg0, arg1, arg2)
    arg0:SetTimer(1, 0)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, 1, -1, TARGET_ENE_0, 3, 0, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeSnail_414000_Act20(arg0, arg1, arg2)
    arg0:SetTimer(1, 0)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, -1, 1, TARGET_ENE_0, 3, 0, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeSnail_414000_Act21(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 10, TARGET_ENE_0, 20, TARGET_SELF, false, -1)
    if firstattack == 2 then
        firstattack = 3
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeSnail_414000_Act22(arg0, arg1, arg2)
    arg0:SetEnableUsePath(false)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 12, TARGET_ENE_0, 2, TARGET_SELF, false, -1, AI_DIR_TYPE_ToB, 99)
    local0:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeSnail_414000_Act23(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 2.8, 0, 999, 100, 0, 5, 5)
    local local1 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 180
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 5, 3000, TARGET_ENE_0, local1, 0, 0, 0, 0)
    arg1:AddSubGoal(GOAL_COMMON_ComboRepeat, 5, 3008, TARGET_ENE_0, local1, 0, 0, 0, 0)
    if 1 <= firstattack then
        firstattack = 0
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeSnail_414000_Act24(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 4, 0, 999, 100, 0, 5, 5)
    local local1 = 0
    local local2 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3002, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    if 1 <= firstattack then
        firstattack = 0
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeSnail_414000_Act25(arg0, arg1, arg2)
    arg0:SetNumber(1, 1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 12, 0, 999, 100, 0, 5, 5)
    local local1 = 0
    local local2 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 5, 3011, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeSnail_414000_Act26(arg0, arg1, arg2)
    arg0:SetNumber(1, 1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    Approach_Act_Flex(arg0, arg1, 9, 999, 999, 0, 0, 5, 5)
    local local1 = 0
    local local2 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3012, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeSnail_414000_Act27(arg0, arg1, arg2)
    arg0:SetNumber(1, 1)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = 0
    local local2 = 0
    arg1:AddSubGoal(GOAL_COMMON_AttackTunableSpin, 10, 3013, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF), 0, 0, 0, 0)
    if 1 <= firstattack then
        firstattack = 0
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeSnail_414000_Act30(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 15046)
    local local1 = arg0:GetDist(TARGET_ENE_0)
    local local2 = arg0:GetRandam_Int(1, 100)
    local local3 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, 3010, TARGET_ENE_0, 90, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeSnail_414000_Act31(arg0, arg1, arg2)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    arg1:AddSubGoal(GOAL_COMMON_Wait, 5, TARGET_ENE_0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeSnail_414000_Act32(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 15046)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, 3011, TARGET_ENE_0, 90, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeSnail_414000_Act33(arg0, arg1, arg2)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 15046)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, 3013, TARGET_ENE_0, 90, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeSnail_414000_Act34(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg0:SetTimer(0, 5)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(100, 120), true, true, -1)
    if 1 <= firstattack then
        firstattack = 0
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeSnail_414000_Act35(arg0, arg1, arg2)
    arg0:SetNumber(1, 1)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 15046)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    local local0 = arg0:GetDist(TARGET_ENE_0)
    local local1 = arg0:GetRandam_Int(1, 100)
    local local2 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    arg1:AddSubGoal(GOAL_COMMON_ComboAttackTunableSpin, 20, 20005, TARGET_ENE_0, 90, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeSnail_414000_Act40(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, 10, TARGET_ENE_0, 13, TARGET_SELF, false, -1)
    if 1 <= firstattack then
        firstattack = 0
    end
    return 
end

function SnakeSnail_414000_Act41(arg0, arg1, arg2)
    local local0 = arg0:GetRandam_Int(1, 100)
    arg0:SetTimer(0, 5)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, 2, TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, -1)
    if 1 <= firstattack then
        firstattack = 0
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeSnail_414000_Act42(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2, TARGET_ENE_0, 90, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeSnail_414000_Act43(arg0, arg1, arg2)
    arg0:SetTimer(0, 10)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, 1, -1, -1, TARGET_ENE_0, 3, 0, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeSnail_414000_Act44(arg0, arg1, arg2)
    arg0:SetTimer(1, 0)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, 1, -1, TARGET_ENE_0, 3, 0, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeSnail_414000_Act45(arg0, arg1, arg2)
    arg0:SetTimer(1, 0)
    arg1:AddSubGoal(GOAL_COMMON_StepSafety, 5, -1, -1, -1, 1, TARGET_ENE_0, 3, 0, true)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeSnail_414000_Act46(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 10, TARGET_ENE_0, 20, TARGET_SELF, false, -1)
    if firstattack == 2 then
        firstattack = 3
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeSnail_414000_Act47(arg0, arg1, arg2)
    arg0:SetEnableUsePath(false)
    local local0 = arg1:AddSubGoal(GOAL_COMMON_ApproachSettingDirection, 12, TARGET_ENE_0, 2, TARGET_SELF, false, -1, AI_DIR_TYPE_ToB, 99)
    local0:SetFailedEndOption(AI_GOAL_FAILED_END_OPT__PARENT_NEXT_SUB_GOAL)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function SnakeSnail_414000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_SnakeSnail_414000_AfterAttackAct, 10)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

Goal.Terminate = function (arg0, arg1, arg2)
    return 
end

Goal.Interrupt = function (arg0, arg1, arg2)
    local local0 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local local1 = 0
    local local2 = 20
    local local3 = arg1:GetRandam_Int(1, 100)
    local local4 = STEP_CANCELDIST
    if arg1:HasSpecialEffectId(TARGET_SELF, 15008) == true and arg1:IsInterupt(INTERUPT_Damaged) then
        local local5 = arg1:GetRandam_Int(1, 100)
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 90, 10) then
            arg2:ClearSubGoal()
            SnakeSnail_414000_Act21(arg1, arg2)
            return true
        end
    end
    if arg1:HasSpecialEffectId(TARGET_SELF, 5028) then
        arg2:ClearSubGoal()
        Rolling_Cnt = Rolling_Cnt + 1
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
        arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3004, TARGET_ENE_0, 0, 0, 0, 0, 0)
        return true
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5029) then
        Rolling_Cnt = Rolling_Cnt + 1
        if 12 <= Rolling_Cnt then
            arg2:ClearSubGoal()
            arg1:SetTimer(1, 5)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3005, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        elseif arg1:IsInsideTarget(TARGET_ENE_0, AI_DIR_TYPE_B, 180) and 2 < arg1:GetDist(TARGET_ENE_0) then
            arg2:ClearSubGoal()
            arg1:SetTimer(1, 5)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3005, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        else
            arg2:ClearSubGoal()
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
            arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat, 3, 3004, TARGET_ENE_0, 0, 0, 0, 0, 0)
            return true
        end
    elseif arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(15046) then
        arg1:SetTimer(5, 15)
    end
    return false
end

RegisterTableGoal(GOAL_SnakeSnail_414000_AfterAttackAct, "SnakeSnail_414000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_SnakeSnail_414000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
