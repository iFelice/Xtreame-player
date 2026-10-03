.class public final Lcom/google/android/gms/internal/ads/xw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:La3/b;

.field public final b:Lcom/google/android/gms/internal/ads/Xu;

.field public final c:Ljava/util/ArrayDeque;

.field public d:Lcom/google/android/gms/internal/ads/Aw;

.field public e:I


# direct methods
.method public constructor <init>(La3/b;Lcom/google/android/gms/internal/ads/kw;Lcom/google/android/gms/internal/ads/Xu;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/xw;->e:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xw;->a:La3/b;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/xw;->b:Lcom/google/android/gms/internal/ads/Xu;

    .line 10
    .line 11
    new-instance p1, Ljava/util/ArrayDeque;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xw;->c:Ljava/util/ArrayDeque;

    .line 17
    .line 18
    new-instance p1, Lcom/google/android/gms/internal/ads/Xu;

    .line 19
    .line 20
    const/16 p3, 0x9

    .line 21
    .line 22
    invoke-direct {p1, p0, p3}, Lcom/google/android/gms/internal/ads/Xu;-><init>(Ljava/lang/Object;I)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p2, Lcom/google/android/gms/internal/ads/kw;->a:Lcom/google/android/gms/internal/ads/Xu;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/google/android/gms/internal/ads/iv;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xw;->c:Ljava/util/ArrayDeque;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z
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

.method public final declared-synchronized b()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->M5:Lcom/google/android/gms/internal/ads/J7;

    .line 3
    .line 4
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 5
    .line 6
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 21
    .line 22
    iget-object v0, v0, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/le;->d()Lo3/L;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lo3/L;->y()Lcom/google/android/gms/internal/ads/ge;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/ge;->j:Z

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xw;->c:Ljava/util/ArrayDeque;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    monitor-exit p0

    .line 43
    return-void

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/xw;->c()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_4

    .line 51
    .line 52
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xw;->c:Ljava/util/ArrayDeque;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_4

    .line 59
    .line 60
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xw;->c:Ljava/util/ArrayDeque;

    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Lcom/google/android/gms/internal/ads/iv;

    .line 67
    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/iv;->g:Lcom/google/android/gms/internal/ads/rw;

    .line 71
    .line 72
    if-eqz v1, :cond_2

    .line 73
    .line 74
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/xw;->a:La3/b;

    .line 75
    .line 76
    invoke-virtual {v2, v1}, La3/b;->w(Lcom/google/android/gms/internal/ads/rw;)Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-eqz v1, :cond_2

    .line 81
    .line 82
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/xw;->a:La3/b;

    .line 83
    .line 84
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/xw;->b:Lcom/google/android/gms/internal/ads/Xu;

    .line 85
    .line 86
    new-instance v3, Lcom/google/android/gms/internal/ads/Aw;

    .line 87
    .line 88
    invoke-direct {v3, v1, v2, v0}, Lcom/google/android/gms/internal/ads/Aw;-><init>(La3/b;Lcom/google/android/gms/internal/ads/Xu;Lcom/google/android/gms/internal/ads/iv;)V

    .line 89
    .line 90
    .line 91
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/xw;->d:Lcom/google/android/gms/internal/ads/Aw;

    .line 92
    .line 93
    new-instance v1, Lcom/google/android/gms/internal/ads/Om;

    .line 94
    .line 95
    const/16 v2, 0xe

    .line 96
    .line 97
    invoke-direct {v1, p0, v0, v2}, Lcom/google/android/gms/internal/ads/Om;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/Aw;->b(Lcom/google/android/gms/internal/ads/Om;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    .line 102
    .line 103
    monitor-exit p0

    .line 104
    return-void

    .line 105
    :cond_4
    monitor-exit p0

    .line 106
    return-void

    .line 107
    :goto_1
    monitor-exit p0

    .line 108
    throw v0
.end method

.method public final declared-synchronized c()Z
    .locals 1

    .line 1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xw;->d:Lcom/google/android/gms/internal/ads/Aw;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
