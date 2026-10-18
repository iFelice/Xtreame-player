.class public final Lcom/google/android/gms/internal/ads/s6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/b;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/o6;

.field public final synthetic b:Lcom/google/android/gms/internal/ads/te;

.field public final synthetic c:Lcom/google/android/gms/internal/ads/x3;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/x3;Lcom/google/android/gms/internal/ads/o6;Lcom/google/android/gms/internal/ads/q6;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/s6;->a:Lcom/google/android/gms/internal/ads/o6;

    .line 5
    .line 6
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/s6;->b:Lcom/google/android/gms/internal/ads/te;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/s6;->c:Lcom/google/android/gms/internal/ads/x3;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/s6;->c:Lcom/google/android/gms/internal/ads/x3;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/x3;->H:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/s6;->c:Lcom/google/android/gms/internal/ads/x3;

    .line 7
    .line 8
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/x3;->G:Z

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    monitor-exit p1

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v1, 0x1

    .line 17
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/x3;->G:Z

    .line 18
    .line 19
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/x3;->I:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Lcom/google/android/gms/internal/ads/n6;

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    monitor-exit p1

    .line 26
    return-void

    .line 27
    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/ads/se;->a:Lcom/google/android/gms/internal/ads/re;

    .line 28
    .line 29
    new-instance v2, Lcom/google/android/gms/internal/ads/Ha;

    .line 30
    .line 31
    const/4 v3, 0x6

    .line 32
    invoke-direct {v2, v3, p0, v0}, Lcom/google/android/gms/internal/ads/Ha;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/IB;->a(Ljava/lang/Runnable;)LD4/b;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/s6;->b:Lcom/google/android/gms/internal/ads/te;

    .line 40
    .line 41
    new-instance v2, Lcom/google/android/gms/internal/ads/Ha;

    .line 42
    .line 43
    const/4 v3, 0x7

    .line 44
    invoke-direct {v2, v3, p0, v0}, Lcom/google/android/gms/internal/ads/Ha;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    sget-object v0, Lcom/google/android/gms/internal/ads/se;->f:Lcom/google/android/gms/internal/ads/re;

    .line 48
    .line 49
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/te;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 50
    .line 51
    .line 52
    monitor-exit p1

    .line 53
    return-void

    .line 54
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    throw v0
.end method

.method public final onConnectionSuspended(I)V
    .locals 0

    return-void
.end method
