function clean_bin_obj()
{
	# DELETE ALL "BIN" and "OBJ" FOLDERS
	get-childitem -Include bin -Recurse -force | Remove-Item -Force -Recurse
	get-childitem -Include obj -Recurse -force | Remove-Item -Force -Recurse
}
clean_bin_obj