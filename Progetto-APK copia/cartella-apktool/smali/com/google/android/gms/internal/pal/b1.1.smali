.class public final Lcom/google/android/gms/internal/pal/b1;
.super Lcom/google/android/gms/internal/pal/a1;
.source "SourceFile"


# instance fields
.field public final e:Lcom/google/android/gms/internal/pal/t2;

.field public final f:Lcom/google/ads/interactivemedia/pal/zzx;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;Landroid/content/Context;Lcom/google/ads/interactivemedia/pal/zzx;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/pal/t2;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/gms/common/api/i;->c:Lcom/google/android/gms/common/api/i;

    .line 4
    .line 5
    sget-object v2, Lcom/google/android/gms/internal/pal/t2;->a:Lcom/google/android/gms/common/api/g;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, p3, v2, v3, v1}, Lcom/google/android/gms/common/api/j;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/api/c;Lcom/google/android/gms/common/api/i;)V

    .line 9
    .line 10
    .line 11
    const-wide/16 v1, 0x2

    .line 12
    .line 13
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/pal/A0;->b(J)Lcom/google/android/gms/internal/pal/A0;

    .line 14
    .line 15
    .line 16
    move-result-object p3

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/pal/a1;-><init>(Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;Lcom/google/android/gms/internal/pal/A0;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/google/android/gms/internal/pal/b1;->e:Lcom/google/android/gms/internal/pal/t2;

    .line 21
    .line 22
    iput-object p4, p0, Lcom/google/android/gms/internal/pal/b1;->f:Lcom/google/ads/interactivemedia/pal/zzx;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/pal/I2;
    .locals 9

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/pal/G2;->G:Lcom/google/android/gms/internal/pal/G2;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/pal/b1;->f:Lcom/google/ads/interactivemedia/pal/zzx;

    .line 4
    .line 5
    new-instance v2, Landroid/os/Bundle;

    .line 6
    .line 7
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x3

    .line 11
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gms/internal/pal/b1;->e:Lcom/google/android/gms/internal/pal/t2;

    .line 12
    .line 13
    invoke-static {}, LK3/s;->a()LK3/r;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    const/4 v6, 0x0

    .line 18
    iput-boolean v6, v5, LK3/r;->b:Z

    .line 19
    .line 20
    const/4 v7, 0x1

    .line 21
    new-array v7, v7, [LJ3/d;

    .line 22
    .line 23
    sget-object v8, Lcom/google/android/gms/internal/pal/y4;->H:LJ3/d;

    .line 24
    .line 25
    aput-object v8, v7, v6

    .line 26
    .line 27
    iput-object v7, v5, LK3/r;->d:Ljava/lang/Object;

    .line 28
    .line 29
    new-instance v6, Lcom/google/android/gms/internal/pal/m2;

    .line 30
    .line 31
    invoke-direct {v6, v3, v4, v2}, Lcom/google/android/gms/internal/pal/m2;-><init>(ILjava/lang/Object;Ljava/lang/Cloneable;)V

    .line 32
    .line 33
    .line 34
    iput-object v6, v5, LK3/r;->c:Ljava/lang/Object;

    .line 35
    .line 36
    invoke-virtual {v5}, LK3/r;->a()LK3/O;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v4, v2}, Lcom/google/android/gms/common/api/j;->doRead(LK3/s;)Lg4/h;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 45
    .line 46
    const-wide/16 v5, 0x5

    .line 47
    .line 48
    invoke-static {v2, v5, v6, v4}, Lcom/google/android/gms/internal/ads/Cw;->b(Lg4/h;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Ljava/lang/String;

    .line 53
    .line 54
    new-instance v4, Lcom/google/android/gms/internal/pal/K2;

    .line 55
    .line 56
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    invoke-direct {v4, v2}, Lcom/google/android/gms/internal/pal/K2;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    return-object v4

    .line 63
    :catch_0
    move-exception v2

    .line 64
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    instance-of v4, v2, Lcom/google/android/gms/internal/pal/r2;

    .line 69
    .line 70
    if-eqz v4, :cond_0

    .line 71
    .line 72
    check-cast v2, Lcom/google/android/gms/internal/pal/r2;

    .line 73
    .line 74
    iget v2, v2, Lcom/google/android/gms/internal/pal/r2;->G:I

    .line 75
    .line 76
    new-instance v4, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v5, "SignalSdk Error code: "

    .line 79
    .line 80
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v2, "NonceGenerator"

    .line 87
    .line 88
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v3}, Lcom/google/ads/interactivemedia/pal/zzx;->zza(I)V

    .line 96
    .line 97
    .line 98
    :cond_0
    return-object v0

    .line 99
    :catch_1
    const/4 v2, 0x2

    .line 100
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/pal/zzx;->zza(I)V

    .line 101
    .line 102
    .line 103
    return-object v0
.end method
