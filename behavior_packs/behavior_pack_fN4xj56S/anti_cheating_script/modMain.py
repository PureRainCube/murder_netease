# -*- coding: utf-8 -*-

from mod.common.mod import Mod
import mod.server.extraServerApi as serverApi
import mod.client.extraClientApi as clientApi

@Mod.Binding(name = "AntiCheatingBehavior",version = "1.0.1")
class Anti_Cheating_Behavior(object):
        """ """
        def __init__(self):
            print "===========Init=========="
            pass
            
        @Mod.InitServer()    
        def anti_cheating_serverinit(self):
            print "========RegisterServerSystem========"
            serverApi.RegisterSystem("AntiCheatingBehavior","Anti_Cheating_ServerSystem","anti_cheating_script.anti_cheating_serversystem.Anti_Cheating_ServerSystem")
                    
        @Mod.DestroyServer()
        def anti_cheating_serverdestroy(self):
            pass
            
        @Mod.InitClient()
        def anti_cheating_clientsystem(self):
            print "=========RegisterClientSystem========="
            clientApi.RegisterSystem("AntiCheatingBehavior","Anti_Cheating_ClientSystem","anti_cheating_script.anti_cheating_clientsystem.Anti_Cheating_ClientSystem")
            
        @Mod.DestroyClient()
        def anti_cheating_clientdestroy(self):
            pass

# copyright SIMstudio
# Made by Darkgreen World
