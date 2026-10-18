.class public final synthetic Lcom/google/android/gms/internal/ads/Ki;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p5, p0, Lcom/google/android/gms/internal/ads/Ki;->a:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ki;->e:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Ki;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Ki;->c:Ljava/lang/Object;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Ki;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 12

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/Ki;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ki;->d:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ki;->c:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Ki;->b:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Ki;->e:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast v4, Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    if-eqz v4, :cond_1

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    check-cast v4, LD4/b;

    .line 31
    .line 32
    invoke-interface {v4}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    check-cast v4, Lcom/google/android/gms/internal/ads/tu;

    .line 37
    .line 38
    if-eqz v4, :cond_0

    .line 39
    .line 40
    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/ads/tu;->a(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->U1:Lcom/google/android/gms/internal/ads/J7;

    .line 45
    .line 46
    sget-object v4, Ll3/q;->d:Ll3/q;

    .line 47
    .line 48
    iget-object v4, v4, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 49
    .line 50
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Ljava/lang/Boolean;

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    check-cast v2, Landroid/os/Bundle;

    .line 63
    .line 64
    if-eqz v2, :cond_3

    .line 65
    .line 66
    check-cast v1, Landroid/os/Bundle;

    .line 67
    .line 68
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 69
    .line 70
    iget-object v0, v0, Lk3/l;->j:LP3/b;

    .line 71
    .line 72
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 76
    .line 77
    .line 78
    move-result-wide v4

    .line 79
    instance-of v0, v3, Landroid/os/Bundle;

    .line 80
    .line 81
    if-eqz v0, :cond_2

    .line 82
    .line 83
    const-string v0, "client-signals-end"

    .line 84
    .line 85
    invoke-virtual {v2, v0, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 86
    .line 87
    .line 88
    const-string v0, "client_sig_latency_key"

    .line 89
    .line 90
    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_2
    const-string v0, "gms-signals-end"

    .line 95
    .line 96
    invoke-virtual {v2, v0, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 97
    .line 98
    .line 99
    const-string v0, "gms_sig_latency_key"

    .line 100
    .line 101
    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 102
    .line 103
    .line 104
    :cond_3
    :goto_1
    return-object v3

    .line 105
    :pswitch_0
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->U1:Lcom/google/android/gms/internal/ads/J7;

    .line 106
    .line 107
    sget-object v5, Ll3/q;->d:Ll3/q;

    .line 108
    .line 109
    iget-object v5, v5, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 110
    .line 111
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    check-cast v0, Ljava/lang/Boolean;

    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_4

    .line 122
    .line 123
    check-cast v4, Lcom/google/android/gms/internal/ads/Wc;

    .line 124
    .line 125
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/Wc;->S:Landroid/os/Bundle;

    .line 126
    .line 127
    if-eqz v0, :cond_4

    .line 128
    .line 129
    sget-object v4, Lk3/l;->A:Lk3/l;

    .line 130
    .line 131
    iget-object v4, v4, Lk3/l;->j:LP3/b;

    .line 132
    .line 133
    const-string v5, "http-response-ready"

    .line 134
    .line 135
    invoke-static {v4, v0, v5}, Lt/a;->g(LP3/b;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    :cond_4
    check-cast v1, LD4/b;

    .line 139
    .line 140
    check-cast v2, LD4/b;

    .line 141
    .line 142
    check-cast v3, LD4/b;

    .line 143
    .line 144
    new-instance v0, Lcom/google/android/gms/internal/ads/Fp;

    .line 145
    .line 146
    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    check-cast v3, Lcom/google/android/gms/internal/ads/Jp;

    .line 151
    .line 152
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    check-cast v2, Lorg/json/JSONObject;

    .line 157
    .line 158
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    check-cast v1, Lcom/google/android/gms/internal/ads/Xc;

    .line 163
    .line 164
    invoke-direct {v0, v3, v2, v1}, Lcom/google/android/gms/internal/ads/Fp;-><init>(Lcom/google/android/gms/internal/ads/Jp;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/Xc;)V

    .line 165
    .line 166
    .line 167
    return-object v0

    .line 168
    :pswitch_1
    check-cast v4, Lcom/google/android/gms/internal/ads/Li;

    .line 169
    .line 170
    check-cast v3, LD4/b;

    .line 171
    .line 172
    check-cast v2, LD4/b;

    .line 173
    .line 174
    check-cast v1, LD4/b;

    .line 175
    .line 176
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 177
    .line 178
    .line 179
    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    check-cast v0, Lcom/google/android/gms/internal/ads/Wc;

    .line 184
    .line 185
    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    check-cast v2, Lorg/json/JSONObject;

    .line 190
    .line 191
    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    check-cast v1, Lcom/google/android/gms/internal/ads/Xc;

    .line 196
    .line 197
    iget-object v3, v4, Lcom/google/android/gms/internal/ads/Li;->n:Lcom/google/android/gms/internal/ads/sp;

    .line 198
    .line 199
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/sp;->a:Lcom/google/android/gms/internal/ads/Xj;

    .line 200
    .line 201
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/Xj;->z(Lcom/google/android/gms/internal/ads/Wc;)V

    .line 202
    .line 203
    .line 204
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/sp;->h:Landroid/content/Context;

    .line 205
    .line 206
    const/16 v5, 0x9

    .line 207
    .line 208
    invoke-static {v4, v5}, LU4/a;->h(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/Ow;

    .line 209
    .line 210
    .line 211
    move-result-object v6

    .line 212
    new-instance v7, Lcom/google/android/gms/internal/ads/Lp;

    .line 213
    .line 214
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/Wc;->M:Ljava/lang/String;

    .line 215
    .line 216
    iget-object v9, v3, Lcom/google/android/gms/internal/ads/sp;->g:Lcom/google/android/gms/internal/ads/Tw;

    .line 217
    .line 218
    invoke-direct {v7, v8, v9, v6}, Lcom/google/android/gms/internal/ads/Lp;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Tw;Lcom/google/android/gms/internal/ads/Ow;)V

    .line 219
    .line 220
    .line 221
    sget-object v6, Lcom/google/android/gms/internal/ads/Iw;->N:Lcom/google/android/gms/internal/ads/Iw;

    .line 222
    .line 223
    new-instance v8, Lcom/google/android/gms/internal/ads/Kp;

    .line 224
    .line 225
    invoke-direct {v8, v2, v1}, Lcom/google/android/gms/internal/ads/Kp;-><init>(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/Xc;)V

    .line 226
    .line 227
    .line 228
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 229
    .line 230
    .line 231
    move-result-object v8

    .line 232
    iget-object v9, v3, Lcom/google/android/gms/internal/ads/sp;->c:Lcom/google/android/gms/internal/ads/Kw;

    .line 233
    .line 234
    invoke-virtual {v9, v8, v6}, Lcom/google/android/gms/internal/ads/Gw;->b(LD4/b;Lcom/google/android/gms/internal/ads/Iw;)Lcom/google/android/gms/internal/ads/rs;

    .line 235
    .line 236
    .line 237
    move-result-object v6

    .line 238
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/rs;->k(Lcom/google/android/gms/internal/ads/Dw;)Lcom/google/android/gms/internal/ads/rs;

    .line 239
    .line 240
    .line 241
    move-result-object v6

    .line 242
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/rs;->c()Lcom/google/android/gms/internal/ads/Fw;

    .line 243
    .line 244
    .line 245
    move-result-object v6

    .line 246
    new-instance v7, Lcom/google/android/gms/internal/ads/Ta;

    .line 247
    .line 248
    const/4 v8, 0x2

    .line 249
    invoke-direct {v7, v8, v3, v0}, Lcom/google/android/gms/internal/ads/Ta;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 250
    .line 251
    .line 252
    iget-object v8, v3, Lcom/google/android/gms/internal/ads/sp;->i:Lcom/google/android/gms/internal/ads/jC;

    .line 253
    .line 254
    invoke-static {v6, v7, v8}, Lcom/google/android/gms/internal/ads/Cw;->b2(LD4/b;Lcom/google/android/gms/internal/ads/vz;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/KB;

    .line 255
    .line 256
    .line 257
    move-result-object v6

    .line 258
    sget-object v7, Lcom/google/android/gms/internal/ads/Iw;->P:Lcom/google/android/gms/internal/ads/Iw;

    .line 259
    .line 260
    invoke-virtual {v9, v6, v7}, Lcom/google/android/gms/internal/ads/Gw;->b(LD4/b;Lcom/google/android/gms/internal/ads/Iw;)Lcom/google/android/gms/internal/ads/rs;

    .line 261
    .line 262
    .line 263
    move-result-object v6

    .line 264
    iget-object v7, v3, Lcom/google/android/gms/internal/ads/sp;->b:Lcom/google/android/gms/internal/ads/lp;

    .line 265
    .line 266
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    new-instance v10, Lcom/google/android/gms/internal/ads/No;

    .line 270
    .line 271
    const/16 v11, 0xc

    .line 272
    .line 273
    invoke-direct {v10, v7, v11}, Lcom/google/android/gms/internal/ads/No;-><init>(Ljava/lang/Object;I)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v6, v10}, Lcom/google/android/gms/internal/ads/rs;->m(Lcom/google/android/gms/internal/ads/RB;)Lcom/google/android/gms/internal/ads/rs;

    .line 277
    .line 278
    .line 279
    move-result-object v6

    .line 280
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/rs;->c()Lcom/google/android/gms/internal/ads/Fw;

    .line 281
    .line 282
    .line 283
    move-result-object v6

    .line 284
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 285
    .line 286
    .line 287
    sget-object v7, Lk3/l;->A:Lk3/l;

    .line 288
    .line 289
    iget-object v7, v7, Lk3/l;->p:Lcom/google/android/gms/internal/ads/xc;

    .line 290
    .line 291
    iget-object v10, v3, Lcom/google/android/gms/internal/ads/sp;->e:Lp3/a;

    .line 292
    .line 293
    iget-object v11, v3, Lcom/google/android/gms/internal/ads/sp;->f:Lcom/google/android/gms/internal/ads/Uw;

    .line 294
    .line 295
    invoke-virtual {v7, v4, v10, v11}, Lcom/google/android/gms/internal/ads/xc;->b(Landroid/content/Context;Lp3/a;Lcom/google/android/gms/internal/ads/Uw;)Lcom/google/android/gms/internal/ads/Qa;

    .line 296
    .line 297
    .line 298
    move-result-object v4

    .line 299
    sget-object v7, Lcom/google/android/gms/internal/ads/Fp;->d:Lc4/y;

    .line 300
    .line 301
    sget-object v10, Lcom/google/android/gms/internal/ads/Pa;->c:Lcom/google/android/gms/internal/ads/Aa;

    .line 302
    .line 303
    const-string v11, "google.afma.response.normalize"

    .line 304
    .line 305
    invoke-virtual {v4, v11, v7, v10}, Lcom/google/android/gms/internal/ads/Qa;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/Oa;Lcom/google/android/gms/internal/ads/Na;)Lcom/google/android/gms/internal/ads/Sa;

    .line 306
    .line 307
    .line 308
    move-result-object v4

    .line 309
    sget-object v7, Lcom/google/android/gms/internal/ads/Iw;->Q:Lcom/google/android/gms/internal/ads/Iw;

    .line 310
    .line 311
    invoke-virtual {v9, v6, v7}, Lcom/google/android/gms/internal/ads/Gw;->b(LD4/b;Lcom/google/android/gms/internal/ads/Iw;)Lcom/google/android/gms/internal/ads/rs;

    .line 312
    .line 313
    .line 314
    move-result-object v6

    .line 315
    new-instance v7, Lcom/google/android/gms/internal/ads/Om;

    .line 316
    .line 317
    const/4 v9, 0x4

    .line 318
    invoke-direct {v7, v9, v2, v1}, Lcom/google/android/gms/internal/ads/Om;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/rs;->k(Lcom/google/android/gms/internal/ads/Dw;)Lcom/google/android/gms/internal/ads/rs;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/rs;->m(Lcom/google/android/gms/internal/ads/RB;)Lcom/google/android/gms/internal/ads/rs;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/rs;->c()Lcom/google/android/gms/internal/ads/Fw;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    new-instance v2, Lcom/google/android/gms/internal/ads/Va;

    .line 334
    .line 335
    invoke-direct {v2, v5, v3, v0}, Lcom/google/android/gms/internal/ads/Va;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 336
    .line 337
    .line 338
    invoke-static {v1, v2, v8}, Lcom/google/android/gms/internal/ads/Cw;->d2(LD4/b;Lcom/google/android/gms/internal/ads/RB;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/JB;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    new-instance v1, Lcom/google/android/gms/internal/ads/Of;

    .line 343
    .line 344
    const/16 v2, 0x12

    .line 345
    .line 346
    invoke-direct {v1, v3, v2}, Lcom/google/android/gms/internal/ads/Of;-><init>(Ljava/lang/Object;I)V

    .line 347
    .line 348
    .line 349
    invoke-static {v0, v1, v8}, Lcom/google/android/gms/internal/ads/Cw;->h2(LD4/b;Lcom/google/android/gms/internal/ads/dC;Ljava/util/concurrent/Executor;)V

    .line 350
    .line 351
    .line 352
    return-object v0

    .line 353
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
