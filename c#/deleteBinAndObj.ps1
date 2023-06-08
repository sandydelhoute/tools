function clean_bin_obj() {
    # DELETE ALL "BIN" and "OBJ" FOLDERS
    get-childitem -Include bin -Recurse -force | Foreach-Object {
        New-Object PSObject -Property @{
            Directory = $_.FullName
        }
        Remove-Item -Path $_.FullName -Force -Recurse
    }
    get-childitem -Include obj -Recurse -force | Foreach-Object {
        New-Object PSObject -Property @{
            Directory = $_.FullName
        }
        Remove-Item -Path $_.FullName -Force -Recurse
    }
}
clean_bin_obj