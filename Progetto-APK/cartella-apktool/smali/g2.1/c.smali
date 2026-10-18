.class public final Lg2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le2/c;


# static fields
.field public static final K:Ljava/lang/String;


# instance fields
.field public final G:Landroid/content/Context;

.field public final H:Ljava/util/HashMap;

.field public final I:Ljava/lang/Object;

.field public final J:Lcom/google/android/gms/internal/atv_ads_framework/x0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "CommandHandler"

    .line 2
    .line 3
    invoke-static {v0}, Ld2/n;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lg2/c;->K:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/atv_ads_framework/x0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lg2/c;->G:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lg2/c;->J:Lcom/google/android/gms/internal/atv_ads_framework/x0;

    .line 7
    .line 8
    new-instance p1, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lg2/c;->H:Ljava/util/HashMap;

    .line 14
    .line 15
    new-instance p1, Ljava/lang/Object;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lg2/c;->I:Ljava/lang/Object;

    .line 21
    .line 22
    return-void
.end method

.method public static d(Landroid/content/Intent;)Lm2/j;
    .locals 4

    .line 1
    new-instance v0, Lm2/j;

    .line 2
    .line 3
    const-string v1, "KEY_WORKSPEC_ID"

    .line 4
    .line 5
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "KEY_WORKSPEC_GENERATION"

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-virtual {p0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    invoke-direct {v0, v1, p0}, Lm2/j;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method public static e(Landroid/content/Intent;Lm2/j;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lm2/j;->a:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "KEY_WORKSPEC_ID"

    .line 4
    .line 5
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    .line 7
    .line 8
    const-string v0, "KEY_WORKSPEC_GENERATION"

    .line 9
    .line 10
    iget p1, p1, Lm2/j;->b:I

    .line 11
    .line 12
    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lg2/c;->I:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lg2/c;->H:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    xor-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return v1

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw v1
.end method

.method public final b(Lm2/j;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lg2/c;->I:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lg2/c;->H:Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lg2/g;

    .line 11
    .line 12
    iget-object v2, p0, Lg2/c;->J:Lcom/google/android/gms/internal/atv_ads_framework/x0;

    .line 13
    .line 14
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/atv_ads_framework/x0;->t(Lm2/j;)Le2/r;

    .line 15
    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1, p2}, Lg2/g;->d(Z)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    monitor-exit v0

    .line 26
    return-void

    .line 27
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p1
.end method

.method public final c(Landroid/content/Intent;ILg2/j;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "ACTION_CONSTRAINTS_CHANGED"

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x5

    .line 12
    const/4 v3, 0x1

    .line 13
    const/4 v4, 0x0

    .line 14
    if-eqz v1, :cond_7

    .line 15
    .line 16
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    const-string v5, "Handling constraints changed "

    .line 23
    .line 24
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    sget-object v1, Lg2/c;->K:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v0, v1, p1}, Ld2/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    new-instance p1, Lg2/e;

    .line 40
    .line 41
    iget-object v0, p0, Lg2/c;->G:Landroid/content/Context;

    .line 42
    .line 43
    invoke-direct {p1, v0, p2, p3}, Lg2/e;-><init>(Landroid/content/Context;ILg2/j;)V

    .line 44
    .line 45
    .line 46
    iget-object p2, p3, Lg2/j;->K:Le2/y;

    .line 47
    .line 48
    iget-object p2, p2, Le2/y;->c:Landroidx/work/impl/WorkDatabase;

    .line 49
    .line 50
    invoke-virtual {p2}, Landroidx/work/impl/WorkDatabase;->u()Lm2/s;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-virtual {p2}, Lm2/s;->d()Ljava/util/ArrayList;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    sget-object v0, Lg2/d;->a:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const/4 v1, 0x0

    .line 65
    const/4 v5, 0x0

    .line 66
    const/4 v6, 0x0

    .line 67
    const/4 v7, 0x0

    .line 68
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    if-eqz v8, :cond_2

    .line 73
    .line 74
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v8

    .line 78
    check-cast v8, Lm2/q;

    .line 79
    .line 80
    iget-object v8, v8, Lm2/q;->j:Ld2/d;

    .line 81
    .line 82
    iget-boolean v9, v8, Ld2/d;->d:Z

    .line 83
    .line 84
    or-int/2addr v1, v9

    .line 85
    iget-boolean v9, v8, Ld2/d;->b:Z

    .line 86
    .line 87
    or-int/2addr v5, v9

    .line 88
    iget-boolean v9, v8, Ld2/d;->e:Z

    .line 89
    .line 90
    or-int/2addr v6, v9

    .line 91
    iget v8, v8, Ld2/d;->a:I

    .line 92
    .line 93
    if-eq v8, v3, :cond_1

    .line 94
    .line 95
    const/4 v8, 0x1

    .line 96
    goto :goto_0

    .line 97
    :cond_1
    const/4 v8, 0x0

    .line 98
    :goto_0
    or-int/2addr v7, v8

    .line 99
    if-eqz v1, :cond_0

    .line 100
    .line 101
    if-eqz v5, :cond_0

    .line 102
    .line 103
    if-eqz v6, :cond_0

    .line 104
    .line 105
    if-eqz v7, :cond_0

    .line 106
    .line 107
    :cond_2
    sget-object v0, Landroidx/work/impl/background/systemalarm/ConstraintProxyUpdateReceiver;->a:Ljava/lang/String;

    .line 108
    .line 109
    new-instance v0, Landroid/content/Intent;

    .line 110
    .line 111
    const-string v3, "androidx.work.impl.background.systemalarm.UpdateProxies"

    .line 112
    .line 113
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    new-instance v3, Landroid/content/ComponentName;

    .line 117
    .line 118
    iget-object v4, p1, Lg2/e;->a:Landroid/content/Context;

    .line 119
    .line 120
    const-class v8, Landroidx/work/impl/background/systemalarm/ConstraintProxyUpdateReceiver;

    .line 121
    .line 122
    invoke-direct {v3, v4, v8}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 126
    .line 127
    .line 128
    const-string v3, "KEY_BATTERY_NOT_LOW_PROXY_ENABLED"

    .line 129
    .line 130
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    const-string v3, "KEY_BATTERY_CHARGING_PROXY_ENABLED"

    .line 135
    .line 136
    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    const-string v3, "KEY_STORAGE_NOT_LOW_PROXY_ENABLED"

    .line 141
    .line 142
    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    const-string v3, "KEY_NETWORK_STATE_PROXY_ENABLED"

    .line 147
    .line 148
    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 152
    .line 153
    .line 154
    iget-object v0, p1, Lg2/e;->c:Li2/c;

    .line 155
    .line 156
    invoke-virtual {v0, p2}, Li2/c;->c(Ljava/util/Collection;)V

    .line 157
    .line 158
    .line 159
    new-instance v1, Ljava/util/ArrayList;

    .line 160
    .line 161
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 162
    .line 163
    .line 164
    move-result v3

    .line 165
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 166
    .line 167
    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 169
    .line 170
    .line 171
    move-result-wide v5

    .line 172
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    if-eqz v3, :cond_5

    .line 181
    .line 182
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    check-cast v3, Lm2/q;

    .line 187
    .line 188
    iget-object v7, v3, Lm2/q;->a:Ljava/lang/String;

    .line 189
    .line 190
    invoke-virtual {v3}, Lm2/q;->a()J

    .line 191
    .line 192
    .line 193
    move-result-wide v8

    .line 194
    cmp-long v10, v5, v8

    .line 195
    .line 196
    if-ltz v10, :cond_3

    .line 197
    .line 198
    invoke-virtual {v3}, Lm2/q;->b()Z

    .line 199
    .line 200
    .line 201
    move-result v8

    .line 202
    if-eqz v8, :cond_4

    .line 203
    .line 204
    invoke-virtual {v0, v7}, Li2/c;->a(Ljava/lang/String;)Z

    .line 205
    .line 206
    .line 207
    move-result v7

    .line 208
    if-eqz v7, :cond_3

    .line 209
    .line 210
    :cond_4
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    goto :goto_1

    .line 214
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 215
    .line 216
    .line 217
    move-result-object p2

    .line 218
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    if-eqz v1, :cond_6

    .line 223
    .line 224
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    check-cast v1, Lm2/q;

    .line 229
    .line 230
    iget-object v3, v1, Lm2/q;->a:Ljava/lang/String;

    .line 231
    .line 232
    invoke-static {v1}, Lm2/f;->a(Lm2/q;)Lm2/j;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    new-instance v5, Landroid/content/Intent;

    .line 237
    .line 238
    const-class v6, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    .line 239
    .line 240
    invoke-direct {v5, v4, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 241
    .line 242
    .line 243
    const-string v6, "ACTION_DELAY_MET"

    .line 244
    .line 245
    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    .line 247
    .line 248
    invoke-static {v5, v1}, Lg2/c;->e(Landroid/content/Intent;Lm2/j;)V

    .line 249
    .line 250
    .line 251
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    const-string v6, "Creating a delay_met command for workSpec with id ("

    .line 256
    .line 257
    const-string v7, ")"

    .line 258
    .line 259
    invoke-static {v6, v3, v7}, La/r;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v3

    .line 263
    sget-object v6, Lg2/e;->d:Ljava/lang/String;

    .line 264
    .line 265
    invoke-virtual {v1, v6, v3}, Ld2/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    iget-object v1, p3, Lg2/j;->H:Lp2/a;

    .line 269
    .line 270
    check-cast v1, Lm2/u;

    .line 271
    .line 272
    iget-object v1, v1, Lm2/u;->J:Ljava/lang/Object;

    .line 273
    .line 274
    check-cast v1, Ljava/util/concurrent/Executor;

    .line 275
    .line 276
    new-instance v3, La/g;

    .line 277
    .line 278
    iget v6, p1, Lg2/e;->b:I

    .line 279
    .line 280
    invoke-direct {v3, p3, v5, v6, v2}, La/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 281
    .line 282
    .line 283
    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 284
    .line 285
    .line 286
    goto :goto_2

    .line 287
    :cond_6
    invoke-virtual {v0}, Li2/c;->d()V

    .line 288
    .line 289
    .line 290
    goto/16 :goto_d

    .line 291
    .line 292
    :cond_7
    const-string v1, "ACTION_RESCHEDULE"

    .line 293
    .line 294
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    move-result v1

    .line 298
    if-eqz v1, :cond_8

    .line 299
    .line 300
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    .line 305
    .line 306
    const-string v2, "Handling reschedule "

    .line 307
    .line 308
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    const-string p1, ", "

    .line 315
    .line 316
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object p1

    .line 326
    sget-object p2, Lg2/c;->K:Ljava/lang/String;

    .line 327
    .line 328
    invoke-virtual {v0, p2, p1}, Ld2/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    iget-object p1, p3, Lg2/j;->K:Le2/y;

    .line 332
    .line 333
    invoke-virtual {p1}, Le2/y;->y()V

    .line 334
    .line 335
    .line 336
    goto/16 :goto_d

    .line 337
    .line 338
    :cond_8
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 339
    .line 340
    .line 341
    move-result-object v1

    .line 342
    const-string v5, "KEY_WORKSPEC_ID"

    .line 343
    .line 344
    filled-new-array {v5}, [Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v5

    .line 348
    if-eqz v1, :cond_17

    .line 349
    .line 350
    invoke-virtual {v1}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 351
    .line 352
    .line 353
    move-result v6

    .line 354
    if-eqz v6, :cond_9

    .line 355
    .line 356
    goto/16 :goto_c

    .line 357
    .line 358
    :cond_9
    aget-object v5, v5, v4

    .line 359
    .line 360
    invoke-virtual {v1, v5}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object v1

    .line 364
    if-nez v1, :cond_a

    .line 365
    .line 366
    goto/16 :goto_c

    .line 367
    .line 368
    :cond_a
    const-string v1, "ACTION_SCHEDULE_WORK"

    .line 369
    .line 370
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 371
    .line 372
    .line 373
    move-result v1

    .line 374
    if-eqz v1, :cond_e

    .line 375
    .line 376
    const-string v0, "Opportunistically setting an alarm for "

    .line 377
    .line 378
    const-string v1, "Setting up Alarms for "

    .line 379
    .line 380
    invoke-static {p1}, Lg2/c;->d(Landroid/content/Intent;)Lm2/j;

    .line 381
    .line 382
    .line 383
    move-result-object p1

    .line 384
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 385
    .line 386
    .line 387
    move-result-object v3

    .line 388
    new-instance v4, Ljava/lang/StringBuilder;

    .line 389
    .line 390
    const-string v5, "Handling schedule work for "

    .line 391
    .line 392
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v4

    .line 402
    sget-object v5, Lg2/c;->K:Ljava/lang/String;

    .line 403
    .line 404
    invoke-virtual {v3, v5, v4}, Ld2/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    iget-object v3, p3, Lg2/j;->K:Le2/y;

    .line 408
    .line 409
    iget-object v3, v3, Le2/y;->c:Landroidx/work/impl/WorkDatabase;

    .line 410
    .line 411
    invoke-virtual {v3}, LP1/x;->c()V

    .line 412
    .line 413
    .line 414
    :try_start_0
    invoke-virtual {v3}, Landroidx/work/impl/WorkDatabase;->u()Lm2/s;

    .line 415
    .line 416
    .line 417
    move-result-object v4

    .line 418
    iget-object v6, p1, Lm2/j;->a:Ljava/lang/String;

    .line 419
    .line 420
    invoke-virtual {v4, v6}, Lm2/s;->h(Ljava/lang/String;)Lm2/q;

    .line 421
    .line 422
    .line 423
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    const-string v6, "Skipping scheduling "

    .line 425
    .line 426
    if-nez v4, :cond_b

    .line 427
    .line 428
    :try_start_1
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 429
    .line 430
    .line 431
    move-result-object p2

    .line 432
    new-instance p3, Ljava/lang/StringBuilder;

    .line 433
    .line 434
    invoke-direct {p3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    const-string p1, " because it\'s no longer in the DB"

    .line 441
    .line 442
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object p1

    .line 449
    invoke-virtual {p2, v5, p1}, Ld2/n;->g(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 450
    .line 451
    .line 452
    :goto_3
    invoke-virtual {v3}, LP1/x;->j()V

    .line 453
    .line 454
    .line 455
    goto/16 :goto_d

    .line 456
    .line 457
    :catchall_0
    move-exception p1

    .line 458
    goto/16 :goto_5

    .line 459
    .line 460
    :cond_b
    :try_start_2
    iget v7, v4, Lm2/q;->b:I

    .line 461
    .line 462
    invoke-static {v7}, Lcom/google/protobuf/U2;->d(I)Z

    .line 463
    .line 464
    .line 465
    move-result v7

    .line 466
    if-eqz v7, :cond_c

    .line 467
    .line 468
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 469
    .line 470
    .line 471
    move-result-object p2

    .line 472
    new-instance p3, Ljava/lang/StringBuilder;

    .line 473
    .line 474
    invoke-direct {p3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 475
    .line 476
    .line 477
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    const-string p1, "because it is finished."

    .line 481
    .line 482
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object p1

    .line 489
    invoke-virtual {p2, v5, p1}, Ld2/n;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    goto :goto_3

    .line 493
    :cond_c
    invoke-virtual {v4}, Lm2/q;->a()J

    .line 494
    .line 495
    .line 496
    move-result-wide v6

    .line 497
    invoke-virtual {v4}, Lm2/q;->b()Z

    .line 498
    .line 499
    .line 500
    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 501
    const-string v8, "at "

    .line 502
    .line 503
    iget-object v9, p0, Lg2/c;->G:Landroid/content/Context;

    .line 504
    .line 505
    if-nez v4, :cond_d

    .line 506
    .line 507
    :try_start_3
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 508
    .line 509
    .line 510
    move-result-object p2

    .line 511
    new-instance p3, Ljava/lang/StringBuilder;

    .line 512
    .line 513
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 517
    .line 518
    .line 519
    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    invoke-virtual {p3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object p3

    .line 529
    invoke-virtual {p2, v5, p3}, Ld2/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    .line 531
    .line 532
    invoke-static {v9, v3, p1, v6, v7}, Lg2/b;->b(Landroid/content/Context;Landroidx/work/impl/WorkDatabase;Lm2/j;J)V

    .line 533
    .line 534
    .line 535
    goto :goto_4

    .line 536
    :cond_d
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 537
    .line 538
    .line 539
    move-result-object v1

    .line 540
    new-instance v4, Ljava/lang/StringBuilder;

    .line 541
    .line 542
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 543
    .line 544
    .line 545
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 546
    .line 547
    .line 548
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    .line 550
    .line 551
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 552
    .line 553
    .line 554
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 555
    .line 556
    .line 557
    move-result-object v0

    .line 558
    invoke-virtual {v1, v5, v0}, Ld2/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    .line 560
    .line 561
    invoke-static {v9, v3, p1, v6, v7}, Lg2/b;->b(Landroid/content/Context;Landroidx/work/impl/WorkDatabase;Lm2/j;J)V

    .line 562
    .line 563
    .line 564
    new-instance p1, Landroid/content/Intent;

    .line 565
    .line 566
    const-class v0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    .line 567
    .line 568
    invoke-direct {p1, v9, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 569
    .line 570
    .line 571
    const-string v0, "ACTION_CONSTRAINTS_CHANGED"

    .line 572
    .line 573
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 574
    .line 575
    .line 576
    iget-object v0, p3, Lg2/j;->H:Lp2/a;

    .line 577
    .line 578
    check-cast v0, Lm2/u;

    .line 579
    .line 580
    iget-object v0, v0, Lm2/u;->J:Ljava/lang/Object;

    .line 581
    .line 582
    check-cast v0, Ljava/util/concurrent/Executor;

    .line 583
    .line 584
    new-instance v1, La/g;

    .line 585
    .line 586
    invoke-direct {v1, p3, p1, p2, v2}, La/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 587
    .line 588
    .line 589
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 590
    .line 591
    .line 592
    :goto_4
    invoke-virtual {v3}, LP1/x;->n()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 593
    .line 594
    .line 595
    goto/16 :goto_3

    .line 596
    .line 597
    :goto_5
    invoke-virtual {v3}, LP1/x;->j()V

    .line 598
    .line 599
    .line 600
    throw p1

    .line 601
    :cond_e
    const-string v1, "ACTION_DELAY_MET"

    .line 602
    .line 603
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 604
    .line 605
    .line 606
    move-result v1

    .line 607
    if-eqz v1, :cond_10

    .line 608
    .line 609
    const-string v0, "WorkSpec "

    .line 610
    .line 611
    const-string v1, "Handing delay met for "

    .line 612
    .line 613
    iget-object v2, p0, Lg2/c;->I:Ljava/lang/Object;

    .line 614
    .line 615
    monitor-enter v2

    .line 616
    :try_start_4
    invoke-static {p1}, Lg2/c;->d(Landroid/content/Intent;)Lm2/j;

    .line 617
    .line 618
    .line 619
    move-result-object p1

    .line 620
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 621
    .line 622
    .line 623
    move-result-object v3

    .line 624
    sget-object v4, Lg2/c;->K:Ljava/lang/String;

    .line 625
    .line 626
    new-instance v5, Ljava/lang/StringBuilder;

    .line 627
    .line 628
    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 629
    .line 630
    .line 631
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 632
    .line 633
    .line 634
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 635
    .line 636
    .line 637
    move-result-object v1

    .line 638
    invoke-virtual {v3, v4, v1}, Ld2/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    .line 640
    .line 641
    iget-object v1, p0, Lg2/c;->H:Ljava/util/HashMap;

    .line 642
    .line 643
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 644
    .line 645
    .line 646
    move-result v1

    .line 647
    if-nez v1, :cond_f

    .line 648
    .line 649
    new-instance v0, Lg2/g;

    .line 650
    .line 651
    iget-object v1, p0, Lg2/c;->G:Landroid/content/Context;

    .line 652
    .line 653
    iget-object v3, p0, Lg2/c;->J:Lcom/google/android/gms/internal/atv_ads_framework/x0;

    .line 654
    .line 655
    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/atv_ads_framework/x0;->y(Lm2/j;)Le2/r;

    .line 656
    .line 657
    .line 658
    move-result-object v3

    .line 659
    invoke-direct {v0, v1, p2, p3, v3}, Lg2/g;-><init>(Landroid/content/Context;ILg2/j;Le2/r;)V

    .line 660
    .line 661
    .line 662
    iget-object p2, p0, Lg2/c;->H:Ljava/util/HashMap;

    .line 663
    .line 664
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    .line 666
    .line 667
    invoke-virtual {v0}, Lg2/g;->c()V

    .line 668
    .line 669
    .line 670
    goto :goto_6

    .line 671
    :catchall_1
    move-exception p1

    .line 672
    goto :goto_7

    .line 673
    :cond_f
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 674
    .line 675
    .line 676
    move-result-object p2

    .line 677
    new-instance p3, Ljava/lang/StringBuilder;

    .line 678
    .line 679
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 680
    .line 681
    .line 682
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 683
    .line 684
    .line 685
    const-string p1, " is is already being handled for ACTION_DELAY_MET"

    .line 686
    .line 687
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    .line 689
    .line 690
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 691
    .line 692
    .line 693
    move-result-object p1

    .line 694
    invoke-virtual {p2, v4, p1}, Ld2/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    .line 696
    .line 697
    :goto_6
    monitor-exit v2

    .line 698
    goto/16 :goto_d

    .line 699
    .line 700
    :goto_7
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 701
    throw p1

    .line 702
    :cond_10
    const-string v1, "ACTION_STOP_WORK"

    .line 703
    .line 704
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 705
    .line 706
    .line 707
    move-result v1

    .line 708
    if-eqz v1, :cond_15

    .line 709
    .line 710
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 711
    .line 712
    .line 713
    move-result-object p1

    .line 714
    const-string p2, "KEY_WORKSPEC_ID"

    .line 715
    .line 716
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 717
    .line 718
    .line 719
    move-result-object p2

    .line 720
    const-string v0, "KEY_WORKSPEC_GENERATION"

    .line 721
    .line 722
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 723
    .line 724
    .line 725
    move-result v1

    .line 726
    iget-object v2, p0, Lg2/c;->J:Lcom/google/android/gms/internal/atv_ads_framework/x0;

    .line 727
    .line 728
    if-eqz v1, :cond_11

    .line 729
    .line 730
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 731
    .line 732
    .line 733
    move-result p1

    .line 734
    new-instance v0, Ljava/util/ArrayList;

    .line 735
    .line 736
    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 737
    .line 738
    .line 739
    new-instance v1, Lm2/j;

    .line 740
    .line 741
    invoke-direct {v1, p2, p1}, Lm2/j;-><init>(Ljava/lang/String;I)V

    .line 742
    .line 743
    .line 744
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/atv_ads_framework/x0;->t(Lm2/j;)Le2/r;

    .line 745
    .line 746
    .line 747
    move-result-object p1

    .line 748
    if-eqz p1, :cond_12

    .line 749
    .line 750
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 751
    .line 752
    .line 753
    goto :goto_8

    .line 754
    :cond_11
    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/atv_ads_framework/x0;->u(Ljava/lang/String;)Ljava/util/List;

    .line 755
    .line 756
    .line 757
    move-result-object v0

    .line 758
    :cond_12
    :goto_8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 759
    .line 760
    .line 761
    move-result-object p1

    .line 762
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 763
    .line 764
    .line 765
    move-result v0

    .line 766
    if-eqz v0, :cond_18

    .line 767
    .line 768
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 769
    .line 770
    .line 771
    move-result-object v0

    .line 772
    check-cast v0, Le2/r;

    .line 773
    .line 774
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 775
    .line 776
    .line 777
    move-result-object v1

    .line 778
    const-string v2, "Handing stopWork work for "

    .line 779
    .line 780
    invoke-static {v2, p2}, Lt/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 781
    .line 782
    .line 783
    move-result-object v2

    .line 784
    sget-object v5, Lg2/c;->K:Ljava/lang/String;

    .line 785
    .line 786
    invoke-virtual {v1, v5, v2}, Ld2/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    .line 788
    .line 789
    iget-object v1, p3, Lg2/j;->K:Le2/y;

    .line 790
    .line 791
    invoke-virtual {v1, v0}, Le2/y;->A(Le2/r;)V

    .line 792
    .line 793
    .line 794
    iget-object v1, p3, Lg2/j;->K:Le2/y;

    .line 795
    .line 796
    iget-object v1, v1, Le2/y;->c:Landroidx/work/impl/WorkDatabase;

    .line 797
    .line 798
    iget-object v2, v0, Le2/r;->a:Lm2/j;

    .line 799
    .line 800
    sget-object v5, Lg2/b;->a:Ljava/lang/String;

    .line 801
    .line 802
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->r()Lm2/i;

    .line 803
    .line 804
    .line 805
    move-result-object v1

    .line 806
    invoke-virtual {v1, v2}, Lm2/i;->m(Lm2/j;)Lm2/g;

    .line 807
    .line 808
    .line 809
    move-result-object v5

    .line 810
    if-eqz v5, :cond_14

    .line 811
    .line 812
    iget v5, v5, Lm2/g;->c:I

    .line 813
    .line 814
    iget-object v6, p0, Lg2/c;->G:Landroid/content/Context;

    .line 815
    .line 816
    invoke-static {v6, v2, v5}, Lg2/b;->a(Landroid/content/Context;Lm2/j;I)V

    .line 817
    .line 818
    .line 819
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 820
    .line 821
    .line 822
    move-result-object v5

    .line 823
    new-instance v6, Ljava/lang/StringBuilder;

    .line 824
    .line 825
    const-string v7, "Removing SystemIdInfo for workSpecId ("

    .line 826
    .line 827
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 828
    .line 829
    .line 830
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 831
    .line 832
    .line 833
    const-string v7, ")"

    .line 834
    .line 835
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    .line 837
    .line 838
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 839
    .line 840
    .line 841
    move-result-object v6

    .line 842
    sget-object v7, Lg2/b;->a:Ljava/lang/String;

    .line 843
    .line 844
    invoke-virtual {v5, v7, v6}, Ld2/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    .line 846
    .line 847
    iget-object v5, v1, Lm2/i;->H:Ljava/lang/Object;

    .line 848
    .line 849
    check-cast v5, LP1/x;

    .line 850
    .line 851
    invoke-virtual {v5}, LP1/x;->b()V

    .line 852
    .line 853
    .line 854
    iget-object v5, v1, Lm2/i;->J:Ljava/lang/Object;

    .line 855
    .line 856
    check-cast v5, Lk/d;

    .line 857
    .line 858
    invoke-virtual {v5}, Lk/d;->c()LT1/i;

    .line 859
    .line 860
    .line 861
    move-result-object v5

    .line 862
    iget-object v6, v2, Lm2/j;->a:Ljava/lang/String;

    .line 863
    .line 864
    if-nez v6, :cond_13

    .line 865
    .line 866
    invoke-interface {v5, v3}, LT1/g;->J(I)V

    .line 867
    .line 868
    .line 869
    goto :goto_a

    .line 870
    :cond_13
    invoke-interface {v5, v3, v6}, LT1/g;->g(ILjava/lang/String;)V

    .line 871
    .line 872
    .line 873
    :goto_a
    iget v2, v2, Lm2/j;->b:I

    .line 874
    .line 875
    int-to-long v6, v2

    .line 876
    const/4 v2, 0x2

    .line 877
    invoke-interface {v5, v2, v6, v7}, LT1/g;->w(IJ)V

    .line 878
    .line 879
    .line 880
    iget-object v2, v1, Lm2/i;->H:Ljava/lang/Object;

    .line 881
    .line 882
    check-cast v2, LP1/x;

    .line 883
    .line 884
    invoke-virtual {v2}, LP1/x;->c()V

    .line 885
    .line 886
    .line 887
    :try_start_5
    invoke-interface {v5}, LT1/i;->l()I

    .line 888
    .line 889
    .line 890
    iget-object v2, v1, Lm2/i;->H:Ljava/lang/Object;

    .line 891
    .line 892
    check-cast v2, LP1/x;

    .line 893
    .line 894
    invoke-virtual {v2}, LP1/x;->n()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 895
    .line 896
    .line 897
    iget-object v2, v1, Lm2/i;->H:Ljava/lang/Object;

    .line 898
    .line 899
    check-cast v2, LP1/x;

    .line 900
    .line 901
    invoke-virtual {v2}, LP1/x;->j()V

    .line 902
    .line 903
    .line 904
    iget-object v1, v1, Lm2/i;->J:Ljava/lang/Object;

    .line 905
    .line 906
    check-cast v1, Lk/d;

    .line 907
    .line 908
    invoke-virtual {v1, v5}, Lk/d;->m(LT1/i;)V

    .line 909
    .line 910
    .line 911
    goto :goto_b

    .line 912
    :catchall_2
    move-exception p1

    .line 913
    iget-object p2, v1, Lm2/i;->H:Ljava/lang/Object;

    .line 914
    .line 915
    check-cast p2, LP1/x;

    .line 916
    .line 917
    invoke-virtual {p2}, LP1/x;->j()V

    .line 918
    .line 919
    .line 920
    iget-object p2, v1, Lm2/i;->J:Ljava/lang/Object;

    .line 921
    .line 922
    check-cast p2, Lk/d;

    .line 923
    .line 924
    invoke-virtual {p2, v5}, Lk/d;->m(LT1/i;)V

    .line 925
    .line 926
    .line 927
    throw p1

    .line 928
    :cond_14
    :goto_b
    iget-object v0, v0, Le2/r;->a:Lm2/j;

    .line 929
    .line 930
    invoke-virtual {p3, v0, v4}, Lg2/j;->b(Lm2/j;Z)V

    .line 931
    .line 932
    .line 933
    goto/16 :goto_9

    .line 934
    .line 935
    :cond_15
    const-string p3, "ACTION_EXECUTION_COMPLETED"

    .line 936
    .line 937
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 938
    .line 939
    .line 940
    move-result p3

    .line 941
    if-eqz p3, :cond_16

    .line 942
    .line 943
    invoke-static {p1}, Lg2/c;->d(Landroid/content/Intent;)Lm2/j;

    .line 944
    .line 945
    .line 946
    move-result-object p3

    .line 947
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 948
    .line 949
    .line 950
    move-result-object v0

    .line 951
    const-string v1, "KEY_NEEDS_RESCHEDULE"

    .line 952
    .line 953
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 954
    .line 955
    .line 956
    move-result v0

    .line 957
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 958
    .line 959
    .line 960
    move-result-object v1

    .line 961
    new-instance v2, Ljava/lang/StringBuilder;

    .line 962
    .line 963
    const-string v3, "Handling onExecutionCompleted "

    .line 964
    .line 965
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 966
    .line 967
    .line 968
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 969
    .line 970
    .line 971
    const-string p1, ", "

    .line 972
    .line 973
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 974
    .line 975
    .line 976
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 977
    .line 978
    .line 979
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 980
    .line 981
    .line 982
    move-result-object p1

    .line 983
    sget-object p2, Lg2/c;->K:Ljava/lang/String;

    .line 984
    .line 985
    invoke-virtual {v1, p2, p1}, Ld2/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    .line 987
    .line 988
    invoke-virtual {p0, p3, v0}, Lg2/c;->b(Lm2/j;Z)V

    .line 989
    .line 990
    .line 991
    goto :goto_d

    .line 992
    :cond_16
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 993
    .line 994
    .line 995
    move-result-object p2

    .line 996
    sget-object p3, Lg2/c;->K:Ljava/lang/String;

    .line 997
    .line 998
    new-instance v0, Ljava/lang/StringBuilder;

    .line 999
    .line 1000
    const-string v1, "Ignoring intent "

    .line 1001
    .line 1002
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1003
    .line 1004
    .line 1005
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1006
    .line 1007
    .line 1008
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1009
    .line 1010
    .line 1011
    move-result-object p1

    .line 1012
    invoke-virtual {p2, p3, p1}, Ld2/n;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    .line 1014
    .line 1015
    goto :goto_d

    .line 1016
    :cond_17
    :goto_c
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 1017
    .line 1018
    .line 1019
    move-result-object p1

    .line 1020
    sget-object p2, Lg2/c;->K:Ljava/lang/String;

    .line 1021
    .line 1022
    new-instance p3, Ljava/lang/StringBuilder;

    .line 1023
    .line 1024
    const-string v1, "Invalid request for "

    .line 1025
    .line 1026
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1027
    .line 1028
    .line 1029
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1030
    .line 1031
    .line 1032
    const-string v0, " , requires KEY_WORKSPEC_ID ."

    .line 1033
    .line 1034
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1035
    .line 1036
    .line 1037
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1038
    .line 1039
    .line 1040
    move-result-object p3

    .line 1041
    invoke-virtual {p1, p2, p3}, Ld2/n;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    .line 1043
    .line 1044
    :cond_18
    :goto_d
    return-void
.end method
