LuaP		Ά	hηυ}A       =(none)                              RegisterTableGoal (       GOAL_RuneHunterKnightHorse316000_Battle #       RuneHunterKnightHorse316000_Battle        REGISTER_GOAL_NO_SUB_GOAL        Goal        Initialize 	       Activate "       RuneHunterKnightHorse316000_Act15 "       RuneHunterKnightHorse316000_Act16 1       RuneHunterKnightHorse316000_ActAfter_AdjustSpace        Update 
       Terminate 
       Interrupt 0       GOAL_RuneHunterKnightHorse316000_AfterAttackAct +       RuneHunterKnightHorse316000_AfterAttackAct 
           $                                      *                           Init_Pseudo_Global        SetStringIndexedNumber        Dist_SideStep       @       Dist_BackStep        Common_Clear_Param        GetDist        TARGET_ENE_0        GetRandam_Int       π?      Y@      0@      .@       REGIST_FUNC "       RuneHunterKnightHorse316000_Act15 "       RuneHunterKnightHorse316000_Act16 1       RuneHunterKnightHorse316000_ActAfter_AdjustSpace        Common_Battle_Activate     6         YΛΎ   Α  Y ΛΎ  Α  Y 
  
  
  E     	Y ΐ Ε ΐ A 	 
 	ΑE   	  
  	E   	  
Ε  	E   	  
  E 	  
        Y	          k                           AddSubGoal        GOAL_COMMON_LeaveTarget       @       TARGET_ENE_0       4@       TARGET_SELF                GetWellSpace_Odds        Ύ E    Ε   E 	  
 Y Η Ε            x                           AddSubGoal        GOAL_COMMON_Wait       π?       TARGET_NONE                GetWellSpace_Odds        Ύ E    Ε    	 
Y  G E                                       AddSubGoal 0       GOAL_RuneHunterKnightHorse316000_AfterAttackAct       $@       Ύ E    Y                                      Update_Default_NoSubGoal                                                                    ’                           GetDist        TARGET_ENE_0       @       GetMapHitRadius        TARGET_SELF        GetRandam_Int       π?      Y@
       GetHpRate        IsLadderAct        IsInterupt        INTERUPT_Damaged        ClearSubGoal        AddSubGoal        GOAL_COMMON_LeaveTarget       $@      D@            *   Ύ E  KΏ  ~ΛΏ  Α  ΐ  Λΐ  	T     Α Ε 	 AY ΛA 	Α 
E      A Y               Θ                                      Ξ                           Update_Default_NoSubGoal                      ,      E    Y Ε   E   Y   "  I   b  I  ’   Η  β     "  G    b I    ’ I   β I     E  Y Ε   E  Y   " I    b I    