;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex-073-updater) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp") (lib "universe.rkt" "teachpack" "2htdp")) #f)))
; Posn Number -> Posn
; produces a Posn given a Posn and a Number with the x field replaced by n
(check-expect (posn-up-x (make-posn 10 20) 30)
              (make-posn 30 20))

(define (posn-up-x p n)
  (make-posn n (posn-y p)))