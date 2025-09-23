local flagConfig = {
	lib = 'rcmnigel1d',
	anim = 'base_club_shoulder',
	Prop = 'prideflag2',
	PropBone = 18905,
	PropPlacement = {
		0.0800,
		-0.2090,
		0.0900,
		-82.6677,
		-141.2988,
		12.3308
	},
	onFootFlag = 51,
}
local flagProp = nil

RegisterNetEvent('zahya_ksaFlag:useFlag')
AddEventHandler('zahya_ksaFlag:useFlag', function()
	if flagProp ~= nil and DoesEntityExist(flagProp) then
		ClearPedSecondaryTask(PlayerPedId())
		DetachEntity(flagProp, true, true)
		DeleteObject(flagProp)
		flagProp = nil
	else
		local prop = CreateObject(GetHashKey(flagConfig.Prop), 1.0, 1.0, 1.0, true, true, true)
		flagProp = prop
		local bone = GetPedBoneIndex(PlayerPedId(), flagConfig.PropBone)
		AttachEntityToEntity(prop, PlayerPedId(), bone, flagConfig.PropPlacement[1], flagConfig.PropPlacement[2], flagConfig.PropPlacement[3], flagConfig.PropPlacement[4], flagConfig.PropPlacement[5], flagConfig.PropPlacement[6], true, true, false, true, 1, true)
		RequestAnimDict(flagConfig.lib)
		while not HasAnimDictLoaded(flagConfig.lib) do
			Citizen.Wait(100)
		end
		TaskPlayAnim(PlayerPedId(), flagConfig.lib, flagConfig.anim, 8.0, -8.0, -1, flagConfig.onFootFlag, 0, false, false, false)
	end
end)