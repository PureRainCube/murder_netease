# -*- coding: utf-8 -*-

import mod.server.extraServerApi as serverApi
ServerSystem = serverApi.GetServerSystemCls()
import time
OStimer = 0

class Anti_Cheating_ServerSystem(ServerSystem):
    def __init__(self,namespace,systemName):
        super(Anti_Cheating_ServerSystem,self).__init__(namespace,systemName)
        self.ListenEvent()
        self.Blocklist = ["minecraft:diamond_ore"]
        petcomp = serverApi.GetEngineCompFactory().CreatePet(serverApi.GetLevelId())
        petcomp.Disable()

    def ListenEvent(self):
        self.ListenForEvent(serverApi.GetEngineNamespace(), serverApi.GetEngineSystemName(), "ServerPlayerTryDestroyBlockEvent",self, self.ServerPlayerTryDestroyBlockEvent)
        self.ListenForEvent(serverApi.GetEngineNamespace(),serverApi.GetEngineSystemName(),"OnScriptTickServer",self,self.anti_cheating1)
        self.ListenForEvent(serverApi.GetEngineNamespace(),serverApi.GetEngineSystemName(),"CommandEvent",self,self.anti_cheating2)
        
    def UnListenEvent(self):
        self.UnListenForEvent(serverApi.GetEngineNamespace(), serverApi.GetEngineSystemName(), "ServerPlayerTryDestroyBlockEvent",self, self.ServerPlayerTryDestroyBlockEvent)
        self.UnListenForEvent(serverApi.GetEngineNamespace(),serverApi.GetEngineSystemName(),"OnScriptTickServer",self,self.anti_cheating1)
        self.UnListenForEvent(serverApi.GetEngineNamespace(),serverApi.GetEngineSystemName(),"CommandEvent",self,self.anti_cheating2)

    def ServerPlayerTryDestroyBlockEvent(self, args):
        if args["fullName"] not in self.Blocklist:
            args["cancel"] = True

    def anti_cheating1(self):
        global OStimer
        comp = serverApi.CreateComponent(serverApi.GetLevelId(),"Minecraft","command")
        OStimer +=1
        if OStimer >6:
            comp.SetCommand("/gamerule commandblocksenabled true")
            comp.SetCommand("/gamerule pvp true")
            comp.SetCommand("/gamemode a @a")
            comp.SetCommand("/difficulty p")
            OStimer = 0

    def anti_cheating2(self,args=None):
        anti_commands = ["/gamerule","/kick","/fill","/execute","/xp","/gamemode","/tp","/teleport","/op","/setblock","/give","/setworldspawn","/effect","/spawnpoint","/kill","/difficulty","/ability"]
        for anti_command in anti_commands[0:16]:
            if args["command"].startswith(anti_command):
                args["cancel"] = True
        
    def Destroy(self):
        self.UnListenEvent()

# copyright PureRainCube
# Made by Darkgreen World&jixingus
