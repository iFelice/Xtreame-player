.class public abstract Lcom/google/android/gms/internal/ads/fg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ah;


# static fields
.field public static a:Lcom/google/android/gms/internal/ads/Bg;


# direct methods
.method public static b(Landroid/content/Context;Lcom/google/android/gms/internal/ads/cb;I)Lcom/google/android/gms/internal/ads/Bg;
    .locals 10

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/fg;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/fg;->a:Lcom/google/android/gms/internal/ads/Bg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    goto/16 :goto_5

    .line 10
    .line 11
    :cond_0
    :try_start_1
    sget-object v1, Lk3/l;->A:Lk3/l;

    .line 12
    .line 13
    iget-object v2, v1, Lk3/l;->j:LP3/b;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/Q7;->a(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    sget-object v4, Lcom/google/android/gms/internal/ads/l8;->e:Lcom/google/android/gms/internal/ads/f8;

    .line 26
    .line 27
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    check-cast v4, Ljava/lang/Boolean;

    .line 32
    .line 33
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    const/4 v5, 0x1

    .line 38
    if-eqz v4, :cond_2

    .line 39
    .line 40
    const-string v4, "init_without_write"

    .line 41
    .line 42
    const-string v6, "admob"

    .line 43
    .line 44
    const/4 v7, 0x0

    .line 45
    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    if-nez v6, :cond_1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-static {p0, v4}, Lf/b;->A0(Landroid/content/Context;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    add-int/2addr v7, v5

    .line 57
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    invoke-interface {v6, v4, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 66
    .line 67
    .line 68
    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/ew;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/ew;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    iget-object v6, v4, Lcom/google/android/gms/internal/ads/ew;->a:Landroid/content/Context;

    .line 73
    .line 74
    invoke-static {v6}, Lo3/O;->d(Landroid/content/Context;)Z

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    new-instance v7, Lp3/a;

    .line 79
    .line 80
    const v8, 0xe7f3e20

    .line 81
    .line 82
    .line 83
    invoke-direct {v7, v8, p2, v5, v6}, Lp3/a;-><init>(IIZZ)V

    .line 84
    .line 85
    .line 86
    sget-object p2, Lcom/google/android/gms/internal/ads/s8;->c:Lcom/google/android/gms/internal/ads/f8;

    .line 87
    .line 88
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    check-cast p2, Ljava/lang/Boolean;

    .line 93
    .line 94
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    if-nez p2, :cond_3

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_3
    iget-object p2, v4, Lcom/google/android/gms/internal/ads/ew;->b:Ll3/d0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    .line 103
    const/4 v9, 0x0

    .line 104
    if-eqz p2, :cond_4

    .line 105
    .line 106
    :try_start_2
    invoke-interface {p2}, Ll3/d0;->getLiteSdkVersion()Ll3/L0;

    .line 107
    .line 108
    .line 109
    move-result-object v9
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    goto :goto_1

    .line 111
    :catch_0
    nop

    .line 112
    :cond_4
    :goto_1
    if-eqz v9, :cond_5

    .line 113
    .line 114
    :try_start_3
    new-instance v7, Lp3/a;

    .line 115
    .line 116
    iget p2, v9, Ll3/L0;->H:I

    .line 117
    .line 118
    invoke-direct {v7, v8, p2, v5, v6}, Lp3/a;-><init>(IIZZ)V

    .line 119
    .line 120
    .line 121
    :cond_5
    :goto_2
    invoke-virtual {v4, p1}, Lcom/google/android/gms/internal/ads/ew;->b(Lcom/google/android/gms/internal/ads/cb;)V

    .line 122
    .line 123
    .line 124
    new-instance p1, Lcom/google/android/gms/internal/ads/gg;

    .line 125
    .line 126
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/gg;-><init>()V

    .line 127
    .line 128
    .line 129
    iput-object v7, p1, Lcom/google/android/gms/internal/ads/gg;->c:Ljava/lang/Object;

    .line 130
    .line 131
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 132
    .line 133
    invoke-direct {p2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    iput-object p2, p1, Lcom/google/android/gms/internal/ads/gg;->e:Ljava/lang/Object;

    .line 137
    .line 138
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    if-eqz p2, :cond_6

    .line 143
    .line 144
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    goto :goto_3

    .line 149
    :cond_6
    move-object p2, p0

    .line 150
    :goto_3
    iput-object p2, p1, Lcom/google/android/gms/internal/ads/gg;->d:Ljava/lang/Object;

    .line 151
    .line 152
    iput-wide v2, p1, Lcom/google/android/gms/internal/ads/gg;->b:J

    .line 153
    .line 154
    new-instance p2, Lcom/google/android/gms/internal/ads/hg;

    .line 155
    .line 156
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/hg;-><init>(Lcom/google/android/gms/internal/ads/gg;)V

    .line 157
    .line 158
    .line 159
    new-instance p1, Lcom/google/android/gms/internal/ads/y1;

    .line 160
    .line 161
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 162
    .line 163
    .line 164
    new-instance v9, Lcom/google/android/gms/internal/ads/Bg;

    .line 165
    .line 166
    invoke-direct {v9, p2, p1}, Lcom/google/android/gms/internal/ads/Bg;-><init>(Lcom/google/android/gms/internal/ads/hg;Lcom/google/android/gms/internal/ads/y1;)V

    .line 167
    .line 168
    .line 169
    iget-object p1, v1, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 170
    .line 171
    invoke-virtual {p1, p0, v7}, Lcom/google/android/gms/internal/ads/le;->g(Landroid/content/Context;Lp3/a;)V

    .line 172
    .line 173
    .line 174
    iget-object p1, v1, Lk3/l;->i:Lcom/google/android/gms/internal/ads/rs;

    .line 175
    .line 176
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/rs;->r(Landroid/content/Context;)V

    .line 177
    .line 178
    .line 179
    iget-object p1, v1, Lk3/l;->c:Lo3/O;

    .line 180
    .line 181
    invoke-virtual {p1, p0}, Lo3/O;->A(Landroid/content/Context;)V

    .line 182
    .line 183
    .line 184
    iget-object p1, v1, Lk3/l;->c:Lo3/O;

    .line 185
    .line 186
    invoke-virtual {p1, p0}, Lo3/O;->z(Landroid/content/Context;)V

    .line 187
    .line 188
    .line 189
    invoke-static {p0}, La7/b;->n(Landroid/content/Context;)V

    .line 190
    .line 191
    .line 192
    iget-object p1, v1, Lk3/l;->f:LJ2/t;

    .line 193
    .line 194
    invoke-virtual {p1, p0}, LJ2/t;->p(Landroid/content/Context;)V

    .line 195
    .line 196
    .line 197
    iget-object p1, v1, Lk3/l;->x:Lo3/G;

    .line 198
    .line 199
    invoke-virtual {p1, p0}, Lo3/G;->c(Landroid/content/Context;)V

    .line 200
    .line 201
    .line 202
    iget-object p1, v9, Lcom/google/android/gms/internal/ads/Bg;->N:Lcom/google/android/gms/internal/ads/MJ;

    .line 203
    .line 204
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    check-cast p1, Lo3/C;

    .line 209
    .line 210
    invoke-virtual {p1}, Lo3/C;->a()V

    .line 211
    .line 212
    .line 213
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/Nd;->b(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/Nd;

    .line 214
    .line 215
    .line 216
    sget-object p1, Lcom/google/android/gms/internal/ads/Q7;->J5:Lcom/google/android/gms/internal/ads/J7;

    .line 217
    .line 218
    sget-object p2, Ll3/q;->d:Ll3/q;

    .line 219
    .line 220
    iget-object v2, p2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 221
    .line 222
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    check-cast p1, Ljava/lang/Boolean;

    .line 227
    .line 228
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 229
    .line 230
    .line 231
    move-result p1

    .line 232
    if-eqz p1, :cond_7

    .line 233
    .line 234
    sget-object p1, Lcom/google/android/gms/internal/ads/Q7;->r0:Lcom/google/android/gms/internal/ads/J7;

    .line 235
    .line 236
    iget-object p2, p2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 237
    .line 238
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    check-cast p1, Ljava/lang/Boolean;

    .line 243
    .line 244
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 245
    .line 246
    .line 247
    move-result p1

    .line 248
    if-nez p1, :cond_7

    .line 249
    .line 250
    new-instance p1, Lcom/google/android/gms/internal/ads/xc;

    .line 251
    .line 252
    new-instance v5, Lcom/google/android/gms/internal/ads/w6;

    .line 253
    .line 254
    new-instance p2, LJ2/t;

    .line 255
    .line 256
    const/4 v2, 0x6

    .line 257
    invoke-direct {p2, p0, v2}, LJ2/t;-><init>(Landroid/content/Context;I)V

    .line 258
    .line 259
    .line 260
    invoke-direct {v5, p2}, Lcom/google/android/gms/internal/ads/w6;-><init>(LJ2/t;)V

    .line 261
    .line 262
    .line 263
    new-instance v6, Lcom/google/android/gms/internal/ads/Rp;

    .line 264
    .line 265
    new-instance p2, Lcom/google/android/gms/internal/ads/Op;

    .line 266
    .line 267
    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/Op;-><init>(Landroid/content/Context;)V

    .line 268
    .line 269
    .line 270
    iget-object v2, v9, Lcom/google/android/gms/internal/ads/Bg;->f:Lcom/google/android/gms/internal/ads/MJ;

    .line 271
    .line 272
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/QJ;->zzb()Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    check-cast v2, Lcom/google/android/gms/internal/ads/jC;

    .line 277
    .line 278
    invoke-direct {v6, p2, v2}, Lcom/google/android/gms/internal/ads/Rp;-><init>(Lcom/google/android/gms/internal/ads/Op;Lcom/google/android/gms/internal/ads/jC;)V

    .line 279
    .line 280
    .line 281
    const/16 p2, 0x10

    .line 282
    .line 283
    const/4 v8, 0x0

    .line 284
    move-object v2, p1

    .line 285
    move-object v3, p0

    .line 286
    move-object v4, v7

    .line 287
    move v7, p2

    .line 288
    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/xc;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    .line 289
    .line 290
    .line 291
    iget-object p0, v1, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 292
    .line 293
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/le;->d()Lo3/L;

    .line 294
    .line 295
    .line 296
    move-result-object p0

    .line 297
    invoke-virtual {p0}, Lo3/L;->r()Z

    .line 298
    .line 299
    .line 300
    move-result p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 301
    :try_start_4
    iget-object p2, p1, Lcom/google/android/gms/internal/ads/xc;->J:Ljava/lang/Object;

    .line 302
    .line 303
    check-cast p2, Lcom/google/android/gms/internal/ads/Rp;

    .line 304
    .line 305
    new-instance v1, LP0/j;

    .line 306
    .line 307
    invoke-direct {v1, p1, p0}, LP0/j;-><init>(Ljava/lang/Object;Z)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/Rp;->a(Lcom/google/android/gms/internal/ads/Dw;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 311
    .line 312
    .line 313
    goto :goto_4

    .line 314
    :catch_1
    move-exception p0

    .line 315
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object p0

    .line 319
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object p0

    .line 323
    const-string p1, "Error in offline signals database startup: "

    .line 324
    .line 325
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object p0

    .line 329
    invoke-static {p0}, Lp3/h;->d(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    goto :goto_4

    .line 333
    :catchall_0
    move-exception p0

    .line 334
    goto :goto_6

    .line 335
    :cond_7
    :goto_4
    sput-object v9, Lcom/google/android/gms/internal/ads/fg;->a:Lcom/google/android/gms/internal/ads/Bg;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 336
    .line 337
    monitor-exit v0

    .line 338
    move-object v1, v9

    .line 339
    :goto_5
    return-object v1

    .line 340
    :goto_6
    monitor-exit v0

    .line 341
    throw p0
.end method


# virtual methods
.method public abstract a()Ljava/util/concurrent/Executor;
.end method

.method public final c(Lcom/google/android/gms/internal/ads/Wc;I)Lcom/google/android/gms/internal/ads/vg;
    .locals 2

    .line 1
    new-instance v0, LK/k;

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    invoke-direct {v0, p1, p2, v1}, LK/k;-><init>(Ljava/lang/Object;II)V

    .line 6
    .line 7
    .line 8
    move-object p1, p0

    .line 9
    check-cast p1, Lcom/google/android/gms/internal/ads/Bg;

    .line 10
    .line 11
    new-instance p2, Lcom/google/android/gms/internal/ads/vg;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Bg;->c:Lcom/google/android/gms/internal/ads/Bg;

    .line 14
    .line 15
    invoke-direct {p2, p1, v0}, Lcom/google/android/gms/internal/ads/vg;-><init>(Lcom/google/android/gms/internal/ads/Bg;LK/k;)V

    .line 16
    .line 17
    .line 18
    return-object p2
.end method

.method public abstract d()Lcom/google/android/gms/internal/ads/Uw;
.end method
