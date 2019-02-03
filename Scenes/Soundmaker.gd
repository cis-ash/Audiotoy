extends Control
var volume = 0.0
var pitch = 0.0
var selected_sample = 1
var samples = ["Samples/Drone 1","Samples/Drone 2","Samples/Drone 3","Samples/Drone 4","Samples/Drone 5","Samples/Drone 6"]
# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	selected_sample = $"Container/Panel/Sample selector".selected
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_Trigger_pressed(): 	
	var node = get_node(samples[selected_sample])
	node.play()
	node.volume_db = volume
	node.pitch_scale = pitch
	pass # replace with function body


func playsample(index):
	match index:
		0:
			$Samples/Blender.play()
			$Samples/Blender.volume_db = volume
			$Samples/Blender.pitch_scale = pitch
		1:
			$Samples/Godot.play()
			$Samples/Godot.volume_db = volume
			$Samples/Godot.pitch_scale = pitch
		2:
			$Samples/Merge.play()
			$Samples/Merge.volume_db = volume
			$Samples/Merge.pitch_scale = pitch
		3:
			$Samples/Picture.play()
			$Samples/Picture.volume_db = volume
			$Samples/Picture.pitch_scale = pitch
		_:
			print("cant do that")
		

func _on_Sample_selector_item_selected(ID):
	selected_sample = ID
	pass # replace with function body

func _on_Volume_value_changed(value):
	volume = value
	pass # replace with function body

func _on_Pitch_value_changed(value):
	pitch = value
	pass # replace with function body
