# -*- coding: utf-8 -*-

import mod.client.extraClientApi as c_api
ClientSystem = c_api.GetClientSystemCls()
c_api.HideNameTag(True)

class Anti_Cheating_ClientSystem(ClientSystem):
    def __init__(self,namespace,systemName):
        super(Anti_Cheating_ClientSystem,self).__init__(namespace,systemName)
        pass
        
    def Destroy(self):
        pass

# copyright PureRainCube
# Made by Darkgreen World&jixingus
