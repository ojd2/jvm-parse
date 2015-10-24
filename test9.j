.class public test9
.super java/lang/Object

; standard initializer
; default constructor

.method public <init>()V
   aload_0
   invokespecial java/lang/Object/<init>()V
   return
.end method

.method public static main([Ljava/lang/String;)V

   ; allocate stack big enough to hold 2 items
   .limit stack 3
   .limit locals 2   

   ; push java.lang.System.out (type PrintStream)
   ; getstatic modifies the stack. Be aware.
   getstatic java/lang/System/out Ljava/io/PrintStream; 
   ; push string to be printed
   ldc "Hello World!"

   ; invoke println
   invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V ; string print

   ; push java.lang.System.out (type PrintStream)
   getstatic java/lang/System/out Ljava/io/PrintStream;
   ; push int to be printed
   ; 0 = false, 1 = true
   ldc 1
   ; invoke println
   invokevirtual java/io/PrintStream/println(Z)V ; bool print (Z)

   ; terminate main
   return

.end method