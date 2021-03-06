;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname ex-206-find-association) (read-case-sensitive #t) (teachpacks ((lib "batch-io.rkt" "teachpack" "2htdp") (lib "itunes.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "batch-io.rkt" "teachpack" "2htdp") (lib "itunes.rkt" "teachpack" "2htdp")) #f)))
; the 2htdp/itunes library documentation, part 2: 
; modify the following to use your chosen name
(define ITUNES-LOCATION "itunes.xml") 

; An LLists is one of:
; – '()
; – (cons LAssoc LLists)
 

; An LAssoc is one of: 
; – '()
; – (cons Association LAssoc)

; An Association is a list of two items: 
;   (cons String (cons BSDN '()))

; A BSDN is one of: 
; – Boolean
; – Number
; – String
; – Date

(define B0 #f)
(define B1 #t)
(define B2 22)
(define B3 "GBV")
(define B4 (create-date 2018 11 28 20 35 40))

(define A1 (cons B3 (cons B4 '())))
(define A2 (cons "Adverse Wind" (cons #t '())))

(define LA0 '())
(define LA1 (cons A1 '()))
(define LA2 (cons A2 (cons A1 '())))

(define LL0 '())
(define LL1 (cons LA1 '()))
(define LL2 (cons LA1 (cons LA2 '())))

; Functions:

; String -> LLists
; creates a list of lists representation for all tracks in 
; file-name, which must be an XML export from iTunes 


; LLists
;(define list-tracks
;  (read-itunes-as-lists ITUNES-LOCATION))

; find-association: String LAssoc Any -> Association
; producses the first item either is equal to key or default
(check-expect (find-association "GBV" '() "nothing") "nothing")
(check-expect (find-association "GBH" LA2 "nothing") "nothing")
(check-expect (find-association "GBV" LA2 "nothing") A1)
(check-expect (find-association "Adverse Wind" LA2 "nothing") A2)


(define (find-association key lassoc default)
  (cond [(empty? lassoc) default]
        [else
         (if (string=? (first (first lassoc)) key)
             (cons key (rest (first lassoc)))
             (find-association key(rest lassoc) default))]))


