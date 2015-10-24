.class public test7
.super java/lang/Object

; standard initializer
; default constructor

.method public <init>()V
   aload_0 ; push this
   invokespecial java/lang/Object/<init>()V ; call super
   return
.end method

.method public static main([Ljava/lang/String;)V

   ; allocate stack big enough to hold 3 items
   .limit stack 3 
   .limit locals 2 ; should be fine with 2
  
   ; push java.lang.System.out (type PrintStream)
   getstatic java/lang/System/out Ljava/io/PrintStream;
   ; push ints to be printed   
   
   ldc 100 ; load int
   ldc 35 ; load int
   idiv ; divide int
   istore_0 ; store result in variable
   iload 0 ; load variable, push to top of stack
   ; invoke println
   invokevirtual java/io/PrintStream/println(I)V ; int print result
   ; terminate main
   return

.end method