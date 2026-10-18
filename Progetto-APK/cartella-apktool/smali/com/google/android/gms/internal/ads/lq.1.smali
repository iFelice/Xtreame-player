.class public final Lcom/google/android/gms/internal/ads/lq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lp3/a;

.field public final c:Lcom/google/android/gms/internal/ads/Ov;

.field public final d:Lcom/google/android/gms/internal/ads/Ef;

.field public final e:Lcom/google/android/gms/internal/ads/Fn;

.field public f:Lcom/google/android/gms/internal/ads/Bx;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lp3/a;Lcom/google/android/gms/internal/ads/Ov;Lcom/google/android/gms/internal/ads/Ef;Lcom/google/android/gms/internal/ads/Fn;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lq;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/lq;->b:Lp3/a;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/lq;->c:Lcom/google/android/gms/internal/ads/Ov;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/lq;->d:Lcom/google/android/gms/internal/ads/Ef;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/lq;->e:Lcom/google/android/gms/internal/ads/Fn;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lq;->f:Lcom/google/android/gms/internal/ads/Bx;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lq;->d:Lcom/google/android/gms/internal/ads/Ef;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v1, "onSdkImpression"

    .line 11
    .line 12
    sget-object v2, Lcom/google/android/gms/internal/ads/UA;->M:Lcom/google/android/gms/internal/ads/UA;

    .line 13
    .line 14
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/sa;->w(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :goto_0
    monitor-exit p0

    .line 24
    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lq;->f:Lcom/google/android/gms/internal/ads/Bx;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/lq;->d:Lcom/google/android/gms/internal/ads/Ef;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/Ef;->t0()Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Landroid/view/View;

    .line 29
    .line 30
    sget-object v3, Lk3/l;->A:Lk3/l;

    .line 31
    .line 32
    iget-object v3, v3, Lk3/l;->v:Lc4/y;

    .line 33
    .line 34
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    new-instance v3, Lcom/google/android/gms/internal/ads/co;

    .line 38
    .line 39
    const/4 v4, 0x3

    .line 40
    invoke-direct {v3, v4, v0, v2}, Lcom/google/android/gms/internal/ads/co;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-static {v3}, Lc4/y;->k(Ljava/lang/Runnable;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lq;->d:Lcom/google/android/gms/internal/ads/Ef;

    .line 50
    .line 51
    const-string v1, "onSdkLoaded"

    .line 52
    .line 53
    sget-object v2, Lcom/google/android/gms/internal/ads/UA;->M:Lcom/google/android/gms/internal/ads/UA;

    .line 54
    .line 55
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/sa;->w(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    monitor-exit p0

    .line 59
    return-void

    .line 60
    :cond_1
    monitor-exit p0

    .line 61
    return-void

    .line 62
    :goto_1
    monitor-exit p0

    .line 63
    throw v0
.end method

.method public final declared-synchronized c()Z
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lq;->c:Lcom/google/android/gms/internal/ads/Ov;

    .line 3
    .line 4
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/Ov;->T:Z

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_6

    .line 8
    .line 9
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->G4:Lcom/google/android/gms/internal/ads/J7;

    .line 10
    .line 11
    sget-object v2, Ll3/q;->d:Ll3/q;

    .line 12
    .line 13
    iget-object v3, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 14
    .line 15
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/Boolean;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_6

    .line 26
    .line 27
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->J4:Lcom/google/android/gms/internal/ads/J7;

    .line 28
    .line 29
    iget-object v3, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 30
    .line 31
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Ljava/lang/Boolean;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_6

    .line 42
    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lq;->d:Lcom/google/android/gms/internal/ads/Ef;

    .line 44
    .line 45
    if-nez v0, :cond_0

    .line 46
    .line 47
    goto/16 :goto_1

    .line 48
    .line 49
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lq;->f:Lcom/google/android/gms/internal/ads/Bx;

    .line 50
    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    const-string v0, "Omid javascript session service already started for ad."

    .line 54
    .line 55
    invoke-static {v0}, Lp3/h;->g(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    monitor-exit p0

    .line 59
    return v1

    .line 60
    :catchall_0
    move-exception v0

    .line 61
    goto/16 :goto_2

    .line 62
    .line 63
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lq;->a:Landroid/content/Context;

    .line 64
    .line 65
    sget-object v3, Lk3/l;->A:Lk3/l;

    .line 66
    .line 67
    iget-object v4, v3, Lk3/l;->v:Lc4/y;

    .line 68
    .line 69
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    invoke-static {v0}, Lc4/y;->g(Landroid/content/Context;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_2

    .line 77
    .line 78
    const-string v0, "Unable to initialize omid."

    .line 79
    .line 80
    invoke-static {v0}, Lp3/h;->g(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    .line 82
    .line 83
    monitor-exit p0

    .line 84
    return v1

    .line 85
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lq;->c:Lcom/google/android/gms/internal/ads/Ov;

    .line 86
    .line 87
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Ov;->V:Lcom/google/android/gms/internal/ads/Xu;

    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    sget-object v4, Lcom/google/android/gms/internal/ads/Q7;->L4:Lcom/google/android/gms/internal/ads/J7;

    .line 93
    .line 94
    iget-object v5, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 95
    .line 96
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    check-cast v4, Ljava/lang/String;

    .line 101
    .line 102
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Xu;->H:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v0, Lorg/json/JSONObject;

    .line 105
    .line 106
    const/4 v5, 0x1

    .line 107
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_6

    .line 112
    .line 113
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lq;->b:Lp3/a;

    .line 114
    .line 115
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/lq;->d:Lcom/google/android/gms/internal/ads/Ef;

    .line 116
    .line 117
    iget-object v3, v3, Lk3/l;->v:Lc4/y;

    .line 118
    .line 119
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/Ef;->h0()Landroid/webkit/WebView;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    invoke-static {v0, v4}, Lc4/y;->b(Lp3/a;Landroid/webkit/WebView;)Lcom/google/android/gms/internal/ads/Bx;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    sget-object v3, Lcom/google/android/gms/internal/ads/Q7;->K4:Lcom/google/android/gms/internal/ads/J7;

    .line 131
    .line 132
    iget-object v2, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 133
    .line 134
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    check-cast v2, Ljava/lang/Boolean;

    .line 139
    .line 140
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    if-eqz v2, :cond_4

    .line 145
    .line 146
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/lq;->e:Lcom/google/android/gms/internal/ads/Fn;

    .line 147
    .line 148
    if-eqz v0, :cond_3

    .line 149
    .line 150
    const-string v3, "1"

    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_3
    const-string v3, "0"

    .line 154
    .line 155
    :goto_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Fn;->a()Lcom/google/android/gms/internal/ads/Om;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    const-string v4, "omid_js_session_success"

    .line 160
    .line 161
    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/internal/ads/Om;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Om;->u()V

    .line 165
    .line 166
    .line 167
    :cond_4
    if-nez v0, :cond_5

    .line 168
    .line 169
    const-string v0, "Unable to create javascript session service."

    .line 170
    .line 171
    invoke-static {v0}, Lp3/h;->g(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 172
    .line 173
    .line 174
    monitor-exit p0

    .line 175
    return v1

    .line 176
    :cond_5
    :try_start_3
    const-string v1, "Created omid javascript session service."

    .line 177
    .line 178
    invoke-static {v1}, Lp3/h;->f(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/lq;->f:Lcom/google/android/gms/internal/ads/Bx;

    .line 182
    .line 183
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lq;->d:Lcom/google/android/gms/internal/ads/Ef;

    .line 184
    .line 185
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/Ef;->H0(Lcom/google/android/gms/internal/ads/lq;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 186
    .line 187
    .line 188
    monitor-exit p0

    .line 189
    return v5

    .line 190
    :cond_6
    :goto_1
    monitor-exit p0

    .line 191
    return v1

    .line 192
    :goto_2
    monitor-exit p0

    .line 193
    throw v0
.end method
