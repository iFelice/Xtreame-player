.class public final Lc4/N;
.super Lc4/B;
.source "SourceFile"


# static fields
.field public static final K:[Ljava/lang/String;


# instance fields
.field public final I:Lc4/n;

.field public J:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "app_version_int"

    .line 2
    .line 3
    const-string v1, "ALTER TABLE messages ADD COLUMN app_version_int INTEGER;"

    .line 4
    .line 5
    const-string v2, "app_version"

    .line 6
    .line 7
    const-string v3, "ALTER TABLE messages ADD COLUMN app_version TEXT;"

    .line 8
    .line 9
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lc4/N;->K:[Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Lc4/l0;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lc4/B;-><init>(Lc4/l0;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lc4/n;

    .line 5
    .line 6
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lc4/l0;

    .line 9
    .line 10
    iget-object v1, v0, Lc4/l0;->G:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    invoke-direct {p1, p0, v1}, Lc4/n;-><init>(Lc4/N;Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lc4/N;->I:Lc4/n;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final p()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final q()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lc4/N;->J:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    iget-object v0, p0, Lc4/N;->I:Lc4/n;

    .line 8
    .line 9
    invoke-virtual {v0}, Lc4/n;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lc4/N;->J:Z

    .line 17
    .line 18
    return-object v1

    .line 19
    :cond_1
    return-object v0
.end method

.method public final r()Ljava/util/ArrayList;
    .locals 28

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "Error reading entries from local database"

    .line 4
    .line 5
    const-string v3, "entry"

    .line 6
    .line 7
    const-string v4, "type"

    .line 8
    .line 9
    const-string v5, "rowid"

    .line 10
    .line 11
    invoke-virtual/range {p0 .. p0}, Lc4/z;->m()V

    .line 12
    .line 13
    .line 14
    iget-boolean v0, v1, Lc4/N;->J:Z

    .line 15
    .line 16
    const/4 v6, 0x0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    return-object v6

    .line 20
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    iget-object v0, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, Lc4/l0;

    .line 28
    .line 29
    iget-object v0, v0, Lc4/l0;->G:Landroid/content/Context;

    .line 30
    .line 31
    const-string v8, "google_app_measurement_local.db"

    .line 32
    .line 33
    invoke-virtual {v0, v8}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_17

    .line 42
    .line 43
    const/4 v8, 0x5

    .line 44
    const/4 v9, 0x0

    .line 45
    const/4 v10, 0x0

    .line 46
    const/4 v11, 0x5

    .line 47
    :goto_0
    if-ge v10, v8, :cond_16

    .line 48
    .line 49
    const/4 v12, 0x1

    .line 50
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lc4/N;->q()Landroid/database/sqlite/SQLiteDatabase;

    .line 51
    .line 52
    .line 53
    move-result-object v15
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1f
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_1d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1c
    .catchall {:try_start_0 .. :try_end_0} :catchall_d

    .line 54
    if-nez v15, :cond_1

    .line 55
    .line 56
    :try_start_1
    iput-boolean v12, v1, Lc4/N;->J:Z

    .line 57
    .line 58
    return-object v6

    .line 59
    :catchall_0
    move-exception v0

    .line 60
    move-object v6, v15

    .line 61
    goto/16 :goto_17

    .line 62
    .line 63
    :catch_0
    move-exception v0

    .line 64
    move-object/from16 v19, v3

    .line 65
    .line 66
    move-object v6, v15

    .line 67
    const/4 v8, 0x0

    .line 68
    move-object v15, v7

    .line 69
    goto/16 :goto_18

    .line 70
    .line 71
    :catch_1
    move-object/from16 v19, v3

    .line 72
    .line 73
    move-object v6, v15

    .line 74
    const/4 v8, 0x0

    .line 75
    move-object v15, v7

    .line 76
    goto/16 :goto_19

    .line 77
    .line 78
    :catch_2
    move-exception v0

    .line 79
    move-object/from16 v19, v3

    .line 80
    .line 81
    move-object v6, v15

    .line 82
    const/4 v8, 0x0

    .line 83
    move-object v15, v7

    .line 84
    goto/16 :goto_1a

    .line 85
    .line 86
    :cond_1
    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 87
    .line 88
    .line 89
    const-string v0, "3"
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    .line 91
    :try_start_2
    const-string v14, "messages"

    .line 92
    .line 93
    filled-new-array {v5}, [Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v16

    .line 97
    const-string v17, "type=?"

    .line 98
    .line 99
    filled-new-array {v0}, [Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    const-string v20, "rowid desc"

    .line 104
    .line 105
    const-string v21, "1"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_b

    .line 106
    .line 107
    const/16 v18, 0x0

    .line 108
    .line 109
    const/16 v19, 0x0

    .line 110
    .line 111
    move-object v13, v15

    .line 112
    move-object/from16 v22, v15

    .line 113
    .line 114
    move-object/from16 v15, v16

    .line 115
    .line 116
    move-object/from16 v16, v17

    .line 117
    .line 118
    move-object/from16 v17, v0

    .line 119
    .line 120
    :try_start_3
    invoke-virtual/range {v13 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 121
    .line 122
    .line 123
    move-result-object v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_a

    .line 124
    :try_start_4
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    const-wide/16 v23, -0x1

    .line 129
    .line 130
    if-eqz v0, :cond_2

    .line 131
    .line 132
    invoke-interface {v13, v9}, Landroid/database/Cursor;->getLong(I)J

    .line 133
    .line 134
    .line 135
    move-result-wide v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 136
    :try_start_5
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :catchall_1
    move-exception v0

    .line 141
    move-object/from16 v6, v22

    .line 142
    .line 143
    goto/16 :goto_17

    .line 144
    .line 145
    :catch_3
    move-exception v0

    .line 146
    move-object/from16 v19, v3

    .line 147
    .line 148
    move-object v15, v7

    .line 149
    move-object/from16 v6, v22

    .line 150
    .line 151
    const/4 v8, 0x0

    .line 152
    goto/16 :goto_18

    .line 153
    .line 154
    :catch_4
    move-object/from16 v19, v3

    .line 155
    .line 156
    move-object v15, v7

    .line 157
    move-object/from16 v6, v22

    .line 158
    .line 159
    const/4 v8, 0x0

    .line 160
    goto/16 :goto_19

    .line 161
    .line 162
    :catch_5
    move-exception v0

    .line 163
    move-object/from16 v19, v3

    .line 164
    .line 165
    move-object v15, v7

    .line 166
    move-object/from16 v6, v22

    .line 167
    .line 168
    const/4 v8, 0x0

    .line 169
    goto/16 :goto_1a

    .line 170
    .line 171
    :catchall_2
    move-exception v0

    .line 172
    move-object/from16 v19, v3

    .line 173
    .line 174
    move-object v15, v7

    .line 175
    move-object/from16 v6, v22

    .line 176
    .line 177
    const/4 v8, 0x0

    .line 178
    goto/16 :goto_15

    .line 179
    .line 180
    :cond_2
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 181
    .line 182
    .line 183
    move-wide/from16 v14, v23

    .line 184
    .line 185
    :goto_1
    cmp-long v0, v14, v23

    .line 186
    .line 187
    if-eqz v0, :cond_3

    .line 188
    .line 189
    const-string v0, "rowid<?"

    .line 190
    .line 191
    new-array v13, v12, [Ljava/lang/String;

    .line 192
    .line 193
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v14

    .line 197
    aput-object v14, v13, v9

    .line 198
    .line 199
    move-object/from16 v16, v0

    .line 200
    .line 201
    move-object/from16 v17, v13

    .line 202
    .line 203
    goto :goto_2

    .line 204
    :cond_3
    move-object/from16 v16, v6

    .line 205
    .line 206
    move-object/from16 v17, v16

    .line 207
    .line 208
    :goto_2
    filled-new-array {v5, v4, v3}, [Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    iget-object v13, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 213
    .line 214
    move-object v15, v13

    .line 215
    check-cast v15, Lc4/l0;

    .line 216
    .line 217
    iget-object v13, v15, Lc4/l0;->M:Lc4/h;

    .line 218
    .line 219
    sget-object v14, Lc4/E;->m1:Lc4/D;

    .line 220
    .line 221
    invoke-virtual {v13, v6, v14}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 222
    .line 223
    .line 224
    move-result v13

    .line 225
    const/4 v6, 0x2

    .line 226
    const/4 v14, 0x4

    .line 227
    if-eqz v13, :cond_4

    .line 228
    .line 229
    new-array v0, v8, [Ljava/lang/String;

    .line 230
    .line 231
    aput-object v5, v0, v9

    .line 232
    .line 233
    aput-object v4, v0, v12

    .line 234
    .line 235
    aput-object v3, v0, v6

    .line 236
    .line 237
    const-string v13, "app_version"

    .line 238
    .line 239
    const/16 v18, 0x3

    .line 240
    .line 241
    aput-object v13, v0, v18

    .line 242
    .line 243
    const-string v13, "app_version_int"

    .line 244
    .line 245
    aput-object v13, v0, v14

    .line 246
    .line 247
    goto :goto_3

    .line 248
    :cond_4
    const/16 v18, 0x3

    .line 249
    .line 250
    :goto_3
    const-string v19, "messages"

    .line 251
    .line 252
    const-string v20, "rowid asc"

    .line 253
    .line 254
    const/16 v13, 0x64

    .line 255
    .line 256
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v21

    .line 260
    const/16 v26, 0x0

    .line 261
    .line 262
    const/16 v27, 0x0

    .line 263
    .line 264
    move-object/from16 v13, v22

    .line 265
    .line 266
    const/4 v8, 0x3

    .line 267
    move-object/from16 v14, v19

    .line 268
    .line 269
    move-object v8, v15

    .line 270
    move-object v15, v0

    .line 271
    move-object/from16 v18, v26

    .line 272
    .line 273
    move-object/from16 v19, v27

    .line 274
    .line 275
    invoke-virtual/range {v13 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 276
    .line 277
    .line 278
    move-result-object v13
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 279
    :goto_4
    :try_start_6
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    .line 280
    .line 281
    .line 282
    move-result v0

    .line 283
    if-eqz v0, :cond_c

    .line 284
    .line 285
    invoke-interface {v13, v9}, Landroid/database/Cursor;->getLong(I)J

    .line 286
    .line 287
    .line 288
    move-result-wide v23

    .line 289
    invoke-interface {v13, v12}, Landroid/database/Cursor;->getInt(I)I

    .line 290
    .line 291
    .line 292
    move-result v0

    .line 293
    invoke-interface {v13, v6}, Landroid/database/Cursor;->getBlob(I)[B

    .line 294
    .line 295
    .line 296
    move-result-object v14

    .line 297
    iget-object v15, v8, Lc4/l0;->M:Lc4/h;

    .line 298
    .line 299
    sget-object v6, Lc4/E;->m1:Lc4/D;

    .line 300
    .line 301
    const/4 v12, 0x0

    .line 302
    invoke-virtual {v15, v12, v6}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 303
    .line 304
    .line 305
    move-result v6

    .line 306
    if-eqz v6, :cond_5

    .line 307
    .line 308
    const/4 v6, 0x3

    .line 309
    invoke-interface {v13, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v12

    .line 313
    const/4 v6, 0x4

    .line 314
    invoke-interface {v13, v6}, Landroid/database/Cursor;->getLong(I)J

    .line 315
    .line 316
    .line 317
    move-result-wide v18
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 318
    move-object v15, v7

    .line 319
    move-wide/from16 v6, v18

    .line 320
    .line 321
    goto :goto_8

    .line 322
    :catchall_3
    move-exception v0

    .line 323
    move-object/from16 v6, v22

    .line 324
    .line 325
    goto/16 :goto_13

    .line 326
    .line 327
    :catch_6
    move-exception v0

    .line 328
    move-object/from16 v19, v3

    .line 329
    .line 330
    move-object v15, v7

    .line 331
    :goto_5
    move-object/from16 v6, v22

    .line 332
    .line 333
    const/4 v8, 0x0

    .line 334
    goto/16 :goto_1b

    .line 335
    .line 336
    :catch_7
    move-object/from16 v19, v3

    .line 337
    .line 338
    move-object v15, v7

    .line 339
    :catch_8
    :goto_6
    move-object/from16 v6, v22

    .line 340
    .line 341
    const/4 v8, 0x0

    .line 342
    goto/16 :goto_1c

    .line 343
    .line 344
    :catch_9
    move-exception v0

    .line 345
    move-object/from16 v19, v3

    .line 346
    .line 347
    move-object v15, v7

    .line 348
    :goto_7
    move-object/from16 v6, v22

    .line 349
    .line 350
    const/4 v8, 0x0

    .line 351
    goto/16 :goto_1e

    .line 352
    .line 353
    :cond_5
    const/4 v6, 0x4

    .line 354
    const-wide/16 v18, 0x0

    .line 355
    .line 356
    move-object v15, v7

    .line 357
    move-wide/from16 v6, v18

    .line 358
    .line 359
    const/4 v12, 0x0

    .line 360
    :goto_8
    if-nez v0, :cond_7

    .line 361
    .line 362
    :try_start_7
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 363
    .line 364
    .line 365
    move-result-object v9
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_7 .. :try_end_7} :catch_10
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_7 .. :try_end_7} :catch_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_e
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 366
    :try_start_8
    array-length v0, v14
    :try_end_8
    .catch LM3/b; {:try_start_8 .. :try_end_8} :catch_c
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 367
    move-object/from16 v19, v3

    .line 368
    .line 369
    const/4 v3, 0x0

    .line 370
    :try_start_9
    invoke-virtual {v9, v14, v3, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 374
    .line 375
    .line 376
    sget-object v0, Lc4/u;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 377
    .line 378
    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    check-cast v0, Lc4/u;
    :try_end_9
    .catch LM3/b; {:try_start_9 .. :try_end_9} :catch_d
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 383
    .line 384
    :try_start_a
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 385
    .line 386
    .line 387
    if-eqz v0, :cond_6

    .line 388
    .line 389
    new-instance v3, Lc4/M;

    .line 390
    .line 391
    invoke-direct {v3, v0, v12, v6, v7}, Lc4/M;-><init>(LM3/a;Ljava/lang/String;J)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_a .. :try_end_a} :catch_b
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_a .. :try_end_a} :catch_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_a .. :try_end_a} :catch_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 395
    .line 396
    .line 397
    :cond_6
    :goto_9
    const/4 v3, 0x3

    .line 398
    goto/16 :goto_11

    .line 399
    .line 400
    :catch_a
    move-exception v0

    .line 401
    goto :goto_5

    .line 402
    :catch_b
    move-exception v0

    .line 403
    goto :goto_7

    .line 404
    :catchall_4
    move-exception v0

    .line 405
    goto :goto_a

    .line 406
    :catchall_5
    move-exception v0

    .line 407
    move-object/from16 v19, v3

    .line 408
    .line 409
    goto :goto_a

    .line 410
    :catch_c
    move-object/from16 v19, v3

    .line 411
    .line 412
    :catch_d
    :try_start_b
    iget-object v0, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 413
    .line 414
    check-cast v0, Lc4/l0;

    .line 415
    .line 416
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 417
    .line 418
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 419
    .line 420
    .line 421
    iget-object v0, v0, Lc4/T;->L:Lc4/Q;

    .line 422
    .line 423
    const-string v3, "Failed to load event from local database"

    .line 424
    .line 425
    invoke-virtual {v0, v3}, Lc4/Q;->a(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 426
    .line 427
    .line 428
    :try_start_c
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 429
    .line 430
    .line 431
    goto :goto_9

    .line 432
    :goto_a
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 433
    .line 434
    .line 435
    throw v0

    .line 436
    :catch_e
    move-exception v0

    .line 437
    move-object/from16 v19, v3

    .line 438
    .line 439
    goto :goto_5

    .line 440
    :catch_f
    move-object/from16 v19, v3

    .line 441
    .line 442
    goto :goto_6

    .line 443
    :catch_10
    move-exception v0

    .line 444
    move-object/from16 v19, v3

    .line 445
    .line 446
    goto :goto_7

    .line 447
    :cond_7
    move-object/from16 v19, v3

    .line 448
    .line 449
    const/4 v3, 0x1

    .line 450
    if-ne v0, v3, :cond_8

    .line 451
    .line 452
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 453
    .line 454
    .line 455
    move-result-object v3
    :try_end_c
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_c .. :try_end_c} :catch_b
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_c .. :try_end_c} :catch_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_c} :catch_a
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 456
    :try_start_d
    array-length v0, v14

    .line 457
    const/4 v9, 0x0

    .line 458
    invoke-virtual {v3, v14, v9, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v3, v9}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 462
    .line 463
    .line 464
    sget-object v0, Lc4/F1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 465
    .line 466
    invoke-interface {v0, v3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    check-cast v0, Lc4/F1;
    :try_end_d
    .catch LM3/b; {:try_start_d .. :try_end_d} :catch_11
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 471
    .line 472
    :try_start_e
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
    :try_end_e
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_e .. :try_end_e} :catch_b
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_e .. :try_end_e} :catch_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_e .. :try_end_e} :catch_a
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 473
    .line 474
    .line 475
    goto :goto_b

    .line 476
    :catchall_6
    move-exception v0

    .line 477
    goto :goto_c

    .line 478
    :catch_11
    :try_start_f
    iget-object v0, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 479
    .line 480
    check-cast v0, Lc4/l0;

    .line 481
    .line 482
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 483
    .line 484
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 485
    .line 486
    .line 487
    iget-object v0, v0, Lc4/T;->L:Lc4/Q;

    .line 488
    .line 489
    const-string v9, "Failed to load user property from local database"

    .line 490
    .line 491
    invoke-virtual {v0, v9}, Lc4/Q;->a(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 492
    .line 493
    .line 494
    :try_start_10
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 495
    .line 496
    .line 497
    const/4 v0, 0x0

    .line 498
    :goto_b
    if-eqz v0, :cond_6

    .line 499
    .line 500
    new-instance v3, Lc4/M;

    .line 501
    .line 502
    invoke-direct {v3, v0, v12, v6, v7}, Lc4/M;-><init>(LM3/a;Ljava/lang/String;J)V

    .line 503
    .line 504
    .line 505
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    .line 507
    .line 508
    goto :goto_9

    .line 509
    :goto_c
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 510
    .line 511
    .line 512
    throw v0

    .line 513
    :cond_8
    const/4 v3, 0x2

    .line 514
    if-ne v0, v3, :cond_9

    .line 515
    .line 516
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 517
    .line 518
    .line 519
    move-result-object v9
    :try_end_10
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_10 .. :try_end_10} :catch_b
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_10 .. :try_end_10} :catch_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_10 .. :try_end_10} :catch_a
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 520
    :try_start_11
    array-length v0, v14

    .line 521
    const/4 v3, 0x0

    .line 522
    invoke-virtual {v9, v14, v3, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 523
    .line 524
    .line 525
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 526
    .line 527
    .line 528
    sget-object v0, Lc4/f;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 529
    .line 530
    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    check-cast v0, Lc4/f;
    :try_end_11
    .catch LM3/b; {:try_start_11 .. :try_end_11} :catch_12
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 535
    .line 536
    :try_start_12
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V
    :try_end_12
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_12 .. :try_end_12} :catch_b
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_12 .. :try_end_12} :catch_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_12} :catch_a
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 537
    .line 538
    .line 539
    goto :goto_d

    .line 540
    :catchall_7
    move-exception v0

    .line 541
    goto :goto_e

    .line 542
    :catch_12
    :try_start_13
    iget-object v0, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 543
    .line 544
    check-cast v0, Lc4/l0;

    .line 545
    .line 546
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 547
    .line 548
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 549
    .line 550
    .line 551
    iget-object v0, v0, Lc4/T;->L:Lc4/Q;

    .line 552
    .line 553
    const-string v3, "Failed to load conditional user property from local database"

    .line 554
    .line 555
    invoke-virtual {v0, v3}, Lc4/Q;->a(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    .line 556
    .line 557
    .line 558
    :try_start_14
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 559
    .line 560
    .line 561
    const/4 v0, 0x0

    .line 562
    :goto_d
    if-eqz v0, :cond_6

    .line 563
    .line 564
    new-instance v3, Lc4/M;

    .line 565
    .line 566
    invoke-direct {v3, v0, v12, v6, v7}, Lc4/M;-><init>(LM3/a;Ljava/lang/String;J)V

    .line 567
    .line 568
    .line 569
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    .line 571
    .line 572
    goto/16 :goto_9

    .line 573
    .line 574
    :goto_e
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 575
    .line 576
    .line 577
    throw v0

    .line 578
    :cond_9
    const/4 v3, 0x4

    .line 579
    if-ne v0, v3, :cond_a

    .line 580
    .line 581
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 582
    .line 583
    .line 584
    move-result-object v9
    :try_end_14
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_14 .. :try_end_14} :catch_b
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_14 .. :try_end_14} :catch_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_14 .. :try_end_14} :catch_a
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 585
    :try_start_15
    array-length v0, v14

    .line 586
    const/4 v3, 0x0

    .line 587
    invoke-virtual {v9, v14, v3, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 588
    .line 589
    .line 590
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 591
    .line 592
    .line 593
    sget-object v0, Lc4/t;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 594
    .line 595
    invoke-interface {v0, v9}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 596
    .line 597
    .line 598
    move-result-object v0

    .line 599
    check-cast v0, Lc4/t;
    :try_end_15
    .catch LM3/b; {:try_start_15 .. :try_end_15} :catch_13
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    .line 600
    .line 601
    :try_start_16
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V
    :try_end_16
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_16 .. :try_end_16} :catch_b
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_16 .. :try_end_16} :catch_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_16 .. :try_end_16} :catch_a
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    .line 602
    .line 603
    .line 604
    goto :goto_f

    .line 605
    :catchall_8
    move-exception v0

    .line 606
    goto :goto_10

    .line 607
    :catch_13
    :try_start_17
    iget-object v0, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 608
    .line 609
    check-cast v0, Lc4/l0;

    .line 610
    .line 611
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 612
    .line 613
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 614
    .line 615
    .line 616
    iget-object v0, v0, Lc4/T;->L:Lc4/Q;

    .line 617
    .line 618
    const-string v3, "Failed to load default event parameters from local database"

    .line 619
    .line 620
    invoke-virtual {v0, v3}, Lc4/Q;->a(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    .line 621
    .line 622
    .line 623
    :try_start_18
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 624
    .line 625
    .line 626
    const/4 v0, 0x0

    .line 627
    :goto_f
    if-eqz v0, :cond_6

    .line 628
    .line 629
    new-instance v3, Lc4/M;

    .line 630
    .line 631
    invoke-direct {v3, v0, v12, v6, v7}, Lc4/M;-><init>(LM3/a;Ljava/lang/String;J)V

    .line 632
    .line 633
    .line 634
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    .line 636
    .line 637
    goto/16 :goto_9

    .line 638
    .line 639
    :goto_10
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 640
    .line 641
    .line 642
    throw v0

    .line 643
    :cond_a
    const/4 v3, 0x3

    .line 644
    if-ne v0, v3, :cond_b

    .line 645
    .line 646
    iget-object v0, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 647
    .line 648
    check-cast v0, Lc4/l0;

    .line 649
    .line 650
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 651
    .line 652
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 653
    .line 654
    .line 655
    iget-object v0, v0, Lc4/T;->O:Lc4/Q;

    .line 656
    .line 657
    const-string v6, "Skipping app launch break"

    .line 658
    .line 659
    invoke-virtual {v0, v6}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 660
    .line 661
    .line 662
    goto :goto_11

    .line 663
    :cond_b
    iget-object v0, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 664
    .line 665
    check-cast v0, Lc4/l0;

    .line 666
    .line 667
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 668
    .line 669
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 670
    .line 671
    .line 672
    iget-object v0, v0, Lc4/T;->L:Lc4/Q;

    .line 673
    .line 674
    const-string v6, "Unknown record type in local database"

    .line 675
    .line 676
    invoke-virtual {v0, v6}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 677
    .line 678
    .line 679
    :goto_11
    move-object v7, v15

    .line 680
    move-object/from16 v3, v19

    .line 681
    .line 682
    const/4 v6, 0x2

    .line 683
    const/4 v9, 0x0

    .line 684
    const/4 v12, 0x1

    .line 685
    goto/16 :goto_4

    .line 686
    .line 687
    :cond_c
    move-object/from16 v19, v3

    .line 688
    .line 689
    move-object v15, v7

    .line 690
    const-string v0, "messages"

    .line 691
    .line 692
    const-string v3, "rowid <= ?"

    .line 693
    .line 694
    const/4 v6, 0x1

    .line 695
    new-array v7, v6, [Ljava/lang/String;

    .line 696
    .line 697
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 698
    .line 699
    .line 700
    move-result-object v6
    :try_end_18
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_18 .. :try_end_18} :catch_b
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_18 .. :try_end_18} :catch_8
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_18 .. :try_end_18} :catch_a
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    .line 701
    const/4 v8, 0x0

    .line 702
    :try_start_19
    aput-object v6, v7, v8
    :try_end_19
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_19 .. :try_end_19} :catch_18
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_19 .. :try_end_19} :catch_17
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_19 .. :try_end_19} :catch_16
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    .line 703
    .line 704
    move-object/from16 v6, v22

    .line 705
    .line 706
    :try_start_1a
    invoke-virtual {v6, v0, v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 707
    .line 708
    .line 709
    move-result v0

    .line 710
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 711
    .line 712
    .line 713
    move-result v3

    .line 714
    if-ge v0, v3, :cond_d

    .line 715
    .line 716
    iget-object v0, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 717
    .line 718
    check-cast v0, Lc4/l0;

    .line 719
    .line 720
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 721
    .line 722
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 723
    .line 724
    .line 725
    iget-object v0, v0, Lc4/T;->L:Lc4/Q;

    .line 726
    .line 727
    const-string v3, "Fewer entries removed from local database than expected"

    .line 728
    .line 729
    invoke-virtual {v0, v3}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 730
    .line 731
    .line 732
    goto :goto_12

    .line 733
    :catchall_9
    move-exception v0

    .line 734
    goto :goto_13

    .line 735
    :catch_14
    move-exception v0

    .line 736
    goto/16 :goto_1b

    .line 737
    .line 738
    :catch_15
    move-exception v0

    .line 739
    goto/16 :goto_1e

    .line 740
    .line 741
    :cond_d
    :goto_12
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 742
    .line 743
    .line 744
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_1a
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1a .. :try_end_1a} :catch_15
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1a .. :try_end_1a} :catch_1e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1a .. :try_end_1a} :catch_14
    .catchall {:try_start_1a .. :try_end_1a} :catchall_9

    .line 745
    .line 746
    .line 747
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 748
    .line 749
    .line 750
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 751
    .line 752
    .line 753
    return-object v15

    .line 754
    :catch_16
    move-exception v0

    .line 755
    move-object/from16 v6, v22

    .line 756
    .line 757
    goto :goto_1b

    .line 758
    :catch_17
    move-object/from16 v6, v22

    .line 759
    .line 760
    goto/16 :goto_1c

    .line 761
    .line 762
    :catch_18
    move-exception v0

    .line 763
    move-object/from16 v6, v22

    .line 764
    .line 765
    goto/16 :goto_1e

    .line 766
    .line 767
    :goto_13
    move-object/from16 v25, v6

    .line 768
    .line 769
    move-object v6, v13

    .line 770
    goto/16 :goto_20

    .line 771
    .line 772
    :catchall_a
    move-exception v0

    .line 773
    move-object/from16 v19, v3

    .line 774
    .line 775
    move-object v15, v7

    .line 776
    move-object/from16 v6, v22

    .line 777
    .line 778
    const/4 v8, 0x0

    .line 779
    goto :goto_14

    .line 780
    :catchall_b
    move-exception v0

    .line 781
    move-object/from16 v19, v3

    .line 782
    .line 783
    move-object v6, v15

    .line 784
    const/4 v8, 0x0

    .line 785
    move-object v15, v7

    .line 786
    :goto_14
    const/4 v13, 0x0

    .line 787
    :goto_15
    if-eqz v13, :cond_e

    .line 788
    .line 789
    :try_start_1b
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 790
    .line 791
    .line 792
    goto :goto_16

    .line 793
    :catchall_c
    move-exception v0

    .line 794
    goto :goto_17

    .line 795
    :catch_19
    move-exception v0

    .line 796
    goto :goto_18

    .line 797
    :catch_1a
    move-exception v0

    .line 798
    goto :goto_1a

    .line 799
    :cond_e
    :goto_16
    throw v0
    :try_end_1b
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1b .. :try_end_1b} :catch_1a
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1b .. :try_end_1b} :catch_1b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1b .. :try_end_1b} :catch_19
    .catchall {:try_start_1b .. :try_end_1b} :catchall_c

    .line 800
    :goto_17
    move-object/from16 v25, v6

    .line 801
    .line 802
    const/4 v6, 0x0

    .line 803
    goto/16 :goto_20

    .line 804
    .line 805
    :goto_18
    const/4 v13, 0x0

    .line 806
    goto :goto_1b

    .line 807
    :catch_1b
    :goto_19
    const/4 v13, 0x0

    .line 808
    goto :goto_1c

    .line 809
    :goto_1a
    const/4 v13, 0x0

    .line 810
    goto :goto_1e

    .line 811
    :catchall_d
    move-exception v0

    .line 812
    const/4 v6, 0x0

    .line 813
    const/16 v25, 0x0

    .line 814
    .line 815
    goto/16 :goto_20

    .line 816
    .line 817
    :catch_1c
    move-exception v0

    .line 818
    move-object/from16 v19, v3

    .line 819
    .line 820
    move-object v15, v7

    .line 821
    const/4 v8, 0x0

    .line 822
    const/4 v6, 0x0

    .line 823
    goto :goto_18

    .line 824
    :goto_1b
    if-eqz v6, :cond_f

    .line 825
    .line 826
    :try_start_1c
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    .line 827
    .line 828
    .line 829
    move-result v3

    .line 830
    if-eqz v3, :cond_f

    .line 831
    .line 832
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 833
    .line 834
    .line 835
    :cond_f
    iget-object v3, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 836
    .line 837
    check-cast v3, Lc4/l0;

    .line 838
    .line 839
    iget-object v3, v3, Lc4/l0;->O:Lc4/T;

    .line 840
    .line 841
    invoke-static {v3}, Lc4/l0;->k(Lc4/s0;)V

    .line 842
    .line 843
    .line 844
    iget-object v3, v3, Lc4/T;->L:Lc4/Q;

    .line 845
    .line 846
    invoke-virtual {v3, v0, v2}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 847
    .line 848
    .line 849
    const/4 v3, 0x1

    .line 850
    iput-boolean v3, v1, Lc4/N;->J:Z
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_9

    .line 851
    .line 852
    if-eqz v13, :cond_10

    .line 853
    .line 854
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 855
    .line 856
    .line 857
    :cond_10
    if-eqz v6, :cond_13

    .line 858
    .line 859
    goto :goto_1d

    .line 860
    :catch_1d
    move-object/from16 v19, v3

    .line 861
    .line 862
    move-object v15, v7

    .line 863
    const/4 v6, 0x0

    .line 864
    goto :goto_19

    .line 865
    :catch_1e
    :goto_1c
    int-to-long v8, v11

    .line 866
    :try_start_1d
    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_9

    .line 867
    .line 868
    .line 869
    add-int/lit8 v11, v11, 0x14

    .line 870
    .line 871
    if-eqz v13, :cond_11

    .line 872
    .line 873
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 874
    .line 875
    .line 876
    :cond_11
    if-eqz v6, :cond_13

    .line 877
    .line 878
    :goto_1d
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 879
    .line 880
    .line 881
    goto :goto_1f

    .line 882
    :catch_1f
    move-exception v0

    .line 883
    move-object/from16 v19, v3

    .line 884
    .line 885
    move-object v15, v7

    .line 886
    const/4 v6, 0x0

    .line 887
    goto :goto_1a

    .line 888
    :goto_1e
    :try_start_1e
    iget-object v3, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 889
    .line 890
    check-cast v3, Lc4/l0;

    .line 891
    .line 892
    iget-object v3, v3, Lc4/l0;->O:Lc4/T;

    .line 893
    .line 894
    invoke-static {v3}, Lc4/l0;->k(Lc4/s0;)V

    .line 895
    .line 896
    .line 897
    iget-object v3, v3, Lc4/T;->L:Lc4/Q;

    .line 898
    .line 899
    invoke-virtual {v3, v0, v2}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 900
    .line 901
    .line 902
    const/4 v3, 0x1

    .line 903
    iput-boolean v3, v1, Lc4/N;->J:Z
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_9

    .line 904
    .line 905
    if-eqz v13, :cond_12

    .line 906
    .line 907
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 908
    .line 909
    .line 910
    :cond_12
    if-eqz v6, :cond_13

    .line 911
    .line 912
    goto :goto_1d

    .line 913
    :cond_13
    :goto_1f
    add-int/lit8 v10, v10, 0x1

    .line 914
    .line 915
    move-object v7, v15

    .line 916
    move-object/from16 v3, v19

    .line 917
    .line 918
    const/4 v6, 0x0

    .line 919
    const/4 v8, 0x5

    .line 920
    const/4 v9, 0x0

    .line 921
    goto/16 :goto_0

    .line 922
    .line 923
    :goto_20
    if-eqz v6, :cond_14

    .line 924
    .line 925
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 926
    .line 927
    .line 928
    :cond_14
    if-eqz v25, :cond_15

    .line 929
    .line 930
    invoke-virtual/range {v25 .. v25}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 931
    .line 932
    .line 933
    :cond_15
    throw v0

    .line 934
    :cond_16
    iget-object v0, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 935
    .line 936
    check-cast v0, Lc4/l0;

    .line 937
    .line 938
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 939
    .line 940
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 941
    .line 942
    .line 943
    const-string v2, "Failed to read events from database in reasonable time"

    .line 944
    .line 945
    iget-object v0, v0, Lc4/T;->O:Lc4/Q;

    .line 946
    .line 947
    invoke-virtual {v0, v2}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 948
    .line 949
    .line 950
    const/4 v2, 0x0

    .line 951
    return-object v2

    .line 952
    :cond_17
    move-object v15, v7

    .line 953
    return-object v15
