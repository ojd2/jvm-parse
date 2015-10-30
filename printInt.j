.class public printInt
.super java/lang/Object

; standard initializer
; default constructor

.method public <init>()V
   aload_0 ; push this
   invokespecial java/lang/Object/<init>()V ; call super
   return
.end method

.method public static main([Ljava/lang/String;)V

   ; allocate stack big enough to hold 1 items
   .limit stack 2
   .limit locals 2
  
   ; push java.lang.System.out (type PrintStream)
   getstatic java/lang/System/out Ljava/io/PrintStream;
   ; push int to be printed
   ldc 42
   ; invoke println
   invokevirtual java/io/PrintStream/println(I)V ; int print
   ; terminate main
   return

.end method