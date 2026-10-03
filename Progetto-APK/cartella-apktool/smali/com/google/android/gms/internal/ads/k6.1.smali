.class public final Lcom/google/android/gms/internal/ads/k6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/b;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/rs;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/rs;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/k6;->a:Lcom/google/android/gms/internal/ads/rs;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k6;->a:Lcom/google/android/gms/internal/ads/rs;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/rs;->J:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k6;->a:Lcom/google/android/gms/internal/ads/rs;

    .line 7
    .line 8
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/rs;->K:Ljava/lang/Object;

    .line 9
    .line 10
    move-object v2, v1

    .line 11
    check-cast v2, Lcom/google/android/gms/internal/ads/n6;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    check-cast v1, Lcom/google/android/gms/internal/ads/n6;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/g;->getService()Landroid/os/IInterface;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/google/android/gms/internal/ads/p6;

    .line 22
    .line 23
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/rs;->L:Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    :try_start_1
    const-string v1, "Unable to obtain a cache service instance."

    .line 28
    .line 29
    invoke-static {v1, v0}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k6;->a:Lcom/google/android/gms/internal/ads/rs;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/rs;->p(Lcom/google/android/gms/internal/ads/rs;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k6;->a:Lcom/google/android/gms/internal/ads/rs;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/rs;->J:Ljava/lang/Object;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 42
    .line 43
    .line 44
    monitor-exit p1

    .line 45
    return-void

    .line 46
    :catchall_0
    move-exception v0

    .line 47
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    throw v0
.end method

.method public final onConnectionSuspended(I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/k6;->a:Lcom/google/android/gms/internal/ads/rs;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/rs;->J:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/k6;->a:Lcom/google/android/gms/internal/ads/rs;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/rs;->L:Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/rs;->J:Ljava/lang/Object;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 14
    .line 15
    .line 16
    monitor-exit p1

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw v0
.end method
