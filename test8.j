.class public test8
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
   
   ; push string to be printed
   ldc "Hello World!"
   astore 0 ; astore for strings
   ldc 42
   istore 1 ; istore for ints

   ; push java.lang.System.out (type PrintStream)
   ; getstatic modifies the stack. Be aware.
   getstatic java/lang/System/out Ljava/io/PrintStream; 
   
   aload 0 ; 0 top of stack

   ; invoke println
   invokevirtual java/io/PrintStream/println(Ljava/lang/String;)V ; string print

   ; push java.lang.System.out (type PrintStream)
   getstatic modifies the stack. Be aware.
   getstatic java/lang/System/out Ljava/io/PrintStream;
   
   iload 1 ; 1 bottom of stack but at top after print

   ; invoke println
   invokevirtual java/io/PrintStream/println(I)V ; int print



   
   ; terminate main
   return

.end method