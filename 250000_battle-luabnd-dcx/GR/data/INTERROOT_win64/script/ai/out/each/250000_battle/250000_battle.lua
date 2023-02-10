RegisterTableGoal(GOAL_RuneKnightsSwordTail250000_Battle, "RuneKnightsSwordTail250000_Battle")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RuneKnightsSwordTail250000_Battle, true)
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
    arg1:EnableUnfavorableAttackCheck(0, 3009)
    arg1:EnableUnfavorableAttackCheck(0, 3010)
    arg1:EnableUnfavorableAttackCheck(0, 3011)
    arg1:EnableUnfavorableAttackCheck(0, 3012)
    arg1:EnableUnfavorableAttackCheck(0, 3013)
    arg1:EnableUnfavorableAttackCheck(0, 3014)
    arg1:EnableUnfavorableAttackCheck(0, 3015)
    arg1:EnableUnfavorableAttackCheck(0, 3016)
    arg1:EnableUnfavorableAttackCheck(0, 3017)
    arg1:EnableUnfavorableAttackCheck(0, 3018)
    arg1:EnableUnfavorableAttackCheck(0, 3019)
    arg1:EnableUnfavorableAttackCheck(0, 3020)
    arg1:EnableUnfavorableAttackCheck(0, 3021)
    arg1:EnableUnfavorableAttackCheck(0, 3024)
    arg1:EnableUnfavorableAttackCheck(0, 3025)
    arg1:EnableUnfavorableAttackCheck(0, 3026)
    arg1:EnableUnfavorableAttackCheck(0, 3027)
    arg1:EnableUnfavorableAttackCheck(0, 3028)
    return 
end

