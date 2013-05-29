function room1()
print("Directions: Type 'north, south, east, or west' in order to get to the finish.")
print("If 'invalid move' is printed, try a different direction")
print("When a checkpoint is reached, if you get an invalid move from there it will take you back to that level")
print("There are 8 rooms in total... Good luck!!!")
print("(Hint: Do not use capital letters)")
print("Room 1")
	local move = io.read()
	if move == "south" then return room3()
	elseif move == "east" then return room2()
	else print("invalid move")
		return room1()
	end
end

function roomreal1()
print("Room 1")
        local move = io.read()
        if move == "south" then return room3()
        elseif move == "east" then return room2()
        else print("invalid move")
                return room1()
        end
end

function room2()
print("Room 2")
	local move = io.read()
	if move == "north" then return room4()
	elseif move == "west" then return room3()
	else print("invalid move")
		return roomreal1()
	end
end

function room3()
print("Room 3")
	local move = io.read()
	if move == "north" then return room2()
	elseif move == "east" then return room4()
	else print("invalid move")
		return roomreal1()
	end
end

function room4()
print("Room 4,")
        local move = io.read()
        if move == "east" then return room3()
        elseif move == "west" then return room5()
        else print("invalid move")
                return roomreal1()
        end
end

function room5()
print("Room 5, Checkpoint")
        local move = io.read()
        if move == "east" then return room6()
        elseif move == "south" then return room7()
        else print("invalid move")
                return room5()
        end
end

function room6()
print("Room 6")
        local move = io.read()
        if move == "south" then return room8()
        elseif move == "east" then return room7()
        else print("invalid move")
                return room5()
        end
end

function room7()
print("Room 7")
        local move = io.read()
        if move == "north" then return room6()
        elseif move == "west" then return room8()
        else print("invalid move")
                return room5()
        end
end

function room8()
	print("Room 8")
	print("Congratulations! You made it to the last room!!")
end

lua = room1()
