.class public final Lcom/google/android/gms/internal/ads/Hq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/vq;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/google/android/gms/internal/ads/di;

.field public c:Landroid/view/View;

.field public d:Lcom/google/android/gms/internal/ads/jb;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/di;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Hq;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Hq;->b:Lcom/google/android/gms/internal/ads/di;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/Ov;Lcom/google/android/gms/internal/ads/sq;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    :try_start_0
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/sq;->b:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v4, Lcom/google/android/gms/internal/ads/Ib;

    .line 12
    .line 13
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/Ov;->Z:Ljava/lang/String;

    .line 14
    .line 15
    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/ads/Ib;->a3(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sget-object v4, Lcom/google/android/gms/internal/ads/Q7;->i7:Lcom/google/android/gms/internal/ads/J7;

    .line 19
    .line 20
    sget-object v5, Ll3/q;->d:Ll3/q;

    .line 21
    .line 22
    iget-object v5, v5, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 23
    .line 24
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    check-cast v4, Ljava/lang/Boolean;

    .line 29
    .line 30
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 31
    .line 32
    .line 33
    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/Hq;->a:Landroid/content/Context;

    .line 35
    .line 36
    iget-object v6, v3, Lcom/google/android/gms/internal/ads/sq;->c:Lcom/google/android/gms/internal/ads/Gj;

    .line 37
    .line 38
    iget-object v7, v3, Lcom/google/android/gms/internal/ads/sq;->b:Ljava/lang/Object;

    .line 39
    .line 40
    iget-object v8, v2, Lcom/google/android/gms/internal/ads/Ov;->v:Lorg/json/JSONObject;

    .line 41
    .line 42
    if-eqz v4, :cond_0

    .line 43
    .line 44
    :try_start_1
    iget-boolean v4, v2, Lcom/google/android/gms/internal/ads/Ov;->g0:Z

    .line 45
    .line 46
    if-eqz v4, :cond_0

    .line 47
    .line 48
    move-object v9, v7

    .line 49
    check-cast v9, Lcom/google/android/gms/internal/ads/Ib;

    .line 50
    .line 51
    iget-object v10, v2, Lcom/google/android/gms/internal/ads/Ov;->U:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v11

    .line 57
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/Tv;->a:Lcom/google/android/gms/internal/ads/Xu;

    .line 58
    .line 59
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/Xu;->H:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v2, Lcom/google/android/gms/internal/ads/Yv;

    .line 62
    .line 63
    iget-object v12, v2, Lcom/google/android/gms/internal/ads/Yv;->d:Ll3/b1;

    .line 64
    .line 65
    new-instance v13, LR3/b;

    .line 66
    .line 67
    invoke-direct {v13, v5}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    new-instance v14, Lcom/google/android/gms/internal/ads/Gq;

    .line 71
    .line 72
    invoke-direct {v14, v1, v3}, Lcom/google/android/gms/internal/ads/Gq;-><init>(Lcom/google/android/gms/internal/ads/Hq;Lcom/google/android/gms/internal/ads/sq;)V

    .line 73
    .line 74
    .line 75
    move-object v15, v6

    .line 76
    check-cast v15, Lcom/google/android/gms/internal/ads/hb;

    .line 77
    .line 78
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Tv;->a:Lcom/google/android/gms/internal/ads/Xu;

    .line 79
    .line 80
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Xu;->H:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v0, Lcom/google/android/gms/internal/ads/Yv;

    .line 83
    .line 84
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Yv;->e:Ll3/d1;

    .line 85
    .line 86
    move-object/from16 v16, v0

    .line 87
    .line 88
    invoke-interface/range {v9 .. v16}, Lcom/google/android/gms/internal/ads/Ib;->W(Ljava/lang/String;Ljava/lang/String;Ll3/b1;LR3/a;Lcom/google/android/gms/internal/ads/Ab;Lcom/google/android/gms/internal/ads/hb;Ll3/d1;)V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    goto :goto_0

    .line 94
    :cond_0
    move-object v4, v7

    .line 95
    check-cast v4, Lcom/google/android/gms/internal/ads/Ib;

    .line 96
    .line 97
    iget-object v7, v2, Lcom/google/android/gms/internal/ads/Ov;->U:Ljava/lang/String;

    .line 98
    .line 99
    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v8

    .line 103
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/Tv;->a:Lcom/google/android/gms/internal/ads/Xu;

    .line 104
    .line 105
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/Xu;->H:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v2, Lcom/google/android/gms/internal/ads/Yv;

    .line 108
    .line 109
    iget-object v9, v2, Lcom/google/android/gms/internal/ads/Yv;->d:Ll3/b1;

    .line 110
    .line 111
    new-instance v10, LR3/b;

    .line 112
    .line 113
    invoke-direct {v10, v5}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    new-instance v11, Lcom/google/android/gms/internal/ads/Gq;

    .line 117
    .line 118
    invoke-direct {v11, v1, v3}, Lcom/google/android/gms/internal/ads/Gq;-><init>(Lcom/google/android/gms/internal/ads/Hq;Lcom/google/android/gms/internal/ads/sq;)V

    .line 119
    .line 120
    .line 121
    move-object v12, v6

    .line 122
    check-cast v12, Lcom/google/android/gms/internal/ads/hb;

    .line 123
    .line 124
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Tv;->a:Lcom/google/android/gms/internal/ads/Xu;

    .line 125
    .line 126
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Xu;->H:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast v0, Lcom/google/android/gms/internal/ads/Yv;

    .line 129
    .line 130
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Yv;->e:Ll3/d1;

    .line 131
    .line 132
    move-object v2, v4

    .line 133
    move-object v3, v7

    .line 134
    move-object v4, v8

    .line 135
    move-object v5, v9

    .line 136
    move-object v6, v10

    .line 137
    move-object v7, v11

    .line 138
    move-object v8, v12

    .line 139
    move-object v9, v0

    .line 140
    invoke-interface/range {v2 .. v9}, Lcom/google/android/gms/internal/ads/Ib;->c3(Ljava/lang/String;Ljava/lang/String;Ll3/b1;LR3/a;Lcom/google/android/gms/internal/ads/Ab;Lcom/google/android/gms/internal/ads/hb;Ll3/d1;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :goto_0
    new-instance v2, Lcom/google/android/gms/internal/ads/aw;

    .line 145
    .line 146
    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 147
    .line 148
    .line 149
    throw v2
.end method

.method public final b(Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/Ov;Lcom/google/android/gms/internal/ads/sq;)Ljava/lang/Object;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    sget-object v3, Lcom/google/android/gms/internal/ads/Q7;->i7:Lcom/google/android/gms/internal/ads/J7;

    .line 8
    .line 9
    sget-object v4, Ll3/q;->d:Ll3/q;

    .line 10
    .line 11
    iget-object v4, v4, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 12
    .line 13
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Ljava/lang/Boolean;

    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/4 v4, 0x0

    .line 24
    const/4 v5, 0x2

    .line 25
    const/4 v6, 0x0

    .line 26
    if-eqz v3, :cond_2

    .line 27
    .line 28
    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/Ov;->g0:Z

    .line 29
    .line 30
    if-eqz v3, :cond_2

    .line 31
    .line 32
    :try_start_0
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/Hq;->d:Lcom/google/android/gms/internal/ads/jb;

    .line 33
    .line 34
    check-cast v3, Lcom/google/android/gms/internal/ads/ib;

    .line 35
    .line 36
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/ib;->z3()LR3/a;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-static {v3}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Landroid/view/View;

    .line 45
    .line 46
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/Hq;->d:Lcom/google/android/gms/internal/ads/jb;

    .line 47
    .line 48
    check-cast v7, Lcom/google/android/gms/internal/ads/ib;

    .line 49
    .line 50
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 51
    .line 52
    .line 53
    move-result-object v8

    .line 54
    invoke-virtual {v7, v5, v8}, Lcom/google/android/gms/internal/ads/y5;->n2(ILandroid/os/Parcel;)Landroid/os/Parcel;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    sget-object v8, Lcom/google/android/gms/internal/ads/A5;->a:Ljava/lang/ClassLoader;

    .line 59
    .line 60
    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    .line 61
    .line 62
    .line 63
    move-result v8

    .line 64
    if-eqz v8, :cond_0

    .line 65
    .line 66
    const/4 v8, 0x1

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    const/4 v8, 0x0

    .line 69
    :goto_0
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 70
    .line 71
    .line 72
    if-eqz v3, :cond_1

    .line 73
    .line 74
    if-eqz v8, :cond_3

    .line 75
    .line 76
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    new-instance v8, Lv3/c;

    .line 81
    .line 82
    const/4 v9, 0x5

    .line 83
    invoke-direct {v8, v1, v3, v0, v9}, Lv3/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 84
    .line 85
    .line 86
    sget-object v3, Lcom/google/android/gms/internal/ads/se;->e:Lcom/google/android/gms/internal/ads/re;

    .line 87
    .line 88
    invoke-static {v7, v8, v3}, Lcom/google/android/gms/internal/ads/Cw;->d2(LD4/b;Lcom/google/android/gms/internal/ads/RB;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/JB;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    :try_start_1
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/GB;->get()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    check-cast v3, Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :catch_0
    move-exception v0

    .line 100
    goto :goto_1

    .line 101
    :catch_1
    move-exception v0

    .line 102
    :goto_1
    new-instance v2, Lcom/google/android/gms/internal/ads/aw;

    .line 103
    .line 104
    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 105
    .line 106
    .line 107
    throw v2

    .line 108
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/aw;

    .line 109
    .line 110
    new-instance v2, Ljava/lang/Exception;

    .line 111
    .line 112
    const-string v3, "BannerRtbAdapterWrapper interscrollerView should not be null"

    .line 113
    .line 114
    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 118
    .line 119
    .line 120
    throw v0

    .line 121
    :catch_2
    move-exception v0

    .line 122
    new-instance v2, Lcom/google/android/gms/internal/ads/aw;

    .line 123
    .line 124
    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 125
    .line 126
    .line 127
    throw v2

    .line 128
    :cond_2
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/Hq;->c:Landroid/view/View;

    .line 129
    .line 130
    :cond_3
    :goto_2
    iget-object v7, v2, Lcom/google/android/gms/internal/ads/sq;->a:Ljava/lang/String;

    .line 131
    .line 132
    new-instance v8, La3/b;

    .line 133
    .line 134
    move-object/from16 v9, p1

    .line 135
    .line 136
    invoke-direct {v8, v9, v0, v7}, La3/b;-><init>(Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/Ov;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    new-instance v7, Lcom/google/android/gms/internal/ads/xc;

    .line 140
    .line 141
    new-instance v9, Lcom/google/android/gms/internal/pal/r1;

    .line 142
    .line 143
    invoke-direct {v9, v2, v5}, Lcom/google/android/gms/internal/pal/r1;-><init>(Ljava/lang/Object;I)V

    .line 144
    .line 145
    .line 146
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Ov;->u:Ljava/util/List;

    .line 147
    .line 148
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    check-cast v0, Lcom/google/android/gms/internal/ads/Pv;

    .line 153
    .line 154
    invoke-direct {v7, v3, v6, v9, v0}, Lcom/google/android/gms/internal/ads/xc;-><init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/Ef;Lcom/google/android/gms/internal/ads/vi;Lcom/google/android/gms/internal/ads/Pv;)V

    .line 155
    .line 156
    .line 157
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/Hq;->b:Lcom/google/android/gms/internal/ads/di;

    .line 158
    .line 159
    check-cast v0, Lcom/google/android/gms/internal/ads/Ig;

    .line 160
    .line 161
    new-instance v4, Lcom/google/android/gms/internal/ads/Gg;

    .line 162
    .line 163
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Ig;->e:Lcom/google/android/gms/internal/ads/Ig;

    .line 164
    .line 165
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Ig;->d:Lcom/google/android/gms/internal/ads/Bg;

    .line 166
    .line 167
    invoke-direct {v4, v0, v5, v8, v7}, Lcom/google/android/gms/internal/ads/Gg;-><init>(Lcom/google/android/gms/internal/ads/Bg;Lcom/google/android/gms/internal/ads/Ig;La3/b;Lcom/google/android/gms/internal/ads/xc;)V

    .line 168
    .line 169
    .line 170
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/Gg;->t0:Lcom/google/android/gms/internal/ads/MJ;

    .line 171
    .line 172
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    check-cast v0, Lcom/google/android/gms/internal/ads/Mk;

    .line 177
    .line 178
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/Mk;->a1(Landroid/view/View;)V

    .line 179
    .line 180
    .line 181
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/sq;->c:Lcom/google/android/gms/internal/ads/Gj;

    .line 182
    .line 183
    check-cast v0, Lcom/google/android/gms/internal/ads/Nq;

    .line 184
    .line 185
    new-instance v2, Lcom/google/android/gms/internal/ads/Ir;

    .line 186
    .line 187
    iget-object v3, v4, Lcom/google/android/gms/internal/ads/Gg;->f0:Lcom/google/android/gms/internal/ads/MJ;

    .line 188
    .line 189
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    move-object v7, v3

    .line 194
    check-cast v7, Lcom/google/android/gms/internal/ads/nj;

    .line 195
    .line 196
    iget-object v3, v4, Lcom/google/android/gms/internal/ads/Gg;->l0:Lcom/google/android/gms/internal/ads/MJ;

    .line 197
    .line 198
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    move-object v8, v3

    .line 203
    check-cast v8, Lcom/google/android/gms/internal/ads/Nk;

    .line 204
    .line 205
    iget-object v3, v4, Lcom/google/android/gms/internal/ads/Gg;->i0:Lcom/google/android/gms/internal/ads/MJ;

    .line 206
    .line 207
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    move-object v9, v3

    .line 212
    check-cast v9, Lcom/google/android/gms/internal/ads/zj;

    .line 213
    .line 214
    iget-object v3, v4, Lcom/google/android/gms/internal/ads/Gg;->d0:Lcom/google/android/gms/internal/ads/MJ;

    .line 215
    .line 216
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    move-object v10, v3

    .line 221
    check-cast v10, Lcom/google/android/gms/internal/ads/Fj;

    .line 222
    .line 223
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/Gg;->H0()Lcom/google/android/gms/internal/ads/Hj;

    .line 224
    .line 225
    .line 226
    move-result-object v11

    .line 227
    iget-object v3, v5, Lcom/google/android/gms/internal/ads/Ig;->J0:Lcom/google/android/gms/internal/ads/MJ;

    .line 228
    .line 229
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v3

    .line 233
    move-object v12, v3

    .line 234
    check-cast v12, Lcom/google/android/gms/internal/ads/jk;

    .line 235
    .line 236
    iget-object v3, v4, Lcom/google/android/gms/internal/ads/Gg;->o0:Lcom/google/android/gms/internal/ads/MJ;

    .line 237
    .line 238
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    move-object v13, v3

    .line 243
    check-cast v13, Lcom/google/android/gms/internal/ads/Qj;

    .line 244
    .line 245
    iget-object v3, v4, Lcom/google/android/gms/internal/ads/Gg;->p0:Lcom/google/android/gms/internal/ads/MJ;

    .line 246
    .line 247
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    move-object v14, v3

    .line 252
    check-cast v14, Lcom/google/android/gms/internal/ads/Uk;

    .line 253
    .line 254
    iget-object v3, v4, Lcom/google/android/gms/internal/ads/Gg;->q0:Lcom/google/android/gms/internal/ads/MJ;

    .line 255
    .line 256
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v3

    .line 260
    move-object v15, v3

    .line 261
    check-cast v15, Lcom/google/android/gms/internal/ads/hk;

    .line 262
    .line 263
    iget-object v3, v4, Lcom/google/android/gms/internal/ads/Gg;->r0:Lcom/google/android/gms/internal/ads/MJ;

    .line 264
    .line 265
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    move-object/from16 v16, v3

    .line 270
    .line 271
    check-cast v16, Lcom/google/android/gms/internal/ads/wj;

    .line 272
    .line 273
    move-object v6, v2

    .line 274
    invoke-direct/range {v6 .. v16}, Lcom/google/android/gms/internal/ads/Ir;-><init>(Lcom/google/android/gms/internal/ads/nj;Lcom/google/android/gms/internal/ads/Nk;Lcom/google/android/gms/internal/ads/zj;Lcom/google/android/gms/internal/ads/Fj;Lcom/google/android/gms/internal/ads/Hj;Lcom/google/android/gms/internal/ads/jk;Lcom/google/android/gms/internal/ads/Qj;Lcom/google/android/gms/internal/ads/Uk;Lcom/google/android/gms/internal/ads/hk;Lcom/google/android/gms/internal/ads/wj;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/Nq;->A3(Lcom/google/android/gms/internal/ads/Mr;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/Gg;->G0()Lcom/google/android/gms/internal/ads/Oh;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    return-object v0
.end method
