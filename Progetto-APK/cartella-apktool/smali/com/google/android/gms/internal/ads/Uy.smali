.class public final Lcom/google/android/gms/internal/ads/Uy;
.super Lcom/google/android/gms/internal/ads/Sy;
.source "SourceFile"


# static fields
.field public static h:Lcom/google/android/gms/internal/ads/Uy;


# direct methods
.method public static final g(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/Uy;
    .locals 5

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/Uy;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/Uy;->h:Lcom/google/android/gms/internal/ads/Uy;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/google/android/gms/internal/ads/Uy;

    .line 9
    .line 10
    const-string v2, "paidv2_creation_time"

    .line 11
    .line 12
    const-string v3, "PaidV2LifecycleImpl"

    .line 13
    .line 14
    const-string v4, "paidv2_id"

    .line 15
    .line 16
    invoke-direct {v1, p0, v4, v2, v3}, Lcom/google/android/gms/internal/ads/Sy;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/google/android/gms/internal/ads/Uy;->h:Lcom/google/android/gms/internal/ads/Uy;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    sget-object p0, Lcom/google/android/gms/internal/ads/Uy;->h:Lcom/google/android/gms/internal/ads/Uy;

    .line 25
    .line 26
    monitor-exit v0

    .line 27
    return-object p0

    .line 28
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0
.end method


# virtual methods
.method public final f(JZ)Lcom/google/android/gms/internal/ads/Om;
    .locals 7

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/Uy;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Sy;->f:Lcom/google/android/gms/internal/ads/Ry;

    .line 5
    .line 6
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Ry;->b:Landroid/content/SharedPreferences;

    .line 7
    .line 8
    const-string v2, "paidv2_publisher_option"

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    new-instance p1, Lcom/google/android/gms/internal/ads/Om;

    .line 18
    .line 19
    const/16 p2, 0x15

    .line 20
    .line 21
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/Om;-><init>(I)V

    .line 22
    .line 23
    .line 24
    monitor-exit v0

    .line 25
    return-object p1

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v4, 0x0

    .line 29
    const/4 v5, 0x0

    .line 30
    move-object v1, p0

    .line 31
    move-wide v2, p1

    .line 32
    move v6, p3

    .line 33
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/Sy;->a(JLjava/lang/String;Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/Om;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    monitor-exit v0

    .line 38
    return-object p1

    .line 39
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p1
.end method

.method public final h()V
    .locals 3

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/Uy;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Sy;->f:Lcom/google/android/gms/internal/ads/Ry;

    .line 5
    .line 6
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Ry;->b:Landroid/content/SharedPreferences;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Sy;->a:Ljava/lang/String;

    .line 9
    .line 10
    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/Sy;->d(Z)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw v1
.end method
