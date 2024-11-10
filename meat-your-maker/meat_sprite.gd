extends Sprite2D

var frames = texture.get_width() / region_rect.size.x
var player_node = Node == null
var position_offset = 0 #to make sure we know the center of the random sprite
var movespeed = 10
var reach = 30
var player_distance = 9999 #or the meat would instantly fly towards player

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#get a random meat sprite
	player_node = get_parent().get_node("Player")
	var random_index = randi_range(0, frames-1)
	region_rect.position.x = random_index * region_rect.size.x
	position_offset = Vector2(region_rect.position.x + 8, 8)
	
	print(position)
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if player_node:
		if(player_node.position.x != 1 && player_node.position.y != 1): #checking if meat should fly at player
			
			player_distance = player_node.position.distance_to(position)
			print(player_distance)
					
			if(abs(player_distance) < reach): #meat flying at player
				position = position.move_toward(player_node.position, movespeed*delta)
				movespeed += 5
			if(abs(player_distance) < 5): #meat obtained
				queue_free()
	pass
