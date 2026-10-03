.class public final La/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final H:I

.field public final I:Ljava/lang/Object;

.field public final J:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, La/g;->G:I

    iput-object p1, p0, La/g;->I:Ljava/lang/Object;

    iput p2, p0, La/g;->H:I

    iput-object p3, p0, La/g;->J:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, La/g;->G:I

    iput-object p1, p0, La/g;->J:Ljava/lang/Object;

    iput-object p2, p0, La/g;->I:Ljava/lang/Object;

    iput p3, p0, La/g;->H:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;III)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, La/g;->G:I

    iput-object p1, p0, La/g;->I:Ljava/lang/Object;

    iput-object p2, p0, La/g;->J:Ljava/lang/Object;

    iput p3, p0, La/g;->H:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    iget v1, p0, La/g;->G:I

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, La/g;->I:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 11
    .line 12
    iget-object v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->m:LT/c;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1}, LT/c;->f()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, La/g;->J:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Landroid/view/View;

    .line 25
    .line 26
    sget-object v1, LN/N;->a:Ljava/util/WeakHashMap;

    .line 27
    .line 28
    invoke-virtual {v0, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget v1, p0, La/g;->H:I

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->v(I)V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void

    .line 38
    :pswitch_0
    iget-object v1, p0, La/g;->J:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v1, Lcom/google/android/gms/internal/cast/N;

    .line 41
    .line 42
    iget-object v3, p0, La/g;->I:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v3, Lcom/google/android/gms/internal/cast/s0;

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    invoke-static {v3}, Lcom/google/android/gms/internal/cast/s0;->n(Lcom/google/android/gms/internal/cast/s0;)Lcom/google/android/gms/internal/cast/r0;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v3}, Lcom/google/android/gms/internal/cast/h2;->d()V

    .line 54
    .line 55
    .line 56
    iget-object v4, v3, Lcom/google/android/gms/internal/cast/h2;->H:Lcom/google/android/gms/internal/cast/i2;

    .line 57
    .line 58
    check-cast v4, Lcom/google/android/gms/internal/cast/s0;

    .line 59
    .line 60
    iget-object v5, v1, Lcom/google/android/gms/internal/cast/N;->d:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/cast/s0;->v(Lcom/google/android/gms/internal/cast/s0;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3}, Lcom/google/android/gms/internal/cast/h2;->d()V

    .line 66
    .line 67
    .line 68
    iget-object v4, v3, Lcom/google/android/gms/internal/cast/h2;->H:Lcom/google/android/gms/internal/cast/i2;

    .line 69
    .line 70
    check-cast v4, Lcom/google/android/gms/internal/cast/s0;

    .line 71
    .line 72
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/cast/s0;->w(Lcom/google/android/gms/internal/cast/s0;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object v4, v1, Lcom/google/android/gms/internal/cast/N;->e:Ljava/lang/Long;

    .line 76
    .line 77
    if-eqz v4, :cond_1

    .line 78
    .line 79
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 80
    .line 81
    .line 82
    move-result-wide v4

    .line 83
    long-to-int v5, v4

    .line 84
    invoke-virtual {v3}, Lcom/google/android/gms/internal/cast/h2;->d()V

    .line 85
    .line 86
    .line 87
    iget-object v4, v3, Lcom/google/android/gms/internal/cast/h2;->H:Lcom/google/android/gms/internal/cast/i2;

    .line 88
    .line 89
    check-cast v4, Lcom/google/android/gms/internal/cast/s0;

    .line 90
    .line 91
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/cast/s0;->x(Lcom/google/android/gms/internal/cast/s0;I)V

    .line 92
    .line 93
    .line 94
    :cond_1
    invoke-virtual {v3}, Lcom/google/android/gms/internal/cast/h2;->b()Lcom/google/android/gms/internal/cast/i2;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    check-cast v3, Lcom/google/android/gms/internal/cast/s0;

    .line 99
    .line 100
    iget v4, v1, Lcom/google/android/gms/internal/cast/N;->h:I

    .line 101
    .line 102
    add-int/lit8 v5, v4, -0x1

    .line 103
    .line 104
    const/4 v6, 0x0

    .line 105
    if-eqz v4, :cond_5

    .line 106
    .line 107
    iget v4, p0, La/g;->H:I

    .line 108
    .line 109
    if-eqz v5, :cond_3

    .line 110
    .line 111
    if-eq v5, v0, :cond_2

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_2
    add-int/lit8 v4, v4, -0x1

    .line 115
    .line 116
    new-instance v6, LR2/a;

    .line 117
    .line 118
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    sget-object v5, LR2/c;->G:LR2/c;

    .line 123
    .line 124
    invoke-direct {v6, v4, v3, v5}, LR2/a;-><init>(Ljava/lang/Integer;Ljava/lang/Object;LR2/c;)V

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_3
    add-int/lit8 v4, v4, -0x1

    .line 129
    .line 130
    new-instance v6, LR2/a;

    .line 131
    .line 132
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    sget-object v5, LR2/c;->H:LR2/c;

    .line 137
    .line 138
    invoke-direct {v6, v4, v3, v5}, LR2/a;-><init>(Ljava/lang/Integer;Ljava/lang/Object;LR2/c;)V

    .line 139
    .line 140
    .line 141
    :goto_1
    new-array v0, v0, [Ljava/lang/Object;

    .line 142
    .line 143
    aput-object v6, v0, v2

    .line 144
    .line 145
    const-string v2, "analytics event: %s"

    .line 146
    .line 147
    sget-object v3, Lcom/google/android/gms/internal/cast/N;->i:LH3/b;

    .line 148
    .line 149
    invoke-virtual {v3, v2, v0}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    invoke-static {v6}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    iget-object v0, v1, Lcom/google/android/gms/internal/cast/N;->g:Lo/j;

    .line 156
    .line 157
    if-eqz v0, :cond_4

    .line 158
    .line 159
    invoke-virtual {v0, v6}, Lo/j;->b(LR2/a;)V

    .line 160
    .line 161
    .line 162
    :cond_4
    return-void

    .line 163
    :cond_5
    throw v6

    .line 164
    :pswitch_1
    iget-object v0, p0, La/g;->J:Ljava/lang/Object;

    .line 165
    .line 166
    check-cast v0, Lcom/google/android/gms/internal/cast/q;

    .line 167
    .line 168
    iget-object v1, p0, La/g;->I:Ljava/lang/Object;

    .line 169
    .line 170
    check-cast v1, LE1/p;

    .line 171
    .line 172
    iget v2, p0, La/g;->H:I

    .line 173
    .line 174
    iget-object v3, v0, Lcom/google/android/gms/internal/cast/q;->J:Ljava/util/HashMap;

    .line 175
    .line 176
    monitor-enter v3

    .line 177
    :try_start_0
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/cast/q;->v0(LE1/p;I)V

    .line 178
    .line 179
    .line 180
    monitor-exit v3

    .line 181
    return-void

    .line 182
    :catchall_0
    move-exception v0

    .line 183
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    throw v0

    .line 185
    :pswitch_2
    iget-object v0, p0, La/g;->I:Ljava/lang/Object;

    .line 186
    .line 187
    check-cast v0, Landroidx/work/impl/foreground/SystemForegroundService;

    .line 188
    .line 189
    iget-object v0, v0, Landroidx/work/impl/foreground/SystemForegroundService;->K:Landroid/app/NotificationManager;

    .line 190
    .line 191
    iget-object v1, p0, La/g;->J:Ljava/lang/Object;

    .line 192
    .line 193
    check-cast v1, Landroid/app/Notification;

    .line 194
    .line 195
    iget v2, p0, La/g;->H:I

    .line 196
    .line 197
    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 198
    .line 199
    .line 200
    return-void

    .line 201
    :pswitch_3
    iget-object v0, p0, La/g;->J:Ljava/lang/Object;

    .line 202
    .line 203
    check-cast v0, Lg2/j;

    .line 204
    .line 205
    iget-object v1, p0, La/g;->I:Ljava/lang/Object;

    .line 206
    .line 207
    check-cast v1, Landroid/content/Intent;

    .line 208
    .line 209
    iget v2, p0, La/g;->H:I

    .line 210
    .line 211
    invoke-virtual {v0, v2, v1}, Lg2/j;->a(ILandroid/content/Intent;)V

    .line 212
    .line 213
    .line 214
    return-void

    .line 215
    :pswitch_4
    iget-object v0, p0, La/g;->J:Ljava/lang/Object;

    .line 216
    .line 217
    check-cast v0, Lf/S;

    .line 218
    .line 219
    iget-object v0, v0, Lf/S;->H:Ljava/lang/Object;

    .line 220
    .line 221
    return-void

    .line 222
    :pswitch_5
    iget-object v1, p0, La/g;->J:Ljava/lang/Object;

    .line 223
    .line 224
    check-cast v1, [Ljava/lang/String;

    .line 225
    .line 226
    array-length v3, v1

    .line 227
    new-array v3, v3, [I

    .line 228
    .line 229
    iget-object v4, p0, La/g;->I:Ljava/lang/Object;

    .line 230
    .line 231
    check-cast v4, Landroid/app/Activity;

    .line 232
    .line 233
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 234
    .line 235
    .line 236
    move-result-object v5

    .line 237
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v6

    .line 241
    array-length v7, v1

    .line 242
    :goto_2
    if-ge v2, v7, :cond_6

    .line 243
    .line 244
    aget-object v8, v1, v2

    .line 245
    .line 246
    invoke-virtual {v5, v8, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    .line 248
    .line 249
    move-result v8

    .line 250
    aput v8, v3, v2

    .line 251
    .line 252
    add-int/2addr v2, v0

    .line 253
    goto :goto_2

    .line 254
    :cond_6
    check-cast v4, LD/a;

    .line 255
    .line 256
    iget v0, p0, La/g;->H:I

    .line 257
    .line 258
    invoke-interface {v4, v0, v1, v3}, LD/a;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 259
    .line 260
    .line 261
    return-void

    .line 262
    :pswitch_6
    iget-object v0, p0, La/g;->I:Ljava/lang/Object;

    .line 263
    .line 264
    check-cast v0, Lo/d;

    .line 265
    .line 266
    iget-object v0, v0, Lo/d;->H:Lcom/google/android/gms/internal/ads/b8;

    .line 267
    .line 268
    iget v1, p0, La/g;->H:I

    .line 269
    .line 270
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/b8;->e(I)V

    .line 271
    .line 272
    .line 273
    return-void

    .line 274
    :pswitch_7
    iget-object v0, p0, La/g;->I:Ljava/lang/Object;

    .line 275
    .line 276
    check-cast v0, La/h;

    .line 277
    .line 278
    new-instance v1, Landroid/content/Intent;

    .line 279
    .line 280
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 281
    .line 282
    .line 283
    const-string v3, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    .line 284
    .line 285
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    iget-object v3, p0, La/g;->J:Ljava/lang/Object;

    .line 290
    .line 291
    check-cast v3, Landroid/content/IntentSender$SendIntentException;

    .line 292
    .line 293
    const-string v4, "androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION"

    .line 294
    .line 295
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    iget v3, p0, La/g;->H:I

    .line 300
    .line 301
    invoke-virtual {v0, v3, v2, v1}, Lc/e;->a(IILandroid/content/Intent;)Z

    .line 302
    .line 303
    .line 304
    return-void

    .line 305
    :pswitch_8
    iget-object v0, p0, La/g;->I:Ljava/lang/Object;

    .line 306
    .line 307
    check-cast v0, La/h;

    .line 308
    .line 309
    iget-object v1, p0, La/g;->J:Ljava/lang/Object;

    .line 310
    .line 311
    check-cast v1, LO1/J;

    .line 312
    .line 313
    iget-object v1, v1, LO1/J;->H:Ljava/lang/Object;

    .line 314
    .line 315
    iget-object v2, v0, Lc/e;->b:Ljava/util/HashMap;

    .line 316
    .line 317
    iget v3, p0, La/g;->H:I

    .line 318
    .line 319
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 320
    .line 321
    .line 322
    move-result-object v3

    .line 323
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v2

    .line 327
    check-cast v2, Ljava/lang/String;

    .line 328
    .line 329
    if-nez v2, :cond_7

    .line 330
    .line 331
    goto :goto_4

    .line 332
    :cond_7
    iget-object v3, v0, Lc/e;->f:Ljava/util/HashMap;

    .line 333
    .line 334
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    .line 336
    .line 337
    move-result-object v3

    .line 338
    check-cast v3, Lc/d;

    .line 339
    .line 340
    if-eqz v3, :cond_9

    .line 341
    .line 342
    iget-object v3, v3, Lc/d;->a:Lc/c;

    .line 343
    .line 344
    if-nez v3, :cond_8

    .line 345
    .line 346
    goto :goto_3

    .line 347
    :cond_8
    iget-object v0, v0, Lc/e;->e:Ljava/util/ArrayList;

    .line 348
    .line 349
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 350
    .line 351
    .line 352
    move-result v0

    .line 353
    if-eqz v0, :cond_a

    .line 354
    .line 355
    check-cast v3, LY/C;

    .line 356
    .line 357
    invoke-virtual {v3, v1}, LY/C;->b(Ljava/lang/Object;)V

    .line 358
    .line 359
    .line 360
    goto :goto_4

    .line 361
    :cond_9
    :goto_3
    iget-object v3, v0, Lc/e;->h:Landroid/os/Bundle;

    .line 362
    .line 363
    invoke-virtual {v3, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    iget-object v0, v0, Lc/e;->g:Ljava/util/HashMap;

    .line 367
    .line 368
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    :cond_a
    :goto_4
    return-void

    .line 372
    nop

    .line 373
    :pswitch_data_0
    .packed-switch 0x0
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
.end method
