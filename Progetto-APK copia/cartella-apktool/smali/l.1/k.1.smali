.class public final Ll/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final H:Ljava/lang/Object;

.field public final I:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ll/k;->G:I

    iput-object p2, p0, Ll/k;->I:Ljava/lang/Object;

    iput-object p3, p0, Ll/k;->H:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Ll/k;->G:I

    iput-object p1, p0, Ll/k;->H:Ljava/lang/Object;

    iput-object p2, p0, Ll/k;->I:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Ll/k;->G:I

    iput-object p1, p0, Ll/k;->H:Ljava/lang/Object;

    iput-object p2, p0, Ll/k;->I:Ljava/lang/Object;

    return-void
.end method

.method private a()V
    .locals 4

    .line 1
    iget-object v0, p0, Ll/k;->I:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ll2/c;

    .line 4
    .line 5
    iget-object v0, v0, Ll2/c;->G:Le2/y;

    .line 6
    .line 7
    iget-object v0, v0, Le2/y;->f:Le2/n;

    .line 8
    .line 9
    iget-object v1, p0, Ll/k;->H:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Le2/n;->c(Ljava/lang/String;)Lm2/q;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Lm2/q;->b()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    iget-object v1, p0, Ll/k;->I:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v1, Ll2/c;

    .line 28
    .line 29
    iget-object v1, v1, Ll2/c;->I:Ljava/lang/Object;

    .line 30
    .line 31
    monitor-enter v1

    .line 32
    :try_start_0
    iget-object v2, p0, Ll/k;->I:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v2, Ll2/c;

    .line 35
    .line 36
    iget-object v2, v2, Ll2/c;->L:Ljava/util/HashMap;

    .line 37
    .line 38
    invoke-static {v0}, Lm2/f;->a(Lm2/q;)Lm2/j;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    iget-object v2, p0, Ll/k;->I:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v2, Ll2/c;

    .line 48
    .line 49
    iget-object v2, v2, Ll2/c;->M:Ljava/util/HashSet;

    .line 50
    .line 51
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Ll/k;->I:Ljava/lang/Object;

    .line 55
    .line 56
    move-object v2, v0

    .line 57
    check-cast v2, Ll2/c;

    .line 58
    .line 59
    iget-object v2, v2, Ll2/c;->N:Li2/c;

    .line 60
    .line 61
    check-cast v0, Ll2/c;

    .line 62
    .line 63
    iget-object v0, v0, Ll2/c;->M:Ljava/util/HashSet;

    .line 64
    .line 65
    invoke-virtual {v2, v0}, Li2/c;->c(Ljava/util/Collection;)V

    .line 66
    .line 67
    .line 68
    monitor-exit v1

    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    .line 71
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    throw v0

    .line 73
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    const/4 v0, 0x2

    .line 2
    iget v1, p0, Ll/k;->G:I

    .line 3
    .line 4
    const/4 v2, 0x3

    .line 5
    const-wide v3, 0x3e7ad7f29abcaf48L    # 1.0E-7

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    const/16 v5, 0xa

    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v7, 0x4

    .line 14
    const/4 v8, 0x0

    .line 15
    const/4 v9, 0x1

    .line 16
    packed-switch v1, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Ll/k;->I:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, LK3/N;

    .line 22
    .line 23
    iget-object v1, p0, Ll/k;->H:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v1, Lf4/i;

    .line 26
    .line 27
    sget-object v3, LK3/N;->N:LH3/r;

    .line 28
    .line 29
    iget-object v3, v1, Lf4/i;->H:LJ3/b;

    .line 30
    .line 31
    iget v4, v3, LJ3/b;->H:I

    .line 32
    .line 33
    if-nez v4, :cond_5

    .line 34
    .line 35
    iget-object v1, v1, Lf4/i;->I:Lcom/google/android/gms/common/internal/D;

    .line 36
    .line 37
    invoke-static {v1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iget-object v3, v1, Lcom/google/android/gms/common/internal/D;->I:LJ3/b;

    .line 41
    .line 42
    iget v4, v3, LJ3/b;->H:I

    .line 43
    .line 44
    if-nez v4, :cond_4

    .line 45
    .line 46
    iget-object v3, v0, LK3/N;->M:LK3/B;

    .line 47
    .line 48
    iget-object v1, v1, Lcom/google/android/gms/common/internal/D;->H:Landroid/os/IBinder;

    .line 49
    .line 50
    if-nez v1, :cond_0

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_0
    sget v4, Lcom/google/android/gms/common/internal/a;->H:I

    .line 54
    .line 55
    const-string v4, "com.google.android.gms.common.internal.IAccountAccessor"

    .line 56
    .line 57
    invoke-interface {v1, v4}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    instance-of v6, v5, Lcom/google/android/gms/common/internal/n;

    .line 62
    .line 63
    if-eqz v6, :cond_1

    .line 64
    .line 65
    check-cast v5, Lcom/google/android/gms/common/internal/n;

    .line 66
    .line 67
    :goto_0
    move-object v6, v5

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    new-instance v5, Lcom/google/android/gms/common/internal/Y;

    .line 70
    .line 71
    invoke-direct {v5, v1, v4, v2}, Lcom/google/android/gms/internal/ads/y5;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    .line 77
    .line 78
    if-eqz v6, :cond_3

    .line 79
    .line 80
    iget-object v1, v0, LK3/N;->J:Ljava/util/Set;

    .line 81
    .line 82
    if-nez v1, :cond_2

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_2
    iput-object v6, v3, LK3/B;->c:Lcom/google/android/gms/common/internal/n;

    .line 86
    .line 87
    iput-object v1, v3, LK3/B;->d:Ljava/util/Set;

    .line 88
    .line 89
    iget-boolean v2, v3, LK3/B;->e:Z

    .line 90
    .line 91
    if-eqz v2, :cond_6

    .line 92
    .line 93
    iget-object v2, v3, LK3/B;->a:Lcom/google/android/gms/common/api/e;

    .line 94
    .line 95
    invoke-interface {v2, v6, v1}, Lcom/google/android/gms/common/api/e;->getRemoteService(Lcom/google/android/gms/common/internal/n;Ljava/util/Set;)V

    .line 96
    .line 97
    .line 98
    goto :goto_3

    .line 99
    :cond_3
    :goto_2
    new-instance v1, Ljava/lang/Exception;

    .line 100
    .line 101
    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 102
    .line 103
    .line 104
    const-string v2, "GoogleApiManager"

    .line 105
    .line 106
    const-string v4, "Received null response from onSignInSuccess"

    .line 107
    .line 108
    invoke-static {v2, v4, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    .line 110
    .line 111
    new-instance v1, LJ3/b;

    .line 112
    .line 113
    invoke-direct {v1, v7}, LJ3/b;-><init>(I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3, v1}, LK3/B;->b(LJ3/b;)V

    .line 117
    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_4
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    new-instance v2, Ljava/lang/Exception;

    .line 125
    .line 126
    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    .line 127
    .line 128
    .line 129
    const-string v4, "Sign-in succeeded with resolve account failure: "

    .line 130
    .line 131
    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    const-string v4, "SignInCoordinator"

    .line 136
    .line 137
    invoke-static {v4, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    .line 139
    .line 140
    iget-object v1, v0, LK3/N;->M:LK3/B;

    .line 141
    .line 142
    invoke-virtual {v1, v3}, LK3/B;->b(LJ3/b;)V

    .line 143
    .line 144
    .line 145
    iget-object v0, v0, LK3/N;->L:Le4/c;

    .line 146
    .line 147
    invoke-interface {v0}, Lcom/google/android/gms/common/api/e;->disconnect()V

    .line 148
    .line 149
    .line 150
    goto :goto_4

    .line 151
    :cond_5
    iget-object v1, v0, LK3/N;->M:LK3/B;

    .line 152
    .line 153
    invoke-virtual {v1, v3}, LK3/B;->b(LJ3/b;)V

    .line 154
    .line 155
    .line 156
    :cond_6
    :goto_3
    iget-object v0, v0, LK3/N;->L:Le4/c;

    .line 157
    .line 158
    invoke-interface {v0}, Lcom/google/android/gms/common/api/e;->disconnect()V

    .line 159
    .line 160
    .line 161
    :goto_4
    return-void

    .line 162
    :pswitch_0
    iget-object v0, p0, Ll/k;->I:Ljava/lang/Object;

    .line 163
    .line 164
    move-object v1, v0

    .line 165
    check-cast v1, LK3/B;

    .line 166
    .line 167
    iget-object v2, v1, LK3/B;->f:LK3/f;

    .line 168
    .line 169
    iget-object v2, v2, LK3/f;->P:Ljava/util/concurrent/ConcurrentHashMap;

    .line 170
    .line 171
    iget-object v3, v1, LK3/B;->b:LK3/a;

    .line 172
    .line 173
    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    check-cast v2, LK3/z;

    .line 178
    .line 179
    if-nez v2, :cond_7

    .line 180
    .line 181
    goto :goto_5

    .line 182
    :cond_7
    iget-object v3, p0, Ll/k;->H:Ljava/lang/Object;

    .line 183
    .line 184
    check-cast v3, LJ3/b;

    .line 185
    .line 186
    iget v4, v3, LJ3/b;->H:I

    .line 187
    .line 188
    if-nez v4, :cond_9

    .line 189
    .line 190
    iput-boolean v9, v1, LK3/B;->e:Z

    .line 191
    .line 192
    iget-object v3, v1, LK3/B;->a:Lcom/google/android/gms/common/api/e;

    .line 193
    .line 194
    invoke-interface {v3}, Lcom/google/android/gms/common/api/e;->requiresSignIn()Z

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    if-eqz v3, :cond_8

    .line 199
    .line 200
    iget-boolean v0, v1, LK3/B;->e:Z

    .line 201
    .line 202
    if-eqz v0, :cond_a

    .line 203
    .line 204
    iget-object v0, v1, LK3/B;->c:Lcom/google/android/gms/common/internal/n;

    .line 205
    .line 206
    if-eqz v0, :cond_a

    .line 207
    .line 208
    iget-object v2, v1, LK3/B;->a:Lcom/google/android/gms/common/api/e;

    .line 209
    .line 210
    iget-object v1, v1, LK3/B;->d:Ljava/util/Set;

    .line 211
    .line 212
    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/common/api/e;->getRemoteService(Lcom/google/android/gms/common/internal/n;Ljava/util/Set;)V

    .line 213
    .line 214
    .line 215
    goto :goto_5

    .line 216
    :cond_8
    :try_start_0
    check-cast v0, LK3/B;

    .line 217
    .line 218
    iget-object v0, v0, LK3/B;->a:Lcom/google/android/gms/common/api/e;

    .line 219
    .line 220
    invoke-interface {v0}, Lcom/google/android/gms/common/api/e;->getScopesForConnectionlessNonSignIn()Ljava/util/Set;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    invoke-interface {v0, v6, v3}, Lcom/google/android/gms/common/api/e;->getRemoteService(Lcom/google/android/gms/common/internal/n;Ljava/util/Set;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    .line 226
    .line 227
    goto :goto_5

    .line 228
    :catch_0
    move-exception v0

    .line 229
    const-string v3, "GoogleApiManager"

    .line 230
    .line 231
    const-string v4, "Failed to get service from broker. "

    .line 232
    .line 233
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 234
    .line 235
    .line 236
    iget-object v0, v1, LK3/B;->a:Lcom/google/android/gms/common/api/e;

    .line 237
    .line 238
    const-string v1, "Failed to get service from broker."

    .line 239
    .line 240
    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/e;->disconnect(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    new-instance v0, LJ3/b;

    .line 244
    .line 245
    invoke-direct {v0, v5}, LJ3/b;-><init>(I)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v2, v0, v6}, LK3/z;->n(LJ3/b;Ljava/lang/RuntimeException;)V

    .line 249
    .line 250
    .line 251
    goto :goto_5

    .line 252
    :cond_9
    invoke-virtual {v2, v3, v6}, LK3/z;->n(LJ3/b;Ljava/lang/RuntimeException;)V

    .line 253
    .line 254
    .line 255
    :cond_a
    :goto_5
    return-void

    .line 256
    :pswitch_1
    iget-object v1, p0, Ll/k;->H:Ljava/lang/Object;

    .line 257
    .line 258
    check-cast v1, LC3/E;

    .line 259
    .line 260
    iget-object v1, v1, LC3/E;->H:LC3/F;

    .line 261
    .line 262
    iget-object v2, p0, Ll/k;->I:Ljava/lang/Object;

    .line 263
    .line 264
    check-cast v2, LH3/c;

    .line 265
    .line 266
    sget-object v3, LC3/F;->w:LH3/b;

    .line 267
    .line 268
    iget-object v2, v2, LH3/c;->G:Ljava/lang/String;

    .line 269
    .line 270
    iget-object v3, v1, LC3/F;->k:Ljava/lang/String;

    .line 271
    .line 272
    invoke-static {v2, v3}, LH3/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    move-result v3

    .line 276
    if-nez v3, :cond_b

    .line 277
    .line 278
    iput-object v2, v1, LC3/F;->k:Ljava/lang/String;

    .line 279
    .line 280
    const/4 v2, 0x1

    .line 281
    goto :goto_6

    .line 282
    :cond_b
    const/4 v2, 0x0

    .line 283
    :goto_6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 284
    .line 285
    .line 286
    move-result-object v3

    .line 287
    iget-boolean v4, v1, LC3/F;->d:Z

    .line 288
    .line 289
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 290
    .line 291
    .line 292
    move-result-object v4

    .line 293
    new-array v0, v0, [Ljava/lang/Object;

    .line 294
    .line 295
    aput-object v3, v0, v8

    .line 296
    .line 297
    aput-object v4, v0, v9

    .line 298
    .line 299
    const-string v3, "hasChanged=%b, mFirstApplicationStatusUpdate=%b"

    .line 300
    .line 301
    sget-object v4, LC3/F;->w:LH3/b;

    .line 302
    .line 303
    invoke-virtual {v4, v3, v0}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 304
    .line 305
    .line 306
    iget-object v0, v1, LC3/F;->t:LD3/I;

    .line 307
    .line 308
    if-eqz v0, :cond_d

    .line 309
    .line 310
    if-nez v2, :cond_c

    .line 311
    .line 312
    iget-boolean v2, v1, LC3/F;->d:Z

    .line 313
    .line 314
    if-eqz v2, :cond_d

    .line 315
    .line 316
    :cond_c
    invoke-virtual {v0}, LD3/I;->d()V

    .line 317
    .line 318
    .line 319
    :cond_d
    iput-boolean v8, v1, LC3/F;->d:Z

    .line 320
    .line 321
    return-void

    .line 322
    :pswitch_2
    iget-object v1, p0, Ll/k;->H:Ljava/lang/Object;

    .line 323
    .line 324
    check-cast v1, LC3/E;

    .line 325
    .line 326
    iget-object v1, v1, LC3/E;->H:LC3/F;

    .line 327
    .line 328
    iget-object v2, p0, Ll/k;->I:Ljava/lang/Object;

    .line 329
    .line 330
    check-cast v2, LH3/d;

    .line 331
    .line 332
    sget-object v5, LC3/F;->w:LH3/b;

    .line 333
    .line 334
    iget-object v5, v2, LH3/d;->J:LC3/d;

    .line 335
    .line 336
    iget-object v6, v1, LC3/F;->j:LC3/d;

    .line 337
    .line 338
    invoke-static {v5, v6}, LH3/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    move-result v6

    .line 342
    iget-object v7, v1, LC3/F;->t:LD3/I;

    .line 343
    .line 344
    if-nez v6, :cond_e

    .line 345
    .line 346
    iput-object v5, v1, LC3/F;->j:LC3/d;

    .line 347
    .line 348
    invoke-virtual {v7}, LD3/I;->c()V

    .line 349
    .line 350
    .line 351
    :cond_e
    iget-wide v5, v2, LH3/d;->G:D

    .line 352
    .line 353
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    .line 354
    .line 355
    .line 356
    move-result v10

    .line 357
    if-nez v10, :cond_f

    .line 358
    .line 359
    iget-wide v10, v1, LC3/F;->l:D

    .line 360
    .line 361
    sub-double v10, v5, v10

    .line 362
    .line 363
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    .line 364
    .line 365
    .line 366
    move-result-wide v10

    .line 367
    cmpl-double v12, v10, v3

    .line 368
    .line 369
    if-lez v12, :cond_f

    .line 370
    .line 371
    iput-wide v5, v1, LC3/F;->l:D

    .line 372
    .line 373
    const/4 v3, 0x1

    .line 374
    goto :goto_7

    .line 375
    :cond_f
    const/4 v3, 0x0

    .line 376
    :goto_7
    iget-boolean v4, v1, LC3/F;->m:Z

    .line 377
    .line 378
    iget-boolean v5, v2, LH3/d;->H:Z

    .line 379
    .line 380
    if-eq v5, v4, :cond_10

    .line 381
    .line 382
    iput-boolean v5, v1, LC3/F;->m:Z

    .line 383
    .line 384
    const/4 v3, 0x1

    .line 385
    :cond_10
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 386
    .line 387
    .line 388
    move-result-object v4

    .line 389
    iget-boolean v5, v1, LC3/F;->c:Z

    .line 390
    .line 391
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 392
    .line 393
    .line 394
    move-result-object v5

    .line 395
    new-array v6, v0, [Ljava/lang/Object;

    .line 396
    .line 397
    aput-object v4, v6, v8

    .line 398
    .line 399
    aput-object v5, v6, v9

    .line 400
    .line 401
    sget-object v4, LC3/F;->w:LH3/b;

    .line 402
    .line 403
    const-string v5, "hasVolumeChanged=%b, mFirstDeviceStatusUpdate=%b"

    .line 404
    .line 405
    invoke-virtual {v4, v5, v6}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 406
    .line 407
    .line 408
    if-eqz v7, :cond_12

    .line 409
    .line 410
    if-nez v3, :cond_11

    .line 411
    .line 412
    iget-boolean v3, v1, LC3/F;->c:Z

    .line 413
    .line 414
    if-eqz v3, :cond_12

    .line 415
    .line 416
    :cond_11
    invoke-virtual {v7}, LD3/I;->f()V

    .line 417
    .line 418
    .line 419
    :cond_12
    iget-wide v5, v2, LH3/d;->M:D

    .line 420
    .line 421
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    .line 422
    .line 423
    .line 424
    iget v3, v1, LC3/F;->n:I

    .line 425
    .line 426
    iget v5, v2, LH3/d;->I:I

    .line 427
    .line 428
    if-eq v5, v3, :cond_13

    .line 429
    .line 430
    iput v5, v1, LC3/F;->n:I

    .line 431
    .line 432
    const/4 v3, 0x1

    .line 433
    goto :goto_8

    .line 434
    :cond_13
    const/4 v3, 0x0

    .line 435
    :goto_8
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 436
    .line 437
    .line 438
    move-result-object v5

    .line 439
    iget-boolean v6, v1, LC3/F;->c:Z

    .line 440
    .line 441
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 442
    .line 443
    .line 444
    move-result-object v6

    .line 445
    new-array v10, v0, [Ljava/lang/Object;

    .line 446
    .line 447
    aput-object v5, v10, v8

    .line 448
    .line 449
    aput-object v6, v10, v9

    .line 450
    .line 451
    const-string v5, "hasActiveInputChanged=%b, mFirstDeviceStatusUpdate=%b"

    .line 452
    .line 453
    invoke-virtual {v4, v5, v10}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 454
    .line 455
    .line 456
    if-eqz v7, :cond_15

    .line 457
    .line 458
    if-nez v3, :cond_14

    .line 459
    .line 460
    iget-boolean v3, v1, LC3/F;->c:Z

    .line 461
    .line 462
    if-eqz v3, :cond_15

    .line 463
    .line 464
    :cond_14
    iget v3, v1, LC3/F;->n:I

    .line 465
    .line 466
    invoke-virtual {v7, v3}, LD3/I;->a(I)V

    .line 467
    .line 468
    .line 469
    :cond_15
    iget v3, v1, LC3/F;->o:I

    .line 470
    .line 471
    iget v5, v2, LH3/d;->K:I

    .line 472
    .line 473
    if-eq v5, v3, :cond_16

    .line 474
    .line 475
    iput v5, v1, LC3/F;->o:I

    .line 476
    .line 477
    const/4 v3, 0x1

    .line 478
    goto :goto_9

    .line 479
    :cond_16
    const/4 v3, 0x0

    .line 480
    :goto_9
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 481
    .line 482
    .line 483
    move-result-object v5

    .line 484
    iget-boolean v6, v1, LC3/F;->c:Z

    .line 485
    .line 486
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 487
    .line 488
    .line 489
    move-result-object v6

    .line 490
    new-array v0, v0, [Ljava/lang/Object;

    .line 491
    .line 492
    aput-object v5, v0, v8

    .line 493
    .line 494
    aput-object v6, v0, v9

    .line 495
    .line 496
    const-string v5, "hasStandbyStateChanged=%b, mFirstDeviceStatusUpdate=%b"

    .line 497
    .line 498
    invoke-virtual {v4, v5, v0}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 499
    .line 500
    .line 501
    if-eqz v7, :cond_18

    .line 502
    .line 503
    if-nez v3, :cond_17

    .line 504
    .line 505
    iget-boolean v0, v1, LC3/F;->c:Z

    .line 506
    .line 507
    if-eqz v0, :cond_18

    .line 508
    .line 509
    :cond_17
    iget v0, v1, LC3/F;->o:I

    .line 510
    .line 511
    invoke-virtual {v7, v0}, LD3/I;->e(I)V

    .line 512
    .line 513
    .line 514
    :cond_18
    iget-object v0, v1, LC3/F;->p:LC3/x;

    .line 515
    .line 516
    iget-object v2, v2, LH3/d;->L:LC3/x;

    .line 517
    .line 518
    invoke-static {v0, v2}, LH3/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 519
    .line 520
    .line 521
    move-result v0

    .line 522
    if-nez v0, :cond_19

    .line 523
    .line 524
    iput-object v2, v1, LC3/F;->p:LC3/x;

    .line 525
    .line 526
    :cond_19
    iput-boolean v8, v1, LC3/F;->c:Z

    .line 527
    .line 528
    return-void

    .line 529
    :pswitch_3
    iget-object v1, p0, Ll/k;->H:Ljava/lang/Object;

    .line 530
    .line 531
    check-cast v1, LH3/x;

    .line 532
    .line 533
    iget-object v2, p0, Ll/k;->I:Ljava/lang/Object;

    .line 534
    .line 535
    check-cast v2, LH3/c;

    .line 536
    .line 537
    sget-object v3, LH3/x;->t:LH3/b;

    .line 538
    .line 539
    iget-object v2, v2, LH3/c;->G:Ljava/lang/String;

    .line 540
    .line 541
    iget-object v3, v1, LH3/x;->h:Ljava/lang/String;

    .line 542
    .line 543
    invoke-static {v2, v3}, LH3/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 544
    .line 545
    .line 546
    move-result v3

    .line 547
    if-nez v3, :cond_1a

    .line 548
    .line 549
    iput-object v2, v1, LH3/x;->h:Ljava/lang/String;

    .line 550
    .line 551
    const/4 v2, 0x1

    .line 552
    goto :goto_a

    .line 553
    :cond_1a
    const/4 v2, 0x0

    .line 554
    :goto_a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 555
    .line 556
    .line 557
    move-result-object v3

    .line 558
    iget-boolean v4, v1, LH3/x;->j:Z

    .line 559
    .line 560
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 561
    .line 562
    .line 563
    move-result-object v4

    .line 564
    new-array v0, v0, [Ljava/lang/Object;

    .line 565
    .line 566
    aput-object v3, v0, v8

    .line 567
    .line 568
    aput-object v4, v0, v9

    .line 569
    .line 570
    const-string v3, "hasChanged=%b, mFirstApplicationStatusUpdate=%b"

    .line 571
    .line 572
    sget-object v4, LH3/x;->t:LH3/b;

    .line 573
    .line 574
    invoke-virtual {v4, v3, v0}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 575
    .line 576
    .line 577
    iget-object v0, v1, LH3/x;->c:LD3/I;

    .line 578
    .line 579
    if-eqz v0, :cond_1c

    .line 580
    .line 581
    if-nez v2, :cond_1b

    .line 582
    .line 583
    iget-boolean v2, v1, LH3/x;->j:Z

    .line 584
    .line 585
    if-eqz v2, :cond_1c

    .line 586
    .line 587
    :cond_1b
    invoke-virtual {v0}, LD3/I;->d()V

    .line 588
    .line 589
    .line 590
    :cond_1c
    iput-boolean v8, v1, LH3/x;->j:Z

    .line 591
    .line 592
    return-void

    .line 593
    :pswitch_4
    iget-object v1, p0, Ll/k;->H:Ljava/lang/Object;

    .line 594
    .line 595
    check-cast v1, LH3/x;

    .line 596
    .line 597
    iget-object v2, p0, Ll/k;->I:Ljava/lang/Object;

    .line 598
    .line 599
    check-cast v2, LH3/d;

    .line 600
    .line 601
    sget-object v5, LH3/x;->t:LH3/b;

    .line 602
    .line 603
    iget-object v5, v2, LH3/d;->J:LC3/d;

    .line 604
    .line 605
    iget-object v6, v1, LH3/x;->a:LC3/d;

    .line 606
    .line 607
    invoke-static {v5, v6}, LH3/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 608
    .line 609
    .line 610
    move-result v6

    .line 611
    iget-object v7, v1, LH3/x;->c:LD3/I;

    .line 612
    .line 613
    if-nez v6, :cond_1d

    .line 614
    .line 615
    iput-object v5, v1, LH3/x;->a:LC3/d;

    .line 616
    .line 617
    invoke-virtual {v7}, LD3/I;->c()V

    .line 618
    .line 619
    .line 620
    :cond_1d
    iget-wide v5, v2, LH3/d;->G:D

    .line 621
    .line 622
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    .line 623
    .line 624
    .line 625
    move-result v10

    .line 626
    if-nez v10, :cond_1e

    .line 627
    .line 628
    iget-wide v10, v1, LH3/x;->l:D

    .line 629
    .line 630
    sub-double v10, v5, v10

    .line 631
    .line 632
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    .line 633
    .line 634
    .line 635
    move-result-wide v10

    .line 636
    cmpl-double v12, v10, v3

    .line 637
    .line 638
    if-lez v12, :cond_1e

    .line 639
    .line 640
    iput-wide v5, v1, LH3/x;->l:D

    .line 641
    .line 642
    const/4 v3, 0x1

    .line 643
    goto :goto_b

    .line 644
    :cond_1e
    const/4 v3, 0x0

    .line 645
    :goto_b
    iget-boolean v4, v1, LH3/x;->i:Z

    .line 646
    .line 647
    iget-boolean v5, v2, LH3/d;->H:Z

    .line 648
    .line 649
    if-eq v5, v4, :cond_1f

    .line 650
    .line 651
    iput-boolean v5, v1, LH3/x;->i:Z

    .line 652
    .line 653
    const/4 v3, 0x1

    .line 654
    :cond_1f
    iget-wide v4, v2, LH3/d;->M:D

    .line 655
    .line 656
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    .line 657
    .line 658
    .line 659
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 660
    .line 661
    .line 662
    move-result-object v4

    .line 663
    iget-boolean v5, v1, LH3/x;->k:Z

    .line 664
    .line 665
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 666
    .line 667
    .line 668
    move-result-object v5

    .line 669
    new-array v6, v0, [Ljava/lang/Object;

    .line 670
    .line 671
    aput-object v4, v6, v8

    .line 672
    .line 673
    aput-object v5, v6, v9

    .line 674
    .line 675
    sget-object v4, LH3/x;->t:LH3/b;

    .line 676
    .line 677
    const-string v5, "hasVolumeChanged=%b, mFirstDeviceStatusUpdate=%b"

    .line 678
    .line 679
    invoke-virtual {v4, v5, v6}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 680
    .line 681
    .line 682
    if-eqz v7, :cond_21

    .line 683
    .line 684
    if-nez v3, :cond_20

    .line 685
    .line 686
    iget-boolean v3, v1, LH3/x;->k:Z

    .line 687
    .line 688
    if-eqz v3, :cond_21

    .line 689
    .line 690
    :cond_20
    invoke-virtual {v7}, LD3/I;->f()V

    .line 691
    .line 692
    .line 693
    :cond_21
    iget v3, v1, LH3/x;->n:I

    .line 694
    .line 695
    iget v5, v2, LH3/d;->I:I

    .line 696
    .line 697
    if-eq v5, v3, :cond_22

    .line 698
    .line 699
    iput v5, v1, LH3/x;->n:I

    .line 700
    .line 701
    const/4 v3, 0x1

    .line 702
    goto :goto_c

    .line 703
    :cond_22
    const/4 v3, 0x0

    .line 704
    :goto_c
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 705
    .line 706
    .line 707
    move-result-object v5

    .line 708
    iget-boolean v6, v1, LH3/x;->k:Z

    .line 709
    .line 710
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 711
    .line 712
    .line 713
    move-result-object v6

    .line 714
    new-array v10, v0, [Ljava/lang/Object;

    .line 715
    .line 716
    aput-object v5, v10, v8

    .line 717
    .line 718
    aput-object v6, v10, v9

    .line 719
    .line 720
    const-string v5, "hasActiveInputChanged=%b, mFirstDeviceStatusUpdate=%b"

    .line 721
    .line 722
    invoke-virtual {v4, v5, v10}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 723
    .line 724
    .line 725
    if-eqz v7, :cond_24

    .line 726
    .line 727
    if-nez v3, :cond_23

    .line 728
    .line 729
    iget-boolean v3, v1, LH3/x;->k:Z

    .line 730
    .line 731
    if-eqz v3, :cond_24

    .line 732
    .line 733
    :cond_23
    iget v3, v1, LH3/x;->n:I

    .line 734
    .line 735
    invoke-virtual {v7, v3}, LD3/I;->a(I)V

    .line 736
    .line 737
    .line 738
    :cond_24
    iget v3, v1, LH3/x;->o:I

    .line 739
    .line 740
    iget v5, v2, LH3/d;->K:I

    .line 741
    .line 742
    if-eq v5, v3, :cond_25

    .line 743
    .line 744
    iput v5, v1, LH3/x;->o:I

    .line 745
    .line 746
    const/4 v3, 0x1

    .line 747
    goto :goto_d

    .line 748
    :cond_25
    const/4 v3, 0x0

    .line 749
    :goto_d
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 750
    .line 751
    .line 752
    move-result-object v5

    .line 753
    iget-boolean v6, v1, LH3/x;->k:Z

    .line 754
    .line 755
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 756
    .line 757
    .line 758
    move-result-object v6

    .line 759
    new-array v0, v0, [Ljava/lang/Object;

    .line 760
    .line 761
    aput-object v5, v0, v8

    .line 762
    .line 763
    aput-object v6, v0, v9

    .line 764
    .line 765
    const-string v5, "hasStandbyStateChanged=%b, mFirstDeviceStatusUpdate=%b"

    .line 766
    .line 767
    invoke-virtual {v4, v5, v0}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 768
    .line 769
    .line 770
    if-eqz v7, :cond_27

    .line 771
    .line 772
    if-nez v3, :cond_26

    .line 773
    .line 774
    iget-boolean v0, v1, LH3/x;->k:Z

    .line 775
    .line 776
    if-eqz v0, :cond_27

    .line 777
    .line 778
    :cond_26
    iget v0, v1, LH3/x;->o:I

    .line 779
    .line 780
    invoke-virtual {v7, v0}, LD3/I;->e(I)V

    .line 781
    .line 782
    .line 783
    :cond_27
    iget-object v0, v1, LH3/x;->m:LC3/x;

    .line 784
    .line 785
    iget-object v2, v2, LH3/d;->L:LC3/x;

    .line 786
    .line 787
    invoke-static {v0, v2}, LH3/a;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 788
    .line 789
    .line 790
    move-result v0

    .line 791
    if-nez v0, :cond_28

    .line 792
    .line 793
    iput-object v2, v1, LH3/x;->m:LC3/x;

    .line 794
    .line 795
    :cond_28
    iput-boolean v8, v1, LH3/x;->k:Z

    .line 796
    .line 797
    return-void

    .line 798
    :pswitch_5
    iget-object v0, p0, Ll/k;->H:Ljava/lang/Object;

    .line 799
    .line 800
    check-cast v0, Lf3/i;

    .line 801
    .line 802
    iget-object v1, p0, Ll/k;->I:Ljava/lang/Object;

    .line 803
    .line 804
    check-cast v1, Lf3/f;

    .line 805
    .line 806
    :try_start_1
    iget-object v2, v0, Lf3/i;->G:Ll3/I0;

    .line 807
    .line 808
    iget-object v1, v1, Lf3/f;->a:Ll3/G0;

    .line 809
    .line 810
    invoke-virtual {v2, v1}, Ll3/I0;->b(Ll3/G0;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 811
    .line 812
    .line 813
    goto :goto_e

    .line 814
    :catch_1
    move-exception v1

    .line 815
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 816
    .line 817
    .line 818
    move-result-object v0

    .line 819
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Bc;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/Cc;

    .line 820
    .line 821
    .line 822
    move-result-object v0

    .line 823
    const-string v2, "BaseAdView.loadAd"

    .line 824
    .line 825
    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/Cc;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 826
    .line 827
    .line 828
    :goto_e
    return-void

    .line 829
    :pswitch_6
    iget-object v0, p0, Ll/k;->H:Ljava/lang/Object;

    .line 830
    .line 831
    check-cast v0, Lf3/d;

    .line 832
    .line 833
    iget-object v1, p0, Ll/k;->I:Ljava/lang/Object;

    .line 834
    .line 835
    check-cast v1, Ll3/G0;

    .line 836
    .line 837
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 838
    .line 839
    .line 840
    :try_start_2
    iget-object v2, v0, Lf3/d;->b:Ll3/C;

    .line 841
    .line 842
    iget-object v0, v0, Lf3/d;->a:Landroid/content/Context;

    .line 843
    .line 844
    invoke-static {v0, v1}, Ll3/c1;->a(Landroid/content/Context;Ll3/G0;)Ll3/b1;

    .line 845
    .line 846
    .line 847
    move-result-object v0

    .line 848
    invoke-interface {v2, v0}, Ll3/C;->q0(Ll3/b1;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 849
    .line 850
    .line 851
    goto :goto_f

    .line 852
    :catch_2
    move-exception v0

    .line 853
    const-string v1, "Failed to load ad."

    .line 854
    .line 855
    invoke-static {v1, v0}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 856
    .line 857
    .line 858
    :goto_f
    return-void

    .line 859
    :pswitch_7
    iget-object v0, p0, Ll/k;->H:Ljava/lang/Object;

    .line 860
    .line 861
    check-cast v0, Lv3/a;

    .line 862
    .line 863
    iget-object v1, p0, Ll/k;->I:Ljava/lang/Object;

    .line 864
    .line 865
    check-cast v1, Ljava/lang/String;

    .line 866
    .line 867
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 868
    .line 869
    .line 870
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 871
    .line 872
    .line 873
    move-result-object v1

    .line 874
    :try_start_3
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->lb:Lcom/google/android/gms/internal/ads/J7;

    .line 875
    .line 876
    sget-object v3, Ll3/q;->d:Ll3/q;

    .line 877
    .line 878
    iget-object v3, v3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 879
    .line 880
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 881
    .line 882
    .line 883
    move-result-object v2

    .line 884
    check-cast v2, Ljava/lang/Boolean;

    .line 885
    .line 886
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 887
    .line 888
    .line 889
    move-result v2
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/I4; {:try_start_3 .. :try_end_3} :catch_3

    .line 890
    iget-object v3, v0, Lv3/a;->b:Landroid/webkit/WebView;

    .line 891
    .line 892
    iget-object v4, v0, Lv3/a;->a:Landroid/content/Context;

    .line 893
    .line 894
    if-eqz v2, :cond_29

    .line 895
    .line 896
    :try_start_4
    iget-object v2, v0, Lv3/a;->d:Lcom/google/android/gms/internal/ads/Zv;

    .line 897
    .line 898
    if-eqz v2, :cond_29

    .line 899
    .line 900
    invoke-virtual {v2, v1, v4, v3, v6}, Lcom/google/android/gms/internal/ads/Zv;->a(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    .line 901
    .line 902
    .line 903
    move-result-object v1

    .line 904
    goto :goto_11

    .line 905
    :catch_3
    move-exception v2

    .line 906
    goto :goto_10

    .line 907
    :cond_29
    iget-object v2, v0, Lv3/a;->c:Lcom/google/android/gms/internal/ads/H4;

    .line 908
    .line 909
    invoke-virtual {v2, v1, v4, v3, v6}, Lcom/google/android/gms/internal/ads/H4;->a(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    .line 910
    .line 911
    .line 912
    move-result-object v1
    :try_end_4
    .catch Lcom/google/android/gms/internal/ads/I4; {:try_start_4 .. :try_end_4} :catch_3

    .line 913
    goto :goto_11

    .line 914
    :goto_10
    const-string v3, "Failed to append the click signal to URL: "

    .line 915
    .line 916
    invoke-static {v3, v2}, Lp3/h;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 917
    .line 918
    .line 919
    sget-object v3, Lk3/l;->A:Lk3/l;

    .line 920
    .line 921
    iget-object v3, v3, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 922
    .line 923
    const-string v4, "TaggingLibraryJsInterface.recordClick"

    .line 924
    .line 925
    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/internal/ads/le;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 926
    .line 927
    .line 928
    :goto_11
    iget-object v0, v0, Lv3/a;->i:Lcom/google/android/gms/internal/ads/ix;

    .line 929
    .line 930
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 931
    .line 932
    .line 933
    move-result-object v1

    .line 934
    invoke-virtual {v0, v1, v6}, Lcom/google/android/gms/internal/ads/ix;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Tw;)V

    .line 935
    .line 936
    .line 937
    return-void

    .line 938
    :pswitch_8
    iget-object v0, p0, Ll/k;->H:Ljava/lang/Object;

    .line 939
    .line 940
    check-cast v0, Lv3/j;

    .line 941
    .line 942
    iget-object v1, p0, Ll/k;->I:Ljava/lang/Object;

    .line 943
    .line 944
    check-cast v1, [Lcom/google/android/gms/internal/ads/Tm;

    .line 945
    .line 946
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 947
    .line 948
    .line 949
    aget-object v1, v1, v8

    .line 950
    .line 951
    if-eqz v1, :cond_2a

    .line 952
    .line 953
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 954
    .line 955
    .line 956
    move-result-object v1

    .line 957
    iget-object v0, v0, Lv3/j;->L:Lcom/google/android/gms/internal/ads/hw;

    .line 958
    .line 959
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/hw;->b(Lcom/google/android/gms/internal/ads/fC;)V

    .line 960
    .line 961
    .line 962
    :cond_2a
    return-void

    .line 963
    :pswitch_9
    iget-object v0, p0, Ll/k;->H:Ljava/lang/Object;

    .line 964
    .line 965
    check-cast v0, Lcom/google/android/gms/internal/ads/Fn;

    .line 966
    .line 967
    iget-object v1, p0, Ll/k;->I:Ljava/lang/Object;

    .line 968
    .line 969
    check-cast v1, Ljava/lang/Long;

    .line 970
    .line 971
    sget-object v2, Lk3/l;->A:Lk3/l;

    .line 972
    .line 973
    iget-object v2, v2, Lk3/l;->j:LP3/b;

    .line 974
    .line 975
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 976
    .line 977
    .line 978
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 979
    .line 980
    .line 981
    move-result-wide v2

    .line 982
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 983
    .line 984
    .line 985
    move-result-wide v4

    .line 986
    sub-long/2addr v2, v4

    .line 987
    const-string v1, "cld_r"

    .line 988
    .line 989
    invoke-static {v0, v1, v2, v3}, Lf6/c;->l(Lcom/google/android/gms/internal/ads/Fn;Ljava/lang/String;J)V

    .line 990
    .line 991
    .line 992
    return-void

    .line 993
    :pswitch_a
    iget-object v0, p0, Ll/k;->H:Ljava/lang/Object;

    .line 994
    .line 995
    check-cast v0, Ln3/j;

    .line 996
    .line 997
    iget-object v0, v0, Ln3/j;->c:Ljava/lang/Object;

    .line 998
    .line 999
    check-cast v0, Ln3/k;

    .line 1000
    .line 1001
    iget-object v0, v0, Ln3/k;->H:Landroid/app/Activity;

    .line 1002
    .line 1003
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v0

    .line 1007
    iget-object v1, p0, Ll/k;->I:Ljava/lang/Object;

    .line 1008
    .line 1009
    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 1010
    .line 1011
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1012
    .line 1013
    .line 1014
    return-void

    .line 1015
    :pswitch_b
    iget-object v0, p0, Ll/k;->H:Ljava/lang/Object;

    .line 1016
    .line 1017
    check-cast v0, Ll3/I0;

    .line 1018
    .line 1019
    iget-object v1, p0, Ll/k;->I:Ljava/lang/Object;

    .line 1020
    .line 1021
    check-cast v1, LR3/a;

    .line 1022
    .line 1023
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1024
    .line 1025
    .line 1026
    invoke-static {v1}, LR3/b;->v0(LR3/a;)Ljava/lang/Object;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v1

    .line 1030
    check-cast v1, Landroid/view/View;

    .line 1031
    .line 1032
    iget-object v0, v0, Ll3/I0;->k:Landroid/view/ViewGroup;

    .line 1033
    .line 1034
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1035
    .line 1036
    .line 1037
    return-void

    .line 1038
    :pswitch_c
    iget-object v0, p0, Ll/k;->I:Ljava/lang/Object;

    .line 1039
    .line 1040
    check-cast v0, LB2/a;

    .line 1041
    .line 1042
    iget-boolean v1, v0, LB2/a;->J:Z

    .line 1043
    .line 1044
    if-eqz v1, :cond_2b

    .line 1045
    .line 1046
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 1047
    .line 1048
    invoke-direct {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 1049
    .line 1050
    .line 1051
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 1052
    .line 1053
    .line 1054
    move-result-object v1

    .line 1055
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v1

    .line 1059
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    .line 1060
    .line 1061
    .line 1062
    move-result-object v1

    .line 1063
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1064
    .line 1065
    .line 1066
    :cond_2b
    :try_start_5
    iget-object v1, p0, Ll/k;->H:Ljava/lang/Object;

    .line 1067
    .line 1068
    check-cast v1, Ljava/lang/Runnable;

    .line 1069
    .line 1070
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1071
    .line 1072
    .line 1073
    goto :goto_12

    .line 1074
    :catchall_0
    move-exception v1

    .line 1075
    iget-object v0, v0, LB2/a;->I:LB2/b;

    .line 1076
    .line 1077
    check-cast v0, LU1/f;

    .line 1078
    .line 1079
    iget v0, v0, LU1/f;->G:I

    .line 1080
    .line 1081
    const-string v2, "Request threw uncaught throwable"

    .line 1082
    .line 1083
    packed-switch v0, :pswitch_data_1

    .line 1084
    .line 1085
    .line 1086
    new-instance v0, Ljava/lang/RuntimeException;

    .line 1087
    .line 1088
    invoke-direct {v0, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1089
    .line 1090
    .line 1091
    throw v0

    .line 1092
    :pswitch_d
    const-string v0, "GlideExecutor"

    .line 1093
    .line 1094
    const/4 v3, 0x6

    .line 1095
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 1096
    .line 1097
    .line 1098
    move-result v3

    .line 1099
    if-eqz v3, :cond_2c

    .line 1100
    .line 1101
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1102
    .line 1103
    .line 1104
    :cond_2c
    :goto_12
    :pswitch_e
    return-void

    .line 1105
    :pswitch_f
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1106
    .line 1107
    .line 1108
    iget-object v0, p0, Ll/k;->H:Ljava/lang/Object;

    .line 1109
    .line 1110
    check-cast v0, Ljava/lang/Runnable;

    .line 1111
    .line 1112
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1113
    .line 1114
    .line 1115
    return-void

    .line 1116
    :pswitch_10
    :try_start_6
    iget-object v0, p0, Ll/k;->I:Ljava/lang/Object;

    .line 1117
    .line 1118
    check-cast v0, Lr2/c;

    .line 1119
    .line 1120
    iget-object v0, v0, Lr2/c;->H:Ljava/util/concurrent/BlockingQueue;

    .line 1121
    .line 1122
    iget-object v1, p0, Ll/k;->H:Ljava/lang/Object;

    .line 1123
    .line 1124
    check-cast v1, Lr2/k;

    .line 1125
    .line 1126
    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_4

    .line 1127
    .line 1128
    .line 1129
    goto :goto_13

    .line 1130
    :catch_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 1131
    .line 1132
    .line 1133
    move-result-object v0

    .line 1134
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1135
    .line 1136
    .line 1137
    :goto_13
    return-void

    .line 1138
    :pswitch_11
    const-string v0, "Updating notification for "

    .line 1139
    .line 1140
    const-string v1, "Worker was marked important ("

    .line 1141
    .line 1142
    iget-object v2, p0, Ll/k;->I:Ljava/lang/Object;

    .line 1143
    .line 1144
    check-cast v2, Ln2/s;

    .line 1145
    .line 1146
    iget-object v2, v2, Ln2/s;->G:Lo2/j;

    .line 1147
    .line 1148
    iget-object v2, v2, Lo2/h;->G:Ljava/lang/Object;

    .line 1149
    .line 1150
    instance-of v2, v2, Lo2/a;

    .line 1151
    .line 1152
    if-eqz v2, :cond_2d

    .line 1153
    .line 1154
    goto/16 :goto_15

    .line 1155
    .line 1156
    :cond_2d
    :try_start_7
    iget-object v2, p0, Ll/k;->H:Ljava/lang/Object;

    .line 1157
    .line 1158
    check-cast v2, Lo2/j;

    .line 1159
    .line 1160
    invoke-virtual {v2}, Lo2/h;->get()Ljava/lang/Object;

    .line 1161
    .line 1162
    .line 1163
    move-result-object v2

    .line 1164
    move-object v7, v2

    .line 1165
    check-cast v7, Ld2/f;

    .line 1166
    .line 1167
    if-eqz v7, :cond_2e

    .line 1168
    .line 1169
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 1170
    .line 1171
    .line 1172
    move-result-object v1

    .line 1173
    sget-object v2, Ln2/s;->M:Ljava/lang/String;

    .line 1174
    .line 1175
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1176
    .line 1177
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1178
    .line 1179
    .line 1180
    iget-object v0, p0, Ll/k;->I:Ljava/lang/Object;

    .line 1181
    .line 1182
    check-cast v0, Ln2/s;

    .line 1183
    .line 1184
    iget-object v0, v0, Ln2/s;->I:Lm2/q;

    .line 1185
    .line 1186
    iget-object v0, v0, Lm2/q;->c:Ljava/lang/String;

    .line 1187
    .line 1188
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1189
    .line 1190
    .line 1191
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1192
    .line 1193
    .line 1194
    move-result-object v0

    .line 1195
    invoke-virtual {v1, v2, v0}, Ld2/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1196
    .line 1197
    .line 1198
    iget-object v0, p0, Ll/k;->I:Ljava/lang/Object;

    .line 1199
    .line 1200
    move-object v1, v0

    .line 1201
    check-cast v1, Ln2/s;

    .line 1202
    .line 1203
    iget-object v1, v1, Ln2/s;->G:Lo2/j;

    .line 1204
    .line 1205
    move-object v2, v0

    .line 1206
    check-cast v2, Ln2/s;

    .line 1207
    .line 1208
    iget-object v2, v2, Ln2/s;->K:Ld2/g;

    .line 1209
    .line 1210
    move-object v3, v0

    .line 1211
    check-cast v3, Ln2/s;

    .line 1212
    .line 1213
    iget-object v8, v3, Ln2/s;->H:Landroid/content/Context;

    .line 1214
    .line 1215
    check-cast v0, Ln2/s;

    .line 1216
    .line 1217
    iget-object v0, v0, Ln2/s;->J:Ld2/m;

    .line 1218
    .line 1219
    invoke-virtual {v0}, Ld2/m;->getId()Ljava/util/UUID;

    .line 1220
    .line 1221
    .line 1222
    move-result-object v6

    .line 1223
    check-cast v2, Ln2/u;

    .line 1224
    .line 1225
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1226
    .line 1227
    .line 1228
    new-instance v0, Lo2/j;

    .line 1229
    .line 1230
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 1231
    .line 1232
    .line 1233
    new-instance v10, Ln2/t;

    .line 1234
    .line 1235
    const/4 v9, 0x0

    .line 1236
    move-object v3, v10

    .line 1237
    move-object v4, v2

    .line 1238
    move-object v5, v0

    .line 1239
    invoke-direct/range {v3 .. v9}, Ln2/t;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 1240
    .line 1241
    .line 1242
    iget-object v2, v2, Ln2/u;->a:Lp2/a;

    .line 1243
    .line 1244
    check-cast v2, Lm2/u;

    .line 1245
    .line 1246
    invoke-virtual {v2, v10}, Lm2/u;->m(Ljava/lang/Runnable;)V

    .line 1247
    .line 1248
    .line 1249
    invoke-virtual {v1, v0}, Lo2/j;->l(LD4/b;)Z

    .line 1250
    .line 1251
    .line 1252
    goto :goto_15

    .line 1253
    :catchall_1
    move-exception v0

    .line 1254
    goto :goto_14

    .line 1255
    :cond_2e
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1256
    .line 1257
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1258
    .line 1259
    .line 1260
    iget-object v1, p0, Ll/k;->I:Ljava/lang/Object;

    .line 1261
    .line 1262
    check-cast v1, Ln2/s;

    .line 1263
    .line 1264
    iget-object v1, v1, Ln2/s;->I:Lm2/q;

    .line 1265
    .line 1266
    iget-object v1, v1, Lm2/q;->c:Ljava/lang/String;

    .line 1267
    .line 1268
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1269
    .line 1270
    .line 1271
    const-string v1, ") but did not provide ForegroundInfo"

    .line 1272
    .line 1273
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1274
    .line 1275
    .line 1276
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1277
    .line 1278
    .line 1279
    move-result-object v0

    .line 1280
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 1281
    .line 1282
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 1283
    .line 1284
    .line 1285
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1286
    :goto_14
    iget-object v1, p0, Ll/k;->I:Ljava/lang/Object;

    .line 1287
    .line 1288
    check-cast v1, Ln2/s;

    .line 1289
    .line 1290
    iget-object v1, v1, Ln2/s;->G:Lo2/j;

    .line 1291
    .line 1292
    invoke-virtual {v1, v0}, Lo2/j;->k(Ljava/lang/Throwable;)Z

    .line 1293
    .line 1294
    .line 1295
    :goto_15
    return-void

    .line 1296
    :pswitch_12
    :try_start_8
    iget-object v0, p0, Ll/k;->I:Ljava/lang/Object;

    .line 1297
    .line 1298
    check-cast v0, Ljava/lang/Runnable;

    .line 1299
    .line 1300
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1301
    .line 1302
    .line 1303
    iget-object v0, p0, Ll/k;->H:Ljava/lang/Object;

    .line 1304
    .line 1305
    check-cast v0, Ln2/o;

    .line 1306
    .line 1307
    iget-object v0, v0, Ln2/o;->J:Ljava/lang/Object;

    .line 1308
    .line 1309
    monitor-enter v0

    .line 1310
    :try_start_9
    iget-object v1, p0, Ll/k;->H:Ljava/lang/Object;

    .line 1311
    .line 1312
    check-cast v1, Ln2/o;

    .line 1313
    .line 1314
    invoke-virtual {v1}, Ln2/o;->b()V

    .line 1315
    .line 1316
    .line 1317
    monitor-exit v0

    .line 1318
    return-void

    .line 1319
    :catchall_2
    move-exception v1

    .line 1320
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1321
    throw v1

    .line 1322
    :catchall_3
    move-exception v0

    .line 1323
    iget-object v1, p0, Ll/k;->H:Ljava/lang/Object;

    .line 1324
    .line 1325
    check-cast v1, Ln2/o;

    .line 1326
    .line 1327
    iget-object v1, v1, Ln2/o;->J:Ljava/lang/Object;

    .line 1328
    .line 1329
    monitor-enter v1

    .line 1330
    :try_start_a
    iget-object v2, p0, Ll/k;->H:Ljava/lang/Object;

    .line 1331
    .line 1332
    check-cast v2, Ln2/o;

    .line 1333
    .line 1334
    invoke-virtual {v2}, Ln2/o;->b()V

    .line 1335
    .line 1336
    .line 1337
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 1338
    throw v0

    .line 1339
    :catchall_4
    move-exception v0

    .line 1340
    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 1341
    throw v0

    .line 1342
    :pswitch_13
    invoke-direct {p0}, Ll/k;->a()V

    .line 1343
    .line 1344
    .line 1345
    return-void

    .line 1346
    :pswitch_14
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 1347
    .line 1348
    .line 1349
    move-result-object v0

    .line 1350
    sget-object v1, Lf2/a;->d:Ljava/lang/String;

    .line 1351
    .line 1352
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1353
    .line 1354
    const-string v3, "Scheduling work "

    .line 1355
    .line 1356
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1357
    .line 1358
    .line 1359
    iget-object v3, p0, Ll/k;->H:Ljava/lang/Object;

    .line 1360
    .line 1361
    check-cast v3, Lm2/q;

    .line 1362
    .line 1363
    iget-object v4, v3, Lm2/q;->a:Ljava/lang/String;

    .line 1364
    .line 1365
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1366
    .line 1367
    .line 1368
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1369
    .line 1370
    .line 1371
    move-result-object v2

    .line 1372
    invoke-virtual {v0, v1, v2}, Ld2/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1373
    .line 1374
    .line 1375
    iget-object v0, p0, Ll/k;->I:Ljava/lang/Object;

    .line 1376
    .line 1377
    check-cast v0, Lf2/a;

    .line 1378
    .line 1379
    iget-object v0, v0, Lf2/a;->a:Lf2/b;

    .line 1380
    .line 1381
    new-array v1, v9, [Lm2/q;

    .line 1382
    .line 1383
    aput-object v3, v1, v8

    .line 1384
    .line 1385
    invoke-virtual {v0, v1}, Lf2/b;->c([Lm2/q;)V

    .line 1386
    .line 1387
    .line 1388
    return-void

    .line 1389
    :pswitch_15
    iget-object v0, p0, Ll/k;->H:Ljava/lang/Object;

    .line 1390
    .line 1391
    iget-object v1, p0, Ll/k;->I:Ljava/lang/Object;

    .line 1392
    .line 1393
    :try_start_c
    move-object v2, v1

    .line 1394
    check-cast v2, Le2/A;

    .line 1395
    .line 1396
    iget-object v2, v2, Le2/A;->W:Lo2/j;

    .line 1397
    .line 1398
    invoke-virtual {v2}, Lo2/h;->get()Ljava/lang/Object;

    .line 1399
    .line 1400
    .line 1401
    move-result-object v2

    .line 1402
    check-cast v2, Ld2/l;

    .line 1403
    .line 1404
    if-nez v2, :cond_2f

    .line 1405
    .line 1406
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 1407
    .line 1408
    .line 1409
    move-result-object v2

    .line 1410
    sget-object v3, Le2/A;->Y:Ljava/lang/String;

    .line 1411
    .line 1412
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1413
    .line 1414
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1415
    .line 1416
    .line 1417
    move-object v5, v1

    .line 1418
    check-cast v5, Le2/A;

    .line 1419
    .line 1420
    iget-object v5, v5, Le2/A;->K:Lm2/q;

    .line 1421
    .line 1422
    iget-object v5, v5, Lm2/q;->c:Ljava/lang/String;

    .line 1423
    .line 1424
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1425
    .line 1426
    .line 1427
    const-string v5, " returned a null result. Treating it as a failure."

    .line 1428
    .line 1429
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1430
    .line 1431
    .line 1432
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1433
    .line 1434
    .line 1435
    move-result-object v4

    .line 1436
    invoke-virtual {v2, v3, v4}, Ld2/n;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1437
    .line 1438
    .line 1439
    goto :goto_16

    .line 1440
    :catchall_5
    move-exception v0

    .line 1441
    goto/16 :goto_1a

    .line 1442
    .line 1443
    :catch_5
    move-exception v2

    .line 1444
    goto :goto_17

    .line 1445
    :catch_6
    move-exception v2

    .line 1446
    goto :goto_17

    .line 1447
    :catch_7
    move-exception v2

    .line 1448
    goto :goto_18

    .line 1449
    :cond_2f
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 1450
    .line 1451
    .line 1452
    move-result-object v3

    .line 1453
    sget-object v4, Le2/A;->Y:Ljava/lang/String;

    .line 1454
    .line 1455
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1456
    .line 1457
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1458
    .line 1459
    .line 1460
    move-object v6, v1

    .line 1461
    check-cast v6, Le2/A;

    .line 1462
    .line 1463
    iget-object v6, v6, Le2/A;->K:Lm2/q;

    .line 1464
    .line 1465
    iget-object v6, v6, Lm2/q;->c:Ljava/lang/String;

    .line 1466
    .line 1467
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1468
    .line 1469
    .line 1470
    const-string v6, " returned a "

    .line 1471
    .line 1472
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1473
    .line 1474
    .line 1475
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1476
    .line 1477
    .line 1478
    const-string v6, "."

    .line 1479
    .line 1480
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1481
    .line 1482
    .line 1483
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1484
    .line 1485
    .line 1486
    move-result-object v5

    .line 1487
    invoke-virtual {v3, v4, v5}, Ld2/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1488
    .line 1489
    .line 1490
    move-object v3, v1

    .line 1491
    check-cast v3, Le2/A;

    .line 1492
    .line 1493
    iput-object v2, v3, Le2/A;->N:Ld2/l;
    :try_end_c
    .catch Ljava/util/concurrent/CancellationException; {:try_start_c .. :try_end_c} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 1494
    .line 1495
    :cond_30
    :goto_16
    check-cast v1, Le2/A;

    .line 1496
    .line 1497
    invoke-virtual {v1}, Le2/A;->b()V

    .line 1498
    .line 1499
    .line 1500
    goto :goto_19

    .line 1501
    :goto_17
    :try_start_d
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 1502
    .line 1503
    .line 1504
    move-result-object v3

    .line 1505
    sget-object v4, Le2/A;->Y:Ljava/lang/String;

    .line 1506
    .line 1507
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1508
    .line 1509
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1510
    .line 1511
    .line 1512
    check-cast v0, Ljava/lang/String;

    .line 1513
    .line 1514
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1515
    .line 1516
    .line 1517
    const-string v0, " failed because it threw an exception/error"

    .line 1518
    .line 1519
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1520
    .line 1521
    .line 1522
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1523
    .line 1524
    .line 1525
    move-result-object v0

    .line 1526
    invoke-virtual {v3, v4, v0, v2}, Ld2/n;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1527
    .line 1528
    .line 1529
    goto :goto_16

    .line 1530
    :goto_18
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 1531
    .line 1532
    .line 1533
    move-result-object v3

    .line 1534
    sget-object v4, Le2/A;->Y:Ljava/lang/String;

    .line 1535
    .line 1536
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1537
    .line 1538
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1539
    .line 1540
    .line 1541
    check-cast v0, Ljava/lang/String;

    .line 1542
    .line 1543
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1544
    .line 1545
    .line 1546
    const-string v0, " was cancelled"

    .line 1547
    .line 1548
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1549
    .line 1550
    .line 1551
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1552
    .line 1553
    .line 1554
    move-result-object v0

    .line 1555
    iget v3, v3, Ld2/n;->a:I

    .line 1556
    .line 1557
    if-gt v3, v7, :cond_30

    .line 1558
    .line 1559
    invoke-static {v4, v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 1560
    .line 1561
    .line 1562
    goto :goto_16

    .line 1563
    :goto_19
    return-void

    .line 1564
    :goto_1a
    check-cast v1, Le2/A;

    .line 1565
    .line 1566
    invoke-virtual {v1}, Le2/A;->b()V

    .line 1567
    .line 1568
    .line 1569
    throw v0

    .line 1570
    :pswitch_16
    const-string v0, "Starting work for "

    .line 1571
    .line 1572
    iget-object v1, p0, Ll/k;->I:Ljava/lang/Object;

    .line 1573
    .line 1574
    check-cast v1, Le2/A;

    .line 1575
    .line 1576
    iget-object v1, v1, Le2/A;->W:Lo2/j;

    .line 1577
    .line 1578
    iget-object v1, v1, Lo2/h;->G:Ljava/lang/Object;

    .line 1579
    .line 1580
    instance-of v1, v1, Lo2/a;

    .line 1581
    .line 1582
    if-eqz v1, :cond_31

    .line 1583
    .line 1584
    goto :goto_1b

    .line 1585
    :cond_31
    :try_start_e
    iget-object v1, p0, Ll/k;->H:Ljava/lang/Object;

    .line 1586
    .line 1587
    check-cast v1, LD4/b;

    .line 1588
    .line 1589
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 1590
    .line 1591
    .line 1592
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 1593
    .line 1594
    .line 1595
    move-result-object v1

    .line 1596
    sget-object v2, Le2/A;->Y:Ljava/lang/String;

    .line 1597
    .line 1598
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1599
    .line 1600
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1601
    .line 1602
    .line 1603
    iget-object v0, p0, Ll/k;->I:Ljava/lang/Object;

    .line 1604
    .line 1605
    check-cast v0, Le2/A;

    .line 1606
    .line 1607
    iget-object v0, v0, Le2/A;->K:Lm2/q;

    .line 1608
    .line 1609
    iget-object v0, v0, Lm2/q;->c:Ljava/lang/String;

    .line 1610
    .line 1611
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1612
    .line 1613
    .line 1614
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1615
    .line 1616
    .line 1617
    move-result-object v0

    .line 1618
    invoke-virtual {v1, v2, v0}, Ld2/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1619
    .line 1620
    .line 1621
    iget-object v0, p0, Ll/k;->I:Ljava/lang/Object;

    .line 1622
    .line 1623
    move-object v1, v0

    .line 1624
    check-cast v1, Le2/A;

    .line 1625
    .line 1626
    iget-object v1, v1, Le2/A;->W:Lo2/j;

    .line 1627
    .line 1628
    check-cast v0, Le2/A;

    .line 1629
    .line 1630
    iget-object v0, v0, Le2/A;->L:Ld2/m;

    .line 1631
    .line 1632
    invoke-virtual {v0}, Ld2/m;->startWork()LD4/b;

    .line 1633
    .line 1634
    .line 1635
    move-result-object v0

    .line 1636
    invoke-virtual {v1, v0}, Lo2/j;->l(LD4/b;)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 1637
    .line 1638
    .line 1639
    goto :goto_1b

    .line 1640
    :catchall_6
    move-exception v0

    .line 1641
    iget-object v1, p0, Ll/k;->I:Ljava/lang/Object;

    .line 1642
    .line 1643
    check-cast v1, Le2/A;

    .line 1644
    .line 1645
    iget-object v1, v1, Le2/A;->W:Lo2/j;

    .line 1646
    .line 1647
    invoke-virtual {v1, v0}, Lo2/j;->k(Ljava/lang/Throwable;)Z

    .line 1648
    .line 1649
    .line 1650
    :goto_1b
    return-void

    .line 1651
    :pswitch_17
    iget-object v0, p0, Ll/k;->H:Ljava/lang/Object;

    .line 1652
    .line 1653
    :try_start_f
    iget-object v1, p0, Ll/k;->I:Ljava/lang/Object;

    .line 1654
    .line 1655
    check-cast v1, Landroidx/work/Worker;

    .line 1656
    .line 1657
    invoke-virtual {v1}, Landroidx/work/Worker;->getForegroundInfo()Ld2/f;

    .line 1658
    .line 1659
    .line 1660
    move-result-object v1

    .line 1661
    move-object v2, v0

    .line 1662
    check-cast v2, Lo2/j;

    .line 1663
    .line 1664
    invoke-virtual {v2, v1}, Lo2/j;->j(Ljava/lang/Object;)Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 1665
    .line 1666
    .line 1667
    goto :goto_1c

    .line 1668
    :catchall_7
    move-exception v1

    .line 1669
    check-cast v0, Lo2/j;

    .line 1670
    .line 1671
    invoke-virtual {v0, v1}, Lo2/j;->k(Ljava/lang/Throwable;)Z

    .line 1672
    .line 1673
    .line 1674
    :goto_1c
    return-void

    .line 1675
    :pswitch_18
    iget-object v0, p0, Ll/k;->H:Ljava/lang/Object;

    .line 1676
    .line 1677
    check-cast v0, LY/e0;

    .line 1678
    .line 1679
    invoke-virtual {v0}, LY/e0;->c()V

    .line 1680
    .line 1681
    .line 1682
    return-void

    .line 1683
    :pswitch_19
    iget-object v0, p0, Ll/k;->H:Ljava/lang/Object;

    .line 1684
    .line 1685
    check-cast v0, Ljava/util/ArrayList;

    .line 1686
    .line 1687
    invoke-static {v0, v7}, LY/S;->a(Ljava/util/ArrayList;I)V

    .line 1688
    .line 1689
    .line 1690
    return-void

    .line 1691
    :pswitch_1a
    :try_start_10
    sget-object v1, LD/e;->d:Ljava/lang/reflect/Method;
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_8
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    .line 1692
    .line 1693
    iget-object v3, p0, Ll/k;->I:Ljava/lang/Object;

    .line 1694
    .line 1695
    iget-object v4, p0, Ll/k;->H:Ljava/lang/Object;

    .line 1696
    .line 1697
    if-eqz v1, :cond_32

    .line 1698
    .line 1699
    :try_start_11
    new-array v2, v2, [Ljava/lang/Object;

    .line 1700
    .line 1701
    aput-object v3, v2, v8

    .line 1702
    .line 1703
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1704
    .line 1705
    aput-object v3, v2, v9

    .line 1706
    .line 1707
    const-string v3, "AppCompat recreation"

    .line 1708
    .line 1709
    aput-object v3, v2, v0

    .line 1710
    .line 1711
    invoke-virtual {v1, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1712
    .line 1713
    .line 1714
    goto :goto_1f

    .line 1715
    :catchall_8
    move-exception v0

    .line 1716
    goto :goto_1d

    .line 1717
    :catch_8
    move-exception v0

    .line 1718
    goto :goto_1e

    .line 1719
    :cond_32
    sget-object v1, LD/e;->e:Ljava/lang/reflect/Method;

    .line 1720
    .line 1721
    new-array v0, v0, [Ljava/lang/Object;

    .line 1722
    .line 1723
    aput-object v3, v0, v8

    .line 1724
    .line 1725
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1726
    .line 1727
    aput-object v2, v0, v9

    .line 1728
    .line 1729
    invoke-virtual {v1, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_8
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    .line 1730
    .line 1731
    .line 1732
    goto :goto_1f

    .line 1733
    :goto_1d
    const-string v1, "ActivityRecreator"

    .line 1734
    .line 1735
    const-string v2, "Exception while invoking performStopActivity"

    .line 1736
    .line 1737
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1738
    .line 1739
    .line 1740
    goto :goto_1f

    .line 1741
    :goto_1e
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1742
    .line 1743
    .line 1744
    move-result-object v1

    .line 1745
    const-class v2, Ljava/lang/RuntimeException;

    .line 1746
    .line 1747
    if-ne v1, v2, :cond_34

    .line 1748
    .line 1749
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1750
    .line 1751
    .line 1752
    move-result-object v1

    .line 1753
    if-eqz v1, :cond_34

    .line 1754
    .line 1755
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1756
    .line 1757
    .line 1758
    move-result-object v1

    .line 1759
    const-string v2, "Unable to stop"

    .line 1760
    .line 1761
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 1762
    .line 1763
    .line 1764
    move-result v1

    .line 1765
    if-nez v1, :cond_33

    .line 1766
    .line 1767
    goto :goto_1f

    .line 1768
    :cond_33
    throw v0

    .line 1769
    :cond_34
    :goto_1f
    return-void

    .line 1770
    :pswitch_1b
    iget-object v0, p0, Ll/k;->H:Ljava/lang/Object;

    .line 1771
    .line 1772
    check-cast v0, Landroid/app/Application;

    .line 1773
    .line 1774
    iget-object v1, p0, Ll/k;->I:Ljava/lang/Object;

    .line 1775
    .line 1776
    check-cast v1, LD/d;

    .line 1777
    .line 1778
    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 1779
    .line 1780
    .line 1781
    return-void

    .line 1782
    :pswitch_1c
    iget-object v0, p0, Ll/k;->H:Ljava/lang/Object;

    .line 1783
    .line 1784
    check-cast v0, LD/d;

    .line 1785
    .line 1786
    iget-object v1, p0, Ll/k;->I:Ljava/lang/Object;

    .line 1787
    .line 1788
    iput-object v1, v0, LD/d;->G:Ljava/lang/Object;

    .line 1789
    .line 1790
    return-void

    .line 1791
    :pswitch_1d
    iget-object v0, p0, Ll/k;->I:Ljava/lang/Object;

    .line 1792
    .line 1793
    check-cast v0, Lo/d;

    .line 1794
    .line 1795
    iget-object v0, v0, Lo/d;->H:Lcom/google/android/gms/internal/ads/b8;

    .line 1796
    .line 1797
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/b8;->d()V

    .line 1798
    .line 1799
    .line 1800
    return-void

    .line 1801
    :pswitch_1e
    iget-object v0, p0, Ll/k;->I:Ljava/lang/Object;

    .line 1802
    .line 1803
    check-cast v0, Ll/n;

    .line 1804
    .line 1805
    iget-object v1, v0, Ll/n;->I:Lk/o;

    .line 1806
    .line 1807
    if-eqz v1, :cond_35

    .line 1808
    .line 1809
    iget-object v2, v1, Lk/o;->e:Lk/m;

    .line 1810
    .line 1811
    if-eqz v2, :cond_35

    .line 1812
    .line 1813
    invoke-interface {v2, v1}, Lk/m;->m(Lk/o;)V

    .line 1814
    .line 1815
    .line 1816
    :cond_35
    iget-object v1, v0, Ll/n;->N:Lk/C;

    .line 1817
    .line 1818
    check-cast v1, Landroid/view/View;

    .line 1819
    .line 1820
    if-eqz v1, :cond_38

    .line 1821
    .line 1822
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 1823
    .line 1824
    .line 1825
    move-result-object v1

    .line 1826
    if-eqz v1, :cond_38

    .line 1827
    .line 1828
    iget-object v1, p0, Ll/k;->H:Ljava/lang/Object;

    .line 1829
    .line 1830
    check-cast v1, Ll/i;

    .line 1831
    .line 1832
    invoke-virtual {v1}, Lk/y;->b()Z

    .line 1833
    .line 1834
    .line 1835
    move-result v2

    .line 1836
    if-eqz v2, :cond_36

    .line 1837
    .line 1838
    goto :goto_20

    .line 1839
    :cond_36
    iget-object v2, v1, Lk/y;->f:Landroid/view/View;

    .line 1840
    .line 1841
    if-nez v2, :cond_37

    .line 1842
    .line 1843
    goto :goto_21

    .line 1844
    :cond_37
    invoke-virtual {v1, v8, v8, v8, v8}, Lk/y;->d(IIZZ)V

    .line 1845
    .line 1846
    .line 1847
    :goto_20
    iput-object v1, v0, Ll/n;->Y:Ll/i;

    .line 1848
    .line 1849
    :cond_38
    :goto_21
    iput-object v6, v0, Ll/n;->a0:Ll/k;

    .line 1850
    .line 1851
    return-void

    .line 1852
    nop

    .line 1853
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1854
    .line 1855
    .line 1856
    .line 1857
    .line 1858
    .line 1859
    .line 1860
    .line 1861
    .line 1862
    .line 1863
    .line 1864
    .line 1865
    .line 1866
    .line 1867
    .line 1868
    .line 1869
    .line 1870
    .line 1871
    .line 1872
    .line 1873
    .line 1874
    .line 1875
    .line 1876
    .line 1877
    .line 1878
    .line 1879
    .line 1880
    .line 1881
    .line 1882
    .line 1883
    .line 1884
    .line 1885
    .line 1886
    .line 1887
    .line 1888
    .line 1889
    .line 1890
    .line 1891
    .line 1892
    .line 1893
    .line 1894
    .line 1895
    .line 1896
    .line 1897
    .line 1898
    .line 1899
    .line 1900
    .line 1901
    .line 1902
    .line 1903
    .line 1904
    .line 1905
    .line 1906
    .line 1907
    .line 1908
    .line 1909
    .line 1910
    .line 1911
    .line 1912
    .line 1913
    .line 1914
    .line 1915
    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method
