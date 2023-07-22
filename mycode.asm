; 7616_HishamAHmed_TrafficLights

#start=Traffic_Lights.exe#

name "traffic"


mov ax, all_red
out 4, ax


looop:
mov si, offset situationr
mov ax, [si]
out 4, ax
          
; redLight:          
; wait 180 seconds || 3 minutes (180 million microseconds) 
; I measured the time using stopwatch it ends everytime at 1 min and 6 sec.s so I commented it and divided them to 3-oneMin code
; as a recommendation from the Eng assistant and done the same in the green light
;mov     cx, 0ABAh    ;  ABA,9500=180,000,000
;mov     dx, 9500h
;mov     ah, 86h
;int     15h

;redLight again :) :
mov     cx, 393h    
mov     dx, 8700h
mov     ah, 86h
int     15h   

mov     cx, 393h    
mov     dx, 8700h
mov     ah, 86h
int     15h

mov     cx, 393h    
mov     dx, 8700h
mov     ah, 86h
int     15h

;the 3Minutes are done here


mov si, offset situationy
mov ax, [si]   
out 4, ax
; yellowLight:
;wait 60 seconds || 1 minute (60 million microseconds)
mov     cx, 393h    ;  393,8700=60,000,000
mov     dx, 8700h
mov     ah, 86h
int     15h


mov si, offset situationg
mov ax, [si]
out 4, ax
; greenLight:
;wait 180 seconds ||3 minutes <180 million microseconds>
;mov     cx, 0ABAh    ;  ABA,9500=180,000,000
;mov     dx, 9500h
;mov     ah, 86h
;int     15h

;greenLight again :) :
mov     cx, 393h    
mov     dx, 8700h
mov     ah, 86h
int     15h

mov     cx, 393h    
mov     dx, 8700h
mov     ah, 86h
int     15h

mov     cx, 393h    
mov     dx, 8700h
mov     ah, 86h
int     15h

;the 3Minutes are done here

add si, 2 ; next situation
cmp si, sit_end
jb  looop
mov si, offset situationr
jmp looop



situationr       dw      0000_0011_0000_1100b  
situationy       dw      0000_0100_1001_0010b
situationg       dw      0000_1000_0110_0001b

sit_end = $


all_red          equ     0000_0010_0100_1001b

