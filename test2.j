.class public test2
.super java/lang/Object

; standard initializer
; default constructor

.method public <init>()V
   aload_0
   invokespecial java/lang/Object/<init>()V
   return
.end method

.method public static main([Ljava/lang/String;)V

   ; allocate stack big enough to hold 1 item
   .limit stack 2
   .limit locals 1
  
   ; push java.lang.System.out (type PrintStream)
   getstatic java/lang/System/out Ljava/io/PrintStream;
   ; push string to be printed
   ldc "Hello World!"
   ; invoke println
   invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V ; string print
   ; terminate main
   return

.end method