.class public final Lcom/google/android/gms/internal/ads/y0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/L;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/jr;

.field public b:Lcom/google/android/gms/internal/ads/N;

.field public c:I

.field public d:I

.field public e:I

.field public f:J

.field public g:Lcom/google/android/gms/internal/ads/W0;

.field public h:Lcom/google/android/gms/internal/ads/M;

.field public i:Lcom/google/android/gms/internal/ads/B0;

.field public j:Lcom/google/android/gms/internal/ads/A1;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/jr;

    .line 5
    .line 6
    const/4 v1, 0x6

    .line 7
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/jr;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/y0;->a:Lcom/google/android/gms/internal/ads/jr;

    .line 11
    .line 12
    const-wide/16 v0, -0x1

    .line 13
    .line 14
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/y0;->f:J

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/M;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/y0;->a:Lcom/google/android/gms/internal/ads/jr;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/jr;->g(I)V

    .line 5
    .line 6
    .line 7
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 8
    .line 9
    check-cast p1, Lcom/google/android/gms/internal/ads/F;

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-virtual {p1, v2, v3, v1, v3}, Lcom/google/android/gms/internal/ads/F;->d([BIIZ)Z

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jr;->A()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method public final b()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/y0;->b:Lcom/google/android/gms/internal/ads/N;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/N;->f()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/y0;->b:Lcom/google/android/gms/internal/ads/N;

    .line 10
    .line 11
    new-instance v1, Lcom/google/android/gms/internal/ads/P;

    .line 12
    .line 13
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    const-wide/16 v4, 0x0

    .line 19
    .line 20
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/P;-><init>(JJ)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/N;->g(Lcom/google/android/gms/internal/ads/Y;)V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x6

    .line 27
    iput v0, p0, Lcom/google/android/gms/internal/ads/y0;->c:I

    .line 28
    .line 29
    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/ads/M;LW0/w;)I
    .locals 29

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const/4 v3, -0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x1

    .line 10
    iget v6, v0, Lcom/google/android/gms/internal/ads/y0;->c:I

    .line 11
    .line 12
    const/4 v7, 0x4

    .line 13
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/y0;->a:Lcom/google/android/gms/internal/ads/jr;

    .line 14
    .line 15
    const-wide/16 v9, -0x1

    .line 16
    .line 17
    const/4 v11, 0x2

    .line 18
    if-eqz v6, :cond_25

    .line 19
    .line 20
    if-eq v6, v5, :cond_24

    .line 21
    .line 22
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    if-eq v6, v11, :cond_a

    .line 28
    .line 29
    const/4 v9, 0x5

    .line 30
    if-eq v6, v7, :cond_5

    .line 31
    .line 32
    if-eq v6, v9, :cond_1

    .line 33
    .line 34
    const/4 v1, 0x6

    .line 35
    if-ne v6, v1, :cond_0

    .line 36
    .line 37
    return v3

    .line 38
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 39
    .line 40
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 41
    .line 42
    .line 43
    throw v1

    .line 44
    :cond_1
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/y0;->i:Lcom/google/android/gms/internal/ads/B0;

    .line 45
    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/y0;->h:Lcom/google/android/gms/internal/ads/M;

    .line 49
    .line 50
    if-eq v1, v3, :cond_3

    .line 51
    .line 52
    :cond_2
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/y0;->h:Lcom/google/android/gms/internal/ads/M;

    .line 53
    .line 54
    new-instance v3, Lcom/google/android/gms/internal/ads/B0;

    .line 55
    .line 56
    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/y0;->f:J

    .line 57
    .line 58
    invoke-direct {v3, v1, v6, v7}, Lcom/google/android/gms/internal/ads/B0;-><init>(Lcom/google/android/gms/internal/ads/M;J)V

    .line 59
    .line 60
    .line 61
    iput-object v3, v0, Lcom/google/android/gms/internal/ads/y0;->i:Lcom/google/android/gms/internal/ads/B0;

    .line 62
    .line 63
    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/y0;->j:Lcom/google/android/gms/internal/ads/A1;

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    .line 67
    .line 68
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/y0;->i:Lcom/google/android/gms/internal/ads/B0;

    .line 69
    .line 70
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/ads/A1;->c(Lcom/google/android/gms/internal/ads/M;LW0/w;)I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-ne v1, v5, :cond_4

    .line 75
    .line 76
    iget-wide v3, v2, LW0/w;->a:J

    .line 77
    .line 78
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/y0;->f:J

    .line 79
    .line 80
    add-long/2addr v3, v5

    .line 81
    iput-wide v3, v2, LW0/w;->a:J

    .line 82
    .line 83
    :cond_4
    return v1

    .line 84
    :cond_5
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzf()J

    .line 85
    .line 86
    .line 87
    move-result-wide v10

    .line 88
    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/y0;->f:J

    .line 89
    .line 90
    cmp-long v3, v10, v14

    .line 91
    .line 92
    if-nez v3, :cond_9

    .line 93
    .line 94
    iget-object v2, v8, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 95
    .line 96
    invoke-interface {v1, v2, v4, v5, v5}, Lcom/google/android/gms/internal/ads/M;->d([BIIZ)Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-nez v2, :cond_6

    .line 101
    .line 102
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/y0;->b()V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_6
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzj()V

    .line 107
    .line 108
    .line 109
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/y0;->j:Lcom/google/android/gms/internal/ads/A1;

    .line 110
    .line 111
    if-nez v2, :cond_7

    .line 112
    .line 113
    new-instance v2, Lcom/google/android/gms/internal/ads/A1;

    .line 114
    .line 115
    sget-object v3, Lcom/google/android/gms/internal/ads/V1;->o:Lcom/google/android/gms/internal/ads/kH;

    .line 116
    .line 117
    const/16 v6, 0x8

    .line 118
    .line 119
    invoke-direct {v2, v6, v3}, Lcom/google/android/gms/internal/ads/A1;-><init>(ILcom/google/android/gms/internal/ads/kH;)V

    .line 120
    .line 121
    .line 122
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/y0;->j:Lcom/google/android/gms/internal/ads/A1;

    .line 123
    .line 124
    :cond_7
    new-instance v2, Lcom/google/android/gms/internal/ads/B0;

    .line 125
    .line 126
    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/y0;->f:J

    .line 127
    .line 128
    invoke-direct {v2, v1, v10, v11}, Lcom/google/android/gms/internal/ads/B0;-><init>(Lcom/google/android/gms/internal/ads/M;J)V

    .line 129
    .line 130
    .line 131
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/y0;->i:Lcom/google/android/gms/internal/ads/B0;

    .line 132
    .line 133
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/y0;->j:Lcom/google/android/gms/internal/ads/A1;

    .line 134
    .line 135
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/A1;->d(Lcom/google/android/gms/internal/ads/M;)Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-eqz v1, :cond_8

    .line 140
    .line 141
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/y0;->j:Lcom/google/android/gms/internal/ads/A1;

    .line 142
    .line 143
    new-instance v2, Lcom/google/android/gms/internal/ads/D0;

    .line 144
    .line 145
    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/y0;->f:J

    .line 146
    .line 147
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/y0;->b:Lcom/google/android/gms/internal/ads/N;

    .line 148
    .line 149
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    invoke-direct {v2, v10, v11, v3}, Lcom/google/android/gms/internal/ads/D0;-><init>(JLcom/google/android/gms/internal/ads/N;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/A1;->f(Lcom/google/android/gms/internal/ads/N;)V

    .line 156
    .line 157
    .line 158
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/y0;->g:Lcom/google/android/gms/internal/ads/W0;

    .line 159
    .line 160
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/y0;->b:Lcom/google/android/gms/internal/ads/N;

    .line 164
    .line 165
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    .line 167
    .line 168
    const/16 v3, 0x400

    .line 169
    .line 170
    invoke-interface {v2, v3, v7}, Lcom/google/android/gms/internal/ads/N;->h(II)Lcom/google/android/gms/internal/ads/e0;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    new-instance v3, Lcom/google/android/gms/internal/ads/K;

    .line 175
    .line 176
    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/K;-><init>()V

    .line 177
    .line 178
    .line 179
    const-string v6, "image/jpeg"

    .line 180
    .line 181
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/va;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v6

    .line 185
    iput-object v6, v3, Lcom/google/android/gms/internal/ads/K;->k:Ljava/lang/String;

    .line 186
    .line 187
    new-instance v6, Lcom/google/android/gms/internal/ads/Q9;

    .line 188
    .line 189
    new-array v5, v5, [Lcom/google/android/gms/internal/ads/K9;

    .line 190
    .line 191
    aput-object v1, v5, v4

    .line 192
    .line 193
    invoke-direct {v6, v12, v13, v5}, Lcom/google/android/gms/internal/ads/Q9;-><init>(J[Lcom/google/android/gms/internal/ads/K9;)V

    .line 194
    .line 195
    .line 196
    iput-object v6, v3, Lcom/google/android/gms/internal/ads/K;->j:Lcom/google/android/gms/internal/ads/Q9;

    .line 197
    .line 198
    new-instance v1, Lcom/google/android/gms/internal/ads/p0;

    .line 199
    .line 200
    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/ads/p0;-><init>(Lcom/google/android/gms/internal/ads/K;)V

    .line 201
    .line 202
    .line 203
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/e0;->d(Lcom/google/android/gms/internal/ads/p0;)V

    .line 204
    .line 205
    .line 206
    iput v9, v0, Lcom/google/android/gms/internal/ads/y0;->c:I

    .line 207
    .line 208
    goto :goto_0

    .line 209
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/y0;->b()V

    .line 210
    .line 211
    .line 212
    :goto_0
    return v4

    .line 213
    :cond_9
    iput-wide v14, v2, LW0/w;->a:J

    .line 214
    .line 215
    return v5

    .line 216
    :cond_a
    iget v2, v0, Lcom/google/android/gms/internal/ads/y0;->d:I

    .line 217
    .line 218
    const v6, 0xffe1

    .line 219
    .line 220
    .line 221
    if-ne v2, v6, :cond_23

    .line 222
    .line 223
    new-instance v2, Lcom/google/android/gms/internal/ads/jr;

    .line 224
    .line 225
    iget v6, v0, Lcom/google/android/gms/internal/ads/y0;->e:I

    .line 226
    .line 227
    invoke-direct {v2, v6}, Lcom/google/android/gms/internal/ads/jr;-><init>(I)V

    .line 228
    .line 229
    .line 230
    iget-object v6, v2, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 231
    .line 232
    iget v8, v0, Lcom/google/android/gms/internal/ads/y0;->e:I

    .line 233
    .line 234
    invoke-interface {v1, v4, v6, v8}, Lcom/google/android/gms/internal/ads/M;->h(I[BI)V

    .line 235
    .line 236
    .line 237
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/y0;->g:Lcom/google/android/gms/internal/ads/W0;

    .line 238
    .line 239
    if-nez v6, :cond_22

    .line 240
    .line 241
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/jr;->H()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v6

    .line 245
    const-string v8, "http://ns.adobe.com/xap/1.0/"

    .line 246
    .line 247
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v6

    .line 251
    if-eqz v6, :cond_22

    .line 252
    .line 253
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/jr;->H()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v2

    .line 257
    if-eqz v2, :cond_22

    .line 258
    .line 259
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/M;->zzd()J

    .line 260
    .line 261
    .line 262
    move-result-wide v14

    .line 263
    const/4 v1, 0x0

    .line 264
    cmp-long v6, v14, v9

    .line 265
    .line 266
    if-nez v6, :cond_b

    .line 267
    .line 268
    goto/16 :goto_c

    .line 269
    .line 270
    :cond_b
    const-string v6, "x:xmpmeta"

    .line 271
    .line 272
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 273
    .line 274
    .line 275
    move-result-object v8

    .line 276
    invoke-virtual {v8}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 277
    .line 278
    .line 279
    move-result-object v8

    .line 280
    new-instance v12, Ljava/io/StringReader;

    .line 281
    .line 282
    invoke-direct {v12, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    invoke-interface {v8, v12}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 286
    .line 287
    .line 288
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 289
    .line 290
    .line 291
    invoke-static {v8, v6}, LU4/a;->s(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 292
    .line 293
    .line 294
    move-result v2

    .line 295
    if-eqz v2, :cond_17

    .line 296
    .line 297
    sget-object v2, Lcom/google/android/gms/internal/ads/uA;->H:Lcom/google/android/gms/internal/ads/sA;

    .line 298
    .line 299
    sget-object v2, Lcom/google/android/gms/internal/ads/PA;->K:Lcom/google/android/gms/internal/ads/PA;

    .line 300
    .line 301
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    .line 302
    .line 303
    .line 304
    .line 305
    .line 306
    :goto_1
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 307
    .line 308
    .line 309
    const-string v4, "rdf:Description"

    .line 310
    .line 311
    invoke-static {v8, v4}, LU4/a;->s(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 312
    .line 313
    .line 314
    move-result v4

    .line 315
    if-nez v4, :cond_d

    .line 316
    .line 317
    const-string v4, "Container:Directory"

    .line 318
    .line 319
    invoke-static {v8, v4}, LU4/a;->s(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 320
    .line 321
    .line 322
    move-result v4

    .line 323
    if-eqz v4, :cond_c

    .line 324
    .line 325
    const-string v2, "Container"

    .line 326
    .line 327
    const-string v4, "Item"

    .line 328
    .line 329
    invoke-static {v8, v2, v4}, Lcom/google/android/gms/internal/ads/nH;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/PA;

    .line 330
    .line 331
    .line 332
    move-result-object v2

    .line 333
    goto/16 :goto_6

    .line 334
    .line 335
    :cond_c
    const-string v4, "GContainer:Directory"

    .line 336
    .line 337
    invoke-static {v8, v4}, LU4/a;->s(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 338
    .line 339
    .line 340
    move-result v4

    .line 341
    if-eqz v4, :cond_13

    .line 342
    .line 343
    const-string v2, "GContainer"

    .line 344
    .line 345
    const-string v4, "GContainerItem"

    .line 346
    .line 347
    invoke-static {v8, v2, v4}, Lcom/google/android/gms/internal/ads/nH;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/PA;

    .line 348
    .line 349
    .line 350
    move-result-object v2

    .line 351
    goto :goto_6

    .line 352
    :cond_d
    sget-object v2, Lcom/google/android/gms/internal/ads/nH;->z:[Ljava/lang/String;

    .line 353
    .line 354
    const/4 v4, 0x0

    .line 355
    :goto_2
    if-ge v4, v7, :cond_18

    .line 356
    .line 357
    aget-object v12, v2, v4

    .line 358
    .line 359
    invoke-static {v8, v12}, LU4/a;->k(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v12

    .line 363
    if-eqz v12, :cond_16

    .line 364
    .line 365
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 366
    .line 367
    .line 368
    move-result v2

    .line 369
    if-ne v2, v5, :cond_18

    .line 370
    .line 371
    sget-object v2, Lcom/google/android/gms/internal/ads/nH;->A:[Ljava/lang/String;

    .line 372
    .line 373
    const/4 v4, 0x0

    .line 374
    :goto_3
    if-ge v4, v7, :cond_e

    .line 375
    .line 376
    aget-object v12, v2, v4

    .line 377
    .line 378
    invoke-static {v8, v12}, LU4/a;->k(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v12

    .line 382
    if-eqz v12, :cond_f

    .line 383
    .line 384
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 385
    .line 386
    .line 387
    move-result-wide v12

    .line 388
    cmp-long v2, v12, v9

    .line 389
    .line 390
    if-nez v2, :cond_10

    .line 391
    .line 392
    :cond_e
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    .line 393
    .line 394
    .line 395
    .line 396
    .line 397
    goto :goto_4

    .line 398
    :cond_f
    add-int/2addr v4, v5

    .line 399
    goto :goto_3

    .line 400
    :cond_10
    :goto_4
    sget-object v2, Lcom/google/android/gms/internal/ads/nH;->B:[Ljava/lang/String;

    .line 401
    .line 402
    const/4 v4, 0x0

    .line 403
    :goto_5
    if-ge v4, v11, :cond_12

    .line 404
    .line 405
    aget-object v7, v2, v4

    .line 406
    .line 407
    invoke-static {v8, v7}, LU4/a;->k(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v7

    .line 411
    if-eqz v7, :cond_11

    .line 412
    .line 413
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 414
    .line 415
    .line 416
    move-result-wide v19

    .line 417
    new-instance v2, Lcom/google/android/gms/internal/ads/z0;

    .line 418
    .line 419
    const-string v22, "image/jpeg"

    .line 420
    .line 421
    const-wide/16 v23, 0x0

    .line 422
    .line 423
    const-wide/16 v25, 0x0

    .line 424
    .line 425
    move-object/from16 v21, v2

    .line 426
    .line 427
    invoke-direct/range {v21 .. v26}, Lcom/google/android/gms/internal/ads/z0;-><init>(Ljava/lang/String;JJ)V

    .line 428
    .line 429
    .line 430
    new-instance v4, Lcom/google/android/gms/internal/ads/z0;

    .line 431
    .line 432
    const-string v18, "video/mp4"

    .line 433
    .line 434
    const-wide/16 v21, 0x0

    .line 435
    .line 436
    move-object/from16 v17, v4

    .line 437
    .line 438
    invoke-direct/range {v17 .. v22}, Lcom/google/android/gms/internal/ads/z0;-><init>(Ljava/lang/String;JJ)V

    .line 439
    .line 440
    .line 441
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/ads/uA;->x(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/PA;

    .line 442
    .line 443
    .line 444
    move-result-object v2

    .line 445
    goto :goto_6

    .line 446
    :cond_11
    add-int/2addr v4, v5

    .line 447
    const/4 v7, 0x4

    .line 448
    goto :goto_5

    .line 449
    :cond_12
    sget-object v2, Lcom/google/android/gms/internal/ads/PA;->K:Lcom/google/android/gms/internal/ads/PA;

    .line 450
    .line 451
    :cond_13
    :goto_6
    invoke-static {v8, v6}, LU4/a;->q(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    .line 452
    .line 453
    .line 454
    move-result v4

    .line 455
    if-eqz v4, :cond_15

    .line 456
    .line 457
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 458
    .line 459
    .line 460
    move-result v4

    .line 461
    if-eqz v4, :cond_14

    .line 462
    .line 463
    goto :goto_7

    .line 464
    :cond_14
    new-instance v4, Lcom/google/android/gms/internal/ads/A0;

    .line 465
    .line 466
    invoke-direct {v4, v12, v13, v2}, Lcom/google/android/gms/internal/ads/A0;-><init>(JLcom/google/android/gms/internal/ads/PA;)V

    .line 467
    .line 468
    .line 469
    goto :goto_8

    .line 470
    :cond_15
    const/4 v4, 0x0

    .line 471
    const/4 v7, 0x4

    .line 472
    goto/16 :goto_1

    .line 473
    .line 474
    :cond_16
    add-int/2addr v4, v5

    .line 475
    const/4 v7, 0x4

    .line 476
    goto :goto_2

    .line 477
    :cond_17
    const-string v2, "Couldn\'t find xmp metadata"

    .line 478
    .line 479
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/Ka;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lcom/google/android/gms/internal/ads/Ka;

    .line 480
    .line 481
    .line 482
    move-result-object v2

    .line 483
    throw v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/internal/ads/Ka; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    :catch_0
    const-string v2, "MotionPhotoXmpParser"

    .line 485
    .line 486
    const-string v4, "Ignoring unexpected XMP metadata"

    .line 487
    .line 488
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/ads/Zo;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    .line 490
    .line 491
    :cond_18
    :goto_7
    move-object v4, v1

    .line 492
    :goto_8
    if-nez v4, :cond_19

    .line 493
    .line 494
    goto/16 :goto_c

    .line 495
    .line 496
    :cond_19
    iget-object v2, v4, Lcom/google/android/gms/internal/ads/A0;->H:Ljava/lang/Object;

    .line 497
    .line 498
    check-cast v2, Ljava/util/List;

    .line 499
    .line 500
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 501
    .line 502
    .line 503
    move-result v5

    .line 504
    if-ge v5, v11, :cond_1a

    .line 505
    .line 506
    goto/16 :goto_c

    .line 507
    .line 508
    :cond_1a
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 509
    .line 510
    .line 511
    move-result v5

    .line 512
    add-int/2addr v5, v3

    .line 513
    move-wide/from16 v17, v9

    .line 514
    .line 515
    move-wide/from16 v19, v17

    .line 516
    .line 517
    move-wide/from16 v23, v19

    .line 518
    .line 519
    move-wide/from16 v25, v23

    .line 520
    .line 521
    const/4 v6, 0x0

    .line 522
    :goto_9
    if-ltz v5, :cond_1f

    .line 523
    .line 524
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 525
    .line 526
    .line 527
    move-result-object v7

    .line 528
    check-cast v7, Lcom/google/android/gms/internal/ads/z0;

    .line 529
    .line 530
    iget-object v8, v7, Lcom/google/android/gms/internal/ads/z0;->a:Ljava/lang/String;

    .line 531
    .line 532
    const-string v11, "video/mp4"

    .line 533
    .line 534
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 535
    .line 536
    .line 537
    move-result v8

    .line 538
    or-int/2addr v6, v8

    .line 539
    if-nez v5, :cond_1b

    .line 540
    .line 541
    iget-wide v7, v7, Lcom/google/android/gms/internal/ads/z0;->c:J

    .line 542
    .line 543
    sub-long/2addr v14, v7

    .line 544
    const-wide/16 v7, 0x0

    .line 545
    .line 546
    :goto_a
    move-wide/from16 v27, v7

    .line 547
    .line 548
    move-wide v7, v14

    .line 549
    move-wide/from16 v14, v27

    .line 550
    .line 551
    goto :goto_b

    .line 552
    :cond_1b
    iget-wide v7, v7, Lcom/google/android/gms/internal/ads/z0;->b:J

    .line 553
    .line 554
    sub-long v7, v14, v7

    .line 555
    .line 556
    goto :goto_a

    .line 557
    :goto_b
    if-eqz v6, :cond_1c

    .line 558
    .line 559
    cmp-long v11, v14, v7

    .line 560
    .line 561
    if-eqz v11, :cond_1c

    .line 562
    .line 563
    sub-long v25, v7, v14

    .line 564
    .line 565
    move-wide/from16 v23, v14

    .line 566
    .line 567
    const/4 v6, 0x0

    .line 568
    :cond_1c
    if-nez v5, :cond_1d

    .line 569
    .line 570
    move-wide/from16 v19, v7

    .line 571
    .line 572
    :cond_1d
    if-nez v5, :cond_1e

    .line 573
    .line 574
    move-wide/from16 v17, v14

    .line 575
    .line 576
    :cond_1e
    add-int/2addr v5, v3

    .line 577
    goto :goto_9

    .line 578
    :cond_1f
    cmp-long v2, v23, v9

    .line 579
    .line 580
    if-eqz v2, :cond_21

    .line 581
    .line 582
    cmp-long v2, v25, v9

    .line 583
    .line 584
    if-eqz v2, :cond_21

    .line 585
    .line 586
    cmp-long v2, v17, v9

    .line 587
    .line 588
    if-eqz v2, :cond_21

    .line 589
    .line 590
    cmp-long v2, v19, v9

    .line 591
    .line 592
    if-nez v2, :cond_20

    .line 593
    .line 594
    goto :goto_c

    .line 595
    :cond_20
    iget-wide v1, v4, Lcom/google/android/gms/internal/ads/A0;->G:J

    .line 596
    .line 597
    new-instance v3, Lcom/google/android/gms/internal/ads/W0;

    .line 598
    .line 599
    move-object/from16 v16, v3

    .line 600
    .line 601
    move-wide/from16 v21, v1

    .line 602
    .line 603
    invoke-direct/range {v16 .. v26}, Lcom/google/android/gms/internal/ads/W0;-><init>(JJJJJ)V

    .line 604
    .line 605
    .line 606
    move-object v1, v3

    .line 607
    :cond_21
    :goto_c
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/y0;->g:Lcom/google/android/gms/internal/ads/W0;

    .line 608
    .line 609
    if-eqz v1, :cond_22

    .line 610
    .line 611
    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/W0;->J:J

    .line 612
    .line 613
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/y0;->f:J

    .line 614
    .line 615
    :cond_22
    :goto_d
    const/4 v2, 0x0

    .line 616
    goto :goto_e

    .line 617
    :cond_23
    iget v2, v0, Lcom/google/android/gms/internal/ads/y0;->e:I

    .line 618
    .line 619
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/M;->q(I)V

    .line 620
    .line 621
    .line 622
    goto :goto_d

    .line 623
    :goto_e
    iput v2, v0, Lcom/google/android/gms/internal/ads/y0;->c:I

    .line 624
    .line 625
    return v2

    .line 626
    :cond_24
    const/4 v2, 0x0

    .line 627
    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/ads/jr;->g(I)V

    .line 628
    .line 629
    .line 630
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 631
    .line 632
    invoke-interface {v1, v2, v3, v11}, Lcom/google/android/gms/internal/ads/M;->h(I[BI)V

    .line 633
    .line 634
    .line 635
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/jr;->A()I

    .line 636
    .line 637
    .line 638
    move-result v1

    .line 639
    add-int/lit8 v1, v1, -0x2

    .line 640
    .line 641
    iput v1, v0, Lcom/google/android/gms/internal/ads/y0;->e:I

    .line 642
    .line 643
    iput v11, v0, Lcom/google/android/gms/internal/ads/y0;->c:I

    .line 644
    .line 645
    return v2

    .line 646
    :cond_25
    const/4 v2, 0x0

    .line 647
    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/ads/jr;->g(I)V

    .line 648
    .line 649
    .line 650
    iget-object v3, v8, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 651
    .line 652
    invoke-interface {v1, v2, v3, v11}, Lcom/google/android/gms/internal/ads/M;->h(I[BI)V

    .line 653
    .line 654
    .line 655
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/jr;->A()I

    .line 656
    .line 657
    .line 658
    move-result v1

    .line 659
    iput v1, v0, Lcom/google/android/gms/internal/ads/y0;->d:I

    .line 660
    .line 661
    const v2, 0xffda

    .line 662
    .line 663
    .line 664
    if-ne v1, v2, :cond_28

    .line 665
    .line 666
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/y0;->f:J

    .line 667
    .line 668
    cmp-long v3, v1, v9

    .line 669
    .line 670
    if-eqz v3, :cond_27

    .line 671
    .line 672
    const/4 v1, 0x4

    .line 673
    iput v1, v0, Lcom/google/android/gms/internal/ads/y0;->c:I

    .line 674
    .line 675
    :cond_26
    :goto_f
    const/4 v1, 0x0

    .line 676
    goto :goto_10

    .line 677
    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/y0;->b()V

    .line 678
    .line 679
    .line 680
    goto :goto_f

    .line 681
    :cond_28
    const v2, 0xffd0

    .line 682
    .line 683
    .line 684
    if-lt v1, v2, :cond_29

    .line 685
    .line 686
    const v2, 0xffd9

    .line 687
    .line 688
    .line 689
    if-le v1, v2, :cond_26

    .line 690
    .line 691
    :cond_29
    const v2, 0xff01

    .line 692
    .line 693
    .line 694
    if-eq v1, v2, :cond_26

    .line 695
    .line 696
    iput v5, v0, Lcom/google/android/gms/internal/ads/y0;->c:I

    .line 697
    .line 698
    goto :goto_f

    .line 699
    :goto_10
    return v1
.end method

.method public final d(Lcom/google/android/gms/internal/ads/M;)Z
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/y0;->a(Lcom/google/android/gms/internal/ads/M;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0xffd8

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    return v2

    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/y0;->a(Lcom/google/android/gms/internal/ads/M;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput v0, p0, Lcom/google/android/gms/internal/ads/y0;->d:I

    .line 17
    .line 18
    const v1, 0xffe0

    .line 19
    .line 20
    .line 21
    const/4 v3, 0x2

    .line 22
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/y0;->a:Lcom/google/android/gms/internal/ads/jr;

    .line 23
    .line 24
    if-ne v0, v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/jr;->g(I)V

    .line 27
    .line 28
    .line 29
    iget-object v0, v4, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 30
    .line 31
    move-object v1, p1

    .line 32
    check-cast v1, Lcom/google/android/gms/internal/ads/F;

    .line 33
    .line 34
    invoke-virtual {v1, v0, v2, v3, v2}, Lcom/google/android/gms/internal/ads/F;->d([BIIZ)Z

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/jr;->A()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    add-int/lit8 v0, v0, -0x2

    .line 42
    .line 43
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/F;->i(IZ)Z

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/y0;->a(Lcom/google/android/gms/internal/ads/M;)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    iput v0, p0, Lcom/google/android/gms/internal/ads/y0;->d:I

    .line 51
    .line 52
    :cond_1
    const v1, 0xffe1

    .line 53
    .line 54
    .line 55
    if-ne v0, v1, :cond_2

    .line 56
    .line 57
    check-cast p1, Lcom/google/android/gms/internal/ads/F;

    .line 58
    .line 59
    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/ads/F;->i(IZ)Z

    .line 60
    .line 61
    .line 62
    const/4 v0, 0x6

    .line 63
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/jr;->g(I)V

    .line 64
    .line 65
    .line 66
    iget-object v1, v4, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 67
    .line 68
    invoke-virtual {p1, v1, v2, v0, v2}, Lcom/google/android/gms/internal/ads/F;->d([BIIZ)Z

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/jr;->E()J

    .line 72
    .line 73
    .line 74
    move-result-wide v0

    .line 75
    const-wide/32 v5, 0x45786966    # 5.758429993E-315

    .line 76
    .line 77
    .line 78
    cmp-long p1, v0, v5

    .line 79
    .line 80
    if-nez p1, :cond_2

    .line 81
    .line 82
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/jr;->A()I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-nez p1, :cond_2

    .line 87
    .line 88
    const/4 p1, 0x1

    .line 89
    return p1

    .line 90
    :cond_2
    return v2
.end method

.method public final e(JJ)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p1, v0

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/google/android/gms/internal/ads/y0;->c:I

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/y0;->j:Lcom/google/android/gms/internal/ads/A1;

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/y0;->c:I

    .line 15
    .line 16
    const/4 v1, 0x5

    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/y0;->j:Lcom/google/android/gms/internal/ads/A1;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/A1;->e(JJ)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public final f(Lcom/google/android/gms/internal/ads/N;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/y0;->b:Lcom/google/android/gms/internal/ads/N;

    return-void
.end method

.method public final zzd()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/uA;->H:Lcom/google/android/gms/internal/ads/sA;

    .line 2
    .line 3
    sget-object v0, Lcom/google/android/gms/internal/ads/PA;->K:Lcom/google/android/gms/internal/ads/PA;

    .line 4
    .line 5
    return-object v0
.end method
