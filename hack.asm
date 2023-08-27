TRUE_ENDING = 4
TILE_SPACE  = $83e5

    org 0
    incbin "truxton.md"

    ; show true ending, no matter which round
    org $884a
            move.w      #TRUE_ENDING, d0
            nop

    ; show game over screen and soft reboot after end credits
    org $19ba
            bra         $19da

    ; don't draw ROUND(_)
    org $814c
            dw      TILE_SPACE ; R
            dw      TILE_SPACE ; O
            dw      TILE_SPACE ; U
            dw      TILE_SPACE ; N
            dw      TILE_SPACE ; D
            dw      TILE_SPACE ; (
            dw      TILE_SPACE ; _
            dw      TILE_SPACE ; )

    ; don't draw current round
    org $3004
            nop
            nop
            nop
