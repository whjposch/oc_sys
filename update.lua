local mainUrl = "https://raw.githubusercontent.com/whjposch/oc_sys/main/"

function update()
     os.execute("wget -f " .. mainUrl .. "manage.lua")

     updateCore()
     updateAssembly()
     updateUpdater()
end

function updateCore()
    os.execute("mkdir core")
    os.execute("wget -f " .. mainUrl .. "core/db.lua")

end

function updateAssembly()
    os.execute("mkdir assembly")
    os.execute("wget -f " .. mainUrl .. "assembly/main.lua")

end

function updateUpdater()
    os.execute("wget -f " .. mainUrl .. "update.lua")
end

update()