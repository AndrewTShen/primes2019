#lang rosette/safe

(require
  serval/lib/unittest
  serval/lib/core
  serval/riscv/base
  serval/riscv/interp
  serval/riscv/objdump
  (only-in racket/base struct-copy for)
  ; "generated/monitors/kernel/verif/asm-offsets.rkt"
  (prefix-in kernel:
    (combine-in
      "kernel.asm.rkt"
      "kernel.globals.rkt"
      "kernel.map.rkt")))

; (provide forall/cpu cpu-ecall find-block-by-name cpu-mregions
;          mblock-iload __NR_get_and_set)

; (define (forall/cpu k)
;   (define cpu (init-cpu kernel:symbols kernel:globals))
;   (gpr-set! cpu 'a0 (bv 1 (XLEN)))

;   (interpret-objdump-program cpu kernel:instructions)
;   (k cpu))

; (define (cpu-ecall c callno args)
;   (define c2 (struct-copy cpu c))
;   (set-cpu-pc! c2 (csr-ref c2 'mtvec))
;   (csr-set! c2 'mcause (bv EXC_ECALL_S 64))
;   (gpr-set! c2 'a7 callno)
;   (for ([reg '(a0 a1 a2 a3 a4 a5 a6)] [arg args])
;     (gpr-set! c2 reg arg))
;   (interpret-objdump-program c2 kernel:instructions)
;   c2)

; (define (sanity-check)
;   (define cpu (init-cpu kernel:symbols kernel:globals))
;   ; (display cpu)
;   (gpr-set! cpu 'a0 (bv 1 (XLEN)))

;   (define asserted (with-asserts-only (interpret-objdump-program cpu kernel:instructions)))
;   (check-unsat? (verify (assert (apply && asserted))))

;   (void))

(module+ test
  ; (sanity-check)
  (displayln "Testing!"))