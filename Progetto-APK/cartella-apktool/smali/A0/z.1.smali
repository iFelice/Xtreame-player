.class public final synthetic LA0/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LA0/g0;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LA0/B;


# direct methods
.method public synthetic constructor <init>(LA0/B;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, LA0/z;->a:I

    .line 5
    .line 6
    iput-object p1, p0, LA0/z;->b:LA0/B;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget v0, p0, LA0/z;->a:I

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    const-wide/high16 v2, -0x8000000000000000L

    .line 5
    .line 6
    const/4 v4, 0x0

    .line 7
    const-string v5, "ExtTexMgr"

    .line 8
    .line 9
    const/4 v6, 0x0

    .line 10
    const/4 v7, 0x1

    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, LA0/z;->b:LA0/B;

    .line 15
    .line 16
    iget v1, v0, LA0/B;->T:I

    .line 17
    .line 18
    iget-object v2, v0, LA0/B;->P:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-ne v1, v2, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v1, v0, LA0/B;->P:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    sget-wide v2, LA0/B;->e0:J

    .line 34
    .line 35
    iget v8, v0, LA0/B;->T:I

    .line 36
    .line 37
    sget-object v9, Lp0/M;->a:Ljava/lang/String;

    .line 38
    .line 39
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 40
    .line 41
    new-instance v9, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v10, "Forcing EOS after missing "

    .line 44
    .line 45
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v1, " frames for "

    .line 52
    .line 53
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v1, " ms, with available frame count: "

    .line 60
    .line 61
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-static {v5, v1}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iput-boolean v6, v0, LA0/B;->U:Z

    .line 75
    .line 76
    iput-object v4, v0, LA0/B;->V:Lm0/u;

    .line 77
    .line 78
    iput-boolean v7, v0, LA0/B;->a0:Z

    .line 79
    .line 80
    invoke-virtual {v0}, LA0/B;->n()V

    .line 81
    .line 82
    .line 83
    iget-object v1, v0, LA0/B;->P:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, LA0/B;->k()V

    .line 89
    .line 90
    .line 91
    :goto_0
    return-void

    .line 92
    :pswitch_0
    iget-object v0, p0, LA0/z;->b:LA0/B;

    .line 93
    .line 94
    iget v1, v0, LA0/B;->S:I

    .line 95
    .line 96
    add-int/2addr v1, v7

    .line 97
    iput v1, v0, LA0/B;->S:I

    .line 98
    .line 99
    invoke-virtual {v0}, LA0/B;->m()V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :pswitch_1
    iget-object v0, p0, LA0/z;->b:LA0/B;

    .line 104
    .line 105
    iput-object v4, v0, LA0/B;->V:Lm0/u;

    .line 106
    .line 107
    iget-boolean v1, v0, LA0/B;->U:Z

    .line 108
    .line 109
    if-eqz v1, :cond_2

    .line 110
    .line 111
    iget-object v1, v0, LA0/B;->P:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-eqz v1, :cond_2

    .line 118
    .line 119
    iput-boolean v6, v0, LA0/B;->U:Z

    .line 120
    .line 121
    iget-object v1, v0, LA0/B;->K:LA0/y;

    .line 122
    .line 123
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 124
    .line 125
    .line 126
    check-cast v1, LA0/a;

    .line 127
    .line 128
    invoke-virtual {v1}, LA0/a;->a()V

    .line 129
    .line 130
    .line 131
    invoke-static {v2, v3}, LA0/g;->b(J)V

    .line 132
    .line 133
    .line 134
    iget-object v1, v0, LA0/B;->Y:Ljava/util/concurrent/ScheduledFuture;

    .line 135
    .line 136
    if-eqz v1, :cond_1

    .line 137
    .line 138
    invoke-interface {v1, v6}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 139
    .line 140
    .line 141
    :cond_1
    iput-object v4, v0, LA0/B;->Y:Ljava/util/concurrent/ScheduledFuture;

    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_2
    invoke-virtual {v0}, LA0/B;->m()V

    .line 145
    .line 146
    .line 147
    :goto_1
    return-void

    .line 148
    :pswitch_2
    iget-object v0, p0, LA0/z;->b:LA0/B;

    .line 149
    .line 150
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    invoke-static {v2, v3}, LA0/g;->b(J)V

    .line 159
    .line 160
    .line 161
    iget-boolean v2, v0, LA0/B;->X:Z

    .line 162
    .line 163
    if-eqz v2, :cond_3

    .line 164
    .line 165
    iget-object v2, v0, LA0/B;->P:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 166
    .line 167
    iget-object v3, v0, LA0/B;->W:Lm0/u;

    .line 168
    .line 169
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    :cond_3
    iget-boolean v2, v0, LA0/B;->a0:Z

    .line 176
    .line 177
    if-eqz v2, :cond_4

    .line 178
    .line 179
    iget-object v1, v0, LA0/B;->N:Landroid/graphics/SurfaceTexture;

    .line 180
    .line 181
    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 182
    .line 183
    .line 184
    iget-object v1, v0, LA0/B;->P:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 185
    .line 186
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    iget-object v1, v0, LA0/B;->Z:Ljava/util/concurrent/CountDownLatch;

    .line 190
    .line 191
    if-eqz v1, :cond_7

    .line 192
    .line 193
    iget-object v1, v0, LA0/B;->P:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 194
    .line 195
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    if-eqz v1, :cond_7

    .line 200
    .line 201
    iget-object v0, v0, LA0/B;->Z:Ljava/util/concurrent/CountDownLatch;

    .line 202
    .line 203
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 204
    .line 205
    .line 206
    goto :goto_2

    .line 207
    :cond_4
    iget-boolean v2, v0, LA0/B;->U:Z

    .line 208
    .line 209
    if-eqz v2, :cond_6

    .line 210
    .line 211
    iget-object v2, v0, LA0/B;->Y:Ljava/util/concurrent/ScheduledFuture;

    .line 212
    .line 213
    if-eqz v2, :cond_5

    .line 214
    .line 215
    invoke-interface {v2, v6}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 216
    .line 217
    .line 218
    :cond_5
    iput-object v4, v0, LA0/B;->Y:Ljava/util/concurrent/ScheduledFuture;

    .line 219
    .line 220
    new-instance v2, La/b;

    .line 221
    .line 222
    invoke-direct {v2, v0, v1}, La/b;-><init>(Ljava/lang/Object;I)V

    .line 223
    .line 224
    .line 225
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 226
    .line 227
    iget-object v3, v0, LA0/B;->Q:Ljava/util/concurrent/ScheduledExecutorService;

    .line 228
    .line 229
    sget-wide v4, LA0/B;->e0:J

    .line 230
    .line 231
    invoke-interface {v3, v2, v4, v5, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    iput-object v1, v0, LA0/B;->Y:Ljava/util/concurrent/ScheduledFuture;

    .line 236
    .line 237
    :cond_6
    iget v1, v0, LA0/B;->T:I

    .line 238
    .line 239
    add-int/2addr v1, v7

    .line 240
    iput v1, v0, LA0/B;->T:I

    .line 241
    .line 242
    invoke-virtual {v0}, LA0/B;->m()V

    .line 243
    .line 244
    .line 245
    :cond_7
    :goto_2
    return-void

    .line 246
    :pswitch_3
    iget-object v0, p0, LA0/z;->b:LA0/B;

    .line 247
    .line 248
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 249
    .line 250
    .line 251
    :try_start_0
    invoke-virtual {v0}, LA0/B;->n()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    .line 253
    .line 254
    goto :goto_3

    .line 255
    :catch_0
    move-exception v1

    .line 256
    iput-object v1, v0, LA0/B;->b0:Ljava/lang/RuntimeException;

    .line 257
    .line 258
    const-string v2, "Failed to remove texture frames"

    .line 259
    .line 260
    invoke-static {v5, v2, v1}, Lp0/x;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 261
    .line 262
    .line 263
    iget-object v1, v0, LA0/B;->Z:Ljava/util/concurrent/CountDownLatch;

    .line 264
    .line 265
    if-eqz v1, :cond_8

    .line 266
    .line 267
    iget-object v0, v0, LA0/B;->Z:Ljava/util/concurrent/CountDownLatch;

    .line 268
    .line 269
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 270
    .line 271
    .line 272
    :cond_8
    :goto_3
    return-void

    .line 273
    :pswitch_4
    iget-object v0, p0, LA0/z;->b:LA0/B;

    .line 274
    .line 275
    iget-boolean v5, v0, LA0/B;->X:Z

    .line 276
    .line 277
    if-eqz v5, :cond_9

    .line 278
    .line 279
    iput-boolean v7, v0, LA0/B;->a0:Z

    .line 280
    .line 281
    :cond_9
    iget-object v5, v0, LA0/B;->P:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 282
    .line 283
    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    .line 284
    .line 285
    .line 286
    move-result v5

    .line 287
    if-eqz v5, :cond_b

    .line 288
    .line 289
    iget-object v5, v0, LA0/B;->V:Lm0/u;

    .line 290
    .line 291
    if-nez v5, :cond_b

    .line 292
    .line 293
    iget-object v1, v0, LA0/B;->K:LA0/y;

    .line 294
    .line 295
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 296
    .line 297
    .line 298
    check-cast v1, LA0/a;

    .line 299
    .line 300
    invoke-virtual {v1}, LA0/a;->a()V

    .line 301
    .line 302
    .line 303
    invoke-static {v2, v3}, LA0/g;->b(J)V

    .line 304
    .line 305
    .line 306
    iget-object v1, v0, LA0/B;->Y:Ljava/util/concurrent/ScheduledFuture;

    .line 307
    .line 308
    if-eqz v1, :cond_a

    .line 309
    .line 310
    invoke-interface {v1, v6}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 311
    .line 312
    .line 313
    :cond_a
    iput-object v4, v0, LA0/B;->Y:Ljava/util/concurrent/ScheduledFuture;

    .line 314
    .line 315
    goto :goto_4

    .line 316
    :cond_b
    iput-boolean v7, v0, LA0/B;->U:Z

    .line 317
    .line 318
    iget-object v2, v0, LA0/B;->Y:Ljava/util/concurrent/ScheduledFuture;

    .line 319
    .line 320
    if-eqz v2, :cond_c

    .line 321
    .line 322
    invoke-interface {v2, v6}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 323
    .line 324
    .line 325
    :cond_c
    iput-object v4, v0, LA0/B;->Y:Ljava/util/concurrent/ScheduledFuture;

    .line 326
    .line 327
    new-instance v2, La/b;

    .line 328
    .line 329
    invoke-direct {v2, v0, v1}, La/b;-><init>(Ljava/lang/Object;I)V

    .line 330
    .line 331
    .line 332
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 333
    .line 334
    iget-object v3, v0, LA0/B;->Q:Ljava/util/concurrent/ScheduledExecutorService;

    .line 335
    .line 336
    sget-wide v4, LA0/B;->e0:J

    .line 337
    .line 338
    invoke-interface {v3, v2, v4, v5, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 339
    .line 340
    .line 341
    move-result-object v1

    .line 342
    iput-object v1, v0, LA0/B;->Y:Ljava/util/concurrent/ScheduledFuture;

    .line 343
    .line 344
    :goto_4
    return-void

    .line 345
    :pswitch_5
    iget-object v0, p0, LA0/z;->b:LA0/B;

    .line 346
    .line 347
    iput-boolean v6, v0, LA0/B;->a0:Z

    .line 348
    .line 349
    return-void

    .line 350
    nop

    .line 351
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
