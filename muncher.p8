pico-8 cartridge // http://www.pico-8.com
version 42
__lua__
board_width=107
board_height=102

muncher_x=17
muncher_y=20
move_right=0

function _update()
	if btn(➡️) and move_right==0 then move_right=18 end
	if move_right>0 then
		muncher_x+=1
		move_right-=1
	end
end

function _draw()
	cls(1)
	spr(1,muncher_x,muncher_y)
	
	x1=(127-board_width)/2
	y1=(127-board_height)/2
	x2=(127+board_width)/2
	y2=(127+board_height)/2


	rect(x1,y1,x2,y2,14)
	rect(x1+2,y1+2,x2-2,y2-2,14)
	
	dy=(board_height-4) / 5
	for i=1,5 do
		local y=y1+2+(dy*i)
		line(x1+2,y,x2-2,y,14)
	end

	dx=(board_width-4) / 6
	for i=1,6 do
		local x=x1+3+(dx*i)
		line(x,y1+2,x,y2-2,14)
	end

	
	--rect(12,17,115,115,14)
	
	--line(12,30,115,30,14)
	--line(12,50,115,50,14)
	--line(12,70,115,70,14)
	--line(12,90,115,90,14)
	
	print("level: 1",2,4,7)
	
	line(40,2,94,2,7)
	print("multiples of 2",40,4,7)
	line(40,10,94,10,7)
end
__gfx__
00000000000707000007070000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000bb7070b0bb7070b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700b0bbbbb0b0b7b7b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000b000000bb000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000bbbbbbbbb000000b00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000b0b00bbbbbbbb00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000b0b00000b0b0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000bbbb0bbbbbbb0bbb00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