.end method

.method public final s()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lc4/z;->m()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p0}, Lc4/N;->q()Landroid/database/sqlite/SQLiteDatabase;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v1, "messages"

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-lez v0, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Lc4/l0;

    .line 22
    .line 23
    iget-object v1, v1, Lc4/l0;->O:Lc4/T;

    .line 24
    .line 25
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 26
    .line 27
    .line 28
    iget-object v1, v1, Lc4/T;->T:Lc4/Q;

    .line 29
    .line 30
    const-string v2, "Reset local analytics data. records"

    .line 31
    .line 32
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v1, v0, v2}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    return-void

    .line 43
    :goto_0
    iget-object v1, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v1, Lc4/l0;

    .line 46
    .line 47
    iget-object v1, v1, Lc4/l0;->O:Lc4/T;

    .line 48
    .line 49
    invoke-static {v1}, Lc4/l0;->k(Lc4/s0;)V

    .line 50
    .line 51
    .line 52
    const-string v2, "Error resetting local analytics data. error"

    .line 53
    .line 54
    iget-object v1, v1, Lc4/T;->L:Lc4/Q;

    .line 55
    .line 56
    invoke-virtual {v1, v0, v2}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final t()Z
    .locals 11

    .line 1
    const-string v0, "Error deleting app launch break from local database"

    .line 2
    .line 3
    invoke-virtual {p0}, Lc4/z;->m()V

    .line 4
    .line 5
    .line 6
    iget-boolean v1, p0, Lc4/N;->J:Z

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_6

    .line 12
    .line 13
    :cond_0
    iget-object v1, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Lc4/l0;

    .line 16
    .line 17
    iget-object v1, v1, Lc4/l0;->G:Landroid/content/Context;

    .line 18
    .line 19
    const-string v3, "google_app_measurement_local.db"

    .line 20
    .line 21
    invoke-virtual {v1, v3}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_6

    .line 30
    .line 31
    const/4 v1, 0x5

    .line 32
    const/4 v3, 0x0

    .line 33
    const/4 v4, 0x5

    .line 34
    :goto_0
    if-ge v3, v1, :cond_5

    .line 35
    .line 36
    const/4 v5, 0x1

    .line 37
    const/4 v6, 0x0

    .line 38
    :try_start_0
    invoke-virtual {p0}, Lc4/N;->q()Landroid/database/sqlite/SQLiteDatabase;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    if-nez v6, :cond_1

    .line 43
    .line 44
    iput-boolean v5, p0, Lc4/N;->J:Z

    .line 45
    .line 46
    goto/16 :goto_6

    .line 47
    .line 48
    :catchall_0
    move-exception v0

    .line 49
    goto :goto_5

    .line 50
    :catch_0
    move-exception v7

    .line 51
    goto :goto_1

    .line 52
    :catch_1
    move-exception v7

    .line 53
    goto :goto_3

    .line 54
    :cond_1
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 55
    .line 56
    .line 57
    const-string v7, "messages"

    .line 58
    .line 59
    const-string v8, "type == ?"

    .line 60
    .line 61
    new-array v9, v5, [Ljava/lang/String;

    .line 62
    .line 63
    const/4 v10, 0x3

    .line 64
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v10

    .line 68
    aput-object v10, v9, v2

    .line 69
    .line 70
    invoke-virtual {v6, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .line 78
    .line 79
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 80
    .line 81
    .line 82
    return v5

    .line 83
    :goto_1
    if-eqz v6, :cond_2

    .line 84
    .line 85
    :try_start_1
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    .line 86
    .line 87
    .line 88
    move-result v8

    .line 89
    if-eqz v8, :cond_2

    .line 90
    .line 91
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 92
    .line 93
    .line 94
    :cond_2
    iget-object v8, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v8, Lc4/l0;

    .line 97
    .line 98
    iget-object v8, v8, Lc4/l0;->O:Lc4/T;

    .line 99
    .line 100
    invoke-static {v8}, Lc4/l0;->k(Lc4/s0;)V

    .line 101
    .line 102
    .line 103
    iget-object v8, v8, Lc4/T;->L:Lc4/Q;

    .line 104
    .line 105
    invoke-virtual {v8, v7, v0}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iput-boolean v5, p0, Lc4/N;->J:Z

    .line 109
    .line 110
    if-eqz v6, :cond_3

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :catch_2
    int-to-long v7, v4

    .line 114
    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    .line 116
    .line 117
    add-int/lit8 v4, v4, 0x14

    .line 118
    .line 119
    if-eqz v6, :cond_3

    .line 120
    .line 121
    :goto_2
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 122
    .line 123
    .line 124
    goto :goto_4

    .line 125
    :goto_3
    :try_start_2
    iget-object v8, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast v8, Lc4/l0;

    .line 128
    .line 129
    iget-object v8, v8, Lc4/l0;->O:Lc4/T;

    .line 130
    .line 131
    invoke-static {v8}, Lc4/l0;->k(Lc4/s0;)V

    .line 132
    .line 133
    .line 134
    iget-object v8, v8, Lc4/T;->L:Lc4/Q;

    .line 135
    .line 136
    invoke-virtual {v8, v7, v0}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    iput-boolean v5, p0, Lc4/N;->J:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 140
    .line 141
    if-eqz v6, :cond_3

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_3
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 145
    .line 146
    goto :goto_0

    .line 147
    :goto_5
    if-eqz v6, :cond_4

    .line 148
    .line 149
    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 150
    .line 151
    .line 152
    :cond_4
    throw v0

    .line 153
    :cond_5
    iget-object v0, p0, Lc1/d;->G:Ljava/lang/Object;

    .line 154
    .line 155
    check-cast v0, Lc4/l0;

    .line 156
    .line 157
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 158
    .line 159
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 160
    .line 161
    .line 162
    const-string v1, "Error deleting app launch break from local database in reasonable time"

    .line 163
    .line 164
    iget-object v0, v0, Lc4/T;->O:Lc4/Q;

    .line 165
    .line 166
    invoke-virtual {v0, v1}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    :cond_6
    :goto_6
    return v2
.end method

.method public final u(I[B)Z
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lc4/z;->m()V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, v1, Lc4/N;->J:Z

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    iget-object v0, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lc4/l0;

    .line 15
    .line 16
    iget-object v3, v0, Lc4/l0;->M:Lc4/h;

    .line 17
    .line 18
    iget-object v4, v0, Lc4/l0;->O:Lc4/T;

    .line 19
    .line 20
    sget-object v5, Lc4/E;->m1:Lc4/D;

    .line 21
    .line 22
    const/4 v6, 0x0

    .line 23
    invoke-virtual {v3, v6, v5}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    iget-object v3, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v3, Lc4/l0;

    .line 32
    .line 33
    invoke-virtual {v3}, Lc4/l0;->n()Lc4/L;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v3, v6}, Lc4/L;->r(Ljava/lang/String;)Lc4/J1;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    move-object v3, v6

    .line 43
    :goto_0
    new-instance v7, Landroid/content/ContentValues;

    .line 44
    .line 45
    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v8

    .line 52
    const-string v9, "type"

    .line 53
    .line 54
    invoke-virtual {v7, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 55
    .line 56
    .line 57
    const-string v8, "entry"

    .line 58
    .line 59
    move-object/from16 v9, p2

    .line 60
    .line 61
    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 62
    .line 63
    .line 64
    iget-object v0, v0, Lc4/l0;->M:Lc4/h;

    .line 65
    .line 66
    invoke-virtual {v0, v6, v5}, Lc4/h;->B(Ljava/lang/String;Lc4/D;)Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_2

    .line 71
    .line 72
    if-eqz v3, :cond_2

    .line 73
    .line 74
    const-string v0, "app_version"

    .line 75
    .line 76
    iget-object v5, v3, Lc4/J1;->I:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v7, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-wide v8, v3, Lc4/J1;->P:J

    .line 82
    .line 83
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    const-string v3, "app_version_int"

    .line 88
    .line 89
    invoke-virtual {v7, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 90
    .line 91
    .line 92
    :cond_2
    const/4 v3, 0x5

    .line 93
    const/4 v5, 0x0

    .line 94
    const/4 v8, 0x5

    .line 95
    :goto_1
    if-ge v5, v3, :cond_e

    .line 96
    .line 97
    const/4 v9, 0x1

    .line 98
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lc4/N;->q()Landroid/database/sqlite/SQLiteDatabase;

    .line 99
    .line 100
    .line 101
    move-result-object v10
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 102
    if-nez v10, :cond_3

    .line 103
    .line 104
    :try_start_1
    iput-boolean v9, v1, Lc4/N;->J:Z

    .line 105
    .line 106
    :goto_2
    return v2

    .line 107
    :catchall_0
    move-exception v0

    .line 108
    goto/16 :goto_d

    .line 109
    .line 110
    :catch_0
    move-exception v0

    .line 111
    goto/16 :goto_6

    .line 112
    .line 113
    :catch_1
    move-exception v0

    .line 114
    goto/16 :goto_7

    .line 115
    .line 116
    :cond_3
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 117
    .line 118
    .line 119
    const-string v0, "select count(1) from messages"

    .line 120
    .line 121
    invoke-virtual {v10, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 122
    .line 123
    .line 124
    move-result-object v11
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    const-wide/16 v12, 0x0

    .line 126
    .line 127
    if-eqz v11, :cond_4

    .line 128
    .line 129
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_4

    .line 134
    .line 135
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 136
    .line 137
    .line 138
    move-result-wide v12
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 139
    goto :goto_3

    .line 140
    :catchall_1
    move-exception v0

    .line 141
    goto :goto_5

    .line 142
    :cond_4
    :goto_3
    const-wide/32 v14, 0x186a0

    .line 143
    .line 144
    .line 145
    const-string v0, "messages"

    .line 146
    .line 147
    cmp-long v16, v12, v14

    .line 148
    .line 149
    if-ltz v16, :cond_5

    .line 150
    .line 151
    :try_start_3
    invoke-static {v4}, Lc4/l0;->k(Lc4/s0;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 152
    .line 153
    .line 154
    iget-object v14, v4, Lc4/T;->L:Lc4/Q;

    .line 155
    .line 156
    :try_start_4
    const-string v15, "Data loss, local db full"

    .line 157
    .line 158
    invoke-virtual {v14, v15}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    const-string v15, "rowid in (select rowid from messages order by rowid asc limit ?)"

    .line 162
    .line 163
    new-array v3, v9, [Ljava/lang/String;

    .line 164
    .line 165
    const-wide/32 v16, 0x186a1

    .line 166
    .line 167
    .line 168
    sub-long v16, v16, v12

    .line 169
    .line 170
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v12

    .line 174
    aput-object v12, v3, v2

    .line 175
    .line 176
    invoke-virtual {v10, v0, v15, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    int-to-long v12, v3

    .line 181
    cmp-long v3, v12, v16

    .line 182
    .line 183
    if-eqz v3, :cond_5

    .line 184
    .line 185
    invoke-static {v4}, Lc4/l0;->k(Lc4/s0;)V

    .line 186
    .line 187
    .line 188
    const-string v3, "Different delete count than expected in local db. expected, received, difference"

    .line 189
    .line 190
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 191
    .line 192
    .line 193
    move-result-object v15

    .line 194
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    sub-long v16, v16, v12

    .line 199
    .line 200
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 201
    .line 202
    .line 203
    move-result-object v12

    .line 204
    invoke-virtual {v14, v15, v2, v12, v3}, Lc4/Q;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    goto :goto_4

    .line 208
    :catch_2
    move-exception v0

    .line 209
    goto :goto_8

    .line 210
    :catch_3
    move-exception v0

    .line 211
    goto/16 :goto_b

    .line 212
    .line 213
    :cond_5
    :goto_4
    invoke-virtual {v10, v0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 214
    .line 215
    .line 216
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 220
    .line 221
    .line 222
    if-eqz v11, :cond_6

    .line 223
    .line 224
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 225
    .line 226
    .line 227
    :cond_6
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 228
    .line 229
    .line 230
    return v9

    .line 231
    :goto_5
    move-object v6, v11

    .line 232
    goto/16 :goto_d

    .line 233
    .line 234
    :goto_6
    move-object v11, v6

    .line 235
    goto :goto_8

    .line 236
    :catch_4
    move-object v11, v6

    .line 237
    goto :goto_9

    .line 238
    :goto_7
    move-object v11, v6

    .line 239
    goto :goto_b

    .line 240
    :catchall_2
    move-exception v0

    .line 241
    move-object v10, v6

    .line 242
    goto :goto_d

    .line 243
    :catch_5
    move-exception v0

    .line 244
    move-object v10, v6

    .line 245
    move-object v11, v10

    .line 246
    :goto_8
    if-eqz v10, :cond_7

    .line 247
    .line 248
    :try_start_5
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    .line 249
    .line 250
    .line 251
    move-result v2

    .line 252
    if-eqz v2, :cond_7

    .line 253
    .line 254
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 255
    .line 256
    .line 257
    :cond_7
    iget-object v2, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 258
    .line 259
    check-cast v2, Lc4/l0;

    .line 260
    .line 261
    iget-object v2, v2, Lc4/l0;->O:Lc4/T;

    .line 262
    .line 263
    invoke-static {v2}, Lc4/l0;->k(Lc4/s0;)V

    .line 264
    .line 265
    .line 266
    iget-object v2, v2, Lc4/T;->L:Lc4/Q;

    .line 267
    .line 268
    const-string v3, "Error writing entry to local database"

    .line 269
    .line 270
    invoke-virtual {v2, v0, v3}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    iput-boolean v9, v1, Lc4/N;->J:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 274
    .line 275
    if-eqz v11, :cond_8

    .line 276
    .line 277
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 278
    .line 279
    .line 280
    :cond_8
    if-eqz v10, :cond_b

    .line 281
    .line 282
    goto :goto_a

    .line 283
    :catch_6
    move-object v10, v6

    .line 284
    move-object v11, v10

    .line 285
    :catch_7
    :goto_9
    int-to-long v2, v8

    .line 286
    :try_start_6
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 287
    .line 288
    .line 289
    add-int/lit8 v8, v8, 0x14

    .line 290
    .line 291
    if-eqz v11, :cond_9

    .line 292
    .line 293
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 294
    .line 295
    .line 296
    :cond_9
    if-eqz v10, :cond_b

    .line 297
    .line 298
    :goto_a
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 299
    .line 300
    .line 301
    goto :goto_c

    .line 302
    :catch_8
    move-exception v0

    .line 303
    move-object v10, v6

    .line 304
    move-object v11, v10

    .line 305
    :goto_b
    :try_start_7
    iget-object v2, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 306
    .line 307
    check-cast v2, Lc4/l0;

    .line 308
    .line 309
    iget-object v2, v2, Lc4/l0;->O:Lc4/T;

    .line 310
    .line 311
    invoke-static {v2}, Lc4/l0;->k(Lc4/s0;)V

    .line 312
    .line 313
    .line 314
    iget-object v2, v2, Lc4/T;->L:Lc4/Q;

    .line 315
    .line 316
    const-string v3, "Error writing entry; local database full"

    .line 317
    .line 318
    invoke-virtual {v2, v0, v3}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    iput-boolean v9, v1, Lc4/N;->J:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 322
    .line 323
    if-eqz v11, :cond_a

    .line 324
    .line 325
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 326
    .line 327
    .line 328
    :cond_a
    if-eqz v10, :cond_b

    .line 329
    .line 330
    goto :goto_a

    .line 331
    :cond_b
    :goto_c
    add-int/lit8 v5, v5, 0x1

    .line 332
    .line 333
    const/4 v2, 0x0

    .line 334
    const/4 v3, 0x5

    .line 335
    goto/16 :goto_1

    .line 336
    .line 337
    :goto_d
    if-eqz v6, :cond_c

    .line 338
    .line 339
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 340
    .line 341
    .line 342
    :cond_c
    if-eqz v10, :cond_d

    .line 343
    .line 344
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 345
    .line 346
    .line 347
    :cond_d
    throw v0

    .line 348
    :cond_e
    iget-object v0, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 349
    .line 350
    check-cast v0, Lc4/l0;

    .line 351
    .line 352
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 353
    .line 354
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 355
    .line 356
    .line 357
    const-string v2, "Failed to write entry to local database"

    .line 358
    .line 359
    iget-object v0, v0, Lc4/T;->T:Lc4/Q;

    .line 360
    .line 361
    invoke-virtual {v0, v2}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    const/4 v2, 0x0

    .line 365
    return v2
.end method
