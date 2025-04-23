; ModuleID = "module"
target triple = "unknown-unknown-unknown"
target datalayout = ""

declare i32 @"printf"(i8* %".1", ...)

define i32 @"main"()
{
entry:
  %".2" = bitcast [14 x i8]* @".str.1" to i8*
  %".3" = call i32 (i8*, ...) @"printf"(i8* %".2")
  %".4" = bitcast [2 x i8]* @".str.2" to i8*
  %".5" = call i32 (i8*, ...) @"printf"(i8* %".4")
  %"i" = alloca i32
  store i32 4, i32* %"i"
  %"i.1" = load i32, i32* %"i"
  %".7" = bitcast [3 x i8]* @".str.3" to i8*
  %".8" = call i32 (i8*, ...) @"printf"(i8* %".7", i32 %"i.1")
  %".9" = bitcast [2 x i8]* @".str.4" to i8*
  %".10" = call i32 (i8*, ...) @"printf"(i8* %".9")
  ret i32 0
}

@".str.1" = internal constant [14 x i8] c"Hello, World!\00", align 1
@".str.2" = internal constant [2 x i8] c"\0a\00", align 1
@".str.3" = internal constant [3 x i8] c"%d\00", align 1
@".str.4" = internal constant [2 x i8] c"\0a\00", align 1