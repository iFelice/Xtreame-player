.class public final Lcom/google/android/gms/internal/ads/Hu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/uu;


# instance fields
.field public final a:Lo3/K;

.field public final b:Landroid/content/Context;

.field public final c:Lcom/google/android/gms/internal/ads/jC;

.field public final d:Ljava/util/concurrent/ScheduledExecutorService;

.field public final e:Lcom/google/android/gms/internal/ads/Mx;

.field public final f:Lcom/google/android/gms/internal/ads/Yv;

.field public final g:Lp3/a;


# direct methods
.method public constructor <init>(Lo3/L;Landroid/content/Context;Lcom/google/android/gms/internal/ads/re;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/Mx;Lcom/google/android/gms/internal/ads/Yv;Lp3/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Hu;->a:Lo3/K;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Hu;->b:Landroid/content/Context;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Hu;->c:Lcom/google/android/gms/internal/ads/jC;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Hu;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/Hu;->e:Lcom/google/android/gms/internal/ads/Mx;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/Hu;->f:Lcom/google/android/gms/internal/ads/Yv;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/Hu;->g:Lp3/a;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    const/16 v0, 0x38

    return v0
.end method

.method public final zzb()LD4/b;
    .locals 8

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->I9:Lcom/google/android/gms/internal/ads/J7;

    .line 2
    .line 3
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 4
    .line 5
    iget-object v2, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 6
    .line 7
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_6

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hu;->a:Lo3/K;

    .line 20
    .line 21
    check-cast v0, Lo3/L;

    .line 22
    .line 23
    invoke-virtual {v0}, Lo3/L;->s()V

    .line 24
    .line 25
    .line 26
    iget-object v2, v0, Lo3/L;->a:Ljava/lang/Object;

    .line 27
    .line 28
    monitor-enter v2

    .line 29
    :try_start_0
    iget-object v3, v0, Lo3/L;->f:Landroid/content/SharedPreferences;

    .line 30
    .line 31
    if-nez v3, :cond_0

    .line 32
    .line 33
    monitor-exit v2

    .line 34
    goto/16 :goto_4

    .line 35
    .line 36
    :catchall_0
    move-exception v0

    .line 37
    goto/16 :goto_3

    .line 38
    .line 39
    :cond_0
    const-string v4, "topics_consent_expiry_time_ms"

    .line 40
    .line 41
    const-wide/16 v5, 0x0

    .line 42
    .line 43
    invoke-interface {v3, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    .line 44
    .line 45
    .line 46
    move-result-wide v3

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 48
    .line 49
    .line 50
    move-result-wide v5

    .line 51
    cmp-long v7, v3, v5

    .line 52
    .line 53
    if-gez v7, :cond_1

    .line 54
    .line 55
    monitor-exit v2

    .line 56
    goto/16 :goto_4

    .line 57
    .line 58
    :cond_1
    iget-object v3, v0, Lo3/L;->f:Landroid/content/SharedPreferences;

    .line 59
    .line 60
    const-string v4, "is_topics_ad_personalization_allowed"

    .line 61
    .line 62
    const/4 v5, 0x0

    .line 63
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    if-eqz v3, :cond_2

    .line 68
    .line 69
    iget-boolean v0, v0, Lo3/L;->k:Z

    .line 70
    .line 71
    if-nez v0, :cond_2

    .line 72
    .line 73
    const/4 v0, 0x1

    .line 74
    goto :goto_0

    .line 75
    :cond_2
    const/4 v0, 0x0

    .line 76
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    if-eqz v0, :cond_6

    .line 78
    .line 79
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->M9:Lcom/google/android/gms/internal/ads/J7;

    .line 80
    .line 81
    iget-object v2, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 82
    .line 83
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Ljava/lang/Boolean;

    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_3

    .line 94
    .line 95
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hu;->f:Lcom/google/android/gms/internal/ads/Yv;

    .line 96
    .line 97
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Yv;->d:Ll3/b1;

    .line 98
    .line 99
    iget v0, v0, Ll3/b1;->e0:I

    .line 100
    .line 101
    const/4 v2, 0x2

    .line 102
    if-eq v0, v2, :cond_6

    .line 103
    .line 104
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hu;->g:Lp3/a;

    .line 105
    .line 106
    iget v0, v0, Lp3/a;->I:I

    .line 107
    .line 108
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->G9:Lcom/google/android/gms/internal/ads/J7;

    .line 109
    .line 110
    iget-object v3, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 111
    .line 112
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    check-cast v2, Ljava/lang/Integer;

    .line 117
    .line 118
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    if-lt v0, v2, :cond_6

    .line 123
    .line 124
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 125
    .line 126
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->H9:Lcom/google/android/gms/internal/ads/J7;

    .line 127
    .line 128
    iget-object v3, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 129
    .line 130
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    check-cast v2, Ljava/lang/Integer;

    .line 135
    .line 136
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    if-lt v0, v2, :cond_6

    .line 141
    .line 142
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->E9:Lcom/google/android/gms/internal/ads/J7;

    .line 143
    .line 144
    iget-object v2, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 145
    .line 146
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    check-cast v0, Ljava/lang/Boolean;

    .line 151
    .line 152
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-nez v0, :cond_4

    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_4
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->F9:Lcom/google/android/gms/internal/ads/J7;

    .line 160
    .line 161
    iget-object v2, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 162
    .line 163
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    check-cast v0, Ljava/lang/String;

    .line 168
    .line 169
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    if-eqz v2, :cond_5

    .line 174
    .line 175
    goto :goto_4

    .line 176
    :cond_5
    const-string v2, ","

    .line 177
    .line 178
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Hu;->b:Landroid/content/Context;

    .line 187
    .line 188
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    if-eqz v0, :cond_6

    .line 197
    .line 198
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Hu;->e:Lcom/google/android/gms/internal/ads/Mx;

    .line 199
    .line 200
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/Mx;->a(Z)LD4/b;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->K9:Lcom/google/android/gms/internal/ads/J7;

    .line 205
    .line 206
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 207
    .line 208
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    check-cast v1, Ljava/lang/Integer;

    .line 213
    .line 214
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    int-to-long v1, v1

    .line 219
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 220
    .line 221
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Hu;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 222
    .line 223
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/Cw;->e2(LD4/b;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)LD4/b;

    .line 224
    .line 225
    .line 226
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 227
    goto :goto_2

    .line 228
    :catch_0
    move-exception v0

    .line 229
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->H1(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/eC;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    :goto_2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/aC;->r(LD4/b;)Lcom/google/android/gms/internal/ads/aC;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    new-instance v1, Lcom/google/android/gms/internal/ads/hh;

    .line 238
    .line 239
    const/16 v2, 0x13

    .line 240
    .line 241
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/hh;-><init>(I)V

    .line 242
    .line 243
    .line 244
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Hu;->c:Lcom/google/android/gms/internal/ads/jC;

    .line 245
    .line 246
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Cw;->d2(LD4/b;Lcom/google/android/gms/internal/ads/RB;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/JB;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    new-instance v1, Lcom/google/android/gms/internal/ads/No;

    .line 251
    .line 252
    const/16 v2, 0xf

    .line 253
    .line 254
    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/ads/No;-><init>(Ljava/lang/Object;I)V

    .line 255
    .line 256
    .line 257
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Hu;->c:Lcom/google/android/gms/internal/ads/jC;

    .line 258
    .line 259
    const-class v3, Ljava/lang/Throwable;

    .line 260
    .line 261
    invoke-static {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/Cw;->D1(LD4/b;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/RB;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/rB;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->K9:Lcom/google/android/gms/internal/ads/J7;

    .line 266
    .line 267
    sget-object v2, Ll3/q;->d:Ll3/q;

    .line 268
    .line 269
    iget-object v2, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 270
    .line 271
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    check-cast v1, Ljava/lang/Integer;

    .line 276
    .line 277
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 278
    .line 279
    .line 280
    move-result v1

    .line 281
    int-to-long v1, v1

    .line 282
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Hu;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 283
    .line 284
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 285
    .line 286
    invoke-static {v0, v1, v2, v4, v3}, Lcom/google/android/gms/internal/ads/Cw;->e2(LD4/b;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)LD4/b;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    return-object v0

    .line 291
    :goto_3
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 292
    throw v0

    .line 293
    :cond_6
    :goto_4
    new-instance v0, Lcom/google/android/gms/internal/ads/Xs;

    .line 294
    .line 295
    const-string v1, ""

    .line 296
    .line 297
    const/4 v2, -0x1

    .line 298
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Xs;-><init>(Ljava/lang/String;I)V

    .line 299
    .line 300
    .line 301
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    return-object v0
.end method
