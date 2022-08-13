local mainUrl = "https://raw.githubusercontent.com/whjposch/oc_sys/main/"


function download(mainUrl, subUrl, fileName)
    return "wget -f " .. mainUrl .. subUrl .. fileName .. subUrl .. fileName .. ".lua"
end

function update()
     os.execute("wget -f " .. mainUrl .. "manage.lua")

     updateCore()
     updateAssembly()
     updateUpdater()
end

function updateCore()
    local subUrl = "core/"

    os.execute("rm " .. subUrl .. " -r")

    os.execute("mkdir core")

    download(mainUrl, subUrl, "db")
end

function updateAssembly()
    local subUrl = "assembly/"

    os.execute("rm " .. subUrl .. " -r")

    os.execute("mkdir assembly")
    
    download(mainUrl, subUrl, "main")
end

function updateUpdater()
    os.execute("wget -f " .. mainUrl .. "update.lua")
end

update()