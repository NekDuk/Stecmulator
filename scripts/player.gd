extends RigidBody2D

@onready var pos = $Position

var speed = 10
var velocity = Vector2()
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	velocity.x = Input.get_axis("left", "right")
	velocity.y = Input.get_axis("up", "down")
	
	pos.text = "X: " + str(position.x) + "\n Y: " + str(position.y)
	
func _physics_process(delta):
	move_and_collide(velocity * speed)
	
