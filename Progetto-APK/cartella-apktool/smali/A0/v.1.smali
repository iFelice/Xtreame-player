.class public final LA0/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/q0;


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z

.field public final d:Z


# direct methods
.method public constructor <init>(ZZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, LA0/v;->a:Z

    .line 5
    .line 6
    iput-boolean p2, p0, LA0/v;->b:Z

    .line 7
    .line 8
    iput-boolean p3, p0, LA0/v;->c:Z

    .line 9
    .line 10
    iput-boolean p4, p0, LA0/v;->d:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lm0/k;Lm0/i;ZLf6/c;)Lm0/s0;
    .locals 11

    .line 1
    sget-object v0, Lp0/M;->a:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v0, Lp0/L;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "Effect:DefaultVideoFrameProcessor:GlThread"

    .line 7
    .line 8
    invoke-direct {v0, v2, v1}, Lp0/L;-><init>(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v7, LA0/h0;

    .line 16
    .line 17
    new-instance v1, LA0/n;

    .line 18
    .line 19
    const/4 v2, 0x2

    .line 20
    move-object/from16 v8, p5

    .line 21
    .line 22
    invoke-direct {v1, v8, v2}, LA0/n;-><init>(Lm0/r0;I)V

    .line 23
    .line 24
    .line 25
    invoke-direct {v7, v0, v1}, LA0/h0;-><init>(Ljava/util/concurrent/ExecutorService;LA0/n;)V

    .line 26
    .line 27
    .line 28
    new-instance v9, LF/i;

    .line 29
    .line 30
    invoke-direct {v9, v2}, LF/i;-><init>(I)V

    .line 31
    .line 32
    .line 33
    new-instance v10, LA0/u;

    .line 34
    .line 35
    move-object v1, v10

    .line 36
    move-object v2, p0

    .line 37
    move-object v3, p1

    .line 38
    move-object v4, p2

    .line 39
    move-object v5, p3

    .line 40
    move v6, p4

    .line 41
    move-object/from16 v8, p5

    .line 42
    .line 43
    invoke-direct/range {v1 .. v9}, LA0/u;-><init>(LA0/v;Landroid/content/Context;Lm0/k;Lm0/i;ZLA0/h0;Lf6/c;LF/i;)V

    .line 44
    .line 45
    .line 46
    invoke-interface {v0, v10}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, LA0/x;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    return-object v0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    goto :goto_0

    .line 59
    :catch_1
    move-exception v0

    .line 60
    goto :goto_1

    .line 61
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 66
    .line 67
    .line 68
    new-instance v1, Lm0/o0;

    .line 69
    .line 70
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 71
    .line 72
    .line 73
    throw v1

    .line 74
    :goto_1
    new-instance v1, Lm0/o0;

    .line 75
    .line 76
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 77
    .line 78
    .line 79
    throw v1
.end method