Goal.Activate = function (arg0, arg1, arg2)
    Init_Pseudo_Global(arg1, arg2)
    local local0 = {}
    local local1 = {}
    local local2 = {}
    Common_Clear_Param(local0, local1, local2)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 14610)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 14611)
    arg1:DeleteObserveSpecialEffectAttribute(TARGET_SELF, 14612)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5039)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 14647)
    arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, 51)
    local local3 = arg1:GetDist(TARGET_ENE_0)
    local local4 = arg1:GetDistY(TARGET_ENE_0)
    local local5 = arg1:GetHpRate(TARGET_SELF)
    local local6 = arg1:GetRandam_Int(1, 100)
    local local7 = arg1:GetDist(TARGET_FRI_0)
    local local8 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local9 = arg1:GetEventRequest()
    local local10 = arg1:HasSpecialEffectId(TARGET_SELF, 14640)
    local local11 = arg1:HasSpecialEffectId(TARGET_SELF, 14641)
    local local12 = arg1:HasSpecialEffectId(TARGET_SELF, 14642)
    local local13 = arg1:GetDist(TARGET_ENE_0)
    local local14 = arg1:GetDistY(TARGET_ENE_0)
    local local15 = arg1:GetHpRate(TARGET_SELF)
    local local16 = arg1:GetRandam_Int(1, 100)
    local local17 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local18 = arg1:GetEventRequest()
    if not (local17 ~= 1 or arg1:GetTeamOrder(ORDER_TYPE_Role) ~= ROLE_TYPE_Kankyaku) or local17 == 1 and arg1:GetTeamOrder(ORDER_TYPE_Role) == ROLE_TYPE_Torimaki then
        if 15 <= local13 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                local0[1] = 0
                local0[2] = 0
                local0[3] = 0
                local0[4] = 0
                local0[5] = 0
                local0[6] = 0
                local0[7] = 0
                local0[14] = 0
                local0[20] = 50
                local0[21] = 0
                local0[22] = 50
                local0[23] = 0
            else
                local0[20] = 0
                local0[21] = 0
                local0[22] = 100
                local0[23] = 0
            end
        elseif 10 <= local13 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                local0[1] = 0
                local0[2] = 0
                local0[3] = 0
                local0[4] = 0
                local0[5] = 0
                local0[6] = 0
                local0[7] = 0
                local0[14] = 0
                local0[20] = 50
                local0[21] = 0
                local0[22] = 50
                local0[23] = 0
            else
                local0[20] = 0
                local0[21] = 0
                local0[22] = 100
                local0[23] = 0
            end
        elseif 7.5 <= local13 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                local0[1] = 0
                local0[2] = 0
                local0[3] = 0
                local0[4] = 0
                local0[5] = 0
                local0[6] = 0
                local0[7] = 0
                local0[14] = 0
                local0[20] = 20
                local0[21] = 0
                local0[22] = 80
                local0[23] = 0
            else
                local0[20] = 0
                local0[21] = 0
                local0[22] = 100
                local0[23] = 0
            end
        elseif 5 <= local13 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                local0[1] = 10
                local0[2] = 0
                local0[3] = 0
                local0[4] = 0
                local0[5] = 0
                local0[6] = 0
                local0[7] = 0
                local0[14] = 0
                local0[20] = 20
                local0[21] = 0
                local0[22] = 70
                local0[23] = 0
            else
                local0[20] = 0
                local0[21] = 0
                local0[22] = 100
                local0[23] = 0
            end
        elseif 4.5 <= local13 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                local0[1] = 15
                local0[2] = 0
                local0[3] = 15
                local0[4] = 0
                local0[5] = 0
                local0[6] = 0
                local0[7] = 0
                local0[14] = 0
                local0[20] = 0
                local0[21] = 0
                local0[22] = 70
                local0[23] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                local0[1] = 30
                local0[2] = 0
                local0[3] = 0
                local0[4] = 0
                local0[5] = 0
                local0[6] = 0
                local0[7] = 0
                local0[14] = 0
                local0[20] = 0
                local0[21] = 0
                local0[22] = 70
                local0[23] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                local0[1] = 0
                local0[2] = 0
                local0[3] = 30
                local0[4] = 0
                local0[5] = 0
                local0[6] = 0
                local0[7] = 0
                local0[14] = 0
                local0[20] = 0
                local0[21] = 0
                local0[22] = 70
                local0[23] = 0
            else
                local0[1] = 0
                local0[2] = 0
                local0[3] = 0
                local0[4] = 0
                local0[5] = 0
                local0[6] = 0
                local0[7] = 0
                local0[14] = 0
                local0[20] = 100
                local0[21] = 0
                local0[22] = 0
                local0[23] = 0
            end
        elseif 3.5 <= local13 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                local0[1] = 0
                local0[2] = 0
                local0[3] = 20
                local0[4] = 0
                local0[5] = 0
                local0[6] = 0
                local0[7] = 20
                local0[14] = 0
                local0[20] = 0
                local0[21] = 20
                local0[22] = 40
                local0[23] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                local0[1] = 30
                local0[2] = 0
                local0[3] = 0
                local0[4] = 0
                local0[5] = 0
                local0[6] = 0
                local0[7] = 0
                local0[14] = 0
                local0[20] = 70
                local0[21] = 0
                local0[22] = 0
                local0[23] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                local0[1] = 0
                local0[2] = 0
                local0[3] = 30
                local0[4] = 0
                local0[5] = 0
                local0[6] = 0
                local0[7] = 0
                local0[14] = 0
                local0[20] = 70
                local0[21] = 0
                local0[22] = 0
                local0[23] = 0
            else
                local0[1] = 0
                local0[2] = 0
                local0[3] = 0
                local0[4] = 0
                local0[5] = 0
                local0[6] = 0
                local0[7] = 0
                local0[14] = 0
                local0[20] = 100
                local0[21] = 0
                local0[22] = 0
                local0[23] = 0
            end
        elseif 1 <= local13 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                local0[1] = 20
                local0[2] = 0
                local0[3] = 20
                local0[4] = 0
                local0[5] = 0
                local0[6] = 0
                local0[7] = 20
                local0[14] = 0
                local0[20] = 0
                local0[21] = 20
                local0[22] = 20
                local0[23] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                local0[1] = 30
                local0[2] = 0
                local0[3] = 0
                local0[4] = 0
                local0[5] = 0
                local0[6] = 0
                local0[7] = 0
                local0[14] = 0
                local0[20] = 0
                local0[21] = 70
                local0[22] = 0
                local0[23] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                local0[1] = 0
                local0[2] = 0
                local0[3] = 30
                local0[4] = 0
                local0[5] = 0
                local0[6] = 0
                local0[7] = 0
                local0[14] = 0
                local0[20] = 0
                local0[21] = 70
                local0[22] = 0
                local0[23] = 0
            else
                local0[1] = 0
                local0[2] = 0
                local0[3] = 0
                local0[4] = 0
                local0[5] = 0
                local0[6] = 0
                local0[7] = 0
                local0[14] = 0
                local0[20] = 100
                local0[21] = 0
                local0[22] = 0
                local0[23] = 0
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            local0[1] = 25
            local0[2] = 0
            local0[3] = 0
            local0[4] = 0
            local0[5] = 0
            local0[6] = 0
            local0[7] = 25
            local0[14] = 0
            local0[20] = 0
            local0[21] = 50
            local0[22] = 0
            local0[23] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            local0[1] = 30
            local0[2] = 0
            local0[3] = 0
            local0[4] = 0
            local0[5] = 0
            local0[6] = 0
            local0[7] = 0
            local0[14] = 0
            local0[20] = 0
            local0[21] = 70
            local0[22] = 0
            local0[23] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            local0[1] = 0
            local0[2] = 0
            local0[3] = 0
            local0[4] = 0
            local0[5] = 0
            local0[6] = 30
            local0[7] = 0
            local0[14] = 0
            local0[20] = 0
            local0[21] = 70
            local0[22] = 0
            local0[23] = 0
        else
            local0[1] = 0
            local0[2] = 0
            local0[3] = 0
            local0[4] = 0
            local0[5] = 0
            local0[6] = 0
            local0[7] = 0
            local0[14] = 0
            local0[20] = 100
            local0[21] = 0
            local0[22] = 0
            local0[23] = 0
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
        if 15 <= local13 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                local0[1] = 0
                local0[2] = 0
                local0[3] = 0
                local0[4] = 40
                local0[5] = 40
                local0[6] = 0
                local0[7] = 0
                local0[8] = 0
                local0[9] = 0
                local0[12] = 0
                local0[14] = 0
                local0[20] = 20
                local0[21] = 0
                local0[22] = 0
                local0[23] = 0
            else
                local0[20] = 100
                local0[21] = 0
                local0[22] = 0
                local0[23] = 0
            end
        elseif 10 <= local13 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                local0[1] = 0
                local0[2] = 0
                local0[3] = 0
                local0[4] = 40
                local0[5] = 40
                local0[6] = 0
                local0[7] = 0
                local0[8] = 0
                local0[9] = 0
                local0[12] = 0
                local0[14] = 0
                local0[20] = 20
                local0[21] = 0
                local0[22] = 0
                local0[23] = 0
            else
                local0[20] = 100
                local0[21] = 0
                local0[22] = 0
                local0[23] = 0
            end
        elseif 7.5 <= local13 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                local0[1] = 0
                local0[2] = 0
                local0[3] = 0
                local0[4] = 40
                local0[5] = 40
                local0[6] = 0
                local0[7] = 0
                local0[8] = 0
                local0[9] = 0
                local0[12] = 100
                local0[14] = 0
                local0[20] = 20
                local0[21] = 0
                local0[22] = 0
                local0[23] = 0
            else
                local0[8] = 0
                local0[9] = 0
                local0[12] = 100
                local0[20] = 100
                local0[21] = 0
                local0[22] = 0
                local0[23] = 0
            end
        elseif 5 <= local13 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                local0[1] = 50
                local0[2] = 0
                local0[3] = 0
                local0[4] = 10
                local0[5] = 10
                local0[6] = 0
                local0[7] = 0
                local0[8] = 0
                local0[9] = 0
                local0[12] = 100
                local0[14] = 0
                local0[20] = 0
                local0[21] = 0
                local0[22] = 30
                local0[23] = 0
            else
                local0[8] = 0
                local0[9] = 0
                local0[12] = 100
                local0[20] = 100
                local0[21] = 0
                local0[22] = 0
                local0[23] = 0
            end
        elseif 4.5 <= local13 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                if arg1:HasSpecialEffectId(TARGET_SELF, 14607) == true then
                    if arg1:HasSpecialEffectId(TARGET_SELF, 14606) == true then
                        local0[1] = 40
                        local0[2] = 100
                        local0[3] = 30
                        local0[4] = 0
                        local0[5] = 0
                        local0[6] = 0
                        local0[7] = 0
                        local0[8] = 0
                        local0[9] = 0
                        local0[12] = 100
                        local0[14] = 0
                        local0[15] = 100
                        local0[20] = 0
                        local0[21] = 0
                        local0[22] = 30
                        local0[23] = 0
                    elseif arg1:HasSpecialEffectId(TARGET_SELF, 14606) == false then
                        local0[1] = 40
                        local0[2] = 0
                        local0[3] = 30
                        local0[4] = 0
                        local0[5] = 0
                        local0[6] = 0
                        local0[7] = 0
                        local0[8] = 0
                        local0[9] = 0
                        local0[12] = 100
                        local0[14] = 0
                        local0[15] = 100
                        local0[20] = 0
                        local0[21] = 0
                        local0[22] = 30
                        local0[23] = 0
                    end
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 14606) == true then
                    local0[1] = 40
                    local0[2] = 100
                    local0[3] = 30
                    local0[4] = 0
                    local0[5] = 0
                    local0[6] = 0
                    local0[7] = 0
                    local0[8] = 0
                    local0[9] = 0
                    local0[12] = 100
                    local0[14] = 0
                    local0[20] = 0
                    local0[21] = 0
                    local0[22] = 30
                    local0[23] = 0
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 14606) == false then
                    local0[1] = 40
                    local0[2] = 0
                    local0[3] = 30
                    local0[4] = 0
                    local0[5] = 0
                    local0[6] = 0
                    local0[7] = 0
                    local0[8] = 0
                    local0[9] = 0
                    local0[12] = 100
                    local0[14] = 0
                    local0[20] = 0
                    local0[21] = 0
                    local0[22] = 30
                    local0[23] = 0
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                local0[1] = 70
                local0[2] = 0
                local0[3] = 0
                local0[4] = 0
                local0[5] = 0
                local0[6] = 0
                local0[7] = 0
                local0[8] = 0
                local0[9] = 0
                local0[12] = 100
                local0[14] = 0
                local0[20] = 0
                local0[21] = 0
                local0[22] = 30
                local0[23] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                local0[1] = 0
                local0[2] = 0
                local0[3] = 70
                local0[4] = 0
                local0[5] = 0
                local0[6] = 0
                local0[7] = 0
                local0[8] = 0
                local0[9] = 0
                local0[12] = 100
                local0[14] = 0
                local0[20] = 0
                local0[21] = 0
                local0[22] = 30
                local0[23] = 0
            else
                local0[1] = 0
                local0[2] = 0
                local0[3] = 0
                local0[4] = 0
                local0[5] = 0
                local0[6] = 0
                local0[7] = 0
                local0[8] = 0
                local0[9] = 0
                local0[12] = 100
                local0[14] = 0
                local0[20] = 0
                local0[21] = 0
                local0[22] = 100
                local0[23] = 0
            end
        elseif 3.5 <= local13 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                if arg1:HasSpecialEffectId(TARGET_SELF, 14607) == true then
                    if arg1:HasSpecialEffectId(TARGET_SELF, 14606) == true then
                        local0[1] = 25
                        local0[2] = 100
                        local0[3] = 10
                        local0[4] = 0
                        local0[5] = 0
                        local0[6] = 0
                        local0[7] = 25
                        local0[8] = 0
                        local0[9] = 0
                        local0[12] = 100
                        local0[14] = 10
                        local0[15] = 100
                        local0[20] = 0
                        local0[21] = 0
                        local0[22] = 30
                        local0[23] = 0
                    elseif arg1:HasSpecialEffectId(TARGET_SELF, 14606) == false then
                        local0[1] = 25
                        local0[2] = 0
                        local0[3] = 10
                        local0[4] = 0
                        local0[5] = 0
                        local0[6] = 0
                        local0[7] = 25
                        local0[8] = 0
                        local0[9] = 0
                        local0[12] = 100
                        local0[14] = 10
                        local0[15] = 100
                        local0[20] = 0
                        local0[21] = 0
                        local0[22] = 30
                        local0[23] = 0
                    end
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 14606) == true then
                    local0[1] = 25
                    local0[2] = 100
                    local0[3] = 10
                    local0[4] = 0
                    local0[5] = 0
                    local0[6] = 0
                    local0[7] = 25
                    local0[8] = 0
                    local0[9] = 0
                    local0[12] = 100
                    local0[14] = 10
                    local0[20] = 0
                    local0[21] = 0
                    local0[22] = 30
                    local0[23] = 0
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 14606) == false then
                    local0[1] = 25
                    local0[2] = 0
                    local0[3] = 10
                    local0[4] = 0
                    local0[5] = 0
                    local0[6] = 0
                    local0[7] = 25
                    local0[8] = 0
                    local0[9] = 0
                    local0[12] = 100
                    local0[14] = 10
                    local0[20] = 0
                    local0[21] = 0
                    local0[22] = 30
                    local0[23] = 0
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                local0[1] = 70
                local0[2] = 0
                local0[3] = 0
                local0[4] = 0
                local0[5] = 0
                local0[6] = 0
                local0[7] = 0
                local0[8] = 100
                local0[9] = 0
                local0[12] = 100
                local0[14] = 0
                local0[20] = 0
                local0[21] = 0
                local0[22] = 30
                local0[23] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                local0[1] = 0
                local0[2] = 0
                local0[3] = 70
                local0[4] = 0
                local0[5] = 0
                local0[6] = 0
                local0[7] = 0
                local0[8] = 100
                local0[9] = 0
                local0[12] = 100
                local0[14] = 0
                local0[20] = 0
                local0[21] = 0
                local0[22] = 30
                local0[23] = 0
            else
                local0[1] = 0
                local0[2] = 0
                local0[3] = 0
                local0[4] = 0
                local0[5] = 0
                local0[6] = 0
                local0[7] = 0
                local0[8] = 100
                local0[9] = 0
                local0[12] = 100
                local0[14] = 0
                local0[20] = 0
                local0[21] = 0
                local0[22] = 100
                local0[23] = 0
            end
        elseif 1 <= local13 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                if arg1:HasSpecialEffectId(TARGET_SELF, 14607) == true then
                    if arg1:HasSpecialEffectId(TARGET_SELF, 14606) == true then
                        local0[1] = 15
                        local0[2] = 100
                        local0[3] = 10
                        local0[4] = 0
                        local0[5] = 0
                        local0[6] = 20
                        local0[7] = 15
                        local0[8] = 100
                        local0[9] = 0
                        local0[12] = 100
                        local0[14] = 10
                        local0[15] = 100
                        local0[20] = 0
                        local0[21] = 0
                        local0[22] = 30
                        local0[23] = 0
                    elseif arg1:HasSpecialEffectId(TARGET_SELF, 14606) == false then
                        local0[1] = 15
                        local0[2] = 0
                        local0[3] = 10
                        local0[4] = 0
                        local0[5] = 0
                        local0[6] = 20
                        local0[7] = 15
                        local0[8] = 100
                        local0[9] = 0
                        local0[12] = 100
                        local0[14] = 10
                        local0[15] = 100
                        local0[20] = 0
                        local0[21] = 0
                        local0[22] = 30
                        local0[23] = 0
                    end
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 14606) == true then
                    local0[1] = 15
                    local0[2] = 100
                    local0[3] = 10
                    local0[4] = 0
                    local0[5] = 0
                    local0[6] = 20
                    local0[7] = 15
                    local0[8] = 100
                    local0[9] = 0
                    local0[12] = 100
                    local0[14] = 10
                    local0[20] = 0
                    local0[21] = 0
                    local0[22] = 30
                    local0[23] = 0
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 14606) == false then
                    local0[1] = 15
                    local0[2] = 0
                    local0[3] = 10
                    local0[4] = 0
                    local0[5] = 0
                    local0[6] = 20
                    local0[7] = 15
                    local0[8] = 100
                    local0[9] = 0
                    local0[12] = 100
                    local0[14] = 10
                    local0[20] = 0
                    local0[21] = 0
                    local0[22] = 30
                    local0[23] = 0
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                local0[1] = 70
                local0[2] = 0
                local0[3] = 0
                local0[4] = 0
                local0[5] = 0
                local0[6] = 0
                local0[7] = 0
                local0[8] = 100
                local0[9] = 0
                local0[12] = 100
                local0[14] = 0
                local0[20] = 0
                local0[21] = 0
                local0[22] = 30
                local0[23] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                local0[1] = 0
                local0[2] = 0
                local0[3] = 40
                local0[4] = 0
                local0[5] = 0
                local0[6] = 40
                local0[7] = 0
                local0[8] = 100
                local0[9] = 0
                local0[12] = 100
                local0[14] = 0
                local0[20] = 0
                local0[21] = 0
                local0[22] = 20
                local0[23] = 0
            else
                local0[1] = 0
                local0[2] = 0
                local0[3] = 0
                local0[4] = 0
                local0[5] = 0
                local0[6] = 0
                local0[7] = 0
                local0[8] = 100
                local0[9] = 0
                local0[12] = 100
                local0[14] = 0
                local0[20] = 0
                local0[21] = 0
                local0[22] = 100
                local0[23] = 0
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14607) == true then
                local0[1] = 20
                local0[2] = 0
                local0[3] = 0
                local0[4] = 0
                local0[5] = 0
                local0[6] = 25
                local0[7] = 20
                local0[8] = 100
                local0[9] = 0
                local0[12] = 100
                local0[14] = 10
                local0[15] = 100
                local0[20] = 0
                local0[21] = 25
                local0[22] = 0
                local0[23] = 0
            else
                local0[1] = 20
                local0[2] = 0
                local0[3] = 0
                local0[4] = 0
                local0[5] = 0
                local0[6] = 25
                local0[7] = 20
                local0[8] = 100
                local0[9] = 0
                local0[12] = 100
                local0[14] = 10
                local0[20] = 0
                local0[21] = 25
                local0[22] = 0
                local0[23] = 0
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            local0[1] = 70
            local0[2] = 0
            local0[3] = 0
            local0[4] = 0
            local0[5] = 0
            local0[6] = 0
            local0[7] = 0
            local0[8] = 100
            local0[9] = 0
            local0[12] = 100
            local0[14] = 0
            local0[20] = 0
            local0[21] = 0
            local0[22] = 30
            local0[23] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            local0[1] = 0
            local0[2] = 0
            local0[3] = 0
            local0[4] = 0
            local0[5] = 0
            local0[6] = 70
            local0[7] = 0
            local0[8] = 100
            local0[9] = 0
            local0[12] = 100
            local0[14] = 0
            local0[20] = 0
            local0[21] = 0
            local0[22] = 30
            local0[23] = 0
        else
            local0[1] = 0
            local0[2] = 0
            local0[3] = 0
            local0[4] = 0
            local0[5] = 0
            local0[6] = 0
            local0[7] = 0
            local0[8] = 100
            local0[9] = 0
            local0[12] = 100
            local0[14] = 0
            local0[20] = 0
            local0[21] = 0
            local0[22] = 100
            local0[23] = 0
        end
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 14600) == true then
        if arg1:GetHpRate(TARGET_SELF) < 0.6 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                local0[13] = 100
            else
                local0[20] = 100
            end
        elseif 15 <= local13 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                local0[1] = 0
                local0[2] = 0
                local0[3] = 0
                local0[4] = 40
                local0[5] = 40
                local0[6] = 0
                local0[7] = 0
                local0[14] = 0
                local0[20] = 20
                local0[21] = 0
                local0[22] = 0
                local0[23] = 0
            else
                local0[20] = 100
                local0[21] = 0
                local0[22] = 0
                local0[23] = 0
            end
        elseif 10 <= local13 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                local0[1] = 0
                local0[2] = 0
                local0[3] = 0
                local0[4] = 40
                local0[5] = 40
                local0[6] = 0
                local0[7] = 0
                local0[14] = 0
                local0[20] = 20
                local0[21] = 0
                local0[22] = 0
                local0[23] = 0
            else
                local0[20] = 100
                local0[21] = 0
                local0[22] = 0
                local0[23] = 0
            end
        elseif 7.5 <= local13 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                local0[1] = 0
                local0[2] = 0
                local0[3] = 0
                local0[4] = 40
                local0[5] = 40
                local0[6] = 0
                local0[7] = 0
                local0[14] = 0
                local0[20] = 20
                local0[21] = 0
                local0[22] = 0
                local0[23] = 0
            else
                local0[20] = 100
                local0[21] = 0
                local0[22] = 0
                local0[23] = 0
            end
        elseif 5 <= local13 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                local0[1] = 50
                local0[2] = 0
                local0[3] = 0
                local0[4] = 10
                local0[5] = 10
                local0[6] = 0
                local0[7] = 0
                local0[14] = 0
                local0[20] = 0
                local0[21] = 0
                local0[22] = 30
                local0[23] = 0
            else
                local0[20] = 100
                local0[21] = 0
                local0[22] = 0
                local0[23] = 0
            end
        elseif 4.5 <= local13 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                if arg1:HasSpecialEffectId(TARGET_SELF, 14607) == true then
                    if arg1:HasSpecialEffectId(TARGET_SELF, 14606) == true then
                        local0[1] = 40
                        local0[2] = 100
                        local0[3] = 30
                        local0[4] = 0
                        local0[5] = 0
                        local0[6] = 0
                        local0[7] = 0
                        local0[14] = 0
                        local0[15] = 100
                        local0[20] = 0
                        local0[21] = 0
                        local0[22] = 30
                        local0[23] = 0
                    elseif arg1:HasSpecialEffectId(TARGET_SELF, 14606) == false then
                        local0[1] = 40
                        local0[2] = 0
                        local0[3] = 30
                        local0[4] = 0
                        local0[5] = 0
                        local0[6] = 0
                        local0[7] = 0
                        local0[14] = 0
                        local0[15] = 100
                        local0[20] = 0
                        local0[21] = 0
                        local0[22] = 30
                        local0[23] = 0
                    end
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 14606) == true then
                    local0[1] = 40
                    local0[2] = 100
                    local0[3] = 30
                    local0[4] = 0
                    local0[5] = 0
                    local0[6] = 0
                    local0[7] = 0
                    local0[14] = 0
                    local0[20] = 0
                    local0[21] = 0
                    local0[22] = 30
                    local0[23] = 0
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 14606) == false then
                    local0[1] = 40
                    local0[2] = 0
                    local0[3] = 30
                    local0[4] = 0
                    local0[5] = 0
                    local0[6] = 0
                    local0[7] = 0
                    local0[14] = 0
                    local0[20] = 0
                    local0[21] = 0
                    local0[22] = 30
                    local0[23] = 0
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                local0[1] = 70
                local0[2] = 0
                local0[3] = 0
                local0[4] = 0
                local0[5] = 0
                local0[6] = 0
                local0[7] = 0
                local0[14] = 0
                local0[20] = 0
                local0[21] = 0
                local0[22] = 30
                local0[23] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                local0[1] = 0
                local0[2] = 0
                local0[3] = 70
                local0[4] = 0
                local0[5] = 0
                local0[6] = 0
                local0[7] = 0
                local0[14] = 0
                local0[20] = 0
                local0[21] = 0
                local0[22] = 30
                local0[23] = 0
            else
                local0[1] = 0
                local0[2] = 0
                local0[3] = 0
                local0[4] = 0
                local0[5] = 0
                local0[6] = 0
                local0[7] = 0
                local0[14] = 0
                local0[20] = 0
                local0[21] = 0
                local0[22] = 100
                local0[23] = 0
            end
        elseif 3.5 <= local13 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                if arg1:HasSpecialEffectId(TARGET_SELF, 14607) == true then
                    if arg1:HasSpecialEffectId(TARGET_SELF, 14606) == true then
                        local0[1] = 25
                        local0[2] = 100
                        local0[3] = 10
                        local0[4] = 0
                        local0[5] = 0
                        local0[6] = 0
                        local0[7] = 25
                        local0[14] = 10
                        local0[15] = 100
                        local0[20] = 0
                        local0[21] = 0
                        local0[22] = 30
                        local0[23] = 0
                    elseif arg1:HasSpecialEffectId(TARGET_SELF, 14606) == false then
                        local0[1] = 25
                        local0[2] = 0
                        local0[3] = 10
                        local0[4] = 0
                        local0[5] = 0
                        local0[6] = 0
                        local0[7] = 25
                        local0[14] = 10
                        local0[15] = 100
                        local0[20] = 0
                        local0[21] = 0
                        local0[22] = 30
                        local0[23] = 0
                    end
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 14606) == true then
                    local0[1] = 25
                    local0[2] = 100
                    local0[3] = 10
                    local0[4] = 0
                    local0[5] = 0
                    local0[6] = 0
                    local0[7] = 25
                    local0[14] = 10
                    local0[20] = 0
                    local0[21] = 0
                    local0[22] = 30
                    local0[23] = 0
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 14606) == false then
                    local0[1] = 25
                    local0[2] = 0
                    local0[3] = 10
                    local0[4] = 0
                    local0[5] = 0
                    local0[6] = 0
                    local0[7] = 25
                    local0[14] = 10
                    local0[20] = 0
                    local0[21] = 0
                    local0[22] = 30
                    local0[23] = 0
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                local0[1] = 70
                local0[2] = 0
                local0[3] = 0
                local0[4] = 0
                local0[5] = 0
                local0[6] = 0
                local0[7] = 0
                local0[14] = 0
                local0[20] = 0
                local0[21] = 0
                local0[22] = 30
                local0[23] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                local0[1] = 0
                local0[2] = 0
                local0[3] = 70
                local0[4] = 0
                local0[5] = 0
                local0[6] = 0
                local0[7] = 0
                local0[14] = 0
                local0[20] = 0
                local0[21] = 0
                local0[22] = 30
                local0[23] = 0
            else
                local0[1] = 0
                local0[2] = 0
                local0[3] = 0
                local0[4] = 0
                local0[5] = 0
                local0[6] = 0
                local0[7] = 0
                local0[14] = 0
                local0[20] = 0
                local0[21] = 0
                local0[22] = 100
                local0[23] = 0
            end
        elseif 1 <= local13 then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
                if arg1:HasSpecialEffectId(TARGET_SELF, 14607) == true then
                    if arg1:HasSpecialEffectId(TARGET_SELF, 14606) == true then
                        local0[1] = 15
                        local0[2] = 100
                        local0[3] = 10
                        local0[4] = 0
                        local0[5] = 0
                        local0[6] = 20
                        local0[7] = 15
                        local0[14] = 10
                        local0[15] = 100
                        local0[20] = 0
                        local0[21] = 0
                        local0[22] = 30
                        local0[23] = 0
                    elseif arg1:HasSpecialEffectId(TARGET_SELF, 14606) == false then
                        local0[1] = 15
                        local0[2] = 0
                        local0[3] = 10
                        local0[4] = 0
                        local0[5] = 0
                        local0[6] = 20
                        local0[7] = 15
                        local0[14] = 10
                        local0[15] = 100
                        local0[20] = 0
                        local0[21] = 0
                        local0[22] = 30
                        local0[23] = 0
                    end
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 14606) == true then
                    local0[1] = 15
                    local0[2] = 100
                    local0[3] = 10
                    local0[4] = 0
                    local0[5] = 0
                    local0[6] = 20
                    local0[7] = 15
                    local0[14] = 10
                    local0[20] = 0
                    local0[21] = 0
                    local0[22] = 30
                    local0[23] = 0
                elseif arg1:HasSpecialEffectId(TARGET_SELF, 14606) == false then
                    local0[1] = 15
                    local0[2] = 0
                    local0[3] = 10
                    local0[4] = 0
                    local0[5] = 0
                    local0[6] = 20
                    local0[7] = 15
                    local0[14] = 10
                    local0[20] = 0
                    local0[21] = 0
                    local0[22] = 30
                    local0[23] = 0
                end
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
                local0[1] = 70
                local0[2] = 0
                local0[3] = 0
                local0[4] = 0
                local0[5] = 0
                local0[6] = 0
                local0[7] = 0
                local0[14] = 0
                local0[20] = 0
                local0[21] = 0
                local0[22] = 30
                local0[23] = 0
            elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
                local0[1] = 0
                local0[2] = 0
                local0[3] = 40
                local0[4] = 0
                local0[5] = 0
                local0[6] = 40
                local0[7] = 0
                local0[14] = 0
                local0[20] = 0
                local0[21] = 0
                local0[22] = 20
                local0[23] = 0
            else
                local0[1] = 0
                local0[2] = 0
                local0[3] = 0
                local0[4] = 0
                local0[5] = 0
                local0[6] = 0
                local0[7] = 0
                local0[14] = 0
                local0[20] = 0
                local0[21] = 0
                local0[22] = 100
                local0[23] = 0
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 100) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14607) == true then
                local0[1] = 20
                local0[2] = 0
                local0[3] = 0
                local0[4] = 0
                local0[5] = 0
                local0[6] = 25
                local0[7] = 20
                local0[14] = 10
                local0[15] = 100
                local0[20] = 0
                local0[21] = 25
                local0[22] = 0
                local0[23] = 0
            else
                local0[1] = 20
                local0[2] = 0
                local0[3] = 0
                local0[4] = 0
                local0[5] = 0
                local0[6] = 25
                local0[7] = 20
                local0[14] = 10
                local0[20] = 0
                local0[21] = 25
                local0[22] = 0
                local0[23] = 0
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 100) then
            local0[1] = 70
            local0[2] = 0
            local0[3] = 0
            local0[4] = 0
            local0[5] = 0
            local0[6] = 0
            local0[7] = 0
            local0[14] = 0
            local0[20] = 0
            local0[21] = 0
            local0[22] = 30
            local0[23] = 0
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 100) then
            local0[1] = 0
            local0[2] = 0
            local0[3] = 0
            local0[4] = 0
            local0[5] = 0
            local0[6] = 70
            local0[7] = 0
            local0[14] = 0
            local0[20] = 0
            local0[21] = 0
            local0[22] = 30
            local0[23] = 0
        else
            local0[1] = 0
            local0[2] = 0
            local0[3] = 0
            local0[4] = 0
            local0[5] = 0
            local0[6] = 0
            local0[7] = 0
            local0[14] = 0
            local0[20] = 0
            local0[21] = 0
            local0[22] = 100
            local0[23] = 0
        end
    end
    local0[1] = SetCoolTime(arg1, arg2, 3000, 10, local0[1], 1)
    local0[2] = SetCoolTime(arg1, arg2, 3003, 10, local0[2], 1)
    local0[3] = SetCoolTime(arg1, arg2, 3004, 10, local0[3], 1)
    local0[4] = SetCoolTime(arg1, arg2, 3005, 10, local0[4], 1)
    local0[5] = SetCoolTime(arg1, arg2, 3006, 10, local0[5], 1)
    local0[6] = SetCoolTime(arg1, arg2, 3007, 10, local0[6], 1)
    local0[7] = SetCoolTime(arg1, arg2, 3008, 10, local0[7], 1)
    local0[8] = SetCoolTime(arg1, arg2, 3011, 15, local0[8], 1)
    local0[9] = SetCoolTime(arg1, arg2, 3012, 20, local0[9], 1)
    local0[12] = SetCoolTime(arg1, arg2, 3021, 20, local0[12], 1)
    local0[13] = SetCoolTime(arg1, arg2, 3022, 1, local0[13], 1)
    local0[14] = SetCoolTime(arg1, arg2, 3025, 15, local0[14], 1)
    local0[15] = SetCoolTime(arg1, arg2, 3028, 15, local0[15], 1)
    local1[1] = REGIST_FUNC(arg1, arg2, RuneKnightsSwordTail250000_Act01)
    local1[2] = REGIST_FUNC(arg1, arg2, RuneKnightsSwordTail250000_Act02)
    local1[3] = REGIST_FUNC(arg1, arg2, RuneKnightsSwordTail250000_Act03)
    local1[4] = REGIST_FUNC(arg1, arg2, RuneKnightsSwordTail250000_Act04)
    local1[5] = REGIST_FUNC(arg1, arg2, RuneKnightsSwordTail250000_Act05)
    local1[6] = REGIST_FUNC(arg1, arg2, RuneKnightsSwordTail250000_Act06)
    local1[7] = REGIST_FUNC(arg1, arg2, RuneKnightsSwordTail250000_Act07)
    local1[8] = REGIST_FUNC(arg1, arg2, RuneKnightsSwordTail250000_Act08)
    local1[9] = REGIST_FUNC(arg1, arg2, RuneKnightsSwordTail250000_Act09)
    local1[12] = REGIST_FUNC(arg1, arg2, RuneKnightsSwordTail250000_Act12)
    local1[13] = REGIST_FUNC(arg1, arg2, RuneKnightsSwordTail250000_Act13)
    local1[14] = REGIST_FUNC(arg1, arg2, RuneKnightsSwordTail250000_Act14)
    local1[15] = REGIST_FUNC(arg1, arg2, RuneKnightsSwordTail250000_Act15)
    local1[20] = REGIST_FUNC(arg1, arg2, RuneKnightsSwordTail250000_Act20)
    local1[21] = REGIST_FUNC(arg1, arg2, RuneKnightsSwordTail250000_Act21)
    local1[22] = REGIST_FUNC(arg1, arg2, RuneKnightsSwordTail250000_Act22)
    local1[23] = REGIST_FUNC(arg1, arg2, RuneKnightsSwordTail250000_Act23)
    Common_Battle_Activate(arg1, arg2, local0, local1, REGIST_FUNC(arg1, arg2, RuneKnightsSwordTail250000_ActAfter_AdjustSpace), local2)
    return 
