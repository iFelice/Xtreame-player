.class public final Lcom/google/android/gms/internal/ads/j5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/j5;->a:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/j5;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/j5;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/K4;Landroid/content/Context;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/ads/j5;->a:I

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/j5;->b:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/j5;->c:Ljava/lang/Object;

    return-void
.end method

.method private final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/j5;->b:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/V4;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/V4;->k:Ljava/util/concurrent/Future;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/j5;->b:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lcom/google/android/gms/internal/ads/V4;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/V4;->j:Lcom/google/android/gms/internal/ads/j4;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/j5;->c:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, Lcom/google/android/gms/internal/ads/V3;

    .line 23
    .line 24
    monitor-enter v1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/AH; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/j5;->c:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v2, Lcom/google/android/gms/internal/ads/V3;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/PG;->d()[B

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sget-object v3, Lcom/google/android/gms/internal/ads/jH;->b:Lcom/google/android/gms/internal/ads/jH;

    .line 34
    .line 35
    sget-object v3, Lcom/google/android/gms/internal/ads/UH;->c:Lcom/google/android/gms/internal/ads/UH;

    .line 36
    .line 37
    sget-object v3, Lcom/google/android/gms/internal/ads/jH;->c:Lcom/google/android/gms/internal/ads/jH;

    .line 38
    .line 39
    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/ads/OG;->a([BLcom/google/android/gms/internal/ads/jH;)V

    .line 40
    .line 41
    .line 42
    monitor-exit v1

    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    :try_start_2
    throw v0
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/AH; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 47
    :catch_0
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 8

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/j5;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v0, Lorg/json/JSONArray;

    .line 9
    .line 10
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/j5;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, LD4/b;

    .line 32
    .line 33
    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Lorg/json/JSONObject;

    .line 38
    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    invoke-interface {v3}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_2

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/j5;->c:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v1, Landroid/os/Bundle;

    .line 59
    .line 60
    new-instance v2, Lcom/google/android/gms/internal/ads/Zs;

    .line 61
    .line 62
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const/4 v3, 0x2

    .line 67
    invoke-direct {v2, v3, v0, v1}, Lcom/google/android/gms/internal/ads/Zs;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    :goto_1
    return-object v2

    .line 71
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/j5;->b:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v0, Lcom/google/android/gms/internal/ads/Ko;

    .line 74
    .line 75
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/j5;->c:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v1, Lcom/google/android/gms/internal/ads/Wc;

    .line 78
    .line 79
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Ko;->d:Lcom/google/android/gms/internal/ads/To;

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/To;->c(Lcom/google/android/gms/internal/ads/Wc;)LD4/b;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->c5:Lcom/google/android/gms/internal/ads/J7;

    .line 86
    .line 87
    sget-object v2, Ll3/q;->d:Ll3/q;

    .line 88
    .line 89
    iget-object v2, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 90
    .line 91
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    check-cast v1, Ljava/lang/Integer;

    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    int-to-long v1, v1

    .line 102
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 103
    .line 104
    check-cast v0, Lcom/google/android/gms/internal/ads/te;

    .line 105
    .line 106
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/te;->G:Lcom/google/android/gms/internal/ads/pC;

    .line 107
    .line 108
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/GB;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    check-cast v0, Lcom/google/android/gms/internal/ads/fp;

    .line 113
    .line 114
    return-object v0

    .line 115
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/j5;->b:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v0, Lcom/google/android/gms/internal/ads/H4;

    .line 118
    .line 119
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/H4;->b:Lcom/google/android/gms/internal/ads/E4;

    .line 120
    .line 121
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/j5;->c:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast v1, Landroid/content/Context;

    .line 124
    .line 125
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/E4;->c(Landroid/content/Context;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    return-object v0

    .line 130
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/j5;->b:Ljava/lang/Object;

    .line 131
    .line 132
    check-cast v0, Lcom/google/android/gms/internal/ads/Eo;

    .line 133
    .line 134
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/j5;->c:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast v2, Lcom/google/android/gms/internal/ads/Wc;

    .line 137
    .line 138
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Eo;->c:Lcom/google/android/gms/internal/ads/Qo;

    .line 139
    .line 140
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/So;->b:Ljava/lang/Object;

    .line 141
    .line 142
    monitor-enter v3

    .line 143
    :try_start_0
    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/So;->c:Z

    .line 144
    .line 145
    if-eqz v4, :cond_3

    .line 146
    .line 147
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/So;->a:Lcom/google/android/gms/internal/ads/te;

    .line 148
    .line 149
    monitor-exit v3

    .line 150
    goto :goto_2

    .line 151
    :catchall_0
    move-exception v0

    .line 152
    goto :goto_3

    .line 153
    :cond_3
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/So;->c:Z

    .line 154
    .line 155
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/So;->e:Lcom/google/android/gms/internal/ads/Wc;

    .line 156
    .line 157
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/So;->f:Lcom/google/android/gms/internal/ads/n6;

    .line 158
    .line 159
    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/g;->checkAvailabilityAndConnect()V

    .line 160
    .line 161
    .line 162
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/So;->a:Lcom/google/android/gms/internal/ads/te;

    .line 163
    .line 164
    new-instance v4, Lcom/google/android/gms/internal/ads/Zn;

    .line 165
    .line 166
    invoke-direct {v4, v0, v1}, Lcom/google/android/gms/internal/ads/Zn;-><init>(Ljava/lang/Object;I)V

    .line 167
    .line 168
    .line 169
    sget-object v1, Lcom/google/android/gms/internal/ads/se;->f:Lcom/google/android/gms/internal/ads/re;

    .line 170
    .line 171
    invoke-virtual {v2, v4, v1}, Lcom/google/android/gms/internal/ads/te;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 172
    .line 173
    .line 174
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Qo;->g:Landroid/content/Context;

    .line 175
    .line 176
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/So;->a:Lcom/google/android/gms/internal/ads/te;

    .line 177
    .line 178
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/Qo;->h:Ljava/util/concurrent/Executor;

    .line 179
    .line 180
    invoke-static {v1, v2, v4}, Lcom/google/android/gms/internal/ads/So;->b(Landroid/content/Context;Lcom/google/android/gms/internal/ads/te;Ljava/util/concurrent/Executor;)V

    .line 181
    .line 182
    .line 183
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/So;->a:Lcom/google/android/gms/internal/ads/te;

    .line 184
    .line 185
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    :goto_2
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->c5:Lcom/google/android/gms/internal/ads/J7;

    .line 187
    .line 188
    sget-object v2, Ll3/q;->d:Ll3/q;

    .line 189
    .line 190
    iget-object v2, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 191
    .line 192
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    check-cast v1, Ljava/lang/Integer;

    .line 197
    .line 198
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    int-to-long v1, v1

    .line 203
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 204
    .line 205
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/te;->G:Lcom/google/android/gms/internal/ads/pC;

    .line 206
    .line 207
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/GB;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    check-cast v0, Lcom/google/android/gms/internal/ads/fp;

    .line 212
    .line 213
    return-object v0

    .line 214
    :goto_3
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    throw v0

    .line 216
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/j5;->b:Ljava/lang/Object;

    .line 217
    .line 218
    check-cast v0, Lcom/google/android/gms/internal/ads/eo;

    .line 219
    .line 220
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/j5;->c:Ljava/lang/Object;

    .line 221
    .line 222
    check-cast v3, Lcom/google/android/gms/internal/ads/Ow;

    .line 223
    .line 224
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/eo;->e:Lcom/google/android/gms/internal/ads/te;

    .line 225
    .line 226
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 227
    .line 228
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/te;->b(Ljava/lang/Object;)Z

    .line 229
    .line 230
    .line 231
    invoke-interface {v3, v1}, Lcom/google/android/gms/internal/ads/Ow;->e(Z)Lcom/google/android/gms/internal/ads/Ow;

    .line 232
    .line 233
    .line 234
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/eo;->p:Lcom/google/android/gms/internal/ads/Uw;

    .line 235
    .line 236
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/Ow;->zzm()Lcom/google/android/gms/internal/ads/Qw;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/Uw;->b(Lcom/google/android/gms/internal/ads/Qw;)V

    .line 241
    .line 242
    .line 243
    return-object v2

    .line 244
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/j5;->b:Ljava/lang/Object;

    .line 245
    .line 246
    check-cast v0, Lcom/google/android/gms/internal/ads/Qd;

    .line 247
    .line 248
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/j5;->c:Ljava/lang/Object;

    .line 249
    .line 250
    check-cast v1, Landroid/content/Context;

    .line 251
    .line 252
    const-string v2, "getAppInstanceId"

    .line 253
    .line 254
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Qd;->h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    check-cast v0, Ljava/lang/String;

    .line 259
    .line 260
    return-object v0

    .line 261
    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/j5;->c:Ljava/lang/Object;

    .line 262
    .line 263
    check-cast v0, Lcom/google/android/gms/internal/ads/K4;

    .line 264
    .line 265
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    .line 266
    .line 267
    check-cast v1, Ljava/util/WeakHashMap;

    .line 268
    .line 269
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/j5;->b:Ljava/lang/Object;

    .line 270
    .line 271
    check-cast v2, Landroid/content/Context;

    .line 272
    .line 273
    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    check-cast v1, Lcom/google/android/gms/internal/ads/ad;

    .line 278
    .line 279
    if-eqz v1, :cond_5

    .line 280
    .line 281
    sget-object v3, Lcom/google/android/gms/internal/ads/j8;->a:Lcom/google/android/gms/internal/ads/f8;

    .line 282
    .line 283
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v3

    .line 287
    check-cast v3, Ljava/lang/Long;

    .line 288
    .line 289
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 290
    .line 291
    .line 292
    move-result-wide v3

    .line 293
    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/ad;->a:J

    .line 294
    .line 295
    add-long/2addr v5, v3

    .line 296
    sget-object v3, Lk3/l;->A:Lk3/l;

    .line 297
    .line 298
    iget-object v3, v3, Lk3/l;->j:LP3/b;

    .line 299
    .line 300
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 301
    .line 302
    .line 303
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 304
    .line 305
    .line 306
    move-result-wide v3

    .line 307
    cmp-long v7, v5, v3

    .line 308
    .line 309
    if-gez v7, :cond_4

    .line 310
    .line 311
    goto :goto_4

    .line 312
    :cond_4
    new-instance v3, Lcom/google/android/gms/internal/ads/Yc;

    .line 313
    .line 314
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/ad;->b:Lcom/google/android/gms/internal/ads/Zc;

    .line 315
    .line 316
    invoke-direct {v3, v2, v1}, Lcom/google/android/gms/internal/ads/Yc;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/Zc;)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/Yc;->a()Lcom/google/android/gms/internal/ads/Zc;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    goto :goto_5

    .line 324
    :cond_5
    :goto_4
    new-instance v1, Lcom/google/android/gms/internal/ads/Yc;

    .line 325
    .line 326
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/Yc;-><init>(Landroid/content/Context;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Yc;->a()Lcom/google/android/gms/internal/ads/Zc;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    :goto_5
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    .line 334
    .line 335
    check-cast v0, Ljava/util/WeakHashMap;

    .line 336
    .line 337
    new-instance v3, Lcom/google/android/gms/internal/ads/ad;

    .line 338
    .line 339
    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/ad;-><init>(Lcom/google/android/gms/internal/ads/Zc;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v0, v2, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    return-object v1

    .line 346
    :pswitch_6
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/j5;->a()V

    .line 347
    .line 348
    .line 349
    return-object v2

    .line 350
    nop

    .line 351
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
