.class public final Ln2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final K:Ljava/lang/String;

.field public static final L:J


# instance fields
.field public final G:Landroid/content/Context;

.field public final H:Le2/y;

.field public final I:Ln2/i;

.field public J:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "ForceStopRunnable"

    .line 2
    .line 3
    invoke-static {v0}, Ld2/n;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Ln2/f;->K:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 10
    .line 11
    const-wide/16 v1, 0xe42

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    sput-wide v0, Ln2/f;->L:J

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Le2/y;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Ln2/f;->G:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p2, p0, Ln2/f;->H:Le2/y;

    .line 11
    .line 12
    iget-object p1, p2, Le2/y;->g:Ln2/i;

    .line 13
    .line 14
    iput-object p1, p0, Ln2/f;->I:Ln2/i;

    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    iput p1, p0, Ln2/f;->J:I

    .line 18
    .line 19
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 5

    .line 1
    const-string v0, "alarm"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/AlarmManager;

    .line 8
    .line 9
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    const/16 v2, 0x1f

    .line 12
    .line 13
    if-lt v1, v2, :cond_0

    .line 14
    .line 15
    const/high16 v1, 0xa000000

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/high16 v1, 0x8000000

    .line 19
    .line 20
    :goto_0
    new-instance v2, Landroid/content/Intent;

    .line 21
    .line 22
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance v3, Landroid/content/ComponentName;

    .line 26
    .line 27
    const-class v4, Landroidx/work/impl/utils/ForceStopRunnable$BroadcastReceiver;

    .line 28
    .line 29
    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    const-string v3, "ACTION_FORCE_STOP_RESCHEDULE"

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    const/4 v3, -0x1

    .line 41
    invoke-static {p0, v3, v2, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 46
    .line 47
    .line 48
    move-result-wide v1

    .line 49
    sget-wide v3, Ln2/f;->L:J

    .line 50
    .line 51
    add-long/2addr v1, v3

    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    const/4 v3, 0x0

    .line 55
    invoke-virtual {v0, v3, v1, v2, p0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "last_force_stop_ms"

    .line 4
    .line 5
    iget-object v3, v1, Ln2/f;->I:Ln2/i;

    .line 6
    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    iget-object v5, v1, Ln2/f;->G:Landroid/content/Context;

    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    iget-object v7, v1, Ln2/f;->H:Le2/y;

    .line 14
    .line 15
    const/16 v8, 0x17

    .line 16
    .line 17
    const-wide/16 v9, -0x1

    .line 18
    .line 19
    if-lt v0, v8, :cond_8

    .line 20
    .line 21
    sget-object v0, Lh2/c;->K:Ljava/lang/String;

    .line 22
    .line 23
    const-string v0, "jobscheduler"

    .line 24
    .line 25
    invoke-virtual {v5, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/app/job/JobScheduler;

    .line 30
    .line 31
    invoke-static {v5, v0}, Lh2/c;->f(Landroid/content/Context;Landroid/app/job/JobScheduler;)Ljava/util/ArrayList;

    .line 32
    .line 33
    .line 34
    move-result-object v8

    .line 35
    iget-object v11, v7, Le2/y;->c:Landroidx/work/impl/WorkDatabase;

    .line 36
    .line 37
    invoke-virtual {v11}, Landroidx/work/impl/WorkDatabase;->r()Lm2/i;

    .line 38
    .line 39
    .line 40
    move-result-object v11

    .line 41
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    const-string v12, "SELECT DISTINCT work_spec_id FROM SystemIdInfo"

    .line 45
    .line 46
    invoke-static {v6, v12}, LP1/z;->N(ILjava/lang/String;)LP1/z;

    .line 47
    .line 48
    .line 49
    move-result-object v12

    .line 50
    iget-object v13, v11, Lm2/i;->H:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v13, LP1/x;

    .line 53
    .line 54
    invoke-virtual {v13}, LP1/x;->b()V

    .line 55
    .line 56
    .line 57
    iget-object v11, v11, Lm2/i;->H:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v11, LP1/x;

    .line 60
    .line 61
    invoke-static {v11, v12}, LZ3/C;->h(LP1/x;LP1/z;)Landroid/database/Cursor;

    .line 62
    .line 63
    .line 64
    move-result-object v11

    .line 65
    :try_start_0
    new-instance v13, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    .line 68
    .line 69
    .line 70
    move-result v14

    .line 71
    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    .line 72
    .line 73
    .line 74
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    .line 75
    .line 76
    .line 77
    move-result v14

    .line 78
    if-eqz v14, :cond_1

    .line 79
    .line 80
    invoke-interface {v11, v6}, Landroid/database/Cursor;->isNull(I)Z

    .line 81
    .line 82
    .line 83
    move-result v14

    .line 84
    if-eqz v14, :cond_0

    .line 85
    .line 86
    const/4 v14, 0x0

    .line 87
    goto :goto_1

    .line 88
    :cond_0
    invoke-interface {v11, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v14

    .line 92
    :goto_1
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    .line 97
    goto/16 :goto_7

    .line 98
    .line 99
    :cond_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v12}, LP1/z;->O()V

    .line 103
    .line 104
    .line 105
    if-eqz v8, :cond_2

    .line 106
    .line 107
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 108
    .line 109
    .line 110
    move-result v11

    .line 111
    goto :goto_2

    .line 112
    :cond_2
    const/4 v11, 0x0

    .line 113
    :goto_2
    new-instance v12, Ljava/util/HashSet;

    .line 114
    .line 115
    invoke-direct {v12, v11}, Ljava/util/HashSet;-><init>(I)V

    .line 116
    .line 117
    .line 118
    if-eqz v8, :cond_4

    .line 119
    .line 120
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 121
    .line 122
    .line 123
    move-result v11

    .line 124
    if-nez v11, :cond_4

    .line 125
    .line 126
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    .line 132
    .line 133
    move-result v11

    .line 134
    if-eqz v11, :cond_4

    .line 135
    .line 136
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v11

    .line 140
    check-cast v11, Landroid/app/job/JobInfo;

    .line 141
    .line 142
    invoke-static {v11}, Lh2/c;->g(Landroid/app/job/JobInfo;)Lm2/j;

    .line 143
    .line 144
    .line 145
    move-result-object v14

    .line 146
    if-eqz v14, :cond_3

    .line 147
    .line 148
    iget-object v11, v14, Lm2/j;->a:Ljava/lang/String;

    .line 149
    .line 150
    invoke-virtual {v12, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    goto :goto_3

    .line 154
    :cond_3
    invoke-virtual {v11}, Landroid/app/job/JobInfo;->getId()I

    .line 155
    .line 156
    .line 157
    move-result v11

    .line 158
    invoke-static {v0, v11}, Lh2/c;->b(Landroid/app/job/JobScheduler;I)V

    .line 159
    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_4
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 167
    .line 168
    .line 169
    move-result v8

    .line 170
    if-eqz v8, :cond_6

    .line 171
    .line 172
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v8

    .line 176
    check-cast v8, Ljava/lang/String;

    .line 177
    .line 178
    invoke-virtual {v12, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v8

    .line 182
    if-nez v8, :cond_5

    .line 183
    .line 184
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    sget-object v8, Lh2/c;->K:Ljava/lang/String;

    .line 189
    .line 190
    const-string v11, "Reconciling jobs"

    .line 191
    .line 192
    invoke-virtual {v0, v8, v11}, Ld2/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    const/4 v0, 0x1

    .line 196
    goto :goto_4

    .line 197
    :cond_6
    const/4 v0, 0x0

    .line 198
    :goto_4
    if-eqz v0, :cond_9

    .line 199
    .line 200
    iget-object v8, v7, Le2/y;->c:Landroidx/work/impl/WorkDatabase;

    .line 201
    .line 202
    invoke-virtual {v8}, LP1/x;->c()V

    .line 203
    .line 204
    .line 205
    :try_start_1
    invoke-virtual {v8}, Landroidx/work/impl/WorkDatabase;->u()Lm2/s;

    .line 206
    .line 207
    .line 208
    move-result-object v11

    .line 209
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 210
    .line 211
    .line 212
    move-result-object v12

    .line 213
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 214
    .line 215
    .line 216
    move-result v13

    .line 217
    if-eqz v13, :cond_7

    .line 218
    .line 219
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v13

    .line 223
    check-cast v13, Ljava/lang/String;

    .line 224
    .line 225
    invoke-virtual {v11, v9, v10, v13}, Lm2/s;->i(JLjava/lang/String;)V

    .line 226
    .line 227
    .line 228
    goto :goto_5

    .line 229
    :catchall_1
    move-exception v0

    .line 230
    goto :goto_6

    .line 231
    :cond_7
    invoke-virtual {v8}, LP1/x;->n()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 232
    .line 233
    .line 234
    invoke-virtual {v8}, LP1/x;->j()V

    .line 235
    .line 236
    .line 237
    goto :goto_8

    .line 238
    :goto_6
    invoke-virtual {v8}, LP1/x;->j()V

    .line 239
    .line 240
    .line 241
    throw v0

    .line 242
    :goto_7
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v12}, LP1/z;->O()V

    .line 246
    .line 247
    .line 248
    throw v0

    .line 249
    :cond_8
    const/4 v0, 0x0

    .line 250
    :cond_9
    :goto_8
    iget-object v8, v7, Le2/y;->c:Landroidx/work/impl/WorkDatabase;

    .line 251
    .line 252
    invoke-virtual {v8}, Landroidx/work/impl/WorkDatabase;->u()Lm2/s;

    .line 253
    .line 254
    .line 255
    move-result-object v11

    .line 256
    invoke-virtual {v8}, Landroidx/work/impl/WorkDatabase;->t()Lm2/o;

    .line 257
    .line 258
    .line 259
    move-result-object v12

    .line 260
    invoke-virtual {v8}, LP1/x;->c()V

    .line 261
    .line 262
    .line 263
    :try_start_2
    invoke-virtual {v11}, Lm2/s;->c()Ljava/util/ArrayList;

    .line 264
    .line 265
    .line 266
    move-result-object v13

    .line 267
    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    .line 268
    .line 269
    .line 270
    move-result v14

    .line 271
    xor-int/2addr v14, v4

    .line 272
    if-eqz v14, :cond_a

    .line 273
    .line 274
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 275
    .line 276
    .line 277
    move-result-object v13

    .line 278
    :goto_9
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 279
    .line 280
    .line 281
    move-result v15

    .line 282
    if-eqz v15, :cond_a

    .line 283
    .line 284
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    move-result-object v15

    .line 288
    check-cast v15, Lm2/q;

    .line 289
    .line 290
    iget-object v6, v15, Lm2/q;->a:Ljava/lang/String;

    .line 291
    .line 292
    invoke-virtual {v11, v4, v6}, Lm2/s;->l(ILjava/lang/String;)V

    .line 293
    .line 294
    .line 295
    iget-object v6, v15, Lm2/q;->a:Ljava/lang/String;

    .line 296
    .line 297
    invoke-virtual {v11, v9, v10, v6}, Lm2/s;->i(JLjava/lang/String;)V

    .line 298
    .line 299
    .line 300
    const/4 v6, 0x0

    .line 301
    goto :goto_9

    .line 302
    :catchall_2
    move-exception v0

    .line 303
    goto/16 :goto_11

    .line 304
    .line 305
    :cond_a
    invoke-virtual {v12}, Lm2/o;->i()V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v8}, LP1/x;->n()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 309
    .line 310
    .line 311
    invoke-virtual {v8}, LP1/x;->j()V

    .line 312
    .line 313
    .line 314
    if-nez v14, :cond_c

    .line 315
    .line 316
    if-eqz v0, :cond_b

    .line 317
    .line 318
    goto :goto_a

    .line 319
    :cond_b
    const/4 v4, 0x0

    .line 320
    :cond_c
    :goto_a
    iget-object v0, v7, Le2/y;->g:Ln2/i;

    .line 321
    .line 322
    iget-object v0, v0, Ln2/i;->a:Landroidx/work/impl/WorkDatabase;

    .line 323
    .line 324
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->q()Lm2/e;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    const-string v6, "reschedule_needed"

    .line 329
    .line 330
    invoke-virtual {v0, v6}, Lm2/e;->z(Ljava/lang/String;)Ljava/lang/Long;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    const-wide/16 v8, 0x0

    .line 335
    .line 336
    sget-object v10, Ln2/f;->K:Ljava/lang/String;

    .line 337
    .line 338
    if-eqz v0, :cond_d

    .line 339
    .line 340
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 341
    .line 342
    .line 343
    move-result-wide v11

    .line 344
    const-wide/16 v13, 0x1

    .line 345
    .line 346
    cmp-long v0, v11, v13

    .line 347
    .line 348
    if-nez v0, :cond_d

    .line 349
    .line 350
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    const-string v2, "Rescheduling Workers."

    .line 355
    .line 356
    invoke-virtual {v0, v10, v2}, Ld2/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v7}, Le2/y;->y()V

    .line 360
    .line 361
    .line 362
    iget-object v0, v7, Le2/y;->g:Ln2/i;

    .line 363
    .line 364
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 365
    .line 366
    .line 367
    new-instance v2, Lm2/d;

    .line 368
    .line 369
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 370
    .line 371
    .line 372
    move-result-object v3

    .line 373
    invoke-direct {v2, v6, v3}, Lm2/d;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    .line 374
    .line 375
    .line 376
    iget-object v0, v0, Ln2/i;->a:Landroidx/work/impl/WorkDatabase;

    .line 377
    .line 378
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->q()Lm2/e;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    invoke-virtual {v0, v2}, Lm2/e;->C(Lm2/d;)V

    .line 383
    .line 384
    .line 385
    goto/16 :goto_10

    .line 386
    .line 387
    :cond_d
    :try_start_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 388
    .line 389
    const/16 v6, 0x1f

    .line 390
    .line 391
    if-lt v0, v6, :cond_e

    .line 392
    .line 393
    const/high16 v6, 0x22000000

    .line 394
    .line 395
    goto :goto_b

    .line 396
    :cond_e
    const/high16 v6, 0x20000000

    .line 397
    .line 398
    :goto_b
    new-instance v11, Landroid/content/Intent;

    .line 399
    .line 400
    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 401
    .line 402
    .line 403
    new-instance v12, Landroid/content/ComponentName;

    .line 404
    .line 405
    const-class v13, Landroidx/work/impl/utils/ForceStopRunnable$BroadcastReceiver;

    .line 406
    .line 407
    invoke-direct {v12, v5, v13}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v11, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 411
    .line 412
    .line 413
    const-string v12, "ACTION_FORCE_STOP_RESCHEDULE"

    .line 414
    .line 415
    invoke-virtual {v11, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 416
    .line 417
    .line 418
    const/4 v12, -0x1

    .line 419
    invoke-static {v5, v12, v11, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 420
    .line 421
    .line 422
    move-result-object v6

    .line 423
    const/16 v11, 0x1e

    .line 424
    .line 425
    if-lt v0, v11, :cond_12

    .line 426
    .line 427
    if-eqz v6, :cond_f

    .line 428
    .line 429
    invoke-virtual {v6}, Landroid/app/PendingIntent;->cancel()V

    .line 430
    .line 431
    .line 432
    goto :goto_c

    .line 433
    :catch_0
    move-exception v0

    .line 434
    goto :goto_e

    .line 435
    :catch_1
    move-exception v0

    .line 436
    goto :goto_e

    .line 437
    :cond_f
    :goto_c
    const-string v0, "activity"

    .line 438
    .line 439
    invoke-virtual {v5, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v0

    .line 443
    check-cast v0, Landroid/app/ActivityManager;

    .line 444
    .line 445
    invoke-static {v0}, Lb7/Z;->p(Landroid/app/ActivityManager;)Ljava/util/List;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    if-eqz v0, :cond_13

    .line 450
    .line 451
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 452
    .line 453
    .line 454
    move-result v5

    .line 455
    if-nez v5, :cond_13

    .line 456
    .line 457
    iget-object v5, v3, Ln2/i;->a:Landroidx/work/impl/WorkDatabase;

    .line 458
    .line 459
    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->q()Lm2/e;

    .line 460
    .line 461
    .line 462
    move-result-object v5

    .line 463
    invoke-virtual {v5, v2}, Lm2/e;->z(Ljava/lang/String;)Ljava/lang/Long;

    .line 464
    .line 465
    .line 466
    move-result-object v5

    .line 467
    if-eqz v5, :cond_10

    .line 468
    .line 469
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 470
    .line 471
    .line 472
    move-result-wide v8

    .line 473
    :cond_10
    const/4 v6, 0x0

    .line 474
    :goto_d
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 475
    .line 476
    .line 477
    move-result v5

    .line 478
    if-ge v6, v5, :cond_13

    .line 479
    .line 480
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    move-result-object v5

    .line 484
    invoke-static {v5}, Lb7/Z;->e(Ljava/lang/Object;)Landroid/app/ApplicationExitInfo;

    .line 485
    .line 486
    .line 487
    move-result-object v5

    .line 488
    invoke-static {v5}, Lb7/Z;->b(Landroid/app/ApplicationExitInfo;)I

    .line 489
    .line 490
    .line 491
    move-result v11

    .line 492
    const/16 v12, 0xa

    .line 493
    .line 494
    if-ne v11, v12, :cond_11

    .line 495
    .line 496
    invoke-static {v5}, Lb7/Z;->d(Landroid/app/ApplicationExitInfo;)J

    .line 497
    .line 498
    .line 499
    move-result-wide v11

    .line 500
    cmp-long v5, v11, v8

    .line 501
    .line 502
    if-ltz v5, :cond_11

    .line 503
    .line 504
    goto :goto_f

    .line 505
    :cond_11
    add-int/lit8 v6, v6, 0x1

    .line 506
    .line 507
    goto :goto_d

    .line 508
    :cond_12
    if-nez v6, :cond_13

    .line 509
    .line 510
    invoke-static {v5}, Ln2/f;->c(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    .line 511
    .line 512
    .line 513
    goto :goto_f

    .line 514
    :cond_13
    if-eqz v4, :cond_15

    .line 515
    .line 516
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 517
    .line 518
    .line 519
    move-result-object v0

    .line 520
    const-string v2, "Found unfinished work, scheduling it."

    .line 521
    .line 522
    invoke-virtual {v0, v10, v2}, Ld2/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    .line 524
    .line 525
    iget-object v0, v7, Le2/y;->b:Ld2/b;

    .line 526
    .line 527
    iget-object v2, v7, Le2/y;->c:Landroidx/work/impl/WorkDatabase;

    .line 528
    .line 529
    iget-object v3, v7, Le2/y;->e:Ljava/util/List;

    .line 530
    .line 531
    invoke-static {v0, v2, v3}, Le2/q;->a(Ld2/b;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 532
    .line 533
    .line 534
    goto :goto_10

    .line 535
    :goto_e
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 536
    .line 537
    .line 538
    move-result-object v4

    .line 539
    iget v4, v4, Ld2/n;->a:I

    .line 540
    .line 541
    const/4 v5, 0x5

    .line 542
    if-gt v4, v5, :cond_14

    .line 543
    .line 544
    const-string v4, "Ignoring exception"

    .line 545
    .line 546
    invoke-static {v10, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 547
    .line 548
    .line 549
    :cond_14
    :goto_f
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 550
    .line 551
    .line 552
    move-result-object v0

    .line 553
    const-string v4, "Application was force-stopped, rescheduling."

    .line 554
    .line 555
    invoke-virtual {v0, v10, v4}, Ld2/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    .line 557
    .line 558
    invoke-virtual {v7}, Le2/y;->y()V

    .line 559
    .line 560
    .line 561
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 562
    .line 563
    .line 564
    move-result-wide v4

    .line 565
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 566
    .line 567
    .line 568
    new-instance v0, Lm2/d;

    .line 569
    .line 570
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 571
    .line 572
    .line 573
    move-result-object v4

    .line 574
    invoke-direct {v0, v2, v4}, Lm2/d;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    .line 575
    .line 576
    .line 577
    iget-object v2, v3, Ln2/i;->a:Landroidx/work/impl/WorkDatabase;

    .line 578
    .line 579
    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->q()Lm2/e;

    .line 580
    .line 581
    .line 582
    move-result-object v2

    .line 583
    invoke-virtual {v2, v0}, Lm2/e;->C(Lm2/d;)V

    .line 584
    .line 585
    .line 586
    :cond_15
    :goto_10
    return-void

    .line 587
    :goto_11
    invoke-virtual {v8}, LP1/x;->j()V

    .line 588
    .line 589
    .line 590
    throw v0
.end method

.method public final b()Z
    .locals 5

    .line 1
    iget-object v0, p0, Ln2/f;->H:Le2/y;

    .line 2
    .line 3
    iget-object v0, v0, Le2/y;->b:Ld2/b;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    sget-object v2, Ln2/f;->K:Ljava/lang/String;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "The default process name was not specified."

    .line 22
    .line 23
    invoke-virtual {v0, v2, v1}, Ld2/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    return v0

    .line 28
    :cond_0
    iget-object v1, p0, Ln2/f;->G:Landroid/content/Context;

    .line 29
    .line 30
    invoke-static {v1, v0}, Ln2/n;->a(Landroid/content/Context;Ld2/b;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    new-instance v3, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v4, "Is default app process = "

    .line 41
    .line 42
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v1, v2, v3}, Ld2/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return v0
.end method

.method public final run()V
    .locals 11

    .line 1
    sget-object v0, Ln2/f;->K:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Ln2/f;->H:Le2/y;

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0}, Ln2/f;->b()Z

    .line 6
    .line 7
    .line 8
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    if-nez v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Le2/y;->x()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    :cond_0
    :goto_0
    :try_start_1
    iget-object v2, p0, Ln2/f;->G:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/H1;->s(Landroid/content/Context;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    .line 19
    .line 20
    :try_start_2
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const-string v3, "Performing cleanup operations."

    .line 25
    .line 26
    invoke-virtual {v2, v0, v3}, Ld2/n;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    .line 28
    .line 29
    :try_start_3
    invoke-virtual {p0}, Ln2/f;->a()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Landroid/database/sqlite/SQLiteTableLockedException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/database/sqlite/SQLiteConstraintException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/database/sqlite/SQLiteAccessPermException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Le2/y;->x()V

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    goto :goto_2

    .line 38
    :catch_1
    move-exception v2

    .line 39
    goto :goto_1

    .line 40
    :catch_2
    move-exception v2

    .line 41
    goto :goto_1

    .line 42
    :catch_3
    move-exception v2

    .line 43
    goto :goto_1

    .line 44
    :catch_4
    move-exception v2

    .line 45
    goto :goto_1

    .line 46
    :catch_5
    move-exception v2

    .line 47
    goto :goto_1

    .line 48
    :catch_6
    move-exception v2

    .line 49
    goto :goto_1

    .line 50
    :catch_7
    move-exception v2

    .line 51
    :goto_1
    :try_start_4
    iget v3, p0, Ln2/f;->J:I

    .line 52
    .line 53
    add-int/lit8 v3, v3, 0x1

    .line 54
    .line 55
    iput v3, p0, Ln2/f;->J:I

    .line 56
    .line 57
    const/4 v4, 0x3

    .line 58
    if-ge v3, v4, :cond_2

    .line 59
    .line 60
    int-to-long v5, v3

    .line 61
    const-wide/16 v7, 0x12c

    .line 62
    .line 63
    mul-long v5, v5, v7

    .line 64
    .line 65
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    new-instance v9, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string v10, "Retrying after "

    .line 75
    .line 76
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    iget v3, v3, Ld2/n;->a:I

    .line 87
    .line 88
    if-gt v3, v4, :cond_1

    .line 89
    .line 90
    invoke-static {v0, v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    .line 92
    .line 93
    :cond_1
    iget v2, p0, Ln2/f;->J:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 94
    .line 95
    int-to-long v2, v2

    .line 96
    mul-long v2, v2, v7

    .line 97
    .line 98
    :try_start_5
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_2
    :try_start_6
    const-string v3, "The file system on the device is in a bad state. WorkManager cannot access the app\'s internal data store."

    .line 103
    .line 104
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    invoke-virtual {v4, v0, v3, v2}, Ld2/n;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 109
    .line 110
    .line 111
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 112
    .line 113
    invoke-direct {v0, v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 114
    .line 115
    .line 116
    iget-object v2, v1, Le2/y;->b:Ld2/b;

    .line 117
    .line 118
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    throw v0

    .line 122
    :catch_8
    move-exception v2

    .line 123
    const-string v3, "Unexpected SQLite exception during migrations"

    .line 124
    .line 125
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    invoke-virtual {v4, v0, v3}, Ld2/n;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 133
    .line 134
    invoke-direct {v0, v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 135
    .line 136
    .line 137
    iget-object v2, v1, Le2/y;->b:Ld2/b;

    .line 138
    .line 139
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 143
    :goto_2
    invoke-virtual {v1}, Le2/y;->x()V

    .line 144
    .line 145
    .line 146
    throw v0
.end method