end

function RuneKnightsSwordTail250000_Act01(arg0, arg1, arg2)
    local local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    Approach_Act_Flex(arg0, arg1, local0, local0 + 0, local0 + 10, 70, 100, 3, 3)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14610)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14611)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14612)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneKnightsSwordTail250000_Act02(arg0, arg1, arg2)
    local local0 = 5.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = local0 + 0
    local local2 = local0 + 10
    local local3 = 70
    local local4 = 100
    local local5 = 3
    local local6 = 3
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14610)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14611)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14612)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3003, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneKnightsSwordTail250000_Act03(arg0, arg1, arg2)
    local local0 = 5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = local0 + 0
    local local2 = local0 + 10
    local local3 = 0
    local local4 = 100
    local local5 = 3
    local local6 = 3
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14610)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14611)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14612)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3004, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneKnightsSwordTail250000_Act04(arg0, arg1, arg2)
    local local0 = 10 - arg0:GetMapHitRadius(TARGET_SELF)
    Approach_Act_Flex(arg0, arg1, local0, local0 + 0, local0 + 10, 70, 100, 3, 3)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14610)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14611)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14612)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3005, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneKnightsSwordTail250000_Act05(arg0, arg1, arg2)
    local local0 = 10 - arg0:GetMapHitRadius(TARGET_SELF)
    Approach_Act_Flex(arg0, arg1, local0, local0 + 0, local0 + 10, 70, 100, 3, 3)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14610)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14611)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14612)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3006, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneKnightsSwordTail250000_Act06(arg0, arg1, arg2)
    local local0 = 3.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = local0 + 0
    local local2 = local0 + 10
    local local3 = 0
    local local4 = 100
    local local5 = 3
    local local6 = 3
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14610)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14611)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14612)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3007, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneKnightsSwordTail250000_Act07(arg0, arg1, arg2)
    local local0 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = local0 + 0
    local local2 = local0 + 10
    local local3 = 0
    local local4 = 100
    local local5 = 3
    local local6 = 3
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14610)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14611)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14612)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3008, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneKnightsSwordTail250000_Act08(arg0, arg1, arg2)
    local local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = local0 + 0
    local local2 = local0 + 10
    local local3 = 0
    local local4 = 100
    local local5 = 3
    local local6 = 3
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14610)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14611)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14612)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3011, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneKnightsSwordTail250000_Act09(arg0, arg1, arg2)
    local local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = local0 + 0
    local local2 = local0 + 10
    local local3 = 0
    local local4 = 100
    local local5 = 3
    local local6 = 3
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14610)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14611)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14612)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3012, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneKnightsSwordTail250000_Act12(arg0, arg1, arg2)
    local local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    Approach_Act_Flex(arg0, arg1, local0, local0 + 0, local0 + 10, 70, 100, 3, 3)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14610)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14611)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14612)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3021, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneKnightsSwordTail250000_Act13(arg0, arg1, arg2)
    local local0 = 99 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = local0 + 0
    local local2 = local0 + 10
    local local3 = 0
    local local4 = 100
    local local5 = 3
    local local6 = 3
    local local7 = 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999
    local local8 = 0
    local local9 = 360
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14610)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14611)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14612)
    if arg0:HasSpecialEffectId(TARGET_SELF, 14602) == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, 3022, TARGET_ENE_0, 999, local8, local9, 0, 0)
    elseif arg0:HasSpecialEffectId(TARGET_SELF, 14603) == true then
        arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 15, 3023, TARGET_ENE_0, 999, local8, local9, 0, 0)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneKnightsSwordTail250000_Act14(arg0, arg1, arg2)
    local local0 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = local0 + 0
    local local2 = local0 + 10
    local local3 = 0
    local local4 = 100
    local local5 = 3
    local local6 = 3
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14610)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14611)
    arg0:AddObserveSpecialEffectAttribute(TARGET_SELF, 14612)
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3025, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneKnightsSwordTail250000_Act15(arg0, arg1, arg2)
    local local0 = 4.5 - arg0:GetMapHitRadius(TARGET_SELF)
    local local1 = local0 + 0
    local local2 = local0 + 10
    local local3 = 0
    local local4 = 100
    local local5 = 3
    local local6 = 3
    arg1:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3028, TARGET_ENE_0, 5 - arg0:GetMapHitRadius(TARGET_SELF) + 999, 0, 0, 0, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneKnightsSwordTail250000_Act20(arg0, arg1, arg2)
    if 10 <= arg0:GetDist(TARGET_ENE_0) then
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, arg0:GetRandam_Int(2, 3), TARGET_ENE_0, 5, TARGET_SELF, false, 9910)
    else
        arg1:AddSubGoal(GOAL_COMMON_ApproachTarget, arg0:GetRandam_Int(2, 3), TARGET_ENE_0, 5, TARGET_ENE_0, true, 9910)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneKnightsSwordTail250000_Act21(arg0, arg1, arg2)
    if 2 <= arg0:GetExistMeshOnLineDistEx(TARGET_SELF, AI_DIR_TYPE_B, 2, arg0:GetMapHitRadius(TARGET_SELF), 0) then
        arg1:AddSubGoal(GOAL_COMMON_LeaveTarget, 2, TARGET_ENE_0, 5, TARGET_ENE_0, false, 9910)
    else
        arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(2, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, 9910)
    end
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneKnightsSwordTail250000_Act22(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_SidewayMove, arg0:GetRandam_Float(1.5, 2.5), TARGET_ENE_0, arg0:GetRandam_Int(0, 1), arg0:GetRandam_Int(30, 45), true, true, 9910)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneKnightsSwordTail250000_Act23(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_COMMON_Turn, 2.5, TARGET_ENE_0, 90, 9910, 0)
    GetWellSpace_Odds = 0
    return GetWellSpace_Odds
