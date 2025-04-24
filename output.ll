; ModuleID = "module"
target triple = "unknown-unknown-unknown"
target datalayout = ""

declare i32 @"printf"(i8* %".1", ...)

define i32 @"main"()
{
entry:
  %".2" = bitcast [128 x i8]* @".str.1" to i8*
  %".3" = call i32 (i8*, ...) @"printf"(i8* %".2")
  %".4" = bitcast [2 x i8]* @".str.2" to i8*
  %".5" = call i32 (i8*, ...) @"printf"(i8* %".4")
  %".6" = bitcast [18 x i8]* @".str.3" to i8*
  %".7" = call i32 (i8*, ...) @"printf"(i8* %".6")
  %".8" = bitcast [2 x i8]* @".str.4" to i8*
  %".9" = call i32 (i8*, ...) @"printf"(i8* %".8")
  %"i" = alloca i32
  store i32 0, i32* %"i"
  %"i.1" = load i32, i32* %"i"
  %".11" = bitcast [3 x i8]* @".str.5" to i8*
  %".12" = call i32 (i8*, ...) @"printf"(i8* %".11", i32 %"i.1")
  %".13" = bitcast [2 x i8]* @".str.6" to i8*
  %".14" = call i32 (i8*, ...) @"printf"(i8* %".13")
  ret i32 0
}

@".str.1" = internal constant [128 x i8] c"A fools' thought, stemming from the beginning and bit shifting down to dark. This was his tale, a tale as short as time itself.\00", align 1
@".str.2" = internal constant [2 x i8] c"\0a\00", align 1
@".str.3" = internal constant [18 x i8] c"Food for thought.\00", align 1
@".str.4" = internal constant [2 x i8] c"\0a\00", align 1
@".str.5" = internal constant [3 x i8] c"%d\00", align 1
@".str.6" = internal constant [2 x i8] c"\0a\00", align 1