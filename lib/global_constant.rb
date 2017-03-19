module GlobalConstant

	env_constants = YAML::load(open(Rails.root.to_s + '/config/constants.yml'))["constants"]
	
end