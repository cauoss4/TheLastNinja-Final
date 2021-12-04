extends Node

var time_count = 0
var death_count: int = 0
var started_at : int=OS.get_unix_time()
var rightnow_at : int=OS.get_unix_time()



func _ready():
	death_count= 0
	started_at =OS.get_unix_time()
	
func reload_world():
	death_count += 1
