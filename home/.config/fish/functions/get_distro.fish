function get_distro
	for i in (cat /etc/os-release)
		set arr (echo $i|tr = \n)
		if [ $arr[1] = "ID" ]
			echo $arr[2]
		end
	end
end
