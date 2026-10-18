.class public final Lcom/google/android/gms/internal/ads/so;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/m;
.implements Lcom/google/android/gms/internal/ads/cg;


# instance fields
.field public final G:Landroid/content/Context;

.field public final H:Lp3/a;

.field public I:Lcom/google/android/gms/internal/ads/qo;

.field public J:Lcom/google/android/gms/internal/ads/Ef;

.field public K:Z

.field public L:Z

.field public M:J

.field public N:Ll3/m0;

.field public O:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lp3/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/so;->G:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/so;->H:Lp3/a;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final O2()V
    .locals 0

    .line 1
    return-void
.end method

.method public final Y()V
    .locals 0

    .line 1
    return-void
.end method

.method public final declared-synchronized a(Ll3/m0;Lcom/google/android/gms/internal/ads/O9;Lcom/google/android/gms/internal/ads/E9;Lcom/google/android/gms/internal/ads/O9;)V
    .locals 41

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/so;->c(Ll3/m0;)Z

    .line 7
    .line 8
    .line 9
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :cond_0
    const/4 v3, 0x0

    .line 15
    const/16 v4, 0x11

    .line 16
    .line 17
    :try_start_1
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 18
    .line 19
    iget-object v5, v0, Lk3/l;->d:Lcom/google/android/gms/internal/ads/y1;

    .line 20
    .line 21
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/so;->G:Landroid/content/Context;

    .line 22
    .line 23
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/so;->H:Lp3/a;

    .line 24
    .line 25
    new-instance v7, LA2/i;

    .line 26
    .line 27
    const/4 v5, 0x0

    .line 28
    const/4 v15, 0x5

    .line 29
    invoke-direct {v7, v5, v5, v5, v15}, LA2/i;-><init>(IIII)V

    .line 30
    .line 31
    .line 32
    const-string v18, ""

    .line 33
    .line 34
    new-instance v12, Lcom/google/android/gms/internal/ads/w6;

    .line 35
    .line 36
    invoke-direct {v12}, Lcom/google/android/gms/internal/ads/w6;-><init>()V

    .line 37
    .line 38
    .line 39
    const/4 v14, 0x0

    .line 40
    const/16 v17, 0x0

    .line 41
    .line 42
    const/16 v19, 0x0

    .line 43
    .line 44
    const/16 v20, 0x0

    .line 45
    .line 46
    const/4 v11, 0x0

    .line 47
    const/4 v13, 0x0

    .line 48
    const/4 v10, 0x0

    .line 49
    const/4 v9, 0x0

    .line 50
    const/4 v5, 0x0

    .line 51
    const/16 v16, 0x0

    .line 52
    .line 53
    move-object v15, v5

    .line 54
    invoke-static/range {v6 .. v20}, Lcom/google/android/gms/internal/ads/y1;->e(Landroid/content/Context;LA2/i;Lp3/a;Lk3/a;Lcom/google/android/gms/internal/ads/Of;Lcom/google/android/gms/internal/ads/H4;Lcom/google/android/gms/internal/ads/w6;Lcom/google/android/gms/internal/ads/e8;Lcom/google/android/gms/internal/ads/hq;Lcom/google/android/gms/internal/ads/Ov;Lcom/google/android/gms/internal/ads/Qv;Lcom/google/android/gms/internal/ads/Zv;Ljava/lang/String;ZZ)Lcom/google/android/gms/internal/ads/Ef;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    iput-object v5, v1, Lcom/google/android/gms/internal/ads/so;->J:Lcom/google/android/gms/internal/ads/Ef;
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/Mf; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    .line 60
    :try_start_2
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Ef;->zzN()Lcom/google/android/gms/internal/ads/Xf;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    if-nez v5, :cond_1

    .line 65
    .line 66
    const-string v5, "Failed to obtain a web view for the ad inspector"

    .line 67
    .line 68
    invoke-static {v5}, Lp3/h;->g(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    .line 70
    .line 71
    :try_start_3
    iget-object v0, v0, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 72
    .line 73
    new-instance v5, Ljava/lang/NullPointerException;

    .line 74
    .line 75
    const-string v6, "Failed to obtain a web view for the ad inspector"

    .line 76
    .line 77
    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const-string v6, "InspectorUi.openInspector 2"

    .line 81
    .line 82
    invoke-virtual {v0, v6, v5}, Lcom/google/android/gms/internal/ads/le;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    .line 84
    .line 85
    const-string v0, "Failed to obtain a web view for the ad inspector"

    .line 86
    .line 87
    invoke-static {v4, v0, v3}, Lo3/r;->H(ILjava/lang/String;Ll3/z0;)Ll3/z0;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-interface {v2, v0}, Ll3/m0;->s0(Ll3/z0;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 92
    .line 93
    .line 94
    monitor-exit p0

    .line 95
    return-void

    .line 96
    :catchall_0
    move-exception v0

    .line 97
    goto/16 :goto_0

    .line 98
    .line 99
    :catch_0
    move-exception v0

    .line 100
    :try_start_4
    const-string v2, "InspectorUi.openInspector 3"

    .line 101
    .line 102
    sget-object v3, Lk3/l;->A:Lk3/l;

    .line 103
    .line 104
    iget-object v3, v3, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 105
    .line 106
    invoke-virtual {v3, v2, v0}, Lcom/google/android/gms/internal/ads/le;->i(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 107
    .line 108
    .line 109
    monitor-exit p0

    .line 110
    return-void

    .line 111
    :cond_1
    :try_start_5
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/so;->N:Ll3/m0;

    .line 112
    .line 113
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/so;->G:Landroid/content/Context;

    .line 114
    .line 115
    new-instance v3, Lcom/google/android/gms/internal/ads/E9;

    .line 116
    .line 117
    const/4 v4, 0x5

    .line 118
    invoke-direct {v3, v2, v4}, Lcom/google/android/gms/internal/ads/E9;-><init>(Ljava/lang/Object;I)V

    .line 119
    .line 120
    .line 121
    const/16 v36, 0x0

    .line 122
    .line 123
    const/16 v40, 0x0

    .line 124
    .line 125
    const/16 v22, 0x0

    .line 126
    .line 127
    const/16 v23, 0x0

    .line 128
    .line 129
    const/16 v24, 0x0

    .line 130
    .line 131
    const/16 v25, 0x0

    .line 132
    .line 133
    const/16 v26, 0x0

    .line 134
    .line 135
    const/16 v27, 0x0

    .line 136
    .line 137
    const/16 v28, 0x0

    .line 138
    .line 139
    const/16 v29, 0x0

    .line 140
    .line 141
    const/16 v30, 0x0

    .line 142
    .line 143
    const/16 v31, 0x0

    .line 144
    .line 145
    const/16 v32, 0x0

    .line 146
    .line 147
    const/16 v33, 0x0

    .line 148
    .line 149
    const/16 v34, 0x0

    .line 150
    .line 151
    move-object/from16 v21, v5

    .line 152
    .line 153
    move-object/from16 v35, p2

    .line 154
    .line 155
    move-object/from16 v37, v3

    .line 156
    .line 157
    move-object/from16 v38, p3

    .line 158
    .line 159
    move-object/from16 v39, p4

    .line 160
    .line 161
    invoke-virtual/range {v21 .. v40}, Lcom/google/android/gms/internal/ads/Xf;->y(Ll3/a;Lcom/google/android/gms/internal/ads/F9;Ln3/m;Lcom/google/android/gms/internal/ads/G9;Ln3/c;ZLcom/google/android/gms/internal/ads/P9;Lk3/b;Lcom/google/android/gms/internal/ads/Of;Lcom/google/android/gms/internal/ads/Hd;Lcom/google/android/gms/internal/ads/cq;Lcom/google/android/gms/internal/ads/ix;Lcom/google/android/gms/internal/ads/Fn;Lcom/google/android/gms/internal/ads/O9;Lcom/google/android/gms/internal/ads/Ok;Lcom/google/android/gms/internal/ads/E9;Lcom/google/android/gms/internal/ads/E9;Lcom/google/android/gms/internal/ads/O9;Lcom/google/android/gms/internal/ads/oh;)V

    .line 162
    .line 163
    .line 164
    iput-object v1, v5, Lcom/google/android/gms/internal/ads/Xf;->M:Lcom/google/android/gms/internal/ads/cg;

    .line 165
    .line 166
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/so;->J:Lcom/google/android/gms/internal/ads/Ef;

    .line 167
    .line 168
    sget-object v3, Lcom/google/android/gms/internal/ads/Q7;->i8:Lcom/google/android/gms/internal/ads/J7;

    .line 169
    .line 170
    sget-object v4, Ll3/q;->d:Ll3/q;

    .line 171
    .line 172
    iget-object v4, v4, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 173
    .line 174
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    check-cast v3, Ljava/lang/String;

    .line 179
    .line 180
    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/Ef;->loadUrl(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/so;->G:Landroid/content/Context;

    .line 184
    .line 185
    new-instance v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 186
    .line 187
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/so;->J:Lcom/google/android/gms/internal/ads/Ef;

    .line 188
    .line 189
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/so;->H:Lp3/a;

    .line 190
    .line 191
    invoke-direct {v3, v1, v4, v5}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/so;Lcom/google/android/gms/internal/ads/Ef;Lp3/a;)V

    .line 192
    .line 193
    .line 194
    const/4 v4, 0x1

    .line 195
    invoke-static {v2, v3, v4}, LF2/G;->M(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    .line 196
    .line 197
    .line 198
    iget-object v0, v0, Lk3/l;->j:LP3/b;

    .line 199
    .line 200
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 201
    .line 202
    .line 203
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 204
    .line 205
    .line 206
    move-result-wide v2

    .line 207
    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/so;->M:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 208
    .line 209
    monitor-exit p0

    .line 210
    return-void

    .line 211
    :catch_1
    move-exception v0

    .line 212
    :try_start_6
    const-string v5, "Failed to obtain a web view for the ad inspector"

    .line 213
    .line 214
    invoke-static {v5, v0}, Lp3/h;->h(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 215
    .line 216
    .line 217
    :try_start_7
    sget-object v5, Lk3/l;->A:Lk3/l;

    .line 218
    .line 219
    iget-object v5, v5, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 220
    .line 221
    const-string v6, "InspectorUi.openInspector 0"

    .line 222
    .line 223
    invoke-virtual {v5, v6, v0}, Lcom/google/android/gms/internal/ads/le;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 224
    .line 225
    .line 226
    const-string v0, "Failed to obtain a web view for the ad inspector"

    .line 227
    .line 228
    invoke-static {v4, v0, v3}, Lo3/r;->H(ILjava/lang/String;Ll3/z0;)Ll3/z0;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-interface {v2, v0}, Ll3/m0;->s0(Ll3/z0;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 233
    .line 234
    .line 235
    monitor-exit p0

    .line 236
    return-void

    .line 237
    :catch_2
    move-exception v0

    .line 238
    :try_start_8
    const-string v2, "InspectorUi.openInspector 1"

    .line 239
    .line 240
    sget-object v3, Lk3/l;->A:Lk3/l;

    .line 241
    .line 242
    iget-object v3, v3, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 243
    .line 244
    invoke-virtual {v3, v2, v0}, Lcom/google/android/gms/internal/ads/le;->i(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 245
    .line 246
    .line 247
    monitor-exit p0

    .line 248
    return-void

    .line 249
    :goto_0
    monitor-exit p0

    .line 250
    throw v0
.end method

.method public final declared-synchronized b(Ljava/lang/String;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/so;->K:Z

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/so;->L:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/se;->e:Lcom/google/android/gms/internal/ads/re;

    .line 12
    .line 13
    new-instance v1, Lcom/google/android/gms/internal/ads/co;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v1, v2, p0, p1}, Lcom/google/android/gms/internal/ads/co;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/re;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    monitor-exit p0

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    monitor-exit p0

    .line 27
    return-void

    .line 28
    :goto_1
    monitor-exit p0

    .line 29
    throw p1
.end method

.method public final declared-synchronized c(Ll3/m0;)Z
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->h8:Lcom/google/android/gms/internal/ads/J7;

    .line 3
    .line 4
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 5
    .line 6
    iget-object v2, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 7
    .line 8
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

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
    const/16 v2, 0x10

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    const-string v0, "Ad inspector had an internal error."

    .line 25
    .line 26
    invoke-static {v0}, Lp3/h;->g(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    :try_start_1
    invoke-static {v2, v4, v4}, Lo3/r;->H(ILjava/lang/String;Ll3/z0;)Ll3/z0;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-interface {p1, v0}, Ll3/m0;->s0(Ll3/z0;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    goto :goto_2

    .line 39
    :catch_0
    :goto_0
    monitor-exit p0

    .line 40
    return v3

    .line 41
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/so;->I:Lcom/google/android/gms/internal/ads/qo;

    .line 42
    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    const-string v0, "Ad inspector had an internal error."

    .line 46
    .line 47
    invoke-static {v0}, Lp3/h;->g(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    .line 49
    .line 50
    :try_start_3
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 51
    .line 52
    iget-object v0, v0, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 53
    .line 54
    new-instance v1, Ljava/lang/NullPointerException;

    .line 55
    .line 56
    const-string v5, "InspectorManager null"

    .line 57
    .line 58
    invoke-direct {v1, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string v5, "InspectorUi.shouldOpenUi"

    .line 62
    .line 63
    invoke-virtual {v0, v5, v1}, Lcom/google/android/gms/internal/ads/le;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    invoke-static {v2, v4, v4}, Lo3/r;->H(ILjava/lang/String;Ll3/z0;)Ll3/z0;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-interface {p1, v0}, Ll3/m0;->s0(Ll3/z0;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 71
    .line 72
    .line 73
    :catch_1
    monitor-exit p0

    .line 74
    return v3

    .line 75
    :cond_1
    :try_start_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/so;->K:Z

    .line 76
    .line 77
    if-nez v0, :cond_3

    .line 78
    .line 79
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/so;->L:Z

    .line 80
    .line 81
    if-nez v0, :cond_3

    .line 82
    .line 83
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 84
    .line 85
    iget-object v0, v0, Lk3/l;->j:LP3/b;

    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 91
    .line 92
    .line 93
    move-result-wide v5

    .line 94
    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/so;->M:J

    .line 95
    .line 96
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->k8:Lcom/google/android/gms/internal/ads/J7;

    .line 97
    .line 98
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 99
    .line 100
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    check-cast v0, Ljava/lang/Integer;

    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 107
    .line 108
    .line 109
    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 110
    int-to-long v0, v0

    .line 111
    add-long/2addr v7, v0

    .line 112
    cmp-long v0, v5, v7

    .line 113
    .line 114
    if-gez v0, :cond_2

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_2
    monitor-exit p0

    .line 118
    const/4 p1, 0x1

    .line 119
    return p1

    .line 120
    :cond_3
    :goto_1
    :try_start_5
    const-string v0, "Ad inspector cannot be opened because it is already open."

    .line 121
    .line 122
    invoke-static {v0}, Lp3/h;->g(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 123
    .line 124
    .line 125
    const/16 v0, 0x13

    .line 126
    .line 127
    :try_start_6
    invoke-static {v0, v4, v4}, Lo3/r;->H(ILjava/lang/String;Ll3/z0;)Ll3/z0;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-interface {p1, v0}, Ll3/m0;->s0(Ll3/z0;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 132
    .line 133
    .line 134
    :catch_2
    monitor-exit p0

    .line 135
    return v3

    .line 136
    :goto_2
    monitor-exit p0

    .line 137
    throw p1
.end method

.method public final declared-synchronized g(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 4

    .line 1
    const-string v0, "Failed to load UI. Error code: "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    const/4 v1, 0x1

    .line 5
    if-eqz p4, :cond_0

    .line 6
    .line 7
    :try_start_0
    const-string p1, "Ad inspector loaded."

    .line 8
    .line 9
    invoke-static {p1}, Lo3/I;->k(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/so;->K:Z

    .line 13
    .line 14
    const-string p1, ""

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/so;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :try_start_1
    const-string p4, "Ad inspector failed to load."

    .line 24
    .line 25
    invoke-static {p4}, Lp3/h;->g(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    .line 27
    .line 28
    :try_start_2
    sget-object p4, Lk3/l;->A:Lk3/l;

    .line 29
    .line 30
    iget-object p4, p4, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 31
    .line 32
    new-instance v2, Ljava/lang/Exception;

    .line 33
    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p2, ", Description: "

    .line 43
    .line 44
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p1, ", Failing URL: "

    .line 51
    .line 52
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-direct {v2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const-string p1, "InspectorUi.onAdWebViewFinishedLoading 0"

    .line 66
    .line 67
    invoke-virtual {p4, p1, v2}, Lcom/google/android/gms/internal/ads/le;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/so;->N:Ll3/m0;

    .line 71
    .line 72
    if-eqz p1, :cond_1

    .line 73
    .line 74
    const/16 p2, 0x11

    .line 75
    .line 76
    const/4 p3, 0x0

    .line 77
    invoke-static {p2, p3, p3}, Lo3/r;->H(ILjava/lang/String;Ll3/z0;)Ll3/z0;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-interface {p1, p2}, Ll3/m0;->s0(Ll3/z0;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :catch_0
    move-exception p1

    .line 86
    :try_start_3
    const-string p2, "InspectorUi.onAdWebViewFinishedLoading 1"

    .line 87
    .line 88
    sget-object p3, Lk3/l;->A:Lk3/l;

    .line 89
    .line 90
    iget-object p3, p3, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 91
    .line 92
    invoke-virtual {p3, p2, p1}, Lcom/google/android/gms/internal/ads/le;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    .line 94
    .line 95
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/so;->O:Z

    .line 96
    .line 97
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/so;->J:Lcom/google/android/gms/internal/ads/Ef;

    .line 98
    .line 99
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Ef;->destroy()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 100
    .line 101
    .line 102
    monitor-exit p0

    .line 103
    return-void

    .line 104
    :goto_1
    monitor-exit p0

    .line 105
    throw p1
.end method

.method public final k3()V
    .locals 0

    .line 1
    return-void
.end method

.method public final declared-synchronized r1(I)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/so;->J:Lcom/google/android/gms/internal/ads/Ef;

    .line 3
    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Ef;->destroy()V

    .line 5
    .line 6
    .line 7
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/so;->O:Z

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    const-string p1, "Inspector closed."

    .line 13
    .line 14
    invoke-static {p1}, Lo3/I;->k(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/so;->N:Ll3/m0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    :try_start_1
    invoke-interface {p1, v0}, Ll3/m0;->s0(Ll3/z0;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto :goto_1

    .line 27
    :catch_0
    :cond_0
    :goto_0
    const/4 p1, 0x0

    .line 28
    :try_start_2
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/so;->L:Z

    .line 29
    .line 30
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/so;->K:Z

    .line 31
    .line 32
    const-wide/16 v1, 0x0

    .line 33
    .line 34
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/so;->M:J

    .line 35
    .line 36
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/so;->O:Z

    .line 37
    .line 38
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/so;->N:Ll3/m0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 39
    .line 40
    monitor-exit p0

    .line 41
    return-void

    .line 42
    :goto_1
    monitor-exit p0

    .line 43
    throw p1
.end method

.method public final u3()V
    .locals 0

    .line 1
    return-void
.end method

.method public final declared-synchronized v0()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/so;->L:Z

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/so;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    .line 10
    monitor-exit p0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    monitor-exit p0

    .line 14
    throw v0
.end method
