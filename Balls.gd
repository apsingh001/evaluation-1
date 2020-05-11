extends RigidBody2D


func _ready():
	set_physics_process(true)
	
func _physics_process(_delta):
	var bodies=get_colliding_bodies()
	
	for body in bodies:
		if body.is_in_group("Dbricks"):
			get_node("/root/World").score +=5
			body.queue_free()
			if(get_node("/root/World").score==40):
				get_node("/root/World").result+="You Won"
		
		
	if get_position().y>get_viewport_rect().end.y :
		queue_free()
