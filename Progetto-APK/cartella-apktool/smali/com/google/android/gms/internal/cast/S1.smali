.class public final Lcom/google/android/gms/internal/cast/S1;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final I:Lcom/google/android/gms/internal/cast/L1;

.field public static final J:Lcom/google/android/gms/internal/cast/L1;


# instance fields
.field public final G:Ljava/util/concurrent/Callable;

.field public final synthetic H:Lcom/google/android/gms/internal/cast/T1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/cast/L1;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/cast/S1;->I:Lcom/google/android/gms/internal/cast/L1;

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/gms/internal/cast/L1;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/google/android/gms/internal/cast/S1;->J:Lcom/google/android/gms/internal/cast/L1;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/cast/T1;Ljava/util/concurrent/Callable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/S1;->H:Lcom/google/android/gms/internal/cast/T1;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/google/android/gms/internal/cast/S1;->G:Ljava/util/concurrent/Callable;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    goto/16 :goto_4

    .line 13
    .line 14
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/S1;->H:Lcom/google/android/gms/internal/cast/T1;

    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/google/android/gms/internal/cast/F1;->isDone()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    xor-int/lit8 v3, v3, 0x1

    .line 21
    .line 22
    sget-object v4, Lcom/google/android/gms/internal/cast/S1;->I:Lcom/google/android/gms/internal/cast/L1;

    .line 23
    .line 24
    if-eqz v3, :cond_6

    .line 25
    .line 26
    :try_start_0
    iget-object v5, p0, Lcom/google/android/gms/internal/cast/S1;->G:Ljava/util/concurrent/Callable;

    .line 27
    .line 28
    invoke-interface {v5}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    goto :goto_3

    .line 33
    :catchall_0
    move-exception v3

    .line 34
    :try_start_1
    instance-of v5, v3, Ljava/lang/InterruptedException;

    .line 35
    .line 36
    if-eqz v5, :cond_1

    .line 37
    .line 38
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_1
    move-exception v3

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    :goto_0
    invoke-virtual {p0, v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-nez v4, :cond_2

    .line 53
    .line 54
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/cast/S1;->c(Ljava/lang/Thread;)V

    .line 55
    .line 56
    .line 57
    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/cast/y1;

    .line 58
    .line 59
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/cast/y1;-><init>(Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    sget-object v3, Lcom/google/android/gms/internal/cast/F1;->L:Lcom/google/android/gms/internal/measurement/p2;

    .line 63
    .line 64
    invoke-virtual {v3, v2, v1, v0}, Lcom/google/android/gms/internal/measurement/p2;->w(Lcom/google/android/gms/internal/cast/F1;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    invoke-static {v2}, Lcom/google/android/gms/internal/cast/F1;->Q(Lcom/google/android/gms/internal/cast/F1;)V

    .line 71
    .line 72
    .line 73
    :cond_3
    return-void

    .line 74
    :goto_1
    invoke-virtual {p0, v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-eqz v4, :cond_4

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/cast/S1;->c(Ljava/lang/Thread;)V

    .line 82
    .line 83
    .line 84
    :goto_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    sget-object v0, Lcom/google/android/gms/internal/cast/F1;->M:Ljava/lang/Object;

    .line 88
    .line 89
    sget-object v4, Lcom/google/android/gms/internal/cast/F1;->L:Lcom/google/android/gms/internal/measurement/p2;

    .line 90
    .line 91
    invoke-virtual {v4, v2, v1, v0}, Lcom/google/android/gms/internal/measurement/p2;->w(Lcom/google/android/gms/internal/cast/F1;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-eqz v0, :cond_5

    .line 96
    .line 97
    invoke-static {v2}, Lcom/google/android/gms/internal/cast/F1;->Q(Lcom/google/android/gms/internal/cast/F1;)V

    .line 98
    .line 99
    .line 100
    :cond_5
    throw v3

    .line 101
    :cond_6
    move-object v5, v1

    .line 102
    :goto_3
    invoke-virtual {p0, v0, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    if-nez v4, :cond_7

    .line 107
    .line 108
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/cast/S1;->c(Ljava/lang/Thread;)V

    .line 109
    .line 110
    .line 111
    :cond_7
    if-eqz v3, :cond_9

    .line 112
    .line 113
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 114
    .line 115
    .line 116
    if-nez v5, :cond_8

    .line 117
    .line 118
    sget-object v5, Lcom/google/android/gms/internal/cast/F1;->M:Ljava/lang/Object;

    .line 119
    .line 120
    :cond_8
    sget-object v0, Lcom/google/android/gms/internal/cast/F1;->L:Lcom/google/android/gms/internal/measurement/p2;

    .line 121
    .line 122
    invoke-virtual {v0, v2, v1, v5}, Lcom/google/android/gms/internal/measurement/p2;->w(Lcom/google/android/gms/internal/cast/F1;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_9

    .line 127
    .line 128
    invoke-static {v2}, Lcom/google/android/gms/internal/cast/F1;->Q(Lcom/google/android/gms/internal/cast/F1;)V

    .line 129
    .line 130
    .line 131
    :cond_9
    :goto_4
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Runnable;

    .line 6
    .line 7
    sget-object v1, Lcom/google/android/gms/internal/cast/S1;->I:Lcom/google/android/gms/internal/cast/L1;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const-string v0, "running=[DONE]"

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    instance-of v1, v0, Lcom/google/android/gms/internal/cast/K1;

    .line 15
    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    const-string v0, "running=[INTERRUPTED]"

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    instance-of v1, v0, Ljava/lang/Thread;

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    check-cast v0, Ljava/lang/Thread;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "running=[RUNNING ON "

    .line 32
    .line 33
    const-string v2, "]"

    .line 34
    .line 35
    invoke-static {v1, v0, v2}, La/r;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const-string v0, "running=[NOT STARTED YET]"

    .line 41
    .line 42
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/S1;->G:Ljava/util/concurrent/Callable;

    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-string v2, ", "

    .line 49
    .line 50
    invoke-static {v0, v2, v1}, Lcom/google/protobuf/U2;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    return-object v0
.end method

.method public final c(Ljava/lang/Thread;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Runnable;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    :goto_0
    instance-of v5, v0, Lcom/google/android/gms/internal/cast/K1;

    .line 12
    .line 13
    sget-object v6, Lcom/google/android/gms/internal/cast/S1;->J:Lcom/google/android/gms/internal/cast/L1;

    .line 14
    .line 15
    if-nez v5, :cond_2

    .line 16
    .line 17
    if-ne v0, v6, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    if-eqz v3, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void

    .line 26
    :cond_2
    move-object v1, v0

    .line 27
    check-cast v1, Lcom/google/android/gms/internal/cast/K1;

    .line 28
    .line 29
    :goto_1
    const/4 v5, 0x1

    .line 30
    add-int/2addr v4, v5

    .line 31
    const/16 v7, 0x3e8

    .line 32
    .line 33
    if-le v4, v7, :cond_6

    .line 34
    .line 35
    if-eq v0, v6, :cond_3

    .line 36
    .line 37
    invoke-virtual {p0, v0, v6}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_7

    .line 42
    .line 43
    :cond_3
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_4

    .line 48
    .line 49
    if-eqz v3, :cond_5

    .line 50
    .line 51
    :cond_4
    const/4 v3, 0x1

    .line 52
    goto :goto_2

    .line 53
    :cond_5
    const/4 v3, 0x0

    .line 54
    :goto_2
    invoke-static {v1}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_6
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 59
    .line 60
    .line 61
    :cond_7
    :goto_3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Ljava/lang/Runnable;

    .line 66
    .line 67
    goto :goto_0
.end method

.method public final bridge synthetic run()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/S1;->a()V

    return-void
.end method

.method public final bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/cast/S1;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
