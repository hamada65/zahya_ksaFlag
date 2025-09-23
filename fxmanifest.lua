fx_version 'cerulean'
game 'gta5'

lua54 'yes'

author 'Zahya Dev'
description 'Zahya KSA Flag'
version '1.0.0'
url 'https://github.com/hamada65/zahya_ksaFlag'

client_scripts {
    'client.lua'
}

server_scripts {
	'@oxmysql/lib/MySQL.lua',
    'server.lua'
}

shared_script '@es_extended/imports.lua'


data_file 'DLC_ITYP_REQUEST' 'stream/rpemotesreborn_props.ytyp'