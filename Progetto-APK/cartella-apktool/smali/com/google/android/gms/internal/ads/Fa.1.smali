.class public final Lcom/google/android/gms/internal/ads/Fa;
.super Lf/H;
.source "SourceFile"


# instance fields
.field public final c:Ljava/lang/Object;

.field public final d:Lcom/google/android/gms/internal/ads/Ia;

.field public e:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Ia;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lf/H;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Fa;->c:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Fa;->d:Lcom/google/android/gms/internal/ads/Ia;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final s()V
    .locals 5

    .line 1
    const-string v0, "release: Trying to acquire lock"

    .line 2
    .line 3
    invoke-static {v0}, Lo3/I;->k(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Fa;->c:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    const-string v1, "release: Lock acquired"

    .line 10
    .line 11
    invoke-static {v1}, Lo3/I;->k(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/Fa;->e:Z

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    const-string v1, "release: Lock already released"

    .line 19
    .line 20
    invoke-static {v1}, Lo3/I;->k(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v1, 0x1

    .line 28
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/Fa;->e:Z

    .line 29
    .line 30
    new-instance v2, Lcom/google/android/gms/internal/ads/Aa;

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/internal/ads/Aa;-><init>(II)V

    .line 34
    .line 35
    .line 36
    new-instance v3, Lcom/google/android/gms/internal/ads/Aa;

    .line 37
    .line 38
    const/16 v4, 0xb

    .line 39
    .line 40
    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/Aa;-><init>(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v2, v3}, Lf/H;->r(Lcom/google/android/gms/internal/ads/ve;Lcom/google/android/gms/internal/ads/ue;)V

    .line 44
    .line 45
    .line 46
    new-instance v2, Lcom/google/android/gms/internal/ads/Ga;

    .line 47
    .line 48
    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/ads/Ga;-><init>(Lcom/google/android/gms/internal/ads/Fa;I)V

    .line 49
    .line 50
    .line 51
    new-instance v1, Lcom/google/android/gms/internal/ads/Ga;

    .line 52
    .line 53
    const/4 v3, 0x2

    .line 54
    invoke-direct {v1, p0, v3}, Lcom/google/android/gms/internal/ads/Ga;-><init>(Lcom/google/android/gms/internal/ads/Fa;I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v2, v1}, Lf/H;->r(Lcom/google/android/gms/internal/ads/ve;Lcom/google/android/gms/internal/ads/ue;)V

    .line 58
    .line 59
    .line 60
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    const-string v0, "release: Lock released"

    .line 62
    .line 63
    invoke-static {v0}, Lo3/I;->k(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    throw v1
.end method
