.class public final synthetic Lcom/google/android/gms/internal/ads/hu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/QB;


# instance fields
.field public final synthetic G:Lcom/google/android/gms/internal/ads/iu;

.field public final synthetic H:Ljava/lang/String;

.field public final synthetic I:Ljava/util/List;

.field public final synthetic J:Landroid/os/Bundle;

.field public final synthetic K:Z

.field public final synthetic L:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/iu;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hu;->G:Lcom/google/android/gms/internal/ads/iu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/hu;->H:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/hu;->I:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/hu;->J:Landroid/os/Bundle;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/hu;->K:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/hu;->L:Z

    return-void
.end method


# virtual methods
.method public final zza()LD4/b;
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/hu;->G:Lcom/google/android/gms/internal/ads/iu;

    .line 4
    .line 5
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/hu;->H:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v10, v1, Lcom/google/android/gms/internal/ads/hu;->I:Ljava/util/List;

    .line 8
    .line 9
    iget-object v14, v1, Lcom/google/android/gms/internal/ads/hu;->J:Landroid/os/Bundle;

    .line 10
    .line 11
    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/hu;->K:Z

    .line 12
    .line 13
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/hu;->L:Z

    .line 14
    .line 15
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    new-instance v15, Lcom/google/android/gms/internal/ads/te;

    .line 19
    .line 20
    invoke-direct {v15}, Lcom/google/android/gms/internal/ads/te;-><init>()V

    .line 21
    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->w1:Lcom/google/android/gms/internal/ads/J7;

    .line 27
    .line 28
    sget-object v6, Ll3/q;->d:Ll3/q;

    .line 29
    .line 30
    iget-object v6, v6, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 31
    .line 32
    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Ljava/lang/Boolean;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/iu;->f:Lcom/google/android/gms/internal/ads/Wr;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    :try_start_0
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/Wr;->b:Lcom/google/android/gms/internal/ads/qn;

    .line 50
    .line 51
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/qn;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Ib;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Wr;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 56
    .line 57
    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    const-string v6, "Couldn\'t create RTB adapter : "

    .line 63
    .line 64
    invoke-static {v6, v0}, Lo3/I;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    :goto_0
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/iu;->f:Lcom/google/android/gms/internal/ads/Wr;

    .line 68
    .line 69
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Wr;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 70
    .line 71
    invoke-virtual {v0, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    if-eqz v6, :cond_0

    .line 76
    .line 77
    invoke-virtual {v0, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Lcom/google/android/gms/internal/ads/Ib;

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_0
    move-object v0, v4

    .line 85
    :goto_1
    move-object v11, v0

    .line 86
    goto :goto_2

    .line 87
    :cond_1
    :try_start_1
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/iu;->g:Lcom/google/android/gms/internal/ads/qn;

    .line 88
    .line 89
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/qn;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/Ib;

    .line 90
    .line 91
    .line 92
    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 93
    goto :goto_1

    .line 94
    :catch_1
    move-exception v0

    .line 95
    const-string v6, "Couldn\'t create RTB adapter : "

    .line 96
    .line 97
    invoke-static {v6, v0}, Lo3/I;->l(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    .line 99
    .line 100
    move-object v11, v4

    .line 101
    :goto_2
    if-nez v11, :cond_4

    .line 102
    .line 103
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->m1:Lcom/google/android/gms/internal/ads/J7;

    .line 104
    .line 105
    sget-object v2, Ll3/q;->d:Ll3/q;

    .line 106
    .line 107
    iget-object v3, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 108
    .line 109
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    check-cast v0, Ljava/lang/Boolean;

    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_3

    .line 120
    .line 121
    sget v0, Lcom/google/android/gms/internal/ads/as;->K:I

    .line 122
    .line 123
    const-class v3, Lcom/google/android/gms/internal/ads/as;

    .line 124
    .line 125
    monitor-enter v3

    .line 126
    :try_start_2
    new-instance v0, Lorg/json/JSONObject;

    .line 127
    .line 128
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    .line 130
    .line 131
    :try_start_3
    const-string v4, "name"

    .line 132
    .line 133
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    .line 135
    .line 136
    const-string v4, "signal_error"

    .line 137
    .line 138
    const-string v5, "Adapter failed to instantiate"

    .line 139
    .line 140
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    .line 142
    .line 143
    sget-object v4, Lcom/google/android/gms/internal/ads/Q7;->s1:Lcom/google/android/gms/internal/ads/J7;

    .line 144
    .line 145
    iget-object v2, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 146
    .line 147
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    check-cast v2, Ljava/lang/Boolean;

    .line 152
    .line 153
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    if-eqz v2, :cond_2

    .line 158
    .line 159
    const-string v2, "signal_error_code"

    .line 160
    .line 161
    const/4 v4, 0x1

    .line 162
    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 163
    .line 164
    .line 165
    goto :goto_3

    .line 166
    :catchall_0
    move-exception v0

    .line 167
    goto :goto_5

    .line 168
    :cond_2
    :goto_3
    invoke-virtual {v15, v0}, Lcom/google/android/gms/internal/ads/te;->b(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 169
    .line 170
    .line 171
    :catch_2
    monitor-exit v3

    .line 172
    :goto_4
    move-object v3, v15

    .line 173
    goto/16 :goto_6

    .line 174
    .line 175
    :goto_5
    monitor-exit v3

    .line 176
    throw v0

    .line 177
    :cond_3
    throw v4

    .line 178
    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/ads/as;

    .line 179
    .line 180
    sget-object v4, Lk3/l;->A:Lk3/l;

    .line 181
    .line 182
    iget-object v4, v4, Lk3/l;->j:LP3/b;

    .line 183
    .line 184
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    .line 186
    .line 187
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 188
    .line 189
    .line 190
    move-result-wide v8

    .line 191
    move-object v4, v0

    .line 192
    move-object v6, v11

    .line 193
    move-object v7, v15

    .line 194
    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/as;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Ib;Lcom/google/android/gms/internal/ads/te;J)V

    .line 195
    .line 196
    .line 197
    sget-object v4, Lcom/google/android/gms/internal/ads/Q7;->r1:Lcom/google/android/gms/internal/ads/J7;

    .line 198
    .line 199
    sget-object v5, Ll3/q;->d:Ll3/q;

    .line 200
    .line 201
    iget-object v6, v5, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 202
    .line 203
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    check-cast v4, Ljava/lang/Boolean;

    .line 208
    .line 209
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 210
    .line 211
    .line 212
    move-result v4

    .line 213
    if-eqz v4, :cond_5

    .line 214
    .line 215
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/iu;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 216
    .line 217
    new-instance v6, Lcom/google/android/gms/internal/ads/Zn;

    .line 218
    .line 219
    const/16 v7, 0x8

    .line 220
    .line 221
    invoke-direct {v6, v0, v7}, Lcom/google/android/gms/internal/ads/Zn;-><init>(Ljava/lang/Object;I)V

    .line 222
    .line 223
    .line 224
    sget-object v7, Lcom/google/android/gms/internal/ads/Q7;->k1:Lcom/google/android/gms/internal/ads/J7;

    .line 225
    .line 226
    iget-object v8, v5, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 227
    .line 228
    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v7

    .line 232
    check-cast v7, Ljava/lang/Long;

    .line 233
    .line 234
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 235
    .line 236
    .line 237
    move-result-wide v7

    .line 238
    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 239
    .line 240
    invoke-interface {v4, v6, v7, v8, v9}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 241
    .line 242
    .line 243
    :cond_5
    if-eqz v2, :cond_7

    .line 244
    .line 245
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->y1:Lcom/google/android/gms/internal/ads/J7;

    .line 246
    .line 247
    iget-object v4, v5, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 248
    .line 249
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    check-cast v2, Ljava/lang/Boolean;

    .line 254
    .line 255
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 256
    .line 257
    .line 258
    move-result v2

    .line 259
    if-eqz v2, :cond_6

    .line 260
    .line 261
    iget-object v9, v3, Lcom/google/android/gms/internal/ads/iu;->a:Lcom/google/android/gms/internal/ads/jC;

    .line 262
    .line 263
    new-instance v12, Lcom/google/android/gms/internal/ads/gu;

    .line 264
    .line 265
    move-object v2, v12

    .line 266
    move-object v4, v11

    .line 267
    move-object v5, v14

    .line 268
    move-object v6, v10

    .line 269
    move-object v7, v0

    .line 270
    move-object v8, v15

    .line 271
    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/gu;-><init>(Lcom/google/android/gms/internal/ads/iu;Lcom/google/android/gms/internal/ads/Ib;Landroid/os/Bundle;Ljava/util/List;Lcom/google/android/gms/internal/ads/as;Lcom/google/android/gms/internal/ads/te;)V

    .line 272
    .line 273
    .line 274
    check-cast v9, Lcom/google/android/gms/internal/ads/IB;

    .line 275
    .line 276
    invoke-virtual {v9, v12}, Lcom/google/android/gms/internal/ads/IB;->a(Ljava/lang/Runnable;)LD4/b;

    .line 277
    .line 278
    .line 279
    goto :goto_4

    .line 280
    :cond_6
    new-instance v12, LR3/b;

    .line 281
    .line 282
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/iu;->d:Landroid/content/Context;

    .line 283
    .line 284
    invoke-direct {v12, v2}, LR3/b;-><init>(Ljava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    const/4 v2, 0x0

    .line 288
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    check-cast v2, Landroid/os/Bundle;

    .line 293
    .line 294
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/iu;->e:Lcom/google/android/gms/internal/ads/Yv;

    .line 295
    .line 296
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/Yv;->e:Ll3/d1;

    .line 297
    .line 298
    iget-object v13, v3, Lcom/google/android/gms/internal/ads/iu;->i:Ljava/lang/String;

    .line 299
    .line 300
    move-object v3, v15

    .line 301
    move-object v15, v2

    .line 302
    move-object/from16 v16, v4

    .line 303
    .line 304
    move-object/from16 v17, v0

    .line 305
    .line 306
    invoke-interface/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/Ib;->v2(LR3/a;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ll3/d1;Lcom/google/android/gms/internal/ads/Kb;)V

    .line 307
    .line 308
    .line 309
    goto :goto_6

    .line 310
    :cond_7
    move-object v3, v15

    .line 311
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/as;->zzd()V

    .line 312
    .line 313
    .line 314
    :goto_6
    return-object v3
.end method
