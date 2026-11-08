.class public final synthetic Lcom/google/android/gms/internal/ads/Yn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lcom/google/android/gms/internal/ads/eo;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/eo;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/Yn;->G:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Yn;->H:Lcom/google/android/gms/internal/ads/eo;

    return-void
.end method

.method private final a()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Yn;->H:Lcom/google/android/gms/internal/ads/eo;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/eo;->c:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception v1

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const-string v1, "com.google.android.gms.ads.MobileAds"

    .line 13
    .line 14
    const-string v2, "Timeout."

    .line 15
    .line 16
    sget-object v3, Lk3/l;->A:Lk3/l;

    .line 17
    .line 18
    iget-object v3, v3, Lk3/l;->j:LP3/b;

    .line 19
    .line 20
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 24
    .line 25
    .line 26
    move-result-wide v3

    .line 27
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/eo;->d:J

    .line 28
    .line 29
    sub-long/2addr v3, v5

    .line 30
    long-to-int v4, v3

    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/google/android/gms/internal/ads/eo;->d(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 33
    .line 34
    .line 35
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/eo;->l:Lcom/google/android/gms/internal/ads/Kn;

    .line 36
    .line 37
    const-string v2, "com.google.android.gms.ads.MobileAds"

    .line 38
    .line 39
    const-string v3, "timeout"

    .line 40
    .line 41
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/Kn;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/eo;->o:Lcom/google/android/gms/internal/ads/Ak;

    .line 45
    .line 46
    const-string v2, "com.google.android.gms.ads.MobileAds"

    .line 47
    .line 48
    const-string v3, "timeout"

    .line 49
    .line 50
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/Ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/eo;->e:Lcom/google/android/gms/internal/ads/te;

    .line 54
    .line 55
    new-instance v2, Ljava/lang/Exception;

    .line 56
    .line 57
    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/te;->c(Ljava/lang/Throwable;)Z

    .line 61
    .line 62
    .line 63
    monitor-exit v0

    .line 64
    :goto_0
    return-void

    .line 65
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw v1
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/Yn;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Yn;->H:Lcom/google/android/gms/internal/ads/eo;

    .line 7
    .line 8
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/eo;->l:Lcom/google/android/gms/internal/ads/Kn;

    .line 9
    .line 10
    monitor-enter v1

    .line 11
    :try_start_0
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->R1:Lcom/google/android/gms/internal/ads/J7;

    .line 12
    .line 13
    sget-object v3, Ll3/q;->d:Ll3/q;

    .line 14
    .line 15
    iget-object v3, v3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 16
    .line 17
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Ljava/lang/Boolean;

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const/4 v3, 0x1

    .line 28
    if-nez v2, :cond_0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/Kn;->d:Z

    .line 32
    .line 33
    if-nez v2, :cond_2

    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kn;->e()Ljava/util/HashMap;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    const-string v4, "action"

    .line 40
    .line 41
    const-string v5, "init_finished"

    .line 42
    .line 43
    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/Kn;->b:Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/Kn;->b:Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-eqz v4, :cond_1

    .line 62
    .line 63
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    check-cast v4, Ljava/util/Map;

    .line 68
    .line 69
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/Kn;->f:Lcom/google/android/gms/internal/ads/In;

    .line 70
    .line 71
    const/4 v6, 0x0

    .line 72
    invoke-virtual {v5, v4, v6}, Lcom/google/android/gms/internal/ads/Jn;->a(Ljava/util/Map;Z)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    .line 77
    goto :goto_3

    .line 78
    :cond_1
    iput-boolean v3, v1, Lcom/google/android/gms/internal/ads/Kn;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    .line 80
    monitor-exit v1

    .line 81
    goto :goto_2

    .line 82
    :cond_2
    :goto_1
    monitor-exit v1

    .line 83
    :goto_2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/eo;->o:Lcom/google/android/gms/internal/ads/Ak;

    .line 84
    .line 85
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Ak;->b()V

    .line 86
    .line 87
    .line 88
    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/eo;->b:Z

    .line 89
    .line 90
    return-void

    .line 91
    :goto_3
    monitor-exit v1

    .line 92
    throw v0

    .line 93
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/Yn;->a()V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
