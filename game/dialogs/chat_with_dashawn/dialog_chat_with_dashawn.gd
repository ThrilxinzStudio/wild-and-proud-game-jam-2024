@tool
extends PopochiuDialog


#region Virtual ####################################################################################
func _on_start() -> void:
	# One can put here something to excecute before showing the dialog options.
	# E.g. Make the PC to look at the character which it will talk to, walk to
	# it, and say something (or make the character say something):
#	await C.player.face_clicked()
#	await C.player.say("Hi")
#	await C.Popsy.say("Oh! Hi...")
	# (!) It MUST always use an await
	await E.get_tree().process_frame


func _option_selected(opt: PopochiuDialogOption) -> void:
	# You can make the player character say the selected option with:
#	await D.say_selected()
	
	# Use match to check which option was selected and excecute something for
	# each one
	match opt.id:
		"Greet":
			await D.say_selected()
			await C.Dashawn.say("[laughs] Lost? In this tiny town? Not a chance. Sorry for the delay. Traffic, believe it or not. But I got everything we need.")
			await C.Player.say("No worries. Just glad you’re here. And with tools! I don’t know the first thing about building a foundation.")
			await C.Dashawn.say("Well, lucky for you, I do. [starts unpacking the tools] We’ll get this done in no time. Besides, the first steps are always the hardest, right?")
			await C.Player.say("Yeah… definitely. Everything feels so new and uncertain.")
			await C.Dashawn.say("I remember that feeling. When I first got here, everything was so… unfamiliar. But you get used to it. The town grows on you.")
			turn_off_options(["Greet"])
			turn_on_options(["Ask"])
		"Ask":
			await D.say_selected()
			await C.Dashawn.say("It was a bit overwhelming at first. I missed the city noise, the hustle. But I found my rhythm here... ")
			await E.wait(0.5)
			await C.Dashawn.say("...It’s quieter, sure, but there’s a kind of peace in it. And you’ll find your place too. It just takes time.")
			await C.Player.say("I hope so. Sometimes it feels like I’m starting from scratch. ")
			await E.wait(0.5)
			await C.Player.say(" But… at least I have you. That first conversation we had, it meant a lot to me. More than you know.")
			await C.Dashawn.say("I felt the same way. It’s funny how sharing a pair of earphones and a few words about the weather can connect two people.")
			await E.wait(0.5)
			await C.Dashawn.say("You’re not alone in this. We’re building more than just a house here. We’re building your new life, your new beginnings.")
			await C.Player.say(" Thanks, Dashawn. Really. For everything. I couldn’t do this without you.")
			await C.Dashawn.say("Hey, you’ve got this. And I’ll be here every step of the way.")
			await E.wait(0.5)
			await C.Dashawn.say("Now, let’s start with laying these foundation blocks. One step at a time, we’ll make this place your new home.")
			turn_off_options(["Ask"])
			turn_on_options(["Name"])
		"Name":
			await D.say_selected()
			await C.Dashawn.say(" You’re right. Every home deserves a good name. How about “Haven’s Heart”? It’s got a nice ring to it.")
			await C.Player.say("I like that. But let’s keep brainstorming. We’ve got plenty of time to find the perfect name.")
			await C.Dashawn.say(" Sounds like a plan. Now, back to work! We’ve got a foundation to build.")
			stop()
		_:
			# By default close the dialog. Options won't show after calling
			# stop()
			stop()
	# await C.Player.say("")
	_show_options()


# Use this to save custom data for this PopochiuDialog when saving the game.
# The Dictionary must contain only JSON supported types: bool, int, float, String.
func _on_save() -> Dictionary:
	return {}


# Called when the game is loaded.
# This Dictionary should has the same structure you defined for the returned one in _on_save().
func _on_load(data: Dictionary) -> void:
	prints(data)


#endregion
