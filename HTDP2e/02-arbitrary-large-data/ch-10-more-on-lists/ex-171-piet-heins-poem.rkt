;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ex-171-piet-heins-poem) (read-case-sensitive #t) (teachpacks ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp") (lib "batch-io.rkt" "teachpack" "2htdp")) #f)))
(read-file "ttt.txt")

; A List-of-string is one of:
; - '()
; - (cons String List-of-string)
; 

; String -> String
; produces the content of file f as a string 
(define (read-file f) ...)
 
; String -> List-of-string
; produces the content of file f as a list of strings, 
; one per line
(define (read-lines f) ...)
 
; String -> List-of-string
; produces the content of file f as a list of strings, 
; one per word
(define (read-words f) ...)
 
; String -> List-of-list-of-string
; produces the content of file f as a list of list of
; strings, one list per line and one string per word 
(define (read-words/line f) ...)
 
; The above functions consume the name of a file as a String
; argument. If the specified file does not exist in the 
; same folder as the program, they signal an error.


