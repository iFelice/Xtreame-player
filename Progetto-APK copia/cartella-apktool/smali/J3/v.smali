.class public final LJ3/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, LJ3/v;->a:I

    .line 5
    .line 6
    return-void
.end method

.method public static a(Lc4/u;Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lc4/u;->G:Ljava/lang/String;

    .line 2
    .line 3
    const/16 v1, 0x4f45

    .line 4
    .line 5
    invoke-static {v1, p1}, Lf/b;->X(ILandroid/os/Parcel;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x2

    .line 10
    invoke-static {p1, v2, v0}, Lf/b;->Q(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x3

    .line 14
    iget-object v2, p0, Lc4/u;->H:Lc4/t;

    .line 15
    .line 16
    invoke-static {p1, v0, v2, p2}, Lf/b;->P(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    .line 17
    .line 18
    .line 19
    const/4 p2, 0x4

    .line 20
    iget-object v0, p0, Lc4/u;->I:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {p1, p2, v0}, Lf/b;->Q(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/16 p2, 0x8

    .line 26
    .line 27
    const/4 v0, 0x5

    .line 28
    invoke-static {p1, v0, p2}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 29
    .line 30
    .line 31
    iget-wide v2, p0, Lc4/u;->J:J

    .line 32
    .line 33
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 34
    .line 35
    .line 36
    invoke-static {v1, p1}, Lf/b;->p0(ILandroid/os/Parcel;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public static b(Lc4/F1;Landroid/os/Parcel;)V
    .locals 6

    .line 1
    iget v0, p0, Lc4/F1;->G:I

    .line 2
    .line 3
    const/16 v1, 0x4f45

    .line 4
    .line 5
    invoke-static {v1, p1}, Lf/b;->X(ILandroid/os/Parcel;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x4

    .line 11
    invoke-static {p1, v2, v3}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    iget-object v2, p0, Lc4/F1;->H:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {p1, v0, v2}, Lf/b;->Q(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x3

    .line 24
    const/16 v2, 0x8

    .line 25
    .line 26
    invoke-static {p1, v0, v2}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 27
    .line 28
    .line 29
    iget-wide v4, p0, Lc4/F1;->I:J

    .line 30
    .line 31
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lc4/F1;->J:Ljava/lang/Long;

    .line 35
    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-static {p1, v3, v2}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 43
    .line 44
    .line 45
    move-result-wide v3

    .line 46
    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 47
    .line 48
    .line 49
    :goto_0
    const/4 v0, 0x6

    .line 50
    iget-object v3, p0, Lc4/F1;->K:Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {p1, v0, v3}, Lf/b;->Q(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const/4 v0, 0x7

    .line 56
    iget-object v3, p0, Lc4/F1;->L:Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {p1, v0, v3}, Lf/b;->Q(Landroid/os/Parcel;ILjava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object p0, p0, Lc4/F1;->M:Ljava/lang/Double;

    .line 62
    .line 63
    if-nez p0, :cond_1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    invoke-static {p1, v2, v2}, Lf/b;->v0(Landroid/os/Parcel;II)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    .line 70
    .line 71
    .line 72
    move-result-wide v2

    .line 73
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeDouble(D)V

    .line 74
    .line 75
    .line 76
    :goto_1
    invoke-static {v1, p1}, Lf/b;->p0(ILandroid/os/Parcel;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 54

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v0, LJ3/v;->a:I

    .line 6
    .line 7
    const-string v3, ""

    .line 8
    .line 9
    const/4 v4, 0x4

    .line 10
    const-wide/16 v5, 0x0

    .line 11
    .line 12
    const/4 v7, 0x3

    .line 13
    const/4 v8, 0x2

    .line 14
    const/4 v9, 0x0

    .line 15
    const/4 v10, 0x1

    .line 16
    const/4 v11, 0x0

    .line 17
    packed-switch v2, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    new-instance v2, LW5/a;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    iput-object v3, v2, LW5/a;->G:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readByte()B

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-ne v3, v10, :cond_0

    .line 40
    .line 41
    new-instance v3, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 44
    .line 45
    .line 46
    iput-object v3, v2, LW5/a;->H:Ljava/util/List;

    .line 47
    .line 48
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    check-cast v4, Ljava/lang/Class;

    .line 53
    .line 54
    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v1, v3, v4}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    iput-object v11, v2, LW5/a;->H:Ljava/util/List;

    .line 63
    .line 64
    :goto_0
    return-object v2

    .line 65
    :pswitch_0
    new-instance v2, LR5/b;

    .line 66
    .line 67
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object v3, v2, LR5/b;->I:Ljava/lang/Object;

    .line 71
    .line 72
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    iput-object v1, v2, LR5/b;->H:Ljava/lang/String;

    .line 77
    .line 78
    return-object v2

    .line 79
    :pswitch_1
    new-instance v2, Lt4/d;

    .line 80
    .line 81
    const-class v3, Lt4/b;

    .line 82
    .line 83
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-direct {v2, v1}, Lt4/b;-><init>(Ljava/util/List;)V

    .line 92
    .line 93
    .line 94
    return-object v2

    .line 95
    :pswitch_2
    new-instance v2, Lt4/c;

    .line 96
    .line 97
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 98
    .line 99
    .line 100
    move-result v4

    .line 101
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    if-nez v3, :cond_1

    .line 110
    .line 111
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    move-object v6, v3

    .line 116
    goto :goto_1

    .line 117
    :cond_1
    move-object v6, v11

    .line 118
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-nez v3, :cond_2

    .line 123
    .line 124
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    move-object v7, v3

    .line 129
    goto :goto_2

    .line 130
    :cond_2
    move-object v7, v11

    .line 131
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    if-nez v3, :cond_3

    .line 136
    .line 137
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v11

    .line 141
    :cond_3
    move-object v8, v11

    .line 142
    move-object v3, v2

    .line 143
    invoke-direct/range {v3 .. v8}, Lt4/a;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    return-object v2

    .line 147
    :pswitch_3
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    move-object v3, v11

    .line 152
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    if-ge v4, v2, :cond_7

    .line 157
    .line 158
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    int-to-char v5, v4

    .line 163
    if-eq v5, v10, :cond_6

    .line 164
    .line 165
    if-eq v5, v8, :cond_5

    .line 166
    .line 167
    if-eq v5, v7, :cond_4

    .line 168
    .line 169
    invoke-static {v4, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    .line 170
    .line 171
    .line 172
    goto :goto_3

    .line 173
    :cond_4
    sget-object v3, Lcom/google/android/gms/common/internal/D;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 174
    .line 175
    invoke-static {v1, v4, v3}, Lf/b;->m(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    check-cast v3, Lcom/google/android/gms/common/internal/D;

    .line 180
    .line 181
    goto :goto_3

    .line 182
    :cond_5
    sget-object v5, LJ3/b;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 183
    .line 184
    invoke-static {v1, v4, v5}, Lf/b;->m(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    move-object v11, v4

    .line 189
    check-cast v11, LJ3/b;

    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_6
    invoke-static {v4, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    .line 193
    .line 194
    .line 195
    move-result v9

    .line 196
    goto :goto_3

    .line 197
    :cond_7
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 198
    .line 199
    .line 200
    new-instance v1, Lf4/i;

    .line 201
    .line 202
    invoke-direct {v1, v9, v11, v3}, Lf4/i;-><init>(ILJ3/b;Lcom/google/android/gms/common/internal/D;)V

    .line 203
    .line 204
    .line 205
    return-object v1

    .line 206
    :pswitch_4
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 211
    .line 212
    .line 213
    move-result v3

    .line 214
    if-ge v3, v2, :cond_a

    .line 215
    .line 216
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 217
    .line 218
    .line 219
    move-result v3

    .line 220
    int-to-char v4, v3

    .line 221
    if-eq v4, v10, :cond_9

    .line 222
    .line 223
    if-eq v4, v8, :cond_8

    .line 224
    .line 225
    invoke-static {v3, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    .line 226
    .line 227
    .line 228
    goto :goto_4

    .line 229
    :cond_8
    sget-object v4, Lcom/google/android/gms/common/internal/C;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 230
    .line 231
    invoke-static {v1, v3, v4}, Lf/b;->m(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 232
    .line 233
    .line 234
    move-result-object v3

    .line 235
    move-object v11, v3

    .line 236
    check-cast v11, Lcom/google/android/gms/common/internal/C;

    .line 237
    .line 238
    goto :goto_4

    .line 239
    :cond_9
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    .line 240
    .line 241
    .line 242
    move-result v9

    .line 243
    goto :goto_4

    .line 244
    :cond_a
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 245
    .line 246
    .line 247
    new-instance v1, Lf4/h;

    .line 248
    .line 249
    invoke-direct {v1, v9, v11}, Lf4/h;-><init>(ILcom/google/android/gms/common/internal/C;)V

    .line 250
    .line 251
    .line 252
    return-object v1

    .line 253
    :pswitch_5
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    .line 254
    .line 255
    .line 256
    move-result v2

    .line 257
    move-object v3, v11

    .line 258
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 259
    .line 260
    .line 261
    move-result v4

    .line 262
    if-ge v4, v2, :cond_d

    .line 263
    .line 264
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 265
    .line 266
    .line 267
    move-result v4

    .line 268
    int-to-char v5, v4

    .line 269
    if-eq v5, v10, :cond_c

    .line 270
    .line 271
    if-eq v5, v8, :cond_b

    .line 272
    .line 273
    invoke-static {v4, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    .line 274
    .line 275
    .line 276
    goto :goto_5

    .line 277
    :cond_b
    invoke-static {v4, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v3

    .line 281
    goto :goto_5

    .line 282
    :cond_c
    invoke-static {v4, v1}, Lf/b;->p(ILandroid/os/Parcel;)Ljava/util/ArrayList;

    .line 283
    .line 284
    .line 285
    move-result-object v11

    .line 286
    goto :goto_5

    .line 287
    :cond_d
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 288
    .line 289
    .line 290
    new-instance v1, Lf4/g;

    .line 291
    .line 292
    invoke-direct {v1, v3, v11}, Lf4/g;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 293
    .line 294
    .line 295
    return-object v1

    .line 296
    :pswitch_6
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    .line 297
    .line 298
    .line 299
    move-result v2

    .line 300
    const/4 v3, 0x0

    .line 301
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 302
    .line 303
    .line 304
    move-result v4

    .line 305
    if-ge v4, v2, :cond_11

    .line 306
    .line 307
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 308
    .line 309
    .line 310
    move-result v4

    .line 311
    int-to-char v5, v4

    .line 312
    if-eq v5, v10, :cond_10

    .line 313
    .line 314
    if-eq v5, v8, :cond_f

    .line 315
    .line 316
    if-eq v5, v7, :cond_e

    .line 317
    .line 318
    invoke-static {v4, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    .line 319
    .line 320
    .line 321
    goto :goto_6

    .line 322
    :cond_e
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 323
    .line 324
    invoke-static {v1, v4, v5}, Lf/b;->m(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 325
    .line 326
    .line 327
    move-result-object v4

    .line 328
    move-object v11, v4

    .line 329
    check-cast v11, Landroid/content/Intent;

    .line 330
    .line 331
    goto :goto_6

    .line 332
    :cond_f
    invoke-static {v4, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    .line 333
    .line 334
    .line 335
    move-result v3

    .line 336
    goto :goto_6

    .line 337
    :cond_10
    invoke-static {v4, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    .line 338
    .line 339
    .line 340
    move-result v9

    .line 341
    goto :goto_6

    .line 342
    :cond_11
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 343
    .line 344
    .line 345
    new-instance v1, Lf4/b;

    .line 346
    .line 347
    invoke-direct {v1, v9, v3, v11}, Lf4/b;-><init>(IILandroid/content/Intent;)V

    .line 348
    .line 349
    .line 350
    return-object v1

    .line 351
    :pswitch_7
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    .line 352
    .line 353
    .line 354
    move-result v2

    .line 355
    const/16 v4, 0x64

    .line 356
    .line 357
    const-wide/32 v7, -0x80000000

    .line 358
    .line 359
    .line 360
    move-object/from16 v38, v3

    .line 361
    .line 362
    move-object/from16 v39, v38

    .line 363
    .line 364
    move-object/from16 v45, v39

    .line 365
    .line 366
    move-object/from16 v50, v45

    .line 367
    .line 368
    move-wide/from16 v17, v5

    .line 369
    .line 370
    move-wide/from16 v19, v17

    .line 371
    .line 372
    move-wide/from16 v27, v19

    .line 373
    .line 374
    move-wide/from16 v34, v27

    .line 375
    .line 376
    move-wide/from16 v42, v34

    .line 377
    .line 378
    move-wide/from16 v47, v42

    .line 379
    .line 380
    move-wide/from16 v51, v47

    .line 381
    .line 382
    move-wide/from16 v24, v7

    .line 383
    .line 384
    move-object v13, v11

    .line 385
    move-object v14, v13

    .line 386
    move-object v15, v14

    .line 387
    move-object/from16 v16, v15

    .line 388
    .line 389
    move-object/from16 v21, v16

    .line 390
    .line 391
    move-object/from16 v26, v21

    .line 392
    .line 393
    move-object/from16 v32, v26

    .line 394
    .line 395
    move-object/from16 v33, v32

    .line 396
    .line 397
    move-object/from16 v36, v33

    .line 398
    .line 399
    move-object/from16 v37, v36

    .line 400
    .line 401
    move-object/from16 v40, v37

    .line 402
    .line 403
    move-object/from16 v49, v40

    .line 404
    .line 405
    const/16 v22, 0x1

    .line 406
    .line 407
    const/16 v23, 0x0

    .line 408
    .line 409
    const/16 v29, 0x0

    .line 410
    .line 411
    const/16 v30, 0x1

    .line 412
    .line 413
    const/16 v31, 0x0

    .line 414
    .line 415
    const/16 v41, 0x0

    .line 416
    .line 417
    const/16 v44, 0x64

    .line 418
    .line 419
    const/16 v46, 0x0

    .line 420
    .line 421
    const/16 v53, 0x0

    .line 422
    .line 423
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 424
    .line 425
    .line 426
    move-result v3

    .line 427
    if-ge v3, v2, :cond_12

    .line 428
    .line 429
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 430
    .line 431
    .line 432
    move-result v3

    .line 433
    int-to-char v4, v3

    .line 434
    packed-switch v4, :pswitch_data_1

    .line 435
    .line 436
    .line 437
    :pswitch_8
    invoke-static {v3, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    .line 438
    .line 439
    .line 440
    goto :goto_7

    .line 441
    :pswitch_9
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    .line 442
    .line 443
    .line 444
    move-result v3

    .line 445
    move/from16 v53, v3

    .line 446
    .line 447
    goto :goto_7

    .line 448
    :pswitch_a
    invoke-static {v3, v1}, Lf/b;->E(ILandroid/os/Parcel;)J

    .line 449
    .line 450
    .line 451
    move-result-wide v3

    .line 452
    move-wide/from16 v51, v3

    .line 453
    .line 454
    goto :goto_7

    .line 455
    :pswitch_b
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v3

    .line 459
    move-object/from16 v50, v3

    .line 460
    .line 461
    goto :goto_7

    .line 462
    :pswitch_c
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v3

    .line 466
    move-object/from16 v49, v3

    .line 467
    .line 468
    goto :goto_7

    .line 469
    :pswitch_d
    invoke-static {v3, v1}, Lf/b;->E(ILandroid/os/Parcel;)J

    .line 470
    .line 471
    .line 472
    move-result-wide v3

    .line 473
    move-wide/from16 v47, v3

    .line 474
    .line 475
    goto :goto_7

    .line 476
    :pswitch_e
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    .line 477
    .line 478
    .line 479
    move-result v3

    .line 480
    move/from16 v46, v3

    .line 481
    .line 482
    goto :goto_7

    .line 483
    :pswitch_f
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v3

    .line 487
    move-object/from16 v45, v3

    .line 488
    .line 489
    goto :goto_7

    .line 490
    :pswitch_10
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    .line 491
    .line 492
    .line 493
    move-result v3

    .line 494
    move/from16 v44, v3

    .line 495
    .line 496
    goto :goto_7

    .line 497
    :pswitch_11
    invoke-static {v3, v1}, Lf/b;->E(ILandroid/os/Parcel;)J

    .line 498
    .line 499
    .line 500
    move-result-wide v3

    .line 501
    move-wide/from16 v42, v3

    .line 502
    .line 503
    goto :goto_7

    .line 504
    :pswitch_12
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    .line 505
    .line 506
    .line 507
    move-result v3

    .line 508
    move/from16 v41, v3

    .line 509
    .line 510
    goto :goto_7

    .line 511
    :pswitch_13
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v3

    .line 515
    move-object/from16 v40, v3

    .line 516
    .line 517
    goto :goto_7

    .line 518
    :pswitch_14
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v3

    .line 522
    move-object/from16 v39, v3

    .line 523
    .line 524
    goto :goto_7

    .line 525
    :pswitch_15
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v3

    .line 529
    move-object/from16 v38, v3

    .line 530
    .line 531
    goto :goto_7

    .line 532
    :pswitch_16
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v3

    .line 536
    move-object/from16 v37, v3

    .line 537
    .line 538
    goto :goto_7

    .line 539
    :pswitch_17
    invoke-static {v3, v1}, Lf/b;->p(ILandroid/os/Parcel;)Ljava/util/ArrayList;

    .line 540
    .line 541
    .line 542
    move-result-object v3

    .line 543
    move-object/from16 v36, v3

    .line 544
    .line 545
    goto :goto_7

    .line 546
    :pswitch_18
    invoke-static {v3, v1}, Lf/b;->E(ILandroid/os/Parcel;)J

    .line 547
    .line 548
    .line 549
    move-result-wide v3

    .line 550
    move-wide/from16 v34, v3

    .line 551
    .line 552
    goto/16 :goto_7

    .line 553
    .line 554
    :pswitch_19
    invoke-static {v3, v1}, Lf/b;->z(ILandroid/os/Parcel;)Ljava/lang/Boolean;

    .line 555
    .line 556
    .line 557
    move-result-object v3

    .line 558
    move-object/from16 v33, v3

    .line 559
    .line 560
    goto/16 :goto_7

    .line 561
    .line 562
    :pswitch_1a
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 563
    .line 564
    .line 565
    move-result-object v3

    .line 566
    move-object/from16 v32, v3

    .line 567
    .line 568
    goto/16 :goto_7

    .line 569
    .line 570
    :pswitch_1b
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    .line 571
    .line 572
    .line 573
    move-result v3

    .line 574
    move/from16 v31, v3

    .line 575
    .line 576
    goto/16 :goto_7

    .line 577
    .line 578
    :pswitch_1c
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    .line 579
    .line 580
    .line 581
    move-result v3

    .line 582
    move/from16 v30, v3

    .line 583
    .line 584
    goto/16 :goto_7

    .line 585
    .line 586
    :pswitch_1d
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    .line 587
    .line 588
    .line 589
    move-result v3

    .line 590
    move/from16 v29, v3

    .line 591
    .line 592
    goto/16 :goto_7

    .line 593
    .line 594
    :pswitch_1e
    invoke-static {v3, v1}, Lf/b;->E(ILandroid/os/Parcel;)J

    .line 595
    .line 596
    .line 597
    move-result-wide v3

    .line 598
    move-wide/from16 v27, v3

    .line 599
    .line 600
    goto/16 :goto_7

    .line 601
    .line 602
    :pswitch_1f
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 603
    .line 604
    .line 605
    move-result-object v3

    .line 606
    move-object/from16 v26, v3

    .line 607
    .line 608
    goto/16 :goto_7

    .line 609
    .line 610
    :pswitch_20
    invoke-static {v3, v1}, Lf/b;->E(ILandroid/os/Parcel;)J

    .line 611
    .line 612
    .line 613
    move-result-wide v3

    .line 614
    move-wide/from16 v24, v3

    .line 615
    .line 616
    goto/16 :goto_7

    .line 617
    .line 618
    :pswitch_21
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    .line 619
    .line 620
    .line 621
    move-result v3

    .line 622
    move/from16 v23, v3

    .line 623
    .line 624
    goto/16 :goto_7

    .line 625
    .line 626
    :pswitch_22
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    .line 627
    .line 628
    .line 629
    move-result v3

    .line 630
    move/from16 v22, v3

    .line 631
    .line 632
    goto/16 :goto_7

    .line 633
    .line 634
    :pswitch_23
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 635
    .line 636
    .line 637
    move-result-object v3

    .line 638
    move-object/from16 v21, v3

    .line 639
    .line 640
    goto/16 :goto_7

    .line 641
    .line 642
    :pswitch_24
    invoke-static {v3, v1}, Lf/b;->E(ILandroid/os/Parcel;)J

    .line 643
    .line 644
    .line 645
    move-result-wide v3

    .line 646
    move-wide/from16 v19, v3

    .line 647
    .line 648
    goto/16 :goto_7

    .line 649
    .line 650
    :pswitch_25
    invoke-static {v3, v1}, Lf/b;->E(ILandroid/os/Parcel;)J

    .line 651
    .line 652
    .line 653
    move-result-wide v3

    .line 654
    move-wide/from16 v17, v3

    .line 655
    .line 656
    goto/16 :goto_7

    .line 657
    .line 658
    :pswitch_26
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 659
    .line 660
    .line 661
    move-result-object v3

    .line 662
    move-object/from16 v16, v3

    .line 663
    .line 664
    goto/16 :goto_7

    .line 665
    .line 666
    :pswitch_27
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 667
    .line 668
    .line 669
    move-result-object v3

    .line 670
    move-object v15, v3

    .line 671
    goto/16 :goto_7

    .line 672
    .line 673
    :pswitch_28
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 674
    .line 675
    .line 676
    move-result-object v3

    .line 677
    move-object v14, v3

    .line 678
    goto/16 :goto_7

    .line 679
    .line 680
    :pswitch_29
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 681
    .line 682
    .line 683
    move-result-object v3

    .line 684
    move-object v13, v3

    .line 685
    goto/16 :goto_7

    .line 686
    .line 687
    :cond_12
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 688
    .line 689
    .line 690
    new-instance v1, Lc4/J1;

    .line 691
    .line 692
    move-object v12, v1

    .line 693
    invoke-direct/range {v12 .. v53}, Lc4/J1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;ZZJLjava/lang/String;JIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJILjava/lang/String;IJLjava/lang/String;Ljava/lang/String;JI)V

    .line 694
    .line 695
    .line 696
    return-object v1

    .line 697
    :pswitch_2a
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    .line 698
    .line 699
    .line 700
    move-result v2

    .line 701
    move-wide v15, v5

    .line 702
    move-object v14, v11

    .line 703
    move-object/from16 v17, v14

    .line 704
    .line 705
    move-object/from16 v18, v17

    .line 706
    .line 707
    move-object/from16 v19, v18

    .line 708
    .line 709
    move-object/from16 v20, v19

    .line 710
    .line 711
    move-object/from16 v21, v20

    .line 712
    .line 713
    const/4 v13, 0x0

    .line 714
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 715
    .line 716
    .line 717
    move-result v3

    .line 718
    if-ge v3, v2, :cond_16

    .line 719
    .line 720
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 721
    .line 722
    .line 723
    move-result v3

    .line 724
    int-to-char v5, v3

    .line 725
    const/16 v6, 0x8

    .line 726
    .line 727
    packed-switch v5, :pswitch_data_2

    .line 728
    .line 729
    .line 730
    invoke-static {v3, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    .line 731
    .line 732
    .line 733
    goto :goto_8

    .line 734
    :pswitch_2b
    invoke-static {v3, v1}, Lf/b;->F(ILandroid/os/Parcel;)I

    .line 735
    .line 736
    .line 737
    move-result v3

    .line 738
    if-nez v3, :cond_13

    .line 739
    .line 740
    move-object/from16 v21, v11

    .line 741
    .line 742
    goto :goto_8

    .line 743
    :cond_13
    invoke-static {v1, v3, v6}, Lf/b;->g0(Landroid/os/Parcel;II)V

    .line 744
    .line 745
    .line 746
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readDouble()D

    .line 747
    .line 748
    .line 749
    move-result-wide v5

    .line 750
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 751
    .line 752
    .line 753
    move-result-object v3

    .line 754
    move-object/from16 v21, v3

    .line 755
    .line 756
    goto :goto_8

    .line 757
    :pswitch_2c
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 758
    .line 759
    .line 760
    move-result-object v20

    .line 761
    goto :goto_8

    .line 762
    :pswitch_2d
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 763
    .line 764
    .line 765
    move-result-object v19

    .line 766
    goto :goto_8

    .line 767
    :pswitch_2e
    invoke-static {v3, v1}, Lf/b;->F(ILandroid/os/Parcel;)I

    .line 768
    .line 769
    .line 770
    move-result v3

    .line 771
    if-nez v3, :cond_14

    .line 772
    .line 773
    move-object/from16 v18, v11

    .line 774
    .line 775
    goto :goto_8

    .line 776
    :cond_14
    invoke-static {v1, v3, v4}, Lf/b;->g0(Landroid/os/Parcel;II)V

    .line 777
    .line 778
    .line 779
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readFloat()F

    .line 780
    .line 781
    .line 782
    move-result v3

    .line 783
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 784
    .line 785
    .line 786
    move-result-object v3

    .line 787
    move-object/from16 v18, v3

    .line 788
    .line 789
    goto :goto_8

    .line 790
    :pswitch_2f
    invoke-static {v3, v1}, Lf/b;->F(ILandroid/os/Parcel;)I

    .line 791
    .line 792
    .line 793
    move-result v3

    .line 794
    if-nez v3, :cond_15

    .line 795
    .line 796
    move-object/from16 v17, v11

    .line 797
    .line 798
    goto :goto_8

    .line 799
    :cond_15
    invoke-static {v1, v3, v6}, Lf/b;->g0(Landroid/os/Parcel;II)V

    .line 800
    .line 801
    .line 802
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    .line 803
    .line 804
    .line 805
    move-result-wide v5

    .line 806
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 807
    .line 808
    .line 809
    move-result-object v3

    .line 810
    move-object/from16 v17, v3

    .line 811
    .line 812
    goto :goto_8

    .line 813
    :pswitch_30
    invoke-static {v3, v1}, Lf/b;->E(ILandroid/os/Parcel;)J

    .line 814
    .line 815
    .line 816
    move-result-wide v5

    .line 817
    move-wide v15, v5

    .line 818
    goto :goto_8

    .line 819
    :pswitch_31
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 820
    .line 821
    .line 822
    move-result-object v14

    .line 823
    goto :goto_8

    .line 824
    :pswitch_32
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    .line 825
    .line 826
    .line 827
    move-result v3

    .line 828
    move v13, v3

    .line 829
    goto :goto_8

    .line 830
    :cond_16
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 831
    .line 832
    .line 833
    new-instance v1, Lc4/F1;

    .line 834
    .line 835
    move-object v12, v1

    .line 836
    invoke-direct/range {v12 .. v21}, Lc4/F1;-><init>(ILjava/lang/String;JLjava/lang/Long;Ljava/lang/Float;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;)V

    .line 837
    .line 838
    .line 839
    return-object v1

    .line 840
    :pswitch_33
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    .line 841
    .line 842
    .line 843
    move-result v2

    .line 844
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 845
    .line 846
    .line 847
    move-result v3

    .line 848
    if-ge v3, v2, :cond_18

    .line 849
    .line 850
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 851
    .line 852
    .line 853
    move-result v3

    .line 854
    int-to-char v4, v3

    .line 855
    if-eq v4, v10, :cond_17

    .line 856
    .line 857
    invoke-static {v3, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    .line 858
    .line 859
    .line 860
    goto :goto_9

    .line 861
    :cond_17
    sget-object v4, Lc4/r1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 862
    .line 863
    invoke-static {v1, v3, v4}, Lf/b;->r(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    .line 864
    .line 865
    .line 866
    move-result-object v11

    .line 867
    goto :goto_9

    .line 868
    :cond_18
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 869
    .line 870
    .line 871
    new-instance v1, Lc4/t1;

    .line 872
    .line 873
    invoke-direct {v1, v11}, Lc4/t1;-><init>(Ljava/util/List;)V

    .line 874
    .line 875
    .line 876
    return-object v1

    .line 877
    :pswitch_34
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    .line 878
    .line 879
    .line 880
    move-result v2

    .line 881
    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 882
    .line 883
    .line 884
    move-result v3

    .line 885
    if-ge v3, v2, :cond_1a

    .line 886
    .line 887
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 888
    .line 889
    .line 890
    move-result v3

    .line 891
    int-to-char v4, v3

    .line 892
    if-eq v4, v10, :cond_19

    .line 893
    .line 894
    invoke-static {v3, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    .line 895
    .line 896
    .line 897
    goto :goto_a

    .line 898
    :cond_19
    invoke-static {v3, v1}, Lf/b;->k(ILandroid/os/Parcel;)Ljava/util/ArrayList;

    .line 899
    .line 900
    .line 901
    move-result-object v11

    .line 902
    goto :goto_a

    .line 903
    :cond_1a
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 904
    .line 905
    .line 906
    new-instance v1, Lc4/s1;

    .line 907
    .line 908
    invoke-direct {v1, v11}, Lc4/s1;-><init>(Ljava/util/ArrayList;)V

    .line 909
    .line 910
    .line 911
    return-object v1

    .line 912
    :pswitch_35
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    .line 913
    .line 914
    .line 915
    move-result v2

    .line 916
    move-wide v13, v5

    .line 917
    move-wide/from16 v19, v13

    .line 918
    .line 919
    move-object v15, v11

    .line 920
    move-object/from16 v16, v15

    .line 921
    .line 922
    move-object/from16 v17, v16

    .line 923
    .line 924
    move-object/from16 v21, v17

    .line 925
    .line 926
    const/16 v18, 0x0

    .line 927
    .line 928
    :goto_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 929
    .line 930
    .line 931
    move-result v3

    .line 932
    if-ge v3, v2, :cond_1b

    .line 933
    .line 934
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 935
    .line 936
    .line 937
    move-result v3

    .line 938
    int-to-char v4, v3

    .line 939
    packed-switch v4, :pswitch_data_3

    .line 940
    .line 941
    .line 942
    invoke-static {v3, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    .line 943
    .line 944
    .line 945
    goto :goto_b

    .line 946
    :pswitch_36
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 947
    .line 948
    .line 949
    move-result-object v3

    .line 950
    move-object/from16 v21, v3

    .line 951
    .line 952
    goto :goto_b

    .line 953
    :pswitch_37
    invoke-static {v3, v1}, Lf/b;->E(ILandroid/os/Parcel;)J

    .line 954
    .line 955
    .line 956
    move-result-wide v3

    .line 957
    move-wide/from16 v19, v3

    .line 958
    .line 959
    goto :goto_b

    .line 960
    :pswitch_38
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    .line 961
    .line 962
    .line 963
    move-result v3

    .line 964
    move/from16 v18, v3

    .line 965
    .line 966
    goto :goto_b

    .line 967
    :pswitch_39
    invoke-static {v3, v1}, Lf/b;->g(ILandroid/os/Parcel;)Landroid/os/Bundle;

    .line 968
    .line 969
    .line 970
    move-result-object v3

    .line 971
    move-object/from16 v17, v3

    .line 972
    .line 973
    goto :goto_b

    .line 974
    :pswitch_3a
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 975
    .line 976
    .line 977
    move-result-object v3

    .line 978
    move-object/from16 v16, v3

    .line 979
    .line 980
    goto :goto_b

    .line 981
    :pswitch_3b
    invoke-static {v3, v1}, Lf/b;->i(ILandroid/os/Parcel;)[B

    .line 982
    .line 983
    .line 984
    move-result-object v3

    .line 985
    move-object v15, v3

    .line 986
    goto :goto_b

    .line 987
    :pswitch_3c
    invoke-static {v3, v1}, Lf/b;->E(ILandroid/os/Parcel;)J

    .line 988
    .line 989
    .line 990
    move-result-wide v3

    .line 991
    move-wide v13, v3

    .line 992
    goto :goto_b

    .line 993
    :cond_1b
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 994
    .line 995
    .line 996
    new-instance v1, Lc4/r1;

    .line 997
    .line 998
    move-object v12, v1

    .line 999
    invoke-direct/range {v12 .. v21}, Lc4/r1;-><init>(J[BLjava/lang/String;Landroid/os/Bundle;IJLjava/lang/String;)V

    .line 1000
    .line 1001
    .line 1002
    return-object v1

    .line 1003
    :pswitch_3d
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    .line 1004
    .line 1005
    .line 1006
    move-result v2

    .line 1007
    :goto_c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 1008
    .line 1009
    .line 1010
    move-result v3

    .line 1011
    if-ge v3, v2, :cond_1f

    .line 1012
    .line 1013
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 1014
    .line 1015
    .line 1016
    move-result v3

    .line 1017
    int-to-char v4, v3

    .line 1018
    if-eq v4, v10, :cond_1e

    .line 1019
    .line 1020
    if-eq v4, v8, :cond_1d

    .line 1021
    .line 1022
    if-eq v4, v7, :cond_1c

    .line 1023
    .line 1024
    invoke-static {v3, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    .line 1025
    .line 1026
    .line 1027
    goto :goto_c

    .line 1028
    :cond_1c
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    .line 1029
    .line 1030
    .line 1031
    move-result v3

    .line 1032
    move v9, v3

    .line 1033
    goto :goto_c

    .line 1034
    :cond_1d
    invoke-static {v3, v1}, Lf/b;->E(ILandroid/os/Parcel;)J

    .line 1035
    .line 1036
    .line 1037
    move-result-wide v3

    .line 1038
    move-wide v5, v3

    .line 1039
    goto :goto_c

    .line 1040
    :cond_1e
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v3

    .line 1044
    move-object v11, v3

    .line 1045
    goto :goto_c

    .line 1046
    :cond_1f
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 1047
    .line 1048
    .line 1049
    new-instance v1, Lc4/o1;

    .line 1050
    .line 1051
    invoke-direct {v1, v9, v5, v6, v11}, Lc4/o1;-><init>(IJLjava/lang/String;)V

    .line 1052
    .line 1053
    .line 1054
    return-object v1

    .line 1055
    :pswitch_3e
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    .line 1056
    .line 1057
    .line 1058
    move-result v2

    .line 1059
    move-wide/from16 v16, v5

    .line 1060
    .line 1061
    move-object v13, v11

    .line 1062
    move-object v14, v13

    .line 1063
    move-object v15, v14

    .line 1064
    :goto_d
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 1065
    .line 1066
    .line 1067
    move-result v3

    .line 1068
    if-ge v3, v2, :cond_24

    .line 1069
    .line 1070
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 1071
    .line 1072
    .line 1073
    move-result v3

    .line 1074
    int-to-char v5, v3

    .line 1075
    if-eq v5, v8, :cond_23

    .line 1076
    .line 1077
    if-eq v5, v7, :cond_22

    .line 1078
    .line 1079
    if-eq v5, v4, :cond_21

    .line 1080
    .line 1081
    const/4 v6, 0x5

    .line 1082
    if-eq v5, v6, :cond_20

    .line 1083
    .line 1084
    invoke-static {v3, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    .line 1085
    .line 1086
    .line 1087
    goto :goto_d

    .line 1088
    :cond_20
    invoke-static {v3, v1}, Lf/b;->E(ILandroid/os/Parcel;)J

    .line 1089
    .line 1090
    .line 1091
    move-result-wide v5

    .line 1092
    move-wide/from16 v16, v5

    .line 1093
    .line 1094
    goto :goto_d

    .line 1095
    :cond_21
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v3

    .line 1099
    move-object v15, v3

    .line 1100
    goto :goto_d

    .line 1101
    :cond_22
    sget-object v5, Lc4/t;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1102
    .line 1103
    invoke-static {v1, v3, v5}, Lf/b;->m(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 1104
    .line 1105
    .line 1106
    move-result-object v3

    .line 1107
    check-cast v3, Lc4/t;

    .line 1108
    .line 1109
    move-object v14, v3

    .line 1110
    goto :goto_d

    .line 1111
    :cond_23
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v3

    .line 1115
    move-object v13, v3

    .line 1116
    goto :goto_d

    .line 1117
    :cond_24
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 1118
    .line 1119
    .line 1120
    new-instance v1, Lc4/u;

    .line 1121
    .line 1122
    move-object v12, v1

    .line 1123
    invoke-direct/range {v12 .. v17}, Lc4/u;-><init>(Ljava/lang/String;Lc4/t;Ljava/lang/String;J)V

    .line 1124
    .line 1125
    .line 1126
    return-object v1

    .line 1127
    :pswitch_3f
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    .line 1128
    .line 1129
    .line 1130
    move-result v2

    .line 1131
    :goto_e
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 1132
    .line 1133
    .line 1134
    move-result v3

    .line 1135
    if-ge v3, v2, :cond_26

    .line 1136
    .line 1137
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 1138
    .line 1139
    .line 1140
    move-result v3

    .line 1141
    int-to-char v4, v3

    .line 1142
    if-eq v4, v8, :cond_25

    .line 1143
    .line 1144
    invoke-static {v3, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    .line 1145
    .line 1146
    .line 1147
    goto :goto_e

    .line 1148
    :cond_25
    invoke-static {v3, v1}, Lf/b;->g(ILandroid/os/Parcel;)Landroid/os/Bundle;

    .line 1149
    .line 1150
    .line 1151
    move-result-object v11

    .line 1152
    goto :goto_e

    .line 1153
    :cond_26
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 1154
    .line 1155
    .line 1156
    new-instance v1, Lc4/t;

    .line 1157
    .line 1158
    invoke-direct {v1, v11}, Lc4/t;-><init>(Landroid/os/Bundle;)V

    .line 1159
    .line 1160
    .line 1161
    return-object v1

    .line 1162
    :pswitch_40
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    .line 1163
    .line 1164
    .line 1165
    move-result v2

    .line 1166
    :goto_f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 1167
    .line 1168
    .line 1169
    move-result v3

    .line 1170
    if-ge v3, v2, :cond_28

    .line 1171
    .line 1172
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 1173
    .line 1174
    .line 1175
    move-result v3

    .line 1176
    int-to-char v4, v3

    .line 1177
    if-eq v4, v10, :cond_27

    .line 1178
    .line 1179
    invoke-static {v3, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    .line 1180
    .line 1181
    .line 1182
    goto :goto_f

    .line 1183
    :cond_27
    invoke-static {v3, v1}, Lf/b;->g(ILandroid/os/Parcel;)Landroid/os/Bundle;

    .line 1184
    .line 1185
    .line 1186
    move-result-object v11

    .line 1187
    goto :goto_f

    .line 1188
    :cond_28
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 1189
    .line 1190
    .line 1191
    new-instance v1, Lc4/j;

    .line 1192
    .line 1193
    invoke-direct {v1, v11}, Lc4/j;-><init>(Landroid/os/Bundle;)V

    .line 1194
    .line 1195
    .line 1196
    return-object v1

    .line 1197
    :pswitch_41
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    .line 1198
    .line 1199
    .line 1200
    move-result v2

    .line 1201
    move-wide/from16 v16, v5

    .line 1202
    .line 1203
    move-wide/from16 v21, v16

    .line 1204
    .line 1205
    move-wide/from16 v24, v21

    .line 1206
    .line 1207
    move-object v13, v11

    .line 1208
    move-object v14, v13

    .line 1209
    move-object v15, v14

    .line 1210
    move-object/from16 v19, v15

    .line 1211
    .line 1212
    move-object/from16 v20, v19

    .line 1213
    .line 1214
    move-object/from16 v23, v20

    .line 1215
    .line 1216
    move-object/from16 v26, v23

    .line 1217
    .line 1218
    const/16 v18, 0x0

    .line 1219
    .line 1220
    :goto_10
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 1221
    .line 1222
    .line 1223
    move-result v3

    .line 1224
    if-ge v3, v2, :cond_29

    .line 1225
    .line 1226
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 1227
    .line 1228
    .line 1229
    move-result v3

    .line 1230
    int-to-char v4, v3

    .line 1231
    packed-switch v4, :pswitch_data_4

    .line 1232
    .line 1233
    .line 1234
    invoke-static {v3, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    .line 1235
    .line 1236
    .line 1237
    goto :goto_10

    .line 1238
    :pswitch_42
    sget-object v4, Lc4/u;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1239
    .line 1240
    invoke-static {v1, v3, v4}, Lf/b;->m(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 1241
    .line 1242
    .line 1243
    move-result-object v3

    .line 1244
    check-cast v3, Lc4/u;

    .line 1245
    .line 1246
    move-object/from16 v26, v3

    .line 1247
    .line 1248
    goto :goto_10

    .line 1249
    :pswitch_43
    invoke-static {v3, v1}, Lf/b;->E(ILandroid/os/Parcel;)J

    .line 1250
    .line 1251
    .line 1252
    move-result-wide v3

    .line 1253
    move-wide/from16 v24, v3

    .line 1254
    .line 1255
    goto :goto_10

    .line 1256
    :pswitch_44
    sget-object v4, Lc4/u;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1257
    .line 1258
    invoke-static {v1, v3, v4}, Lf/b;->m(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 1259
    .line 1260
    .line 1261
    move-result-object v3

    .line 1262
    check-cast v3, Lc4/u;

    .line 1263
    .line 1264
    move-object/from16 v23, v3

    .line 1265
    .line 1266
    goto :goto_10

    .line 1267
    :pswitch_45
    invoke-static {v3, v1}, Lf/b;->E(ILandroid/os/Parcel;)J

    .line 1268
    .line 1269
    .line 1270
    move-result-wide v3

    .line 1271
    move-wide/from16 v21, v3

    .line 1272
    .line 1273
    goto :goto_10

    .line 1274
    :pswitch_46
    sget-object v4, Lc4/u;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1275
    .line 1276
    invoke-static {v1, v3, v4}, Lf/b;->m(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 1277
    .line 1278
    .line 1279
    move-result-object v3

    .line 1280
    check-cast v3, Lc4/u;

    .line 1281
    .line 1282
    move-object/from16 v20, v3

    .line 1283
    .line 1284
    goto :goto_10

    .line 1285
    :pswitch_47
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 1286
    .line 1287
    .line 1288
    move-result-object v3

    .line 1289
    move-object/from16 v19, v3

    .line 1290
    .line 1291
    goto :goto_10

    .line 1292
    :pswitch_48
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    .line 1293
    .line 1294
    .line 1295
    move-result v3

    .line 1296
    move/from16 v18, v3

    .line 1297
    .line 1298
    goto :goto_10

    .line 1299
    :pswitch_49
    invoke-static {v3, v1}, Lf/b;->E(ILandroid/os/Parcel;)J

    .line 1300
    .line 1301
    .line 1302
    move-result-wide v3

    .line 1303
    move-wide/from16 v16, v3

    .line 1304
    .line 1305
    goto :goto_10

    .line 1306
    :pswitch_4a
    sget-object v4, Lc4/F1;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1307
    .line 1308
    invoke-static {v1, v3, v4}, Lf/b;->m(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 1309
    .line 1310
    .line 1311
    move-result-object v3

    .line 1312
    check-cast v3, Lc4/F1;

    .line 1313
    .line 1314
    move-object v15, v3

    .line 1315
    goto :goto_10

    .line 1316
    :pswitch_4b
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 1317
    .line 1318
    .line 1319
    move-result-object v3

    .line 1320
    move-object v14, v3

    .line 1321
    goto :goto_10

    .line 1322
    :pswitch_4c
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 1323
    .line 1324
    .line 1325
    move-result-object v3

    .line 1326
    move-object v13, v3

    .line 1327
    goto :goto_10

    .line 1328
    :cond_29
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 1329
    .line 1330
    .line 1331
    new-instance v1, Lc4/f;

    .line 1332
    .line 1333
    move-object v12, v1

    .line 1334
    invoke-direct/range {v12 .. v26}, Lc4/f;-><init>(Ljava/lang/String;Ljava/lang/String;Lc4/F1;JZLjava/lang/String;Lc4/u;JLc4/u;JLc4/u;)V

    .line 1335
    .line 1336
    .line 1337
    return-object v1

    .line 1338
    :pswitch_4d
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    .line 1339
    .line 1340
    .line 1341
    move-result v2

    .line 1342
    move-wide v13, v5

    .line 1343
    move-wide v15, v13

    .line 1344
    const/4 v12, 0x0

    .line 1345
    :goto_11
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 1346
    .line 1347
    .line 1348
    move-result v3

    .line 1349
    if-ge v3, v2, :cond_2d

    .line 1350
    .line 1351
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 1352
    .line 1353
    .line 1354
    move-result v3

    .line 1355
    int-to-char v4, v3

    .line 1356
    if-eq v4, v10, :cond_2c

    .line 1357
    .line 1358
    if-eq v4, v8, :cond_2b

    .line 1359
    .line 1360
    if-eq v4, v7, :cond_2a

    .line 1361
    .line 1362
    invoke-static {v3, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    .line 1363
    .line 1364
    .line 1365
    goto :goto_11

    .line 1366
    :cond_2a
    invoke-static {v3, v1}, Lf/b;->E(ILandroid/os/Parcel;)J

    .line 1367
    .line 1368
    .line 1369
    move-result-wide v3

    .line 1370
    move-wide v15, v3

    .line 1371
    goto :goto_11

    .line 1372
    :cond_2b
    invoke-static {v3, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    .line 1373
    .line 1374
    .line 1375
    move-result v3

    .line 1376
    move v12, v3

    .line 1377
    goto :goto_11

    .line 1378
    :cond_2c
    invoke-static {v3, v1}, Lf/b;->E(ILandroid/os/Parcel;)J

    .line 1379
    .line 1380
    .line 1381
    move-result-wide v3

    .line 1382
    move-wide v13, v3

    .line 1383
    goto :goto_11

    .line 1384
    :cond_2d
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 1385
    .line 1386
    .line 1387
    new-instance v1, Lc4/e;

    .line 1388
    .line 1389
    move-object v11, v1

    .line 1390
    invoke-direct/range {v11 .. v16}, Lc4/e;-><init>(IJJ)V

    .line 1391
    .line 1392
    .line 1393
    return-object v1

    .line 1394
    :pswitch_4e
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    .line 1395
    .line 1396
    .line 1397
    move-result v2

    .line 1398
    move-object v3, v11

    .line 1399
    :goto_12
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 1400
    .line 1401
    .line 1402
    move-result v4

    .line 1403
    if-ge v4, v2, :cond_31

    .line 1404
    .line 1405
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 1406
    .line 1407
    .line 1408
    move-result v4

    .line 1409
    int-to-char v5, v4

    .line 1410
    if-eq v5, v10, :cond_30

    .line 1411
    .line 1412
    if-eq v5, v8, :cond_2f

    .line 1413
    .line 1414
    if-eq v5, v7, :cond_2e

    .line 1415
    .line 1416
    invoke-static {v4, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    .line 1417
    .line 1418
    .line 1419
    goto :goto_12

    .line 1420
    :cond_2e
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1421
    .line 1422
    invoke-static {v1, v4, v3}, Lf/b;->m(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    .line 1423
    .line 1424
    .line 1425
    move-result-object v3

    .line 1426
    check-cast v3, Landroid/content/Intent;

    .line 1427
    .line 1428
    goto :goto_12

    .line 1429
    :cond_2f
    invoke-static {v4, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 1430
    .line 1431
    .line 1432
    move-result-object v11

    .line 1433
    goto :goto_12

    .line 1434
    :cond_30
    invoke-static {v4, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    .line 1435
    .line 1436
    .line 1437
    move-result v9

    .line 1438
    goto :goto_12

    .line 1439
    :cond_31
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 1440
    .line 1441
    .line 1442
    new-instance v1, Lcom/google/android/gms/internal/measurement/W;

    .line 1443
    .line 1444
    invoke-direct {v1, v9, v11, v3}, Lcom/google/android/gms/internal/measurement/W;-><init>(ILjava/lang/String;Landroid/content/Intent;)V

    .line 1445
    .line 1446
    .line 1447
    return-object v1

    .line 1448
    :pswitch_4f
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    .line 1449
    .line 1450
    .line 1451
    move-result v2

    .line 1452
    move-wide v13, v5

    .line 1453
    move-wide v15, v13

    .line 1454
    move-object/from16 v18, v11

    .line 1455
    .line 1456
    move-object/from16 v19, v18

    .line 1457
    .line 1458
    move-object/from16 v20, v19

    .line 1459
    .line 1460
    move-object/from16 v21, v20

    .line 1461
    .line 1462
    move-object/from16 v22, v21

    .line 1463
    .line 1464
    const/16 v17, 0x0

    .line 1465
    .line 1466
    :goto_13
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 1467
    .line 1468
    .line 1469
    move-result v3

    .line 1470
    if-ge v3, v2, :cond_32

    .line 1471
    .line 1472
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 1473
    .line 1474
    .line 1475
    move-result v3

    .line 1476
    int-to-char v4, v3

    .line 1477
    packed-switch v4, :pswitch_data_5

    .line 1478
    .line 1479
    .line 1480
    invoke-static {v3, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    .line 1481
    .line 1482
    .line 1483
    goto :goto_13

    .line 1484
    :pswitch_50
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 1485
    .line 1486
    .line 1487
    move-result-object v3

    .line 1488
    move-object/from16 v22, v3

    .line 1489
    .line 1490
    goto :goto_13

    .line 1491
    :pswitch_51
    invoke-static {v3, v1}, Lf/b;->g(ILandroid/os/Parcel;)Landroid/os/Bundle;

    .line 1492
    .line 1493
    .line 1494
    move-result-object v3

    .line 1495
    move-object/from16 v21, v3

    .line 1496
    .line 1497
    goto :goto_13

    .line 1498
    :pswitch_52
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 1499
    .line 1500
    .line 1501
    move-result-object v3

    .line 1502
    move-object/from16 v20, v3

    .line 1503
    .line 1504
    goto :goto_13

    .line 1505
    :pswitch_53
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 1506
    .line 1507
    .line 1508
    move-result-object v3

    .line 1509
    move-object/from16 v19, v3

    .line 1510
    .line 1511
    goto :goto_13

    .line 1512
    :pswitch_54
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 1513
    .line 1514
    .line 1515
    move-result-object v3

    .line 1516
    move-object/from16 v18, v3

    .line 1517
    .line 1518
    goto :goto_13

    .line 1519
    :pswitch_55
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    .line 1520
    .line 1521
    .line 1522
    move-result v3

    .line 1523
    move/from16 v17, v3

    .line 1524
    .line 1525
    goto :goto_13

    .line 1526
    :pswitch_56
    invoke-static {v3, v1}, Lf/b;->E(ILandroid/os/Parcel;)J

    .line 1527
    .line 1528
    .line 1529
    move-result-wide v3

    .line 1530
    move-wide v15, v3

    .line 1531
    goto :goto_13

    .line 1532
    :pswitch_57
    invoke-static {v3, v1}, Lf/b;->E(ILandroid/os/Parcel;)J

    .line 1533
    .line 1534
    .line 1535
    move-result-wide v3

    .line 1536
    move-wide v13, v3

    .line 1537
    goto :goto_13

    .line 1538
    :cond_32
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 1539
    .line 1540
    .line 1541
    new-instance v1, Lcom/google/android/gms/internal/measurement/V;

    .line 1542
    .line 1543
    move-object v12, v1

    .line 1544
    invoke-direct/range {v12 .. v22}, Lcom/google/android/gms/internal/measurement/V;-><init>(JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 1545
    .line 1546
    .line 1547
    return-object v1

    .line 1548
    :pswitch_58
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    .line 1549
    .line 1550
    .line 1551
    move-result v2

    .line 1552
    move-object v5, v11

    .line 1553
    const/4 v3, 0x0

    .line 1554
    :goto_14
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 1555
    .line 1556
    .line 1557
    move-result v6

    .line 1558
    if-ge v6, v2, :cond_37

    .line 1559
    .line 1560
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 1561
    .line 1562
    .line 1563
    move-result v6

    .line 1564
    int-to-char v12, v6

    .line 1565
    if-eq v12, v10, :cond_36

    .line 1566
    .line 1567
    if-eq v12, v8, :cond_35

    .line 1568
    .line 1569
    if-eq v12, v7, :cond_34

    .line 1570
    .line 1571
    if-eq v12, v4, :cond_33

    .line 1572
    .line 1573
    invoke-static {v6, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    .line 1574
    .line 1575
    .line 1576
    goto :goto_14

    .line 1577
    :cond_33
    invoke-static {v6, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    .line 1578
    .line 1579
    .line 1580
    move-result v3

    .line 1581
    goto :goto_14

    .line 1582
    :cond_34
    invoke-static {v6, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    .line 1583
    .line 1584
    .line 1585
    move-result v9

    .line 1586
    goto :goto_14

    .line 1587
    :cond_35
    invoke-static {v6, v1}, Lf/b;->C(ILandroid/os/Parcel;)Landroid/os/IBinder;

    .line 1588
    .line 1589
    .line 1590
    move-result-object v5

    .line 1591
    goto :goto_14

    .line 1592
    :cond_36
    invoke-static {v6, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 1593
    .line 1594
    .line 1595
    move-result-object v11

    .line 1596
    goto :goto_14

    .line 1597
    :cond_37
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 1598
    .line 1599
    .line 1600
    new-instance v1, LJ3/x;

    .line 1601
    .line 1602
    invoke-direct {v1, v11, v5, v9, v3}, LJ3/x;-><init>(Ljava/lang/String;Landroid/os/IBinder;ZZ)V

    .line 1603
    .line 1604
    .line 1605
    return-object v1

    .line 1606
    :pswitch_59
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    .line 1607
    .line 1608
    .line 1609
    move-result v2

    .line 1610
    const/4 v3, 0x0

    .line 1611
    const/4 v5, 0x0

    .line 1612
    :goto_15
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 1613
    .line 1614
    .line 1615
    move-result v6

    .line 1616
    if-ge v6, v2, :cond_3c

    .line 1617
    .line 1618
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 1619
    .line 1620
    .line 1621
    move-result v6

    .line 1622
    int-to-char v12, v6

    .line 1623
    if-eq v12, v10, :cond_3b

    .line 1624
    .line 1625
    if-eq v12, v8, :cond_3a

    .line 1626
    .line 1627
    if-eq v12, v7, :cond_39

    .line 1628
    .line 1629
    if-eq v12, v4, :cond_38

    .line 1630
    .line 1631
    invoke-static {v6, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    .line 1632
    .line 1633
    .line 1634
    goto :goto_15

    .line 1635
    :cond_38
    invoke-static {v6, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    .line 1636
    .line 1637
    .line 1638
    move-result v5

    .line 1639
    goto :goto_15

    .line 1640
    :cond_39
    invoke-static {v6, v1}, Lf/b;->D(ILandroid/os/Parcel;)I

    .line 1641
    .line 1642
    .line 1643
    move-result v3

    .line 1644
    goto :goto_15

    .line 1645
    :cond_3a
    invoke-static {v6, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 1646
    .line 1647
    .line 1648
    move-result-object v11

    .line 1649
    goto :goto_15

    .line 1650
    :cond_3b
    invoke-static {v6, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    .line 1651
    .line 1652
    .line 1653
    move-result v9

    .line 1654
    goto :goto_15

    .line 1655
    :cond_3c
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 1656
    .line 1657
    .line 1658
    new-instance v1, LJ3/w;

    .line 1659
    .line 1660
    invoke-direct {v1, v11, v3, v5, v9}, LJ3/w;-><init>(Ljava/lang/String;IIZ)V

    .line 1661
    .line 1662
    .line 1663
    return-object v1

    .line 1664
    :pswitch_5a
    invoke-static/range {p1 .. p1}, Lf/b;->H(Landroid/os/Parcel;)I

    .line 1665
    .line 1666
    .line 1667
    move-result v2

    .line 1668
    move-object v13, v11

    .line 1669
    move-object/from16 v16, v13

    .line 1670
    .line 1671
    const/4 v14, 0x0

    .line 1672
    const/4 v15, 0x0

    .line 1673
    const/16 v17, 0x0

    .line 1674
    .line 1675
    const/16 v18, 0x0

    .line 1676
    .line 1677
    :goto_16
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->dataPosition()I

    .line 1678
    .line 1679
    .line 1680
    move-result v3

    .line 1681
    if-ge v3, v2, :cond_3d

    .line 1682
    .line 1683
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    .line 1684
    .line 1685
    .line 1686
    move-result v3

    .line 1687
    int-to-char v4, v3

    .line 1688
    packed-switch v4, :pswitch_data_6

    .line 1689
    .line 1690
    .line 1691
    invoke-static {v3, v1}, Lf/b;->G(ILandroid/os/Parcel;)V

    .line 1692
    .line 1693
    .line 1694
    goto :goto_16

    .line 1695
    :pswitch_5b
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    .line 1696
    .line 1697
    .line 1698
    move-result v18

    .line 1699
    goto :goto_16

    .line 1700
    :pswitch_5c
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    .line 1701
    .line 1702
    .line 1703
    move-result v17

    .line 1704
    goto :goto_16

    .line 1705
    :pswitch_5d
    invoke-static {v3, v1}, Lf/b;->C(ILandroid/os/Parcel;)Landroid/os/IBinder;

    .line 1706
    .line 1707
    .line 1708
    move-result-object v16

    .line 1709
    goto :goto_16

    .line 1710
    :pswitch_5e
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    .line 1711
    .line 1712
    .line 1713
    move-result v15

    .line 1714
    goto :goto_16

    .line 1715
    :pswitch_5f
    invoke-static {v3, v1}, Lf/b;->y(ILandroid/os/Parcel;)Z

    .line 1716
    .line 1717
    .line 1718
    move-result v14

    .line 1719
    goto :goto_16

    .line 1720
    :pswitch_60
    invoke-static {v3, v1}, Lf/b;->n(ILandroid/os/Parcel;)Ljava/lang/String;

    .line 1721
    .line 1722
    .line 1723
    move-result-object v13

    .line 1724
    goto :goto_16

    .line 1725
    :cond_3d
    invoke-static {v2, v1}, Lf/b;->t(ILandroid/os/Parcel;)V

    .line 1726
    .line 1727
    .line 1728
    new-instance v1, LJ3/u;

    .line 1729
    .line 1730
    move-object v12, v1

    .line 1731
    invoke-direct/range {v12 .. v18}, LJ3/u;-><init>(Ljava/lang/String;ZZLandroid/os/IBinder;ZZ)V

    .line 1732
    .line 1733
    .line 1734
    return-object v1

    .line 1735
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_2a
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1736
    .line 1737
    .line 1738
    .line 1739
    .line 1740
    .line 1741
    .line 1742
    .line 1743
    .line 1744
    .line 1745
    .line 1746
    .line 1747
    .line 1748
    .line 1749
    .line 1750
    .line 1751
    .line 1752
    .line 1753
    .line 1754
    .line 1755
    .line 1756
    .line 1757
    .line 1758
    .line 1759
    .line 1760
    .line 1761
    .line 1762
    .line 1763
    .line 1764
    .line 1765
    .line 1766
    .line 1767
    .line 1768
    .line 1769
    .line 1770
    .line 1771
    .line 1772
    .line 1773
    .line 1774
    .line 1775
    .line 1776
    .line 1777
    .line 1778
    .line 1779
    .line 1780
    .line 1781
    .line 1782
    .line 1783
    .line 1784
    .line 1785
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_8
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_8
        :pswitch_1b
        :pswitch_1a
        :pswitch_8
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_8
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    .line 1786
    .line 1787
    .line 1788
    .line 1789
    .line 1790
    .line 1791
    .line 1792
    .line 1793
    .line 1794
    .line 1795
    .line 1796
    .line 1797
    .line 1798
    .line 1799
    .line 1800
    .line 1801
    .line 1802
    .line 1803
    .line 1804
    .line 1805
    .line 1806
    .line 1807
    .line 1808
    .line 1809
    .line 1810
    .line 1811
    .line 1812
    .line 1813
    .line 1814
    .line 1815
    .line 1816
    .line 1817
    .line 1818
    .line 1819
    .line 1820
    .line 1821
    .line 1822
    .line 1823
    .line 1824
    .line 1825
    .line 1826
    .line 1827
    .line 1828
    .line 1829
    .line 1830
    .line 1831
    .line 1832
    .line 1833
    .line 1834
    .line 1835
    .line 1836
    .line 1837
    .line 1838
    .line 1839
    .line 1840
    .line 1841
    .line 1842
    .line 1843
    .line 1844
    .line 1845
    .line 1846
    .line 1847
    .line 1848
    .line 1849
    .line 1850
    .line 1851
    .line 1852
    .line 1853
    .line 1854
    .line 1855
    .line 1856
    .line 1857
    .line 1858
    .line 1859
    .line 1860
    .line 1861
    .line 1862
    .line 1863
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
    .end packed-switch

    .line 1864
    .line 1865
    .line 1866
    .line 1867
    .line 1868
    .line 1869
    .line 1870
    .line 1871
    .line 1872
    .line 1873
    .line 1874
    .line 1875
    .line 1876
    .line 1877
    .line 1878
    .line 1879
    .line 1880
    .line 1881
    .line 1882
    .line 1883
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
    .end packed-switch

    .line 1884
    .line 1885
    .line 1886
    .line 1887
    .line 1888
    .line 1889
    .line 1890
    .line 1891
    .line 1892
    .line 1893
    .line 1894
    .line 1895
    .line 1896
    .line 1897
    .line 1898
    .line 1899
    .line 1900
    .line 1901
    :pswitch_data_4
    .packed-switch 0x2
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
    .end packed-switch

    .line 1902
    .line 1903
    .line 1904
    .line 1905
    .line 1906
    .line 1907
    .line 1908
    .line 1909
    .line 1910
    .line 1911
    .line 1912
    .line 1913
    .line 1914
    .line 1915
    .line 1916
    .line 1917
    .line 1918
    .line 1919
    .line 1920
    .line 1921
    .line 1922
    .line 1923
    .line 1924
    .line 1925
    .line 1926
    .line 1927
    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
    .end packed-switch

    .line 1928
    .line 1929
    .line 1930
    .line 1931
    .line 1932
    .line 1933
    .line 1934
    .line 1935
    .line 1936
    .line 1937
    .line 1938
    .line 1939
    .line 1940
    .line 1941
    .line 1942
    .line 1943
    .line 1944
    .line 1945
    .line 1946
    .line 1947
    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
    .end packed-switch
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, LJ3/v;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-array p1, p1, [LW5/a;

    .line 7
    .line 8
    return-object p1

    .line 9
    :pswitch_0
    new-array p1, p1, [LR5/b;

    .line 10
    .line 11
    return-object p1

    .line 12
    :pswitch_1
    new-array p1, p1, [Lt4/d;

    .line 13
    .line 14
    return-object p1

    .line 15
    :pswitch_2
    new-array p1, p1, [Lt4/c;

    .line 16
    .line 17
    return-object p1

    .line 18
    :pswitch_3
    new-array p1, p1, [Lf4/i;

    .line 19
    .line 20
    return-object p1

    .line 21
    :pswitch_4
    new-array p1, p1, [Lf4/h;

    .line 22
    .line 23
    return-object p1

    .line 24
    :pswitch_5
    new-array p1, p1, [Lf4/g;

    .line 25
    .line 26
    return-object p1

    .line 27
    :pswitch_6
    new-array p1, p1, [Lf4/b;

    .line 28
    .line 29
    return-object p1

    .line 30
    :pswitch_7
    new-array p1, p1, [Lc4/J1;

    .line 31
    .line 32
    return-object p1

    .line 33
    :pswitch_8
    new-array p1, p1, [Lc4/F1;

    .line 34
    .line 35
    return-object p1

    .line 36
    :pswitch_9
    new-array p1, p1, [Lc4/t1;

    .line 37
    .line 38
    return-object p1

    .line 39
    :pswitch_a
    new-array p1, p1, [Lc4/s1;

    .line 40
    .line 41
    return-object p1

    .line 42
    :pswitch_b
    new-array p1, p1, [Lc4/r1;

    .line 43
    .line 44
    return-object p1

    .line 45
    :pswitch_c
    new-array p1, p1, [Lc4/o1;

    .line 46
    .line 47
    return-object p1

    .line 48
    :pswitch_d
    new-array p1, p1, [Lc4/u;

    .line 49
    .line 50
    return-object p1

    .line 51
    :pswitch_e
    new-array p1, p1, [Lc4/t;

    .line 52
    .line 53
    return-object p1

    .line 54
    :pswitch_f
    new-array p1, p1, [Lc4/j;

    .line 55
    .line 56
    return-object p1

    .line 57
    :pswitch_10
    new-array p1, p1, [Lc4/f;

    .line 58
    .line 59
    return-object p1

    .line 60
    :pswitch_11
    new-array p1, p1, [Lc4/e;

    .line 61
    .line 62
    return-object p1

    .line 63
    :pswitch_12
    new-array p1, p1, [Lcom/google/android/gms/internal/measurement/W;

    .line 64
    .line 65
    return-object p1

    .line 66
    :pswitch_13
    new-array p1, p1, [Lcom/google/android/gms/internal/measurement/V;

    .line 67
    .line 68
    return-object p1

    .line 69
    :pswitch_14
    new-array p1, p1, [LJ3/x;

    .line 70
    .line 71
    return-object p1

    .line 72
    :pswitch_15
    new-array p1, p1, [LJ3/w;

    .line 73
    .line 74
    return-object p1

    .line 75
    :pswitch_16
    new-array p1, p1, [LJ3/u;

    .line 76
    .line 77
    return-object p1

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
