extends Sprite

var lastPosition

# Called when the node enters the scene tree for the first time.
func _ready():
	lastPosition = get_parent().position
	
func _physics_process(delta):
	animate()

func animate():
#	lastPosition es la ultima posicion en la que ha estado el jugador
#	position es la posicion actual, por lo que sera distinta de lastPosition si se mueve
#	cuando lastPosition y position son distintas, la animacion se ejecuta
	if(lastPosition != get_parent().position):
		get_parent().get_node("AnimationPlayer").play("walking")
	else:
		get_parent().get_node("AnimationPlayer").play("idle")
	lastPosition = get_parent().position
