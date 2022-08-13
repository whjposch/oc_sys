local mainUrl = "https://raw.githubusercontent.com/whjposch/oc_sys/main/"

function download(mainUrl, subUrl, fileName)
    print("w wget -f" .. mainUrl .. subUrl .. fileName .. subUrl .. fileName .. ".lua")
    -- os.execute("wget -f" .. mainUrl .. subUrl .. fileName .. subUrl .. fileName .. ".lua")
end

function update()
     download(mainUrl, "", "manage")

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
    download(mainUrl, subUrl, "recipes")
    download(mainUrl, subUrl, "addresses")
end

function updateUpdater()
    download(mainUrl, "", "update.lua")
end

update()