.class public final Lcom/google/android/gms/internal/ads/Ty;
.super Lcom/google/android/gms/internal/ads/Sy;
.source "SourceFile"


# static fields
.field public static h:Lcom/google/android/gms/internal/ads/Ty;


# direct methods
.method public static final f(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/Ty;
    .locals 5

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/Ty;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/Ty;->h:Lcom/google/android/gms/internal/ads/Ty;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/google/android/gms/internal/ads/Ty;

    .line 9
    .line 10
    const-string v2, "paidv1_creation_time"

    .line 11
    .line 12
    const-string v3, "PaidV1LifecycleImpl"

    .line 13
    .line 14
    const-string v4, "paidv1_id"

    .line 15
    .line 16
    invoke-direct {v1, p0, v4, v2, v3}, Lcom/google/android/gms/internal/ads/Sy;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/google/android/gms/internal/ads/Ty;->h:Lcom/google/android/gms/internal/ads/Ty;

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
    sget-object p0, Lcom/google/android/gms/internal/ads/Ty;->h:Lcom/google/android/gms/internal/ads/Ty;

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
.method public final g()V
    .locals 2

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/Ty;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/Sy;->d(Z)V

    .line 6
    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception v1

    .line 11
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    throw v1
.end method
