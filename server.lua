Citizen.CreateThread(function()
	MySQL.ready(function()
		MySQL.Async.execute('INSERT INTO items (name, label, weight, rare, can_remove) VALUES (@name, @label, @weight, @rare, @can_remove)', {
			['@name'] = 'ksa_flag',
			['@label'] = 'علم المملكة السعودية',
			['@weight'] = 1,
			['@rare'] = 0,
			['@can_remove'] = 1
		})
		MySQL.Async.execute('INSERT INTO items (name, label, weight, rare, can_remove) VALUES (@name, @label, @weight, @rare, @can_remove)', {
			['@name'] = 'ksa_flag_box',
			['@label'] = 'صندوق علم المملكة السعودية',
			['@weight'] = 10,
			['@rare'] = 0,
			['@can_remove'] = 1
		})
	end)
end)


-- on item use
ESX.RegisterUsableItem('ksa_flag', function(source)

	TriggerClientEvent('zahya_ksaFlag:useFlag', source)
end)