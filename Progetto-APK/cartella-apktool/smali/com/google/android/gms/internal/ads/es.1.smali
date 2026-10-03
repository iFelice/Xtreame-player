.class public final Lcom/google/android/gms/internal/ads/es;
.super Ll3/B;
.source "SourceFile"


# instance fields
.field public final G:Lcom/google/android/gms/internal/ads/ls;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/fg;Lcom/google/android/gms/internal/ads/Xv;Lcom/google/android/gms/internal/ads/Nl;Ll3/w;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ll3/B;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, La3/b;

    .line 5
    .line 6
    move-object v1, p2

    .line 7
    check-cast v1, Lcom/google/android/gms/internal/ads/Bg;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Bg;->y:Lcom/google/android/gms/internal/ads/MJ;

    .line 10
    .line 11
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/google/android/gms/internal/ads/Fn;

    .line 16
    .line 17
    invoke-direct {v0, p4, v1}, La3/b;-><init>(Lcom/google/android/gms/internal/ads/Nl;Lcom/google/android/gms/internal/ads/Fn;)V

    .line 18
    .line 19
    .line 20
    iget-object p4, v0, La3/b;->I:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast p4, Lcom/google/android/gms/internal/ads/hs;

    .line 23
    .line 24
    iget-object p4, p4, Lcom/google/android/gms/internal/ads/hs;->G:Ljava/util/concurrent/atomic/AtomicReference;

    .line 25
    .line 26
    invoke-virtual {p4, p5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    new-instance p4, Lcom/google/android/gms/internal/ads/rs;

    .line 30
    .line 31
    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p2, p4, Lcom/google/android/gms/internal/ads/rs;->I:Ljava/lang/Object;

    .line 35
    .line 36
    iput-object p1, p4, Lcom/google/android/gms/internal/ads/rs;->G:Ljava/lang/Object;

    .line 37
    .line 38
    iput-object v0, p4, Lcom/google/android/gms/internal/ads/rs;->J:Ljava/lang/Object;

    .line 39
    .line 40
    iput-object p3, p4, Lcom/google/android/gms/internal/ads/rs;->H:Ljava/lang/Object;

    .line 41
    .line 42
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/fg;->d()Lcom/google/android/gms/internal/ads/Uw;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iput-object p1, p4, Lcom/google/android/gms/internal/ads/rs;->K:Ljava/lang/Object;

    .line 47
    .line 48
    iget-object p1, v0, La3/b;->I:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p1, Lcom/google/android/gms/internal/ads/hs;

    .line 51
    .line 52
    iput-object p1, p3, Lcom/google/android/gms/internal/ads/Xv;->r:Lcom/google/android/gms/internal/ads/hs;

    .line 53
    .line 54
    new-instance p1, Lcom/google/android/gms/internal/ads/ls;

    .line 55
    .line 56
    iget-object p2, p3, Lcom/google/android/gms/internal/ads/Xv;->c:Ljava/lang/String;

    .line 57
    .line 58
    invoke-direct {p1, p4, p2}, Lcom/google/android/gms/internal/ads/ls;-><init>(Lcom/google/android/gms/internal/ads/rs;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/es;->G:Lcom/google/android/gms/internal/ads/ls;

    .line 62
    .line 63
    return-void
.end method


# virtual methods
.method public final declared-synchronized H0(Ll3/b1;I)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/es;->G:Lcom/google/android/gms/internal/ads/ls;

    .line 3
    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/ls;->c(Ll3/b1;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    monitor-exit p0

    .line 11
    throw p1
.end method

.method public final q0(Ll3/b1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/es;->G:Lcom/google/android/gms/internal/ads/ls;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/ls;->c(Ll3/b1;I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final declared-synchronized zze()Ljava/lang/String;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/es;->G:Lcom/google/android/gms/internal/ads/ls;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ls;->a()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return-object v0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    monitor-exit p0

    .line 12
    throw v0
.end method

.method public final declared-synchronized zzf()Ljava/lang/String;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/es;->G:Lcom/google/android/gms/internal/ads/ls;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ls;->b()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return-object v0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    monitor-exit p0

    .line 12
    throw v0
.end method

.method public final declared-synchronized zzi()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/es;->G:Lcom/google/android/gms/internal/ads/ls;

    .line 3
    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ls;->d()Z

    .line 5
    .line 6
    .line 7
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return v0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    monitor-exit p0

    .line 12
    throw v0
.end method
