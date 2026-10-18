.class public final Lcom/google/android/gms/internal/ads/Ja;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Landroid/content/Context;

.field public final c:Ljava/lang/String;

.field public final d:Lp3/a;

.field public final e:Lcom/google/android/gms/internal/ads/Uw;

.field public f:Lcom/google/android/gms/internal/ads/Ia;

.field public g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lp3/a;Ljava/lang/String;Lcom/google/android/gms/internal/ads/Uw;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Ja;->a:Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput v0, p0, Lcom/google/android/gms/internal/ads/Ja;->g:I

    .line 13
    .line 14
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Ja;->c:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ja;->b:Landroid/content/Context;

    .line 21
    .line 22
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Ja;->d:Lp3/a;

    .line 23
    .line 24
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Ja;->e:Lcom/google/android/gms/internal/ads/Uw;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/Fa;
    .locals 6

    .line 1
    const-string v0, "getEngine: Trying to acquire lock"

    .line 2
    .line 3
    invoke-static {v0}, Lo3/I;->k(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ja;->a:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    const-string v1, "getEngine: Lock acquired"

    .line 10
    .line 11
    invoke-static {v1}, Lo3/I;->k(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v1, "refreshIfDestroyed: Trying to acquire lock"

    .line 15
    .line 16
    invoke-static {v1}, Lo3/I;->k(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ja;->a:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    :try_start_1
    const-string v2, "refreshIfDestroyed: Lock acquired"

    .line 23
    .line 24
    invoke-static {v2}, Lo3/I;->k(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ja;->f:Lcom/google/android/gms/internal/ads/Ia;

    .line 28
    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    iget v3, p0, Lcom/google/android/gms/internal/ads/Ja;->g:I

    .line 32
    .line 33
    if-nez v3, :cond_0

    .line 34
    .line 35
    new-instance v3, Lcom/google/android/gms/internal/ads/K4;

    .line 36
    .line 37
    const/16 v4, 0x12

    .line 38
    .line 39
    invoke-direct {v3, p0, v4}, Lcom/google/android/gms/internal/ads/K4;-><init>(Ljava/lang/Object;I)V

    .line 40
    .line 41
    .line 42
    new-instance v4, Lcom/google/android/gms/internal/ads/Aa;

    .line 43
    .line 44
    const/4 v5, 0x0

    .line 45
    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ads/Aa;-><init>(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v3, v4}, Lf/H;->r(Lcom/google/android/gms/internal/ads/ve;Lcom/google/android/gms/internal/ads/ue;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception v2

    .line 53
    goto :goto_2

    .line 54
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    :try_start_2
    const-string v1, "refreshIfDestroyed: Lock released"

    .line 56
    .line 57
    invoke-static {v1}, Lo3/I;->k(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ja;->f:Lcom/google/android/gms/internal/ads/Ia;

    .line 61
    .line 62
    const/4 v2, 0x2

    .line 63
    if-eqz v1, :cond_4

    .line 64
    .line 65
    invoke-virtual {v1}, Lf/H;->o()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    const/4 v3, -0x1

    .line 70
    if-ne v1, v3, :cond_1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    iget v1, p0, Lcom/google/android/gms/internal/ads/Ja;->g:I

    .line 74
    .line 75
    if-nez v1, :cond_2

    .line 76
    .line 77
    const-string v1, "getEngine (NO_UPDATE): Lock released"

    .line 78
    .line 79
    invoke-static {v1}, Lo3/I;->k(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ja;->f:Lcom/google/android/gms/internal/ads/Ia;

    .line 83
    .line 84
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Ia;->s()Lcom/google/android/gms/internal/ads/Fa;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    monitor-exit v0

    .line 89
    return-object v1

    .line 90
    :catchall_1
    move-exception v1

    .line 91
    goto :goto_3

    .line 92
    :cond_2
    const/4 v3, 0x1

    .line 93
    if-ne v1, v3, :cond_3

    .line 94
    .line 95
    iput v2, p0, Lcom/google/android/gms/internal/ads/Ja;->g:I

    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Ja;->b()Lcom/google/android/gms/internal/ads/Ia;

    .line 98
    .line 99
    .line 100
    const-string v1, "getEngine (PENDING_UPDATE): Lock released"

    .line 101
    .line 102
    invoke-static {v1}, Lo3/I;->k(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ja;->f:Lcom/google/android/gms/internal/ads/Ia;

    .line 106
    .line 107
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Ia;->s()Lcom/google/android/gms/internal/ads/Fa;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    monitor-exit v0

    .line 112
    return-object v1

    .line 113
    :cond_3
    const-string v1, "getEngine (UPDATING): Lock released"

    .line 114
    .line 115
    invoke-static {v1}, Lo3/I;->k(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ja;->f:Lcom/google/android/gms/internal/ads/Ia;

    .line 119
    .line 120
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Ia;->s()Lcom/google/android/gms/internal/ads/Fa;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    monitor-exit v0

    .line 125
    return-object v1

    .line 126
    :cond_4
    :goto_1
    iput v2, p0, Lcom/google/android/gms/internal/ads/Ja;->g:I

    .line 127
    .line 128
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Ja;->b()Lcom/google/android/gms/internal/ads/Ia;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Ja;->f:Lcom/google/android/gms/internal/ads/Ia;

    .line 133
    .line 134
    const-string v1, "getEngine (NULL or REJECTED): Lock released"

    .line 135
    .line 136
    invoke-static {v1}, Lo3/I;->k(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ja;->f:Lcom/google/android/gms/internal/ads/Ia;

    .line 140
    .line 141
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Ia;->s()Lcom/google/android/gms/internal/ads/Fa;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 146
    return-object v1

    .line 147
    :goto_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 148
    :try_start_4
    throw v2

    .line 149
    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 150
    throw v1
.end method

.method public final b()Lcom/google/android/gms/internal/ads/Ia;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ja;->b:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    invoke-static {v0, v1}, LU4/a;->h(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/Ow;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Ow;->zzi()Lcom/google/android/gms/internal/ads/Ow;

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/google/android/gms/internal/ads/Ia;

    .line 12
    .line 13
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/Ia;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "loadJavascriptEngine > Before UI_THREAD_EXECUTOR"

    .line 17
    .line 18
    invoke-static {v2}, Lo3/I;->k(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object v2, Lcom/google/android/gms/internal/ads/se;->e:Lcom/google/android/gms/internal/ads/re;

    .line 22
    .line 23
    new-instance v3, Lcom/google/android/gms/internal/ads/Ha;

    .line 24
    .line 25
    invoke-direct {v3, p0, v1}, Lcom/google/android/gms/internal/ads/Ha;-><init>(Lcom/google/android/gms/internal/ads/Ja;Lcom/google/android/gms/internal/ads/Ia;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/re;->execute(Ljava/lang/Runnable;)V

    .line 29
    .line 30
    .line 31
    const-string v2, "loadNewJavascriptEngine: Promise created"

    .line 32
    .line 33
    invoke-static {v2}, Lo3/I;->k(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    new-instance v2, Lcom/google/android/gms/internal/ads/Ea;

    .line 37
    .line 38
    invoke-direct {v2, p0, v1, v0}, Lcom/google/android/gms/internal/ads/Ea;-><init>(Lcom/google/android/gms/internal/ads/Ja;Lcom/google/android/gms/internal/ads/Ia;Lcom/google/android/gms/internal/ads/Ow;)V

    .line 39
    .line 40
    .line 41
    new-instance v3, Lcom/google/android/gms/internal/ads/Ea;

    .line 42
    .line 43
    invoke-direct {v3, p0, v1, v0}, Lcom/google/android/gms/internal/ads/Ea;-><init>(Lcom/google/android/gms/internal/ads/Ja;Lcom/google/android/gms/internal/ads/Ia;Lcom/google/android/gms/internal/ads/Ow;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2, v3}, Lf/H;->r(Lcom/google/android/gms/internal/ads/ve;Lcom/google/android/gms/internal/ads/ue;)V

    .line 47
    .line 48
    .line 49
    return-object v1
.end method
