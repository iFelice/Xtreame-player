.class public final Lp6/f;
.super Lg6/d;
.source "SourceFile"


# static fields
.field public static final b:Lp6/i;

.field public static final c:Lp6/i;

.field public static final d:Ljava/util/concurrent/TimeUnit;

.field public static final e:Lp6/d;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    sput-object v0, Lp6/f;->d:Ljava/util/concurrent/TimeUnit;

    .line 4
    .line 5
    new-instance v0, Lp6/e;

    .line 6
    .line 7
    new-instance v1, Lp6/i;

    .line 8
    .line 9
    const-string v2, "RxCachedThreadSchedulerShutdown"

    .line 10
    .line 11
    invoke-direct {v1, v2}, Lp6/i;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Lp6/e;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Lp6/h;->a()V

    .line 18
    .line 19
    .line 20
    const-string v0, "rx2.io-priority"

    .line 21
    .line 22
    const/4 v1, 0x5

    .line 23
    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/16 v1, 0xa

    .line 32
    .line 33
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const/4 v1, 0x1

    .line 38
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    new-instance v2, Lp6/i;

    .line 43
    .line 44
    const-string v3, "RxCachedThreadScheduler"

    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    invoke-direct {v2, v0, v3, v4}, Lp6/i;-><init>(ILjava/lang/String;Z)V

    .line 48
    .line 49
    .line 50
    sput-object v2, Lp6/f;->b:Lp6/i;

    .line 51
    .line 52
    new-instance v3, Lp6/i;

    .line 53
    .line 54
    const-string v5, "RxCachedWorkerPoolEvictor"

    .line 55
    .line 56
    invoke-direct {v3, v0, v5, v4}, Lp6/i;-><init>(ILjava/lang/String;Z)V

    .line 57
    .line 58
    .line 59
    sput-object v3, Lp6/f;->c:Lp6/i;

    .line 60
    .line 61
    new-instance v0, Lp6/d;

    .line 62
    .line 63
    const-wide/16 v3, 0x0

    .line 64
    .line 65
    const/4 v5, 0x0

    .line 66
    invoke-direct {v0, v3, v4, v5, v2}, Lp6/d;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lp6/f;->e:Lp6/d;

    .line 70
    .line 71
    iget-object v2, v0, Lp6/d;->H:Li6/a;

    .line 72
    .line 73
    invoke-virtual {v2}, Li6/a;->a()V

    .line 74
    .line 75
    .line 76
    iget-object v2, v0, Lp6/d;->J:Ljava/util/concurrent/ScheduledFuture;

    .line 77
    .line 78
    if-eqz v2, :cond_0

    .line 79
    .line 80
    invoke-interface {v2, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 81
    .line 82
    .line 83
    :cond_0
    iget-object v0, v0, Lp6/d;->I:Ljava/util/concurrent/ScheduledExecutorService;

    .line 84
    .line 85
    if-eqz v0, :cond_1

    .line 86
    .line 87
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 88
    .line 89
    .line 90
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    .line 6
    sget-object v1, Lp6/f;->e:Lp6/d;

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lp6/f;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 12
    .line 13
    new-instance v0, Lp6/d;

    .line 14
    .line 15
    sget-object v2, Lp6/f;->d:Ljava/util/concurrent/TimeUnit;

    .line 16
    .line 17
    const-wide/16 v3, 0x3c

    .line 18
    .line 19
    sget-object v5, Lp6/f;->b:Lp6/i;

    .line 20
    .line 21
    invoke-direct {v0, v3, v4, v2, v5}, Lp6/d;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v2, p0, Lp6/f;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 25
    .line 26
    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    if-eq v2, v1, :cond_0

    .line 38
    .line 39
    iget-object v1, v0, Lp6/d;->H:Li6/a;

    .line 40
    .line 41
    invoke-virtual {v1}, Li6/a;->a()V

    .line 42
    .line 43
    .line 44
    iget-object v1, v0, Lp6/d;->J:Ljava/util/concurrent/ScheduledFuture;

    .line 45
    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    const/4 v2, 0x1

    .line 49
    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 50
    .line 51
    .line 52
    :cond_2
    iget-object v0, v0, Lp6/d;->I:Ljava/util/concurrent/ScheduledExecutorService;

    .line 53
    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 57
    .line 58
    .line 59
    :cond_3
    :goto_0
    return-void
.end method
