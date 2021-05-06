resource_manifest_version '44febabe-d386-4d18-afbe-5e627f4af937'

description 'Hudas sukurtas by PMarius'

ui_page 'html/ui.html'

client_scripts {
	'client.lua'
}

files {
	-- Pagrindinis variklis
	'html/ui.html',
	'html/stilius.css',
	'html/main.js'

}

dependencies {
    'es_extended',
    'esx_status',
    'esx_basicneeds'
}
