.class public final Lc4/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:J

.field public final synthetic c:Lc4/o;


# direct methods
.method public constructor <init>(Lc4/o;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc4/m;->c:Lc4/o;

    invoke-static {p2}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    iput-object p2, p0, Lc4/m;->a:Ljava/lang/String;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lc4/m;->b:J

    return-void
.end method

.method public constructor <init>(Lc4/o;Ljava/lang/String;J)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc4/m;->c:Lc4/o;

    invoke-static {p2}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    iput-object p2, p0, Lc4/m;->a:Ljava/lang/String;

    .line 3
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/String;

    move-result-object p2

    .line 4
    const-string p3, "select rowid from raw_events where app_id = ? and timestamp < ? order by rowid desc limit 1"

    const-wide/16 v0, -0x1

    invoke-virtual {p1, p3, p2, v0, v1}, Lc4/o;->f0(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide p1

    .line 5
    iput-wide p1, p0, Lc4/m;->b:J

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 19

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v2, v1, Lc4/m;->c:Lc4/o;

    .line 4
    .line 5
    new-instance v3, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-wide v4, v1, Lc4/m;->b:J

    .line 11
    .line 12
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v4, v1, Lc4/m;->a:Ljava/lang/String;

    .line 17
    .line 18
    filled-new-array {v4, v0}, [Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v9

    .line 22
    const-string v8, "app_id = ? and rowid > ?"

    .line 23
    .line 24
    const-string v13, "1000"

    .line 25
    .line 26
    :try_start_0
    invoke-virtual {v2}, Lc4/o;->j0()Landroid/database/sqlite/SQLiteDatabase;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    const-string v6, "raw_events"

    .line 31
    .line 32
    const/4 v0, 0x6

    .line 33
    new-array v7, v0, [Ljava/lang/String;

    .line 34
    .line 35
    const-string v0, "rowid"

    .line 36
    .line 37
    const/4 v15, 0x0

    .line 38
    aput-object v0, v7, v15

    .line 39
    .line 40
    const-string v0, "name"

    .line 41
    .line 42
    const/4 v12, 0x1

    .line 43
    aput-object v0, v7, v12

    .line 44
    .line 45
    const-string v0, "timestamp"

    .line 46
    .line 47
    const/4 v11, 0x2

    .line 48
    aput-object v0, v7, v11

    .line 49
    .line 50
    const-string v0, "metadata_fingerprint"

    .line 51
    .line 52
    const/4 v10, 0x3

    .line 53
    aput-object v0, v7, v10

    .line 54
    .line 55
    const-string v0, "data"

    .line 56
    .line 57
    const/4 v14, 0x4

    .line 58
    aput-object v0, v7, v14

    .line 59
    .line 60
    const-string v0, "realtime"

    .line 61
    .line 62
    const/4 v14, 0x5

    .line 63
    aput-object v0, v7, v14

    .line 64
    .line 65
    const-string v0, "rowid"

    .line 66
    .line 67
    const/16 v17, 0x0

    .line 68
    .line 69
    const/16 v18, 0x0

    .line 70
    .line 71
    const/4 v14, 0x3

    .line 72
    move-object/from16 v10, v17

    .line 73
    .line 74
    move-object/from16 v11, v18

    .line 75
    .line 76
    move-object v12, v0

    .line 77
    invoke-virtual/range {v5 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 78
    .line 79
    .line 80
    move-result-object v5
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 81
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_4

    .line 86
    .line 87
    :goto_0
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getLong(I)J

    .line 88
    .line 89
    .line 90
    move-result-wide v7

    .line 91
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getLong(I)J

    .line 92
    .line 93
    .line 94
    move-result-wide v9

    .line 95
    const/4 v13, 0x5

    .line 96
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getLong(I)J

    .line 97
    .line 98
    .line 99
    move-result-wide v11

    .line 100
    const-wide/16 v17, 0x1

    .line 101
    .line 102
    cmp-long v0, v11, v17

    .line 103
    .line 104
    if-nez v0, :cond_0

    .line 105
    .line 106
    const/4 v11, 0x1

    .line 107
    :goto_1
    const/4 v12, 0x4

    .line 108
    goto :goto_2

    .line 109
    :cond_0
    const/4 v11, 0x0

    .line 110
    goto :goto_1

    .line 111
    :goto_2
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getBlob(I)[B

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    iget-wide v12, v1, Lc4/m;->b:J

    .line 116
    .line 117
    cmp-long v6, v7, v12

    .line 118
    .line 119
    if-lez v6, :cond_1

    .line 120
    .line 121
    iput-wide v7, v1, Lc4/m;->b:J
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :catchall_0
    move-exception v0

    .line 125
    goto :goto_5

    .line 126
    :catch_0
    move-exception v0

    .line 127
    goto :goto_6

    .line 128
    :cond_1
    :goto_3
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/internal/measurement/b1;->u()Lcom/google/android/gms/internal/measurement/a1;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    invoke-static {v6, v0}, Lc4/E1;->O(Lcom/google/android/gms/internal/measurement/r2;[B)Lcom/google/android/gms/internal/measurement/r2;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    check-cast v0, Lcom/google/android/gms/internal/measurement/a1;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 137
    .line 138
    const/4 v13, 0x1

    .line 139
    :try_start_3
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v6

    .line 143
    if-nez v6, :cond_2

    .line 144
    .line 145
    const-string v6, ""

    .line 146
    .line 147
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/r2;->g()V

    .line 148
    .line 149
    .line 150
    iget-object v12, v0, Lcom/google/android/gms/internal/measurement/r2;->H:Lcom/google/android/gms/internal/measurement/s2;

    .line 151
    .line 152
    check-cast v12, Lcom/google/android/gms/internal/measurement/b1;

    .line 153
    .line 154
    invoke-static {v12, v6}, Lcom/google/android/gms/internal/measurement/b1;->C(Lcom/google/android/gms/internal/measurement/b1;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    const/4 v12, 0x2

    .line 158
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getLong(I)J

    .line 159
    .line 160
    .line 161
    move-result-wide v13

    .line 162
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/r2;->g()V

    .line 163
    .line 164
    .line 165
    iget-object v6, v0, Lcom/google/android/gms/internal/measurement/r2;->H:Lcom/google/android/gms/internal/measurement/s2;

    .line 166
    .line 167
    check-cast v6, Lcom/google/android/gms/internal/measurement/b1;

    .line 168
    .line 169
    invoke-static {v13, v14, v6}, Lcom/google/android/gms/internal/measurement/b1;->F(JLcom/google/android/gms/internal/measurement/b1;)V

    .line 170
    .line 171
    .line 172
    new-instance v13, Lc4/l;

    .line 173
    .line 174
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/r2;->e()Lcom/google/android/gms/internal/measurement/s2;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    check-cast v0, Lcom/google/android/gms/internal/measurement/b1;

    .line 179
    .line 180
    move-object v6, v13

    .line 181
    const/4 v14, 0x2

    .line 182
    const/16 v16, 0x4

    .line 183
    .line 184
    move-object v12, v0

    .line 185
    invoke-direct/range {v6 .. v12}, Lc4/l;-><init>(JJZLcom/google/android/gms/internal/measurement/b1;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    goto :goto_4

    .line 192
    :catch_1
    move-exception v0

    .line 193
    const/4 v14, 0x2

    .line 194
    const/16 v16, 0x4

    .line 195
    .line 196
    iget-object v6, v2, Lc1/d;->G:Ljava/lang/Object;

    .line 197
    .line 198
    check-cast v6, Lc4/l0;

    .line 199
    .line 200
    iget-object v6, v6, Lc4/l0;->O:Lc4/T;

    .line 201
    .line 202
    invoke-static {v6}, Lc4/l0;->k(Lc4/s0;)V

    .line 203
    .line 204
    .line 205
    iget-object v6, v6, Lc4/T;->L:Lc4/Q;

    .line 206
    .line 207
    const-string v7, "Data loss. Failed to merge raw event. appId"

    .line 208
    .line 209
    invoke-static {v4}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 210
    .line 211
    .line 212
    move-result-object v8

    .line 213
    invoke-virtual {v6, v8, v0, v7}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    :goto_4
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    if-nez v0, :cond_3

    .line 221
    .line 222
    goto :goto_a

    .line 223
    :cond_3
    const/4 v14, 0x3

    .line 224
    goto/16 :goto_0

    .line 225
    .line 226
    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 227
    .line 228
    .line 229
    move-result-object v3
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 230
    goto :goto_a

    .line 231
    :goto_5
    move-object v14, v5

    .line 232
    goto :goto_b

    .line 233
    :goto_6
    move-object v14, v5

    .line 234
    goto :goto_9

    .line 235
    :catchall_1
    move-exception v0

    .line 236
    goto :goto_7

    .line 237
    :catch_2
    move-exception v0

    .line 238
    goto :goto_8

    .line 239
    :goto_7
    const/4 v14, 0x0

    .line 240
    goto :goto_b

    .line 241
    :goto_8
    const/4 v14, 0x0

    .line 242
    :goto_9
    :try_start_4
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
    const-string v5, "Data loss. Error querying raw events batch. appId"

    .line 254
    .line 255
    invoke-static {v4}, Lc4/T;->t(Ljava/lang/String;)Lc4/S;

    .line 256
    .line 257
    .line 258
    move-result-object v4

    .line 259
    invoke-virtual {v2, v4, v0, v5}, Lc4/Q;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 260
    .line 261
    .line 262
    move-object v5, v14

    .line 263
    :goto_a
    if-eqz v5, :cond_5

    .line 264
    .line 265
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 266
    .line 267
    .line 268
    :cond_5
    return-object v3

    .line 269
    :catchall_2
    move-exception v0

    .line 270
    :goto_b
    if-eqz v14, :cond_6

    .line 271
    .line 272
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 273
    .line 274
    .line 275
    :cond_6
    throw v0
.end method
