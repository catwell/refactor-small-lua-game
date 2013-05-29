local START_MSG = [[
Directions: Type 'north, south, east, or west' in order to get to the finish.
If 'invalid move' is printed, try a different direction
When a checkpoint is reached, if you get an invalid move from there it will take you back to that level
There are 8 rooms in total... Good luck!!!
(Hint: Do not use capital letters)]]

rooms = {}

room = function(name, checkpoint, moves)
  return function()
    print(name)
    local move = io.read()
    if moves[move] then
      return rooms[moves[move]]()
    else
      print("invalid move")
      return rooms[checkpoint]()
    end
  end
end

function start()
  print(START_MSG)
  return rooms[1]()
end

rooms[0] = start
rooms[1] = room("Room 1", 0, {south = 3, east = 2})
rooms[2] = room("Room 2", 1, {north = 4, west = 3})
rooms[3] = room("Room 3", 1, {north = 2, east = 4})
rooms[4] = room("Room 4", 1, {east = 3, west = 5})
rooms[5] = room("Room 5, Checkpoint", 5, {east = 6, south = 7})
rooms[6] = room("Room 6", 5, {south = 8, east = 7})
rooms[7] = room("Room 7", 5, {north = 6, west = 8})

rooms[8] = function()
  print("Room 8")
  print("Congratulations! You made it to the last room!!")
end

start()
