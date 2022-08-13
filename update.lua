local mainUrl = "https://raw.githubusercontent.com/whjposch/oc_sys/main/"

function update()
     os.execute("wget -f " .. mainUrl .. "manage.lua")

     updateCore()
     updateAssembly()
     updateUpdater()
end

function updateCore()
    local subUrl = "core/"

    os.execute("mkdir core")
    os.execute("wget -f " .. mainUrl .. subUrl .. "db.lua " .. subUrl .. "db.lua")

end

function updateAssembly()
    local subUrl = "assembly/"

    os.execute("mkdir assembly")
    os.execute("wget -f " .. mainUrl .. subUrl .. "db.lua " .. subUrl .. "main.lua")

end

function updateUpdater()
    os.execute("wget -f " .. mainUrl .. "update.lua")
end

update()