end

function RuneKnightsSwordTail250000_ActAfter_AdjustSpace(arg0, arg1, arg2)
    arg1:AddSubGoal(GOAL_RuneKnightsSwordTail250000_AfterAttackAct, 10)
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
    local local1 = 5 - arg1:GetMapHitRadius(TARGET_SELF)
    local local2 = 0
    local local3 = 0
    local local4 = arg1:GetRandam_Int(1, 100)
    local local5 = arg1:GetHpRate(TARGET_SELF)
    local local6 = arg1:GetExcelParam(AI_EXCEL_THINK_PARAM_TYPE__thinkAttr_doAdmirer)
    local local7 = arg1:GetDist(TARGET_FRI_0)
    local local8 = arg1:GetMapHitRadius(TARGET_SELF)
    local local9 = arg1:GetPrevTargetState()
    local local10 = arg1:AddObserveSpecialEffectAttribute(TARGET_ENE_0, PLAN_SP_EFFECT_FALL_FROM_HORSE)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5025)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5026)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5027)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5028)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5029)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5030)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5031)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5032)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5033)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5034)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5035)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5036)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5037)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 5038)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 14610)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 14611)
    arg1:AddObserveSpecialEffectAttribute(TARGET_SELF, 14612)
    if arg1:IsLadderAct(TARGET_SELF) then
        return false
    elseif arg1:HasSpecialEffectId(TARGET_SELF, 5110) == true or arg1:HasSpecialEffectAttribute(TARGET_SELF, SP_EFFECT_TYPE_ILLNESS) == true then
        return false
    elseif arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:HasSpecialEffectId(TARGET_SELF, 14647) == true then
        arg2:ClearSubGoal()
        arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 1.5, TARGET_ENE_0, 1, TARGET_SELF, true, -1, 0, 0, 0)
        return true
    elseif arg1:IsInterupt(INTERUPT_UseItem)  then
       
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
            if local4 <= 80 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3000, TARGET_HOSTPLAYER, 999, local2, local3, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
            if local4 <= 40 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3005, TARGET_HOSTPLAYER, 999, local2, local3, 0, 0)
                return true
            elseif local4 <= 80 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3006, TARGET_HOSTPLAYER, 999, local2, local3, 0, 0)
                return true
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3021, TARGET_HOSTPLAYER, 999, local2, local3, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 15) then
            if local4 <= 80 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 5, TARGET_SELF, false, 9910)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_Shoot) then
        if arg1:HasSpecialEffectId(TARGET_SELF, 5039) == false then
            if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 7.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14606) == true then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3003, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
            if local4 <= 30 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, local2, local3, 0, 0)
                return true
            elseif local4 <= 60 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, local2, local3, 0, 0)
                return true
            else
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 5, TARGET_SELF, false, 9910)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 15) then
            if local4 <= 80 then
                arg2:ClearSubGoal()
                arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, 3, TARGET_ENE_0, 5, TARGET_SELF, false, 9910)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_SuccessGuard) and arg1:HasSpecialEffectId(TARGET_SELF, 5039) == false and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
        if local4 <= 80 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3003, TARGET_ENE_0, 999, 0, 0)
            return true
        else
            return true
        end
    elseif arg1:IsInterupt(INTERUPT_Damaged) then
        arg2:AddSubGoal(GOAL_COMMON_ToTargetWarp, 10, TARGET_ENE_0,  AI_DIR_TYPE_ToB, arg1:GetRandam_Int(3, 5), TARGET_ENE_0, 5, -2)
        if local4 <= 30 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, local2, local3, 0, 0)
            return true
        elseif local4 <= 60 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_ComboTunable_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, local2, local3, 0, 0)
            return true
        elseif local4 <= 80 then
            arg2:ClearSubGoal()
            arg2:AddSubGoal(GOAL_COMMON_SidewayMove, arg1:GetRandam_Float(1.5, 2.5), TARGET_ENE_0, arg1:GetRandam_Int(0, 1), arg1:GetRandam_Int(30, 45), true, true, 9910)
            return true
        else
            return true
        end
    elseif arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5025) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    if local4 <= 20 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                    if local4 <= 60 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif local4 <= 80 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14600) == true then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                    if local4 <= 60 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3001, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif local4 <= 80 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 180, 5) and arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
            if local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif local4 <= 80 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5026) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    if local4 <= 20 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                    if local4 <= 80 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14600) == true then
                if local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 180, 5) and arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
            if local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif local4 <= 80 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5027) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    if local4 <= 20 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                    if local4 <= 20 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif local4 <= 40 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif local4 <= 80 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14600) == true then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                    if local4 <= 20 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif local4 <= 40 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3007, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif local4 <= 80 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3008, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14600) == true then
                if local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 180, 5) and arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
            if local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif local4 <= 80 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5028) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    if local4 <= 20 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                    if local4 <= 80 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3000, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14600) == true then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                    if local4 <= 80 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3000, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 180, 5) and arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
            if local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif local4 <= 80 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5029) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    if local4 <= 20 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                    if local4 <= 80 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3000, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14600) == true then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                    if local4 <= 80 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3000, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 180, 5) and arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
            if local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif local4 <= 80 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5030) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                    if local4 <= 30 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3000, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif local4 <= 80 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14600) == true then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                    if local4 <= 80 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3000, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
            if local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 180, 5) and arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
            if local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif local4 <= 80 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5031) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                    if local4 <= 80 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14600) == true then
                if local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 180, 5) and arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
            if local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif local4 <= 80 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5032) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                    if local4 <= 30 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3000, TARGET_ENE_0, 999, 0, 0)
                        return true
                    elseif local4 <= 80 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14600) == true then
                if arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == true then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif arg1:HasSpecialEffectId(TARGET_ENE_0, 51) == false then
                    if local4 <= 80 then
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3000, TARGET_ENE_0, 999, 0, 0)
                        return true
                    else
                        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0, 0)
                        return true
                    end
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 180, 5) and arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
            if local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif local4 <= 80 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5033) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 4.5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if local4 <= 30 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3000, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif local4 <= 50 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            elseif arg1:HasSpecialEffectId(TARGET_SELF, 14600) == true then
                if local4 <= 50 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3000, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3004, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
            if local4 <= 20 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3002, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif local4 <= 80 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 180, 5) and arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
            if local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif local4 <= 80 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5034) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 4.5) then
            if local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
            if local4 <= 20 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif local4 <= 40 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5035) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 4.5) then
            if local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
            if local4 <= 20 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif local4 <= 40 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5036) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 4.5) then
            if local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
            if local4 <= 20 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif local4 <= 40 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5037) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 4.5) then
            if local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3025, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
            if local4 <= 20 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif local4 <= 40 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(5038) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
            if arg1:GetHpRate(TARGET_SELF) < 0.4 then
                if local4 <= 20 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                    return true
                end
            else
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
            if arg1:GetHpRate(TARGET_SELF) < 0.4 then
                if local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, arg1:GetRandam_Int(2, 3), TARGET_ENE_0, 5, TARGET_ENE_0, true, 9910)
                    return true
                end
            else
                arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, arg1:GetRandam_Int(2, 3), TARGET_ENE_0, 5, TARGET_ENE_0, true, 9910)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 15) then
            if arg1:GetHpRate(TARGET_SELF) < 0.4 then
                if local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3012, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, arg1:GetRandam_Int(2, 3), TARGET_ENE_0, 5, TARGET_ENE_0, true, 9910)
                    return true
                end
            else
                arg2:AddSubGoal(GOAL_COMMON_ApproachTarget, arg1:GetRandam_Int(2, 3), TARGET_ENE_0, 5, TARGET_ENE_0, true, 9910)
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 5) then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 5) then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 180, 5) then
            arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
            return true
        end
    end
    if arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(14610) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 15) then
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
        return true
    elseif arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(14611) and arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 360, 180, 4.5) then
        arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3026, TARGET_ENE_0, 999, 0, 0)
        return true
    elseif arg1:IsInterupt(INTERUPT_ActivateSpecialEffect) and arg1:GetSpecialEffectActivateInterruptId(14612) then
        if arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 5) then
            return true
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_F, 120, 180, 10) then
            if local4 <= 20 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3005, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif local4 <= 40 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3006, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_L, 120, 180, 5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_R, 120, 180, 5) then
            if arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
                if local4 <= 60 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                    return true
                elseif local4 <= 80 then
                    arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                    return true
                else
                    return true
                end
            end
        elseif arg1:IsInsideTargetCustom(TARGET_SELF, TARGET_ENE_0, AI_DIR_TYPE_B, 120, 180, 5) and arg1:HasSpecialEffectId(TARGET_SELF, 14601) == true then
            if local4 <= 60 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3011, TARGET_ENE_0, 999, 0, 0)
                return true
            elseif local4 <= 80 then
                arg2:AddSubGoal(GOAL_COMMON_ComboRepeat_SuccessAngle180, 10, 3021, TARGET_ENE_0, 999, 0, 0)
                return true
            else
                return true
            end
        end
    end
    return false
end

RegisterTableGoal(GOAL_RuneKnightsSwordTail250000_AfterAttackAct, "RuneKnightsSwordTail250000_AfterAttackAct")
REGISTER_GOAL_NO_SUB_GOAL(GOAL_RuneKnightsSwordTail250000_AfterAttackAct, true)
Goal.Activate = function (arg0, arg1, arg2)
    return 
end

Goal.Update = function (arg0, arg1, arg2)
    return Update_Default_NoSubGoal(arg0, arg1, arg2)
end

return 
