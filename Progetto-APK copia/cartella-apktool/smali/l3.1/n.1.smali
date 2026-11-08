.class public final Ll3/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;


# direct methods
.method public static c(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lcom/google/android/gms/internal/ads/cy;Lcom/google/android/gms/internal/ads/ey;)Ll3/n;
    .locals 3

    .line 1
    new-instance v0, Ll3/n;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/ky;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Lcom/google/android/gms/internal/ads/ly;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p0, v0, Ll3/n;->a:Ljava/lang/Object;

    .line 17
    .line 18
    iput-object p1, v0, Ll3/n;->b:Ljava/lang/Object;

    .line 19
    .line 20
    iput-object p2, v0, Ll3/n;->c:Ljava/lang/Object;

    .line 21
    .line 22
    iput-object p3, v0, Ll3/n;->d:Ljava/lang/Object;

    .line 23
    .line 24
    iput-object v1, v0, Ll3/n;->e:Ljava/lang/Object;

    .line 25
    .line 26
    iput-object v2, v0, Ll3/n;->f:Ljava/lang/Object;

    .line 27
    .line 28
    const/16 p0, 0xe

    .line 29
    .line 30
    iget-boolean p2, p3, Lcom/google/android/gms/internal/ads/ey;->b:Z

    .line 31
    .line 32
    if-eqz p2, :cond_0

    .line 33
    .line 34
    new-instance p2, Lcom/google/android/gms/internal/ads/jy;

    .line 35
    .line 36
    const/4 p3, 0x0

    .line 37
    invoke-direct {p2, v0, p3}, Lcom/google/android/gms/internal/ads/jy;-><init>(Ll3/n;I)V

    .line 38
    .line 39
    .line 40
    check-cast p1, Ljava/util/concurrent/Executor;

    .line 41
    .line 42
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/Cw;->c(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lg4/r;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    new-instance p2, Lcom/google/android/gms/internal/ads/Xu;

    .line 47
    .line 48
    invoke-direct {p2, v0, p0}, Lcom/google/android/gms/internal/ads/Xu;-><init>(Ljava/lang/Object;I)V

    .line 49
    .line 50
    .line 51
    iget-object p3, v0, Ll3/n;->b:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast p3, Ljava/util/concurrent/Executor;

    .line 54
    .line 55
    invoke-virtual {p1, p3, p2}, Lg4/r;->b(Ljava/util/concurrent/Executor;Lg4/e;)Lg4/r;

    .line 56
    .line 57
    .line 58
    iput-object p1, v0, Ll3/n;->g:Ljava/lang/Object;

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/my;->zza()Lcom/google/android/gms/internal/ads/j4;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Cw;->k(Ljava/lang/Object;)Lg4/r;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iput-object p1, v0, Ll3/n;->g:Ljava/lang/Object;

    .line 70
    .line 71
    :goto_0
    new-instance p1, Lcom/google/android/gms/internal/ads/jy;

    .line 72
    .line 73
    const/4 p2, 0x1

    .line 74
    invoke-direct {p1, v0, p2}, Lcom/google/android/gms/internal/ads/jy;-><init>(Ll3/n;I)V

    .line 75
    .line 76
    .line 77
    iget-object p2, v0, Ll3/n;->b:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast p2, Ljava/util/concurrent/Executor;

    .line 80
    .line 81
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/Cw;->c(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lg4/r;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    new-instance p2, Lcom/google/android/gms/internal/ads/Xu;

    .line 86
    .line 87
    invoke-direct {p2, v0, p0}, Lcom/google/android/gms/internal/ads/Xu;-><init>(Ljava/lang/Object;I)V

    .line 88
    .line 89
    .line 90
    iget-object p0, v0, Ll3/n;->b:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast p0, Ljava/util/concurrent/Executor;

    .line 93
    .line 94
    invoke-virtual {p1, p0, p2}, Lg4/r;->b(Ljava/util/concurrent/Executor;Lg4/e;)Lg4/r;

    .line 95
    .line 96
    .line 97
    iput-object p1, v0, Ll3/n;->h:Ljava/lang/Object;

    .line 98
    .line 99
    return-object v0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "action"

    .line 7
    .line 8
    const-string v2, "no_ads_fallback"

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v1, "flow"

    .line 14
    .line 15
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sget-object p1, Ll3/p;->f:Ll3/p;

    .line 19
    .line 20
    iget-object v1, p1, Ll3/p;->a:Lp3/d;

    .line 21
    .line 22
    iget-object p1, p1, Ll3/p;->d:Lp3/a;

    .line 23
    .line 24
    iget-object p1, p1, Lp3/a;->G:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    new-instance v2, LC2/g;

    .line 30
    .line 31
    const/4 v3, 0x7

    .line 32
    invoke-direct {v2, v1, v3}, LC2/g;-><init>(Ljava/lang/Object;I)V

    .line 33
    .line 34
    .line 35
    invoke-static {p0, p1, v0, v2}, Lp3/d;->n(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lp3/c;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/HashMap;
    .locals 7

    .line 1
    invoke-virtual {p0}, Ll3/n;->b()Ljava/util/HashMap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Ll3/n;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ll3/n;

    .line 8
    .line 9
    iget-object v2, v1, Ll3/n;->e:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Lcom/google/android/gms/internal/ads/my;

    .line 12
    .line 13
    iget-object v1, v1, Ll3/n;->g:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Lg4/h;

    .line 16
    .line 17
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/my;->zza()Lcom/google/android/gms/internal/ads/j4;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1}, Lg4/h;->h()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-nez v3, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v1}, Lg4/h;->f()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    move-object v2, v1

    .line 33
    check-cast v2, Lcom/google/android/gms/internal/ads/j4;

    .line 34
    .line 35
    :goto_0
    iget-object v1, p0, Ll3/n;->a:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v1, Lcom/google/android/gms/internal/ads/ey;

    .line 38
    .line 39
    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/ey;->b:Z

    .line 40
    .line 41
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const-string v3, "gai"

    .line 46
    .line 47
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/j4;->x0()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const-string v3, "did"

    .line 55
    .line 56
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/j4;->m0()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    add-int/lit8 v1, v1, -0x1

    .line 64
    .line 65
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    const-string v3, "dst"

    .line 70
    .line 71
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/j4;->j0()Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    const-string v2, "doo"

    .line 83
    .line 84
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    iget-object v1, p0, Ll3/n;->e:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast v1, Lcom/google/android/gms/internal/ads/K4;

    .line 90
    .line 91
    if-eqz v1, :cond_1

    .line 92
    .line 93
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/K4;->zza()J

    .line 94
    .line 95
    .line 96
    move-result-wide v1

    .line 97
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    const-string v2, "nt"

    .line 102
    .line 103
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    :cond_1
    iget-object v1, p0, Ll3/n;->f:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v1, Lcom/google/android/gms/internal/ads/b5;

    .line 109
    .line 110
    if-eqz v1, :cond_3

    .line 111
    .line 112
    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/b5;->d:Z

    .line 113
    .line 114
    const-wide/16 v3, -0x1

    .line 115
    .line 116
    if-eqz v2, :cond_2

    .line 117
    .line 118
    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/b5;->b:J

    .line 119
    .line 120
    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/b5;->a:J

    .line 121
    .line 122
    sub-long/2addr v5, v1

    .line 123
    goto :goto_1

    .line 124
    :cond_2
    move-wide v5, v3

    .line 125
    :goto_1
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    const-string v2, "vs"

    .line 130
    .line 131
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    iget-object v1, p0, Ll3/n;->f:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast v1, Lcom/google/android/gms/internal/ads/b5;

    .line 137
    .line 138
    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/b5;->c:J

    .line 139
    .line 140
    iput-wide v3, v1, Lcom/google/android/gms/internal/ads/b5;->c:J

    .line 141
    .line 142
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    const-string v2, "vf"

    .line 147
    .line 148
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    :cond_3
    return-object v0
.end method

.method public final b()Ljava/util/HashMap;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Ll3/n;->a:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Lcom/google/android/gms/internal/ads/ey;

    .line 9
    .line 10
    iget-object v2, p0, Ll3/n;->b:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v2, Ll3/n;

    .line 13
    .line 14
    iget-object v3, v2, Ll3/n;->f:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v3, Lcom/google/android/gms/internal/ads/my;

    .line 17
    .line 18
    iget-object v2, v2, Ll3/n;->h:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v2, Lg4/h;

    .line 21
    .line 22
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/my;->zza()Lcom/google/android/gms/internal/ads/j4;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual {v2}, Lg4/h;->h()Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-nez v4, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v2}, Lg4/h;->f()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    move-object v3, v2

    .line 38
    check-cast v3, Lcom/google/android/gms/internal/ads/j4;

    .line 39
    .line 40
    :goto_0
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/ey;->a:Ljava/lang/String;

    .line 41
    .line 42
    const-string v2, "v"

    .line 43
    .line 44
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Ll3/n;->a:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v1, Lcom/google/android/gms/internal/ads/ey;

    .line 50
    .line 51
    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/ey;->c:Z

    .line 52
    .line 53
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const-string v2, "gms"

    .line 58
    .line 59
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/j4;->y0()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const-string v2, "int"

    .line 67
    .line 68
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Ll3/n;->d:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v1, Lcom/google/android/gms/internal/ads/R4;

    .line 74
    .line 75
    iget v2, v1, Lcom/google/android/gms/internal/ads/R4;->a:I

    .line 76
    .line 77
    packed-switch v2, :pswitch_data_0

    .line 78
    .line 79
    .line 80
    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/R4;->b:Z

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :pswitch_0
    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/R4;->b:Z

    .line 84
    .line 85
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    const-string v2, "up"

    .line 90
    .line 91
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    new-instance v1, Ljava/lang/Throwable;

    .line 95
    .line 96
    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 97
    .line 98
    .line 99
    const-string v2, "t"

    .line 100
    .line 101
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    iget-object v1, p0, Ll3/n;->g:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v1, LW0/g;

    .line 107
    .line 108
    if-eqz v1, :cond_1

    .line 109
    .line 110
    iget-wide v1, v1, LW0/g;->a:J

    .line 111
    .line 112
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    const-string v2, "tcq"

    .line 117
    .line 118
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    iget-object v1, p0, Ll3/n;->g:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast v1, LW0/g;

    .line 124
    .line 125
    iget-wide v1, v1, LW0/g;->b:J

    .line 126
    .line 127
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    const-string v2, "tpq"

    .line 132
    .line 133
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    iget-object v1, p0, Ll3/n;->g:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast v1, LW0/g;

    .line 139
    .line 140
    iget-wide v1, v1, LW0/g;->c:J

    .line 141
    .line 142
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    const-string v2, "tcv"

    .line 147
    .line 148
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    iget-object v1, p0, Ll3/n;->g:Ljava/lang/Object;

    .line 152
    .line 153
    check-cast v1, LW0/g;

    .line 154
    .line 155
    iget-wide v1, v1, LW0/g;->d:J

    .line 156
    .line 157
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    const-string v2, "tpv"

    .line 162
    .line 163
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    iget-object v1, p0, Ll3/n;->g:Ljava/lang/Object;

    .line 167
    .line 168
    check-cast v1, LW0/g;

    .line 169
    .line 170
    iget-wide v1, v1, LW0/g;->e:J

    .line 171
    .line 172
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    const-string v2, "tchv"

    .line 177
    .line 178
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    iget-object v1, p0, Ll3/n;->g:Ljava/lang/Object;

    .line 182
    .line 183
    check-cast v1, LW0/g;

    .line 184
    .line 185
    iget-wide v1, v1, LW0/g;->f:J

    .line 186
    .line 187
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    const-string v2, "tphv"

    .line 192
    .line 193
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    iget-object v1, p0, Ll3/n;->g:Ljava/lang/Object;

    .line 197
    .line 198
    check-cast v1, LW0/g;

    .line 199
    .line 200
    iget-wide v1, v1, LW0/g;->g:J

    .line 201
    .line 202
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    const-string v2, "tcc"

    .line 207
    .line 208
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    iget-object v1, p0, Ll3/n;->g:Ljava/lang/Object;

    .line 212
    .line 213
    check-cast v1, LW0/g;

    .line 214
    .line 215
    iget-wide v1, v1, LW0/g;->h:J

    .line 216
    .line 217
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    const-string v2, "tpc"

    .line 222
    .line 223
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    :cond_1
    return-object v0

    .line 227
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
