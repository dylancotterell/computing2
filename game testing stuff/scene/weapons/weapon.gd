extends Spatial
class_name Weapon

# References
var weapon_manager = null
var player = null


# Weapon States
var is_equipped = false


# Weapon Parameters
export var weapon_name = "Weapon"




# Equip/Unequip Cycle
func equip():
	pass

func unequip():
	pass
	
func is_equip_finished():
	return true

func is_unequip_finished():
	return true




# Update Ammo
func update_ammo(action = "Refresh"):
	
	var weapon_data = {
		"Name" : weapon_name
	}
	
	weapon_manager.update_hud(weapon_data)
