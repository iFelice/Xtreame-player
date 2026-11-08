.class public final Lcom/google/android/gms/internal/ads/gg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public b:J

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/gg;->a:I

    return-void
.end method

.method public constructor <init>(JLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/ads/gg;->a:I

    .line 4
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/gg;->c:Ljava/lang/Object;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/gg;->d:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/gg;->e:Ljava/lang/Object;

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/gg;->b:J

    return-void
.end method

.method public synthetic constructor <init>(Lc4/d;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 6
    iput v0, p0, Lcom/google/android/gms/internal/ads/gg;->a:I

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gg;->e:Ljava/lang/Object;

    return-void
.end method

.method public static c(Lc4/u;)Lcom/google/android/gms/internal/ads/gg;
    .locals 7

    .line 1
    new-instance v6, Lcom/google/android/gms/internal/ads/gg;

    .line 2
    .line 3
    iget-object v4, p0, Lc4/u;->G:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v0, p0, Lc4/u;->H:Lc4/t;

    .line 6
    .line 7
    invoke-virtual {v0}, Lc4/t;->i()Landroid/os/Bundle;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    iget-wide v1, p0, Lc4/u;->J:J

    .line 12
    .line 13
    iget-object v5, p0, Lc4/u;->I:Ljava/lang/String;

    .line 14
    .line 15
    move-object v0, v6

    .line 16
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/gg;-><init>(JLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-object v6
.end method


# virtual methods
.method public final a()Lc4/u;
    .locals 7

    .line 1
    new-instance v6, Lc4/u;

    .line 2
    .line 3
    new-instance v2, Lc4/t;

    .line 4
    .line 5
    new-instance v0, Landroid/os/Bundle;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/gg;->e:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Landroid/os/Bundle;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {v2, v0}, Lc4/t;-><init>(Landroid/os/Bundle;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gg;->d:Ljava/lang/Object;

    .line 18
    .line 19
    move-object v3, v0

    .line 20
    check-cast v3, Ljava/lang/String;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gg;->c:Ljava/lang/Object;

    .line 23
    .line 24
    move-object v1, v0

    .line 25
    check-cast v1, Ljava/lang/String;

    .line 26
    .line 27
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/gg;->b:J

    .line 28
    .line 29
    move-object v0, v6

    .line 30
    invoke-direct/range {v0 .. v5}, Lc4/u;-><init>(Ljava/lang/String;Lc4/t;Ljava/lang/String;J)V

    .line 31
    .line 32
    .line 33
    return-object v6
.end method

.method public final b(Lcom/google/android/gms/internal/measurement/b1;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/b1;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/b1;->w()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/b1;->x()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v9

    .line 15
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/gg;->e:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v2, Lc4/d;

    .line 18
    .line 19
    iget-object v4, v2, Lc4/q1;->H:Lc4/A1;

    .line 20
    .line 21
    invoke-virtual {v4}, Lc4/A1;->e()Lc4/E1;

    .line 22
    .line 23
    .line 24
    const-string v5, "_eid"

    .line 25
    .line 26
    invoke-static {v8, v5}, Lc4/E1;->x(Lcom/google/android/gms/internal/measurement/b1;Ljava/lang/String;)Ljava/io/Serializable;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    check-cast v6, Ljava/lang/Long;

    .line 31
    .line 32
    if-eqz v6, :cond_f

    .line 33
    .line 34
    const-string v7, "_ep"

    .line 35
    .line 36
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    const-wide/16 v10, 0x0

    .line 41
    .line 42
    if-eqz v7, :cond_c

    .line 43
    .line 44
    invoke-virtual {v4}, Lc4/A1;->e()Lc4/E1;

    .line 45
    .line 46
    .line 47
    const-string v0, "_en"

    .line 48
    .line 49
    invoke-static {v8, v0}, Lc4/E1;->x(Lcom/google/android/gms/internal/measurement/b1;Ljava/lang/String;)Ljava/io/Serializable;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    move-object v12, v0

    .line 54
    check-cast v12, Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    const/4 v7, 0x0

    .line 61
    if-eqz v0, :cond_0

    .line 62
    .line 63
    iget-object v0, v2, Lc1/d;->G:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v0, Lc4/l0;

    .line 66
    .line 67
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 68
    .line 69
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 70
    .line 71
    .line 72
    const-string v2, "Extra parameter without an event name. eventId"

    .line 73
    .line 74
    iget-object v0, v0, Lc4/T;->M:Lc4/Q;

    .line 75
    .line 76
    invoke-virtual {v0, v6, v2}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    return-object v7

    .line 80
    :cond_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/gg;->c:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v0, Lcom/google/android/gms/internal/measurement/b1;

    .line 83
    .line 84
    if-eqz v0, :cond_1

    .line 85
    .line 86
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/gg;->d:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v0, Ljava/lang/Long;

    .line 89
    .line 90
    if-eqz v0, :cond_1

    .line 91
    .line 92
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 93
    .line 94
    .line 95
    move-result-wide v13

    .line 96
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/gg;->d:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v0, Ljava/lang/Long;

    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 101
    .line 102
    .line 103
    move-result-wide v15

    .line 104
    cmp-long v0, v13, v15

    .line 105
    .line 106
    if-eqz v0, :cond_5

    .line 107
    .line 108
    :cond_1
    iget-object v2, v4, Lc4/A1;->I:Lc4/o;

    .line 109
    .line 110
    invoke-static {v2}, Lc4/A1;->I(Lc4/u1;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2}, Lc1/d;->m()V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2}, Lc4/u1;->n()V

    .line 117
    .line 118
    .line 119
    :try_start_0
    invoke-virtual {v2}, Lc4/o;->j0()Landroid/database/sqlite/SQLiteDatabase;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    const-string v4, "select main_event, children_to_process from main_event_params where app_id=? and event_id=?"

    .line 124
    .line 125
    const/4 v13, 0x2

    .line 126
    new-array v13, v13, [Ljava/lang/String;

    .line 127
    .line 128
    const/4 v14, 0x0

    .line 129
    aput-object v3, v13, v14

    .line 130
    .line 131
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v15

    .line 135
    const/4 v7, 0x1

    .line 136
    aput-object v15, v13, v7

    .line 137
    .line 138
    invoke-virtual {v0, v4, v13}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 139
    .line 140
    .line 141
    move-result-object v4
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 142
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-nez v0, :cond_3

    .line 147
    .line 148
    iget-object v0, v2, Lc1/d;->G:Ljava/lang/Object;

    .line 149
    .line 150
    check-cast v0, Lc4/l0;

    .line 151
    .line 152
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 153
    .line 154
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 155
    .line 156
    .line 157
    iget-object v0, v0, Lc4/T;->T:Lc4/Q;

    .line 158
    .line 159
    const-string v7, "Main event not found"

    .line 160
    .line 161
    invoke-virtual {v0, v7}, Lc4/Q;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    .line 163
    .line 164
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 165
    .line 166
    .line 167
    :cond_2
    const/4 v0, 0x0

    .line 168
    goto :goto_5

    .line 169
    :catchall_0
    move-exception v0

    .line 170
    goto :goto_1

    .line 171
    :catch_0
    move-exception v0

    .line 172
    goto :goto_4

    .line 173
    :cond_3
    :try_start_2
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getBlob(I)[B

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getLong(I)J

    .line 178
    .line 179
    .line 180
    move-result-wide v13

    .line 181
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 182
    .line 183
    .line 184
    move-result-object v7
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 185
    :try_start_3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/b1;->u()Lcom/google/android/gms/internal/measurement/a1;

    .line 186
    .line 187
    .line 188
    move-result-object v13

    .line 189
    invoke-static {v13, v0}, Lc4/E1;->O(Lcom/google/android/gms/internal/measurement/r2;[B)Lcom/google/android/gms/internal/measurement/r2;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    check-cast v0, Lcom/google/android/gms/internal/measurement/a1;

    .line 194
    .line 195
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/r2;->e()Lcom/google/android/gms/internal/measurement/s2;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    check-cast v0, Lcom/google/android/gms/internal/measurement/b1;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 200
    .line 201
    :try_start_4
    invoke-static {v0, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 202
    .line 203
    .line 204
    move-result-object v0
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 205
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 206
    .line 207
    .line 208
    goto :goto_5

    .line 209
    :catch_1
    move-exception v0

    .line 210
    :try_start_5
    iget-object v7, v2, Lc1/d;->G:Ljava/lang/Object;

    .line 211
    .line 212
    check-cast v7, Lc4/l0;

    .line 213
    .line 214
    iget-object v7, v7, Lc4/l0;->O:Lc4/T;

    .line 215
    .line 216
    invoke-static {v7}, Lc4/l0;->k(Lc4/s0;)V

    .line 217
    .line 218
    .line 219
    iget-object v7, v7, Lc4/T;->L:Lc4/Q;

    .line 220
    .line 221
    const-string v13, "Failed to merge main event. appId, eventId"

    .line 222
    .line 223
    invoke-static/range {p2 .. p2}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 224
    .line 225
    .line 226
    move-result-object v14

    .line 227
    invoke-virtual {v7, v14, v6, v0, v13}, Lc4/Q;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 228
    .line 229
    .line 230
    goto :goto_0

    .line 231
    :goto_1
    move-object v7, v4

    .line 232
    goto/16 :goto_a

    .line 233
    .line 234
    :catchall_1
    move-exception v0

    .line 235
    goto :goto_2

    .line 236
    :catch_2
    move-exception v0

    .line 237
    goto :goto_3

    .line 238
    :goto_2
    const/4 v7, 0x0

    .line 239
    goto/16 :goto_a

    .line 240
    .line 241
    :goto_3
    const/4 v4, 0x0

    .line 242
    :goto_4
    :try_start_6
    iget-object v2, v2, Lc1/d;->G:Ljava/lang/Object;

    .line 243
    .line 244
    check-cast v2, Lc4/l0;

    .line 245
    .line 246
    iget-object v2, v2, Lc4/l0;->O:Lc4/T;

    .line 247
    .line 248
    invoke-static {v2}, Lc4/l0;->k(Lc4/s0;)V

    .line 249
    .line 250
    .line 251
    iget-object v2, v2, Lc4/T;->L:Lc4/Q;

    .line 252
    .line 253
    const-string v7, "Error selecting main event"

    .line 254
    .line 255
    invoke-virtual {v2, v0, v7}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 256
    .line 257
    .line 258
    if-eqz v4, :cond_2

    .line 259
    .line 260
    goto :goto_0

    .line 261
    :goto_5
    if-eqz v0, :cond_a

    .line 262
    .line 263
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 264
    .line 265
    if-nez v2, :cond_4

    .line 266
    .line 267
    goto/16 :goto_9

    .line 268
    .line 269
    :cond_4
    check-cast v2, Lcom/google/android/gms/internal/measurement/b1;

    .line 270
    .line 271
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/gg;->c:Ljava/lang/Object;

    .line 272
    .line 273
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 274
    .line 275
    check-cast v0, Ljava/lang/Long;

    .line 276
    .line 277
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 278
    .line 279
    .line 280
    move-result-wide v13

    .line 281
    iput-wide v13, v1, Lcom/google/android/gms/internal/ads/gg;->b:J

    .line 282
    .line 283
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/gg;->e:Ljava/lang/Object;

    .line 284
    .line 285
    check-cast v0, Lc4/d;

    .line 286
    .line 287
    iget-object v0, v0, Lc4/q1;->H:Lc4/A1;

    .line 288
    .line 289
    invoke-virtual {v0}, Lc4/A1;->e()Lc4/E1;

    .line 290
    .line 291
    .line 292
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/gg;->c:Ljava/lang/Object;

    .line 293
    .line 294
    check-cast v0, Lcom/google/android/gms/internal/measurement/b1;

    .line 295
    .line 296
    invoke-static {v0, v5}, Lc4/E1;->x(Lcom/google/android/gms/internal/measurement/b1;Ljava/lang/String;)Ljava/io/Serializable;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    check-cast v0, Ljava/lang/Long;

    .line 301
    .line 302
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/gg;->d:Ljava/lang/Object;

    .line 303
    .line 304
    :cond_5
    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/gg;->b:J

    .line 305
    .line 306
    const-wide/16 v13, -0x1

    .line 307
    .line 308
    add-long/2addr v4, v13

    .line 309
    iput-wide v4, v1, Lcom/google/android/gms/internal/ads/gg;->b:J

    .line 310
    .line 311
    cmp-long v0, v4, v10

    .line 312
    .line 313
    if-gtz v0, :cond_6

    .line 314
    .line 315
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/gg;->e:Ljava/lang/Object;

    .line 316
    .line 317
    check-cast v0, Lc4/d;

    .line 318
    .line 319
    iget-object v0, v0, Lc4/q1;->H:Lc4/A1;

    .line 320
    .line 321
    iget-object v2, v0, Lc4/A1;->I:Lc4/o;

    .line 322
    .line 323
    invoke-static {v2}, Lc4/A1;->I(Lc4/u1;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v2}, Lc1/d;->m()V

    .line 327
    .line 328
    .line 329
    iget-object v0, v2, Lc1/d;->G:Ljava/lang/Object;

    .line 330
    .line 331
    check-cast v0, Lc4/l0;

    .line 332
    .line 333
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 334
    .line 335
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 336
    .line 337
    .line 338
    const-string v4, "Clearing complex main event info. appId"

    .line 339
    .line 340
    iget-object v0, v0, Lc4/T;->T:Lc4/Q;

    .line 341
    .line 342
    invoke-virtual {v0, v3, v4}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    :try_start_7
    invoke-virtual {v2}, Lc4/o;->j0()Landroid/database/sqlite/SQLiteDatabase;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    const-string v4, "delete from main_event_params where app_id=?"

    .line 350
    .line 351
    filled-new-array/range {p2 .. p2}, [Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v3

    .line 355
    invoke-virtual {v0, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_3

    .line 356
    .line 357
    .line 358
    goto :goto_6

    .line 359
    :catch_3
    move-exception v0

    .line 360
    iget-object v2, v2, Lc1/d;->G:Ljava/lang/Object;

    .line 361
    .line 362
    check-cast v2, Lc4/l0;

    .line 363
    .line 364
    iget-object v2, v2, Lc4/l0;->O:Lc4/T;

    .line 365
    .line 366
    invoke-static {v2}, Lc4/l0;->k(Lc4/s0;)V

    .line 367
    .line 368
    .line 369
    const-string v3, "Error clearing complex main event"

    .line 370
    .line 371
    iget-object v2, v2, Lc4/T;->L:Lc4/Q;

    .line 372
    .line 373
    invoke-virtual {v2, v0, v3}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 374
    .line 375
    .line 376
    goto :goto_6

    .line 377
    :cond_6
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/gg;->e:Ljava/lang/Object;

    .line 378
    .line 379
    check-cast v0, Lc4/d;

    .line 380
    .line 381
    iget-object v0, v0, Lc4/q1;->H:Lc4/A1;

    .line 382
    .line 383
    iget-object v2, v0, Lc4/A1;->I:Lc4/o;

    .line 384
    .line 385
    invoke-static {v2}, Lc4/A1;->I(Lc4/u1;)V

    .line 386
    .line 387
    .line 388
    iget-wide v10, v1, Lcom/google/android/gms/internal/ads/gg;->b:J

    .line 389
    .line 390
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/gg;->c:Ljava/lang/Object;

    .line 391
    .line 392
    move-object v7, v0

    .line 393
    check-cast v7, Lcom/google/android/gms/internal/measurement/b1;

    .line 394
    .line 395
    move-object/from16 v3, p2

    .line 396
    .line 397
    move-object v4, v6

    .line 398
    move-wide v5, v10

    .line 399
    invoke-virtual/range {v2 .. v7}, Lc4/o;->Z(Ljava/lang/String;Ljava/lang/Long;JLcom/google/android/gms/internal/measurement/b1;)V

    .line 400
    .line 401
    .line 402
    :goto_6
    new-instance v0, Ljava/util/ArrayList;

    .line 403
    .line 404
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 405
    .line 406
    .line 407
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/gg;->c:Ljava/lang/Object;

    .line 408
    .line 409
    check-cast v2, Lcom/google/android/gms/internal/measurement/b1;

    .line 410
    .line 411
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/b1;->x()Ljava/util/List;

    .line 412
    .line 413
    .line 414
    move-result-object v2

    .line 415
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 416
    .line 417
    .line 418
    move-result-object v2

    .line 419
    :cond_7
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 420
    .line 421
    .line 422
    move-result v3

    .line 423
    if-eqz v3, :cond_8

    .line 424
    .line 425
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-result-object v3

    .line 429
    check-cast v3, Lcom/google/android/gms/internal/measurement/f1;

    .line 430
    .line 431
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/gg;->e:Ljava/lang/Object;

    .line 432
    .line 433
    check-cast v4, Lc4/d;

    .line 434
    .line 435
    iget-object v4, v4, Lc4/q1;->H:Lc4/A1;

    .line 436
    .line 437
    invoke-virtual {v4}, Lc4/A1;->e()Lc4/E1;

    .line 438
    .line 439
    .line 440
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/f1;->v()Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v4

    .line 444
    invoke-static {v8, v4}, Lc4/E1;->w(Lcom/google/android/gms/internal/measurement/b1;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/f1;

    .line 445
    .line 446
    .line 447
    move-result-object v4

    .line 448
    if-nez v4, :cond_7

    .line 449
    .line 450
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    .line 452
    .line 453
    goto :goto_7

    .line 454
    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 455
    .line 456
    .line 457
    move-result v2

    .line 458
    if-nez v2, :cond_9

    .line 459
    .line 460
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 461
    .line 462
    .line 463
    move-object v9, v0

    .line 464
    goto :goto_8

    .line 465
    :cond_9
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/gg;->e:Ljava/lang/Object;

    .line 466
    .line 467
    check-cast v0, Lc4/d;

    .line 468
    .line 469
    iget-object v0, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 470
    .line 471
    check-cast v0, Lc4/l0;

    .line 472
    .line 473
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 474
    .line 475
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 476
    .line 477
    .line 478
    const-string v2, "No unique parameters in main event. eventName"

    .line 479
    .line 480
    iget-object v0, v0, Lc4/T;->M:Lc4/Q;

    .line 481
    .line 482
    invoke-virtual {v0, v12, v2}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    :goto_8
    move-object v0, v12

    .line 486
    goto :goto_c

    .line 487
    :cond_a
    :goto_9
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/gg;->e:Ljava/lang/Object;

    .line 488
    .line 489
    check-cast v0, Lc4/d;

    .line 490
    .line 491
    iget-object v0, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 492
    .line 493
    check-cast v0, Lc4/l0;

    .line 494
    .line 495
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 496
    .line 497
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 498
    .line 499
    .line 500
    const-string v2, "Extra parameter without existing main event. eventName, eventId"

    .line 501
    .line 502
    iget-object v0, v0, Lc4/T;->M:Lc4/Q;

    .line 503
    .line 504
    invoke-virtual {v0, v12, v6, v2}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 505
    .line 506
    .line 507
    const/4 v2, 0x0

    .line 508
    return-object v2

    .line 509
    :goto_a
    if-eqz v7, :cond_b

    .line 510
    .line 511
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 512
    .line 513
    .line 514
    :cond_b
    throw v0

    .line 515
    :cond_c
    iput-object v6, v1, Lcom/google/android/gms/internal/ads/gg;->d:Ljava/lang/Object;

    .line 516
    .line 517
    iput-object v8, v1, Lcom/google/android/gms/internal/ads/gg;->c:Ljava/lang/Object;

    .line 518
    .line 519
    invoke-virtual {v4}, Lc4/A1;->e()Lc4/E1;

    .line 520
    .line 521
    .line 522
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 523
    .line 524
    .line 525
    move-result-object v5

    .line 526
    const-string v7, "_epc"

    .line 527
    .line 528
    invoke-static {v8, v7}, Lc4/E1;->x(Lcom/google/android/gms/internal/measurement/b1;Ljava/lang/String;)Ljava/io/Serializable;

    .line 529
    .line 530
    .line 531
    move-result-object v7

    .line 532
    if-nez v7, :cond_d

    .line 533
    .line 534
    goto :goto_b

    .line 535
    :cond_d
    move-object v5, v7

    .line 536
    :goto_b
    check-cast v5, Ljava/lang/Long;

    .line 537
    .line 538
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 539
    .line 540
    .line 541
    move-result-wide v12

    .line 542
    iput-wide v12, v1, Lcom/google/android/gms/internal/ads/gg;->b:J

    .line 543
    .line 544
    cmp-long v5, v12, v10

    .line 545
    .line 546
    if-gtz v5, :cond_e

    .line 547
    .line 548
    iget-object v2, v2, Lc1/d;->G:Ljava/lang/Object;

    .line 549
    .line 550
    check-cast v2, Lc4/l0;

    .line 551
    .line 552
    iget-object v2, v2, Lc4/l0;->O:Lc4/T;

    .line 553
    .line 554
    invoke-static {v2}, Lc4/l0;->k(Lc4/s0;)V

    .line 555
    .line 556
    .line 557
    const-string v3, "Complex event with zero extra param count. eventName"

    .line 558
    .line 559
    iget-object v2, v2, Lc4/T;->M:Lc4/Q;

    .line 560
    .line 561
    invoke-virtual {v2, v0, v3}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 562
    .line 563
    .line 564
    goto :goto_c

    .line 565
    :cond_e
    iget-object v2, v4, Lc4/A1;->I:Lc4/o;

    .line 566
    .line 567
    invoke-static {v2}, Lc4/A1;->I(Lc4/u1;)V

    .line 568
    .line 569
    .line 570
    iget-wide v10, v1, Lcom/google/android/gms/internal/ads/gg;->b:J

    .line 571
    .line 572
    move-object/from16 v3, p2

    .line 573
    .line 574
    move-object v4, v6

    .line 575
    move-wide v5, v10

    .line 576
    move-object/from16 v7, p1

    .line 577
    .line 578
    invoke-virtual/range {v2 .. v7}, Lc4/o;->Z(Ljava/lang/String;Ljava/lang/Long;JLcom/google/android/gms/internal/measurement/b1;)V

    .line 579
    .line 580
    .line 581
    :cond_f
    :goto_c
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/measurement/s2;->g()Lcom/google/android/gms/internal/measurement/r2;

    .line 582
    .line 583
    .line 584
    move-result-object v2

    .line 585
    check-cast v2, Lcom/google/android/gms/internal/measurement/a1;

    .line 586
    .line 587
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/r2;->g()V

    .line 588
    .line 589
    .line 590
    iget-object v3, v2, Lcom/google/android/gms/internal/measurement/r2;->H:Lcom/google/android/gms/internal/measurement/s2;

    .line 591
    .line 592
    check-cast v3, Lcom/google/android/gms/internal/measurement/b1;

    .line 593
    .line 594
    invoke-static {v3, v0}, Lcom/google/android/gms/internal/measurement/b1;->C(Lcom/google/android/gms/internal/measurement/b1;Ljava/lang/String;)V

    .line 595
    .line 596
    .line 597
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/r2;->g()V

    .line 598
    .line 599
    .line 600
    iget-object v0, v2, Lcom/google/android/gms/internal/measurement/r2;->H:Lcom/google/android/gms/internal/measurement/s2;

    .line 601
    .line 602
    check-cast v0, Lcom/google/android/gms/internal/measurement/b1;

    .line 603
    .line 604
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/b1;->A(Lcom/google/android/gms/internal/measurement/b1;)V

    .line 605
    .line 606
    .line 607
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/r2;->g()V

    .line 608
    .line 609
    .line 610
    iget-object v0, v2, Lcom/google/android/gms/internal/measurement/r2;->H:Lcom/google/android/gms/internal/measurement/s2;

    .line 611
    .line 612
    check-cast v0, Lcom/google/android/gms/internal/measurement/b1;

    .line 613
    .line 614
    invoke-static {v0, v9}, Lcom/google/android/gms/internal/measurement/b1;->y(Lcom/google/android/gms/internal/measurement/b1;Ljava/lang/Iterable;)V

    .line 615
    .line 616
    .line 617
    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/r2;->e()Lcom/google/android/gms/internal/measurement/s2;

    .line 618
    .line 619
    .line 620
    move-result-object v0

    .line 621
    check-cast v0, Lcom/google/android/gms/internal/measurement/b1;

    .line 622
    .line 623
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/gg;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gg;->e:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Landroid/os/Bundle;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v2, "origin="

    .line 22
    .line 23
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/gg;->d:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v2, Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v2, ",name="

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/gg;->c:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v2, Ljava/lang/String;

    .line 41
    .line 42
    const-string v3, ",params="

    .line 43
    .line 44
    invoke-static {v1, v2, v3, v0}, Lcom/google/protobuf/U2;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    return-object v0

    .line 49
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
