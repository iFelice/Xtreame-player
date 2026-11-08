.class public final synthetic Lcom/google/android/gms/internal/ads/kp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/QB;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Ljava/lang/Object;

.field public final synthetic I:LM3/a;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;LM3/a;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/google/android/gms/internal/ads/kp;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/kp;->H:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/kp;->I:LM3/a;

    .line 9
    .line 10
    return-void
.end method

.method private final a()LD4/b;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kp;->H:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/lp;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kp;->I:LM3/a;

    .line 6
    .line 7
    check-cast v1, Lcom/google/android/gms/internal/ads/Jc;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->Sa:Lcom/google/android/gms/internal/ads/J7;

    .line 13
    .line 14
    sget-object v3, Ll3/q;->d:Ll3/q;

    .line 15
    .line 16
    iget-object v3, v3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 17
    .line 18
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Ljava/lang/Long;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/lp;->c:Lcom/google/android/gms/internal/ads/up;

    .line 29
    .line 30
    monitor-enter v0

    .line 31
    :try_start_0
    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zp;->b:Z

    .line 32
    .line 33
    if-eqz v4, :cond_0

    .line 34
    .line 35
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zp;->a:Lcom/google/android/gms/internal/ads/te;

    .line 36
    .line 37
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 38
    .line 39
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zp;->g:Ljava/util/concurrent/ScheduledExecutorService;

    .line 40
    .line 41
    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/Cw;->e2(LD4/b;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)LD4/b;

    .line 42
    .line 43
    .line 44
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit v0

    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception v1

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    const/4 v4, 0x1

    .line 50
    :try_start_1
    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/zp;->b:Z

    .line 51
    .line 52
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/up;->h:Lcom/google/android/gms/internal/ads/Jc;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zp;->a()V

    .line 55
    .line 56
    .line 57
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zp;->a:Lcom/google/android/gms/internal/ads/te;

    .line 58
    .line 59
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 60
    .line 61
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zp;->g:Ljava/util/concurrent/ScheduledExecutorService;

    .line 62
    .line 63
    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/Cw;->e2(LD4/b;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)LD4/b;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    new-instance v2, Lcom/google/android/gms/internal/ads/Zn;

    .line 68
    .line 69
    const/4 v3, 0x3

    .line 70
    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/ads/Zn;-><init>(Ljava/lang/Object;I)V

    .line 71
    .line 72
    .line 73
    sget-object v3, Lcom/google/android/gms/internal/ads/se;->f:Lcom/google/android/gms/internal/ads/re;

    .line 74
    .line 75
    invoke-interface {v1, v2, v3}, LD4/b;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    .line 77
    .line 78
    monitor-exit v0

    .line 79
    :goto_0
    return-object v1

    .line 80
    :goto_1
    monitor-exit v0

    .line 81
    throw v1
.end method


# virtual methods
.method public final zza()LD4/b;
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/kp;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kp;->H:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/google/android/gms/internal/ads/np;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kp;->I:LM3/a;

    .line 11
    .line 12
    check-cast v1, Lcom/google/android/gms/internal/ads/Hc;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->Ra:Lcom/google/android/gms/internal/ads/J7;

    .line 18
    .line 19
    sget-object v3, Ll3/q;->d:Ll3/q;

    .line 20
    .line 21
    iget-object v3, v3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 22
    .line 23
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Ljava/lang/Long;

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/np;->c:Lcom/google/android/gms/internal/ads/wp;

    .line 34
    .line 35
    monitor-enter v0

    .line 36
    :try_start_0
    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zp;->b:Z

    .line 37
    .line 38
    if-eqz v4, :cond_0

    .line 39
    .line 40
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zp;->a:Lcom/google/android/gms/internal/ads/te;

    .line 41
    .line 42
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 43
    .line 44
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zp;->g:Ljava/util/concurrent/ScheduledExecutorService;

    .line 45
    .line 46
    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/Cw;->e2(LD4/b;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)LD4/b;

    .line 47
    .line 48
    .line 49
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit v0

    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception v1

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    const/4 v4, 0x1

    .line 55
    :try_start_1
    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/zp;->b:Z

    .line 56
    .line 57
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/wp;->h:Lcom/google/android/gms/internal/ads/Hc;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zp;->a()V

    .line 60
    .line 61
    .line 62
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zp;->a:Lcom/google/android/gms/internal/ads/te;

    .line 63
    .line 64
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 65
    .line 66
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zp;->g:Ljava/util/concurrent/ScheduledExecutorService;

    .line 67
    .line 68
    invoke-static {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/Cw;->e2(LD4/b;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)LD4/b;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    new-instance v2, Lcom/google/android/gms/internal/ads/Zn;

    .line 73
    .line 74
    const/4 v3, 0x4

    .line 75
    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/ads/Zn;-><init>(Ljava/lang/Object;I)V

    .line 76
    .line 77
    .line 78
    sget-object v3, Lcom/google/android/gms/internal/ads/se;->f:Lcom/google/android/gms/internal/ads/re;

    .line 79
    .line 80
    invoke-interface {v1, v2, v3}, LD4/b;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    .line 82
    .line 83
    monitor-exit v0

    .line 84
    :goto_0
    return-object v1

    .line 85
    :goto_1
    monitor-exit v0

    .line 86
    throw v1

    .line 87
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/kp;->a()LD4/b;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    return-object v0

    .line 92
    nop

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
