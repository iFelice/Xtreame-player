.class public final Lcom/google/android/gms/internal/ads/em;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/Aj;


# instance fields
.field public final G:Lcom/google/android/gms/internal/ads/Il;

.field public final H:Lcom/google/android/gms/internal/ads/Kl;

.field public final I:Ljava/util/concurrent/Executor;

.field public final J:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Il;Lcom/google/android/gms/internal/ads/Jl;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/re;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/em;->G:Lcom/google/android/gms/internal/ads/Il;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/em;->H:Lcom/google/android/gms/internal/ads/Kl;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/em;->I:Ljava/util/concurrent/Executor;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/em;->J:Ljava/util/concurrent/Executor;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final zzr()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/em;->H:Lcom/google/android/gms/internal/ads/Kl;

    .line 3
    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Kl;->c()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/em;->G:Lcom/google/android/gms/internal/ads/Il;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Il;->T()Lcom/google/android/gms/internal/ads/mq;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-nez v2, :cond_1

    .line 18
    .line 19
    monitor-enter v1

    .line 20
    :try_start_0
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/Il;->m:LD4/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    monitor-exit v1

    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    sget-object v3, Lcom/google/android/gms/internal/ads/Q7;->P4:Lcom/google/android/gms/internal/ads/J7;

    .line 26
    .line 27
    sget-object v4, Ll3/q;->d:Ll3/q;

    .line 28
    .line 29
    iget-object v4, v4, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 30
    .line 31
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Ljava/lang/Boolean;

    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Il;->V()LD4/b;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Il;->O()Lcom/google/android/gms/internal/ads/te;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    if-eqz v2, :cond_4

    .line 52
    .line 53
    if-eqz v1, :cond_4

    .line 54
    .line 55
    const/4 v3, 0x2

    .line 56
    new-array v3, v3, [LD4/b;

    .line 57
    .line 58
    aput-object v2, v3, v0

    .line 59
    .line 60
    const/4 v2, 0x1

    .line 61
    aput-object v1, v3, v2

    .line 62
    .line 63
    new-instance v1, Lcom/google/android/gms/internal/ads/SB;

    .line 64
    .line 65
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/uA;->u([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/PA;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/SB;-><init>(Lcom/google/android/gms/internal/ads/uA;Z)V

    .line 70
    .line 71
    .line 72
    new-instance v0, Lcom/google/android/gms/internal/ads/Of;

    .line 73
    .line 74
    const/16 v2, 0xb

    .line 75
    .line 76
    invoke-direct {v0, p0, v2}, Lcom/google/android/gms/internal/ads/Of;-><init>(Ljava/lang/Object;I)V

    .line 77
    .line 78
    .line 79
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/em;->J:Ljava/util/concurrent/Executor;

    .line 80
    .line 81
    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/ads/Cw;->h2(LD4/b;Lcom/google/android/gms/internal/ads/dC;Ljava/util/concurrent/Executor;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :catchall_0
    move-exception v0

    .line 86
    monitor-exit v1

    .line 87
    throw v0

    .line 88
    :cond_1
    if-eqz v2, :cond_4

    .line 89
    .line 90
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Il;->Q()Lcom/google/android/gms/internal/ads/Ef;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Il;->R()Lcom/google/android/gms/internal/ads/Ef;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    if-eqz v0, :cond_2

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_2
    if-eqz v1, :cond_3

    .line 102
    .line 103
    move-object v0, v1

    .line 104
    goto :goto_0

    .line 105
    :cond_3
    const/4 v0, 0x0

    .line 106
    :goto_0
    if-eqz v0, :cond_4

    .line 107
    .line 108
    new-instance v1, Lcom/google/android/gms/internal/ads/Nf;

    .line 109
    .line 110
    const/4 v2, 0x4

    .line 111
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/Nf;-><init>(Lcom/google/android/gms/internal/ads/Ef;I)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/em;->I:Ljava/util/concurrent/Executor;

    .line 115
    .line 116
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 117
    .line 118
    .line 119
    :cond_4
    :goto_1
    return-void
.end method
