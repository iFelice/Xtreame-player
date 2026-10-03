.class public final Lk7/b;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field public static K:I


# instance fields
.field public G:Ljava/lang/String;

.field public H:Z

.field public I:D

.field public J:J


# virtual methods
.method public final a()D
    .locals 8

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    new-instance v2, Ljava/math/BigDecimal;

    .line 4
    .line 5
    sget v3, Lk7/b;->K:I

    .line 6
    .line 7
    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    sget v2, Lk7/b;->K:I

    .line 11
    .line 12
    if-ltz v2, :cond_0

    .line 13
    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v2

    .line 18
    iget-wide v4, p0, Lk7/b;->J:J

    .line 19
    .line 20
    sub-long/2addr v2, v4

    .line 21
    long-to-double v2, v2

    .line 22
    const-wide v4, 0x408f400000000000L    # 1000.0

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    div-double/2addr v2, v4

    .line 28
    sget v6, Lk7/b;->K:I

    .line 29
    .line 30
    int-to-double v6, v6

    .line 31
    div-double/2addr v6, v4

    .line 32
    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    .line 33
    .line 34
    mul-double v6, v6, v4

    .line 35
    .line 36
    div-double/2addr v6, v2

    .line 37
    :try_start_1
    new-instance v2, Ljava/math/BigDecimal;

    .line 38
    .line 39
    invoke-direct {v2, v6, v7}, Ljava/math/BigDecimal;-><init>(D)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 40
    .line 41
    .line 42
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 43
    .line 44
    const/4 v1, 0x2

    .line 45
    invoke-virtual {v2, v1, v0}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    .line 50
    .line 51
    .line 52
    move-result-wide v0

    .line 53
    :catch_0
    :cond_0
    return-wide v0
.end method

.method public final run()V
    .locals 6

    .line 1
    :try_start_0
    new-instance v0, Ljava/net/URL;

    .line 2
    .line 3
    iget-object v1, p0, Lk7/b;->G:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    sput v1, Lk7/b;->K:I

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    iput-wide v2, p0, Lk7/b;->J:J

    .line 16
    .line 17
    const/4 v2, 0x4

    .line 18
    invoke-static {v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    :goto_0
    if-ge v1, v2, :cond_0

    .line 23
    .line 24
    new-instance v4, Lw0/j;

    .line 25
    .line 26
    invoke-direct {v4, v0}, Lw0/j;-><init>(Ljava/net/URL;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    goto :goto_2

    .line 37
    :cond_0
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 38
    .line 39
    .line 40
    :catch_1
    :goto_1
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    .line 41
    .line 42
    .line 43
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    if-nez v0, :cond_1

    .line 45
    .line 46
    const-wide/16 v0, 0x64

    .line 47
    .line 48
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 53
    .line 54
    .line 55
    move-result-wide v0

    .line 56
    iget-wide v2, p0, Lk7/b;->J:J

    .line 57
    .line 58
    sub-long/2addr v0, v2

    .line 59
    long-to-double v0, v0

    .line 60
    const-wide v2, 0x408f400000000000L    # 1000.0

    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    div-double/2addr v0, v2

    .line 66
    sget v4, Lk7/b;->K:I

    .line 67
    .line 68
    int-to-double v4, v4

    .line 69
    div-double/2addr v4, v2

    .line 70
    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    .line 71
    .line 72
    mul-double v4, v4, v2

    .line 73
    .line 74
    div-double/2addr v4, v0

    .line 75
    iput-wide v4, p0, Lk7/b;->I:D
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 79
    .line 80
    .line 81
    :goto_3
    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lk7/b;->H:Z

    .line 83
    .line 84
    return-void
.end method
