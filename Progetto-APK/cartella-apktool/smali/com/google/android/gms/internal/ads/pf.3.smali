.class public final Lcom/google/android/gms/internal/ads/pf;
.super Lcom/google/android/gms/internal/ads/Nz;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/DH;


# static fields
.field public static final t:Ljava/util/regex/Pattern;

.field public static final u:Ljava/util/concurrent/atomic/AtomicReference;


# instance fields
.field public final e:Lcom/google/android/gms/internal/ads/of;

.field public final f:I

.field public final g:I

.field public final h:Ljava/lang/String;

.field public final i:Lcom/google/android/gms/internal/ads/WD;

.field public j:Ljava/net/HttpURLConnection;

.field public k:Ljava/io/InputStream;

.field public l:Z

.field public m:I

.field public n:J

.field public o:J

.field public p:J

.field public q:J

.field public r:I

.field public final s:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "^bytes (\\d+)-(\\d+)/(\\d+)$"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/google/android/gms/internal/ads/pf;->t:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/google/android/gms/internal/ads/pf;->u:Ljava/util/concurrent/atomic/AtomicReference;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/vf;III)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/Nz;-><init>(Z)V

    .line 3
    .line 4
    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/of;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/of;-><init>(Lcom/google/android/gms/internal/ads/pf;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/pf;->e:Lcom/google/android/gms/internal/ads/of;

    .line 11
    .line 12
    new-instance v0, Ljava/util/HashSet;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/pf;->s:Ljava/util/HashSet;

    .line 18
    .line 19
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/pf;->h:Ljava/lang/String;

    .line 26
    .line 27
    new-instance p1, Lcom/google/android/gms/internal/ads/WD;

    .line 28
    .line 29
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/WD;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/pf;->i:Lcom/google/android/gms/internal/ads/WD;

    .line 33
    .line 34
    iput p3, p0, Lcom/google/android/gms/internal/ads/pf;->f:I

    .line 35
    .line 36
    iput p4, p0, Lcom/google/android/gms/internal/ads/pf;->g:I

    .line 37
    .line 38
    iput p5, p0, Lcom/google/android/gms/internal/ads/pf;->r:I

    .line 39
    .line 40
    if-eqz p2, :cond_0

    .line 41
    .line 42
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/Nz;->f(Lcom/google/android/gms/internal/ads/lJ;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void

    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 47
    .line 48
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 49
    .line 50
    .line 51
    throw p1
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/CD;)J
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const-string v3, "Unable to connect to "

    .line 6
    .line 7
    const-wide/16 v4, 0x0

    .line 8
    .line 9
    iput-wide v4, v1, Lcom/google/android/gms/internal/ads/pf;->q:J

    .line 10
    .line 11
    iput-wide v4, v1, Lcom/google/android/gms/internal/ads/pf;->p:J

    .line 12
    .line 13
    const/4 v7, 0x1

    .line 14
    :try_start_0
    new-instance v0, Ljava/net/URL;

    .line 15
    .line 16
    iget-object v8, v2, Lcom/google/android/gms/internal/ads/CD;->a:Landroid/net/Uri;

    .line 17
    .line 18
    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v8

    .line 22
    invoke-direct {v0, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    iget v8, v2, Lcom/google/android/gms/internal/ads/CD;->e:I

    .line 26
    .line 27
    and-int/lit8 v9, v8, 0x1

    .line 28
    .line 29
    if-ne v9, v7, :cond_0

    .line 30
    .line 31
    const/4 v9, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v9, 0x0

    .line 34
    :goto_0
    const/4 v11, 0x0

    .line 35
    :goto_1
    add-int/lit8 v12, v11, 0x1

    .line 36
    .line 37
    const/16 v13, 0x14

    .line 38
    .line 39
    if-gt v11, v13, :cond_17

    .line 40
    .line 41
    :try_start_1
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 42
    .line 43
    .line 44
    move-result-object v11

    .line 45
    check-cast v11, Ljava/net/HttpURLConnection;

    .line 46
    .line 47
    instance-of v13, v11, Ljavax/net/ssl/HttpsURLConnection;

    .line 48
    .line 49
    if-eqz v13, :cond_1

    .line 50
    .line 51
    move-object v13, v11

    .line 52
    check-cast v13, Ljavax/net/ssl/HttpsURLConnection;

    .line 53
    .line 54
    iget-object v14, v1, Lcom/google/android/gms/internal/ads/pf;->e:Lcom/google/android/gms/internal/ads/of;

    .line 55
    .line 56
    invoke-virtual {v13, v14}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 57
    .line 58
    .line 59
    goto :goto_2

    .line 60
    :catch_0
    move-exception v0

    .line 61
    goto/16 :goto_e

    .line 62
    .line 63
    :cond_1
    :goto_2
    iget v13, v1, Lcom/google/android/gms/internal/ads/pf;->f:I

    .line 64
    .line 65
    invoke-virtual {v11, v13}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 66
    .line 67
    .line 68
    iget v13, v1, Lcom/google/android/gms/internal/ads/pf;->g:I

    .line 69
    .line 70
    invoke-virtual {v11, v13}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 71
    .line 72
    .line 73
    iget-object v13, v1, Lcom/google/android/gms/internal/ads/pf;->i:Lcom/google/android/gms/internal/ads/WD;

    .line 74
    .line 75
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/WD;->a()Ljava/util/Map;

    .line 76
    .line 77
    .line 78
    move-result-object v13

    .line 79
    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 80
    .line 81
    .line 82
    move-result-object v13

    .line 83
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 84
    .line 85
    .line 86
    move-result-object v13

    .line 87
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    .line 89
    .line 90
    move-result v14

    .line 91
    if-eqz v14, :cond_2

    .line 92
    .line 93
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v14

    .line 97
    check-cast v14, Ljava/util/Map$Entry;

    .line 98
    .line 99
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v15

    .line 103
    check-cast v15, Ljava/lang/String;

    .line 104
    .line 105
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v14

    .line 109
    check-cast v14, Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {v11, v15, v14}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 112
    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_2
    const-wide/16 v13, -0x1

    .line 116
    .line 117
    iget-wide v6, v2, Lcom/google/android/gms/internal/ads/CD;->c:J

    .line 118
    .line 119
    move-object/from16 v16, v11

    .line 120
    .line 121
    iget-wide v10, v2, Lcom/google/android/gms/internal/ads/CD;->d:J

    .line 122
    .line 123
    cmp-long v17, v6, v4

    .line 124
    .line 125
    if-nez v17, :cond_4

    .line 126
    .line 127
    cmp-long v18, v10, v13

    .line 128
    .line 129
    if-eqz v18, :cond_3

    .line 130
    .line 131
    goto :goto_4

    .line 132
    :cond_3
    move-object/from16 v5, v16

    .line 133
    .line 134
    goto :goto_5

    .line 135
    :cond_4
    move-wide v4, v6

    .line 136
    :goto_4
    :try_start_2
    new-instance v15, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    const-string v13, "bytes="

    .line 142
    .line 143
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string v13, "-"

    .line 150
    .line 151
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v13

    .line 158
    const-wide/16 v14, -0x1

    .line 159
    .line 160
    cmp-long v19, v10, v14

    .line 161
    .line 162
    if-eqz v19, :cond_5

    .line 163
    .line 164
    add-long/2addr v4, v10

    .line 165
    add-long/2addr v4, v14

    .line 166
    new-instance v14, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v13

    .line 181
    :cond_5
    const-string v4, "Range"

    .line 182
    .line 183
    move-object/from16 v5, v16

    .line 184
    .line 185
    invoke-virtual {v5, v4, v13}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    :goto_5
    const-string v4, "User-Agent"

    .line 189
    .line 190
    iget-object v13, v1, Lcom/google/android/gms/internal/ads/pf;->h:Ljava/lang/String;

    .line 191
    .line 192
    invoke-virtual {v5, v4, v13}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    if-nez v9, :cond_6

    .line 196
    .line 197
    const-string v4, "Accept-Encoding"

    .line 198
    .line 199
    const-string v13, "identity"

    .line 200
    .line 201
    invoke-virtual {v5, v4, v13}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    :cond_6
    const/4 v4, 0x0

    .line 205
    invoke-virtual {v5, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v5, v4}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v5}, Ljava/net/URLConnection;->connect()V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 215
    .line 216
    .line 217
    move-result v13

    .line 218
    const/16 v14, 0x12c

    .line 219
    .line 220
    if-eq v13, v14, :cond_7

    .line 221
    .line 222
    const/16 v14, 0x12d

    .line 223
    .line 224
    if-eq v13, v14, :cond_7

    .line 225
    .line 226
    const/16 v14, 0x12e

    .line 227
    .line 228
    if-eq v13, v14, :cond_7

    .line 229
    .line 230
    const/16 v14, 0x12f

    .line 231
    .line 232
    if-eq v13, v14, :cond_7

    .line 233
    .line 234
    const/16 v14, 0x133

    .line 235
    .line 236
    if-eq v13, v14, :cond_7

    .line 237
    .line 238
    const/16 v14, 0x134

    .line 239
    .line 240
    if-ne v13, v14, :cond_8

    .line 241
    .line 242
    :cond_7
    const-wide/16 v10, 0x0

    .line 243
    .line 244
    goto/16 :goto_c

    .line 245
    .line 246
    :cond_8
    iput-object v5, v1, Lcom/google/android/gms/internal/ads/pf;->j:Ljava/net/HttpURLConnection;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 247
    .line 248
    :try_start_3
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    iput v0, v1, Lcom/google/android/gms/internal/ads/pf;->m:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 253
    .line 254
    const/16 v3, 0xc8

    .line 255
    .line 256
    if-lt v0, v3, :cond_12

    .line 257
    .line 258
    const/16 v4, 0x12b

    .line 259
    .line 260
    if-le v0, v4, :cond_9

    .line 261
    .line 262
    goto/16 :goto_b

    .line 263
    .line 264
    :cond_9
    if-ne v0, v3, :cond_a

    .line 265
    .line 266
    if-nez v17, :cond_b

    .line 267
    .line 268
    :cond_a
    const-wide/16 v6, 0x0

    .line 269
    .line 270
    :cond_b
    iput-wide v6, v1, Lcom/google/android/gms/internal/ads/pf;->n:J

    .line 271
    .line 272
    const/4 v3, 0x1

    .line 273
    and-int/lit8 v0, v8, 0x1

    .line 274
    .line 275
    if-ne v0, v3, :cond_c

    .line 276
    .line 277
    iput-wide v10, v1, Lcom/google/android/gms/internal/ads/pf;->o:J

    .line 278
    .line 279
    goto/16 :goto_a

    .line 280
    .line 281
    :cond_c
    const-wide/16 v3, -0x1

    .line 282
    .line 283
    cmp-long v0, v10, v3

    .line 284
    .line 285
    if-eqz v0, :cond_d

    .line 286
    .line 287
    iput-wide v10, v1, Lcom/google/android/gms/internal/ads/pf;->o:J

    .line 288
    .line 289
    goto/16 :goto_a

    .line 290
    .line 291
    :cond_d
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/pf;->j:Ljava/net/HttpURLConnection;

    .line 292
    .line 293
    const-string v3, "Content-Length"

    .line 294
    .line 295
    invoke-virtual {v0, v3}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v3

    .line 299
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 300
    .line 301
    .line 302
    move-result v4

    .line 303
    const-string v5, "]"

    .line 304
    .line 305
    if-nez v4, :cond_e

    .line 306
    .line 307
    :try_start_4
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 308
    .line 309
    .line 310
    move-result-wide v14
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1

    .line 311
    goto :goto_6

    .line 312
    :catch_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 313
    .line 314
    const-string v6, "Unexpected Content-Length ["

    .line 315
    .line 316
    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v4

    .line 329
    invoke-static {v4}, Lp3/h;->d(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    :cond_e
    const-wide/16 v14, -0x1

    .line 333
    .line 334
    :goto_6
    const-string v4, "Content-Range"

    .line 335
    .line 336
    invoke-virtual {v0, v4}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 341
    .line 342
    .line 343
    move-result v4

    .line 344
    if-nez v4, :cond_10

    .line 345
    .line 346
    sget-object v4, Lcom/google/android/gms/internal/ads/pf;->t:Ljava/util/regex/Pattern;

    .line 347
    .line 348
    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 349
    .line 350
    .line 351
    move-result-object v4

    .line 352
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    .line 353
    .line 354
    .line 355
    move-result v6

    .line 356
    if-eqz v6, :cond_10

    .line 357
    .line 358
    const/4 v6, 0x2

    .line 359
    :try_start_5
    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v6

    .line 363
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 364
    .line 365
    .line 366
    move-result-wide v6

    .line 367
    const/4 v8, 0x1

    .line 368
    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v4

    .line 372
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 373
    .line 374
    .line 375
    move-result-wide v8

    .line 376
    sub-long/2addr v6, v8

    .line 377
    const-wide/16 v10, 0x0

    .line 378
    .line 379
    cmp-long v4, v14, v10

    .line 380
    .line 381
    const-wide/16 v8, 0x1

    .line 382
    .line 383
    add-long/2addr v6, v8

    .line 384
    if-gez v4, :cond_f

    .line 385
    .line 386
    move-wide v14, v6

    .line 387
    goto :goto_7

    .line 388
    :cond_f
    cmp-long v4, v14, v6

    .line 389
    .line 390
    if-eqz v4, :cond_10

    .line 391
    .line 392
    new-instance v4, Ljava/lang/StringBuilder;

    .line 393
    .line 394
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 395
    .line 396
    .line 397
    const-string v8, "Inconsistent headers ["

    .line 398
    .line 399
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    const-string v3, "] ["

    .line 406
    .line 407
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v3

    .line 420
    invoke-static {v3}, Lp3/h;->g(Ljava/lang/String;)V

    .line 421
    .line 422
    .line 423
    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 424
    .line 425
    .line 426
    move-result-wide v14
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_2

    .line 427
    :cond_10
    :goto_7
    const-wide/16 v3, -0x1

    .line 428
    .line 429
    goto :goto_8

    .line 430
    :catch_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 431
    .line 432
    const-string v4, "Unexpected Content-Range ["

    .line 433
    .line 434
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v0

    .line 447
    invoke-static {v0}, Lp3/h;->d(Ljava/lang/String;)V

    .line 448
    .line 449
    .line 450
    goto :goto_7

    .line 451
    :goto_8
    cmp-long v0, v14, v3

    .line 452
    .line 453
    if-eqz v0, :cond_11

    .line 454
    .line 455
    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/pf;->n:J

    .line 456
    .line 457
    sub-long v13, v14, v3

    .line 458
    .line 459
    goto :goto_9

    .line 460
    :cond_11
    move-wide v13, v3

    .line 461
    :goto_9
    iput-wide v13, v1, Lcom/google/android/gms/internal/ads/pf;->o:J

    .line 462
    .line 463
    :goto_a
    :try_start_6
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/pf;->j:Ljava/net/HttpURLConnection;

    .line 464
    .line 465
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 466
    .line 467
    .line 468
    move-result-object v0

    .line 469
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/pf;->k:Ljava/io/InputStream;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 470
    .line 471
    const/4 v3, 0x1

    .line 472
    iput-boolean v3, v1, Lcom/google/android/gms/internal/ads/pf;->l:Z

    .line 473
    .line 474
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/Nz;->k(Lcom/google/android/gms/internal/ads/CD;)V

    .line 475
    .line 476
    .line 477
    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/pf;->o:J

    .line 478
    .line 479
    return-wide v2

    .line 480
    :catch_3
    move-exception v0

    .line 481
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/pf;->l()V

    .line 482
    .line 483
    .line 484
    new-instance v2, Lcom/google/android/gms/internal/ads/GG;

    .line 485
    .line 486
    const/16 v3, 0x7d0

    .line 487
    .line 488
    const/4 v4, 0x1

    .line 489
    invoke-direct {v2, v0, v3, v4}, Lcom/google/android/gms/internal/ads/GG;-><init>(Ljava/io/IOException;II)V

    .line 490
    .line 491
    .line 492
    throw v2

    .line 493
    :cond_12
    :goto_b
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/pf;->j:Ljava/net/HttpURLConnection;

    .line 494
    .line 495
    invoke-virtual {v0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 496
    .line 497
    .line 498
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/pf;->l()V

    .line 499
    .line 500
    .line 501
    new-instance v0, Lcom/google/android/gms/internal/ads/cH;

    .line 502
    .line 503
    iget v2, v1, Lcom/google/android/gms/internal/ads/pf;->m:I

    .line 504
    .line 505
    sget v3, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 506
    .line 507
    const/4 v3, 0x0

    .line 508
    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/cH;-><init>(ILcom/google/android/gms/internal/ads/xC;)V

    .line 509
    .line 510
    .line 511
    iget v2, v1, Lcom/google/android/gms/internal/ads/pf;->m:I

    .line 512
    .line 513
    const/16 v3, 0x1a0

    .line 514
    .line 515
    if-ne v2, v3, :cond_13

    .line 516
    .line 517
    new-instance v2, Lcom/google/android/gms/internal/ads/xC;

    .line 518
    .line 519
    const/16 v3, 0x7d8

    .line 520
    .line 521
    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/xC;-><init>(I)V

    .line 522
    .line 523
    .line 524
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 525
    .line 526
    .line 527
    :cond_13
    throw v0

    .line 528
    :catch_4
    move-exception v0

    .line 529
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/pf;->l()V

    .line 530
    .line 531
    .line 532
    new-instance v4, Lcom/google/android/gms/internal/ads/GG;

    .line 533
    .line 534
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/CD;->a:Landroid/net/Uri;

    .line 535
    .line 536
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v2

    .line 540
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v2

    .line 544
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v2

    .line 548
    const/16 v3, 0x7d0

    .line 549
    .line 550
    const/4 v5, 0x1

    .line 551
    invoke-direct {v4, v2, v0, v3, v5}, Lcom/google/android/gms/internal/ads/GG;-><init>(Ljava/lang/String;Ljava/io/IOException;II)V

    .line 552
    .line 553
    .line 554
    throw v4

    .line 555
    :goto_c
    :try_start_7
    const-string v6, "Location"

    .line 556
    .line 557
    invoke-virtual {v5, v6}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    move-result-object v6

    .line 561
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 562
    .line 563
    .line 564
    if-eqz v6, :cond_16

    .line 565
    .line 566
    new-instance v5, Ljava/net/URL;

    .line 567
    .line 568
    invoke-direct {v5, v0, v6}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 569
    .line 570
    .line 571
    invoke-virtual {v5}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v0

    .line 575
    const-string v6, "https"

    .line 576
    .line 577
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 578
    .line 579
    .line 580
    move-result v6

    .line 581
    if-nez v6, :cond_15

    .line 582
    .line 583
    const-string v6, "http"

    .line 584
    .line 585
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 586
    .line 587
    .line 588
    move-result v6

    .line 589
    if-eqz v6, :cond_14

    .line 590
    .line 591
    goto :goto_d

    .line 592
    :cond_14
    new-instance v4, Ljava/net/ProtocolException;

    .line 593
    .line 594
    const-string v5, "Unsupported protocol redirect: "

    .line 595
    .line 596
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 597
    .line 598
    .line 599
    move-result-object v0

    .line 600
    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 601
    .line 602
    .line 603
    move-result-object v0

    .line 604
    invoke-direct {v4, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 605
    .line 606
    .line 607
    throw v4

    .line 608
    :cond_15
    :goto_d
    move-object v0, v5

    .line 609
    move-wide v4, v10

    .line 610
    move v11, v12

    .line 611
    const/4 v7, 0x1

    .line 612
    goto/16 :goto_1

    .line 613
    .line 614
    :cond_16
    new-instance v0, Ljava/net/ProtocolException;

    .line 615
    .line 616
    const-string v4, "Null location redirect"

    .line 617
    .line 618
    invoke-direct {v0, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 619
    .line 620
    .line 621
    throw v0

    .line 622
    :cond_17
    new-instance v0, Ljava/net/NoRouteToHostException;

    .line 623
    .line 624
    new-instance v4, Ljava/lang/StringBuilder;

    .line 625
    .line 626
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 627
    .line 628
    .line 629
    const-string v5, "Too many redirects: "

    .line 630
    .line 631
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    .line 633
    .line 634
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 635
    .line 636
    .line 637
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 638
    .line 639
    .line 640
    move-result-object v4

    .line 641
    invoke-direct {v0, v4}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    .line 642
    .line 643
    .line 644
    throw v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 645
    :goto_e
    new-instance v4, Lcom/google/android/gms/internal/ads/GG;

    .line 646
    .line 647
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/CD;->a:Landroid/net/Uri;

    .line 648
    .line 649
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 650
    .line 651
    .line 652
    move-result-object v2

    .line 653
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 654
    .line 655
    .line 656
    move-result-object v2

    .line 657
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 658
    .line 659
    .line 660
    move-result-object v2

    .line 661
    const/16 v3, 0x7d0

    .line 662
    .line 663
    const/4 v5, 0x1

    .line 664
    invoke-direct {v4, v2, v0, v3, v5}, Lcom/google/android/gms/internal/ads/GG;-><init>(Ljava/lang/String;Ljava/io/IOException;II)V

    .line 665
    .line 666
    .line 667
    throw v4
.end method

.method public final e([BII)I
    .locals 10

    .line 1
    :try_start_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/pf;->p:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/pf;->n:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    const/4 v4, 0x0

    .line 6
    const/4 v5, -0x1

    .line 7
    cmp-long v6, v0, v2

    .line 8
    .line 9
    if-nez v6, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/pf;->u:Ljava/util/concurrent/atomic/AtomicReference;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    :try_start_1
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, [B

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    const/16 v1, 0x1000

    .line 24
    .line 25
    new-array v1, v1, [B

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception p1

    .line 29
    goto/16 :goto_4

    .line 30
    .line 31
    :cond_1
    :goto_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/pf;->p:J

    .line 32
    .line 33
    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/pf;->n:J

    .line 34
    .line 35
    cmp-long v8, v2, v6

    .line 36
    .line 37
    if-eqz v8, :cond_4

    .line 38
    .line 39
    array-length v8, v1

    .line 40
    sub-long/2addr v6, v2

    .line 41
    int-to-long v2, v8

    .line 42
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 43
    .line 44
    .line 45
    move-result-wide v2

    .line 46
    long-to-int v3, v2

    .line 47
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/pf;->k:Ljava/io/InputStream;

    .line 48
    .line 49
    invoke-virtual {v2, v1, v4, v3}, Ljava/io/InputStream;->read([BII)I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-nez v3, :cond_3

    .line 58
    .line 59
    if-eq v2, v5, :cond_2

    .line 60
    .line 61
    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/pf;->p:J

    .line 62
    .line 63
    int-to-long v8, v2

    .line 64
    add-long/2addr v6, v8

    .line 65
    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/pf;->p:J

    .line 66
    .line 67
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/Nz;->zzg(I)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    new-instance p1, Ljava/io/EOFException;

    .line 72
    .line 73
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 74
    .line 75
    .line 76
    throw p1

    .line 77
    :cond_3
    new-instance p1, Ljava/io/InterruptedIOException;

    .line 78
    .line 79
    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    .line 80
    .line 81
    .line 82
    throw p1

    .line 83
    :cond_4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    :goto_1
    if-nez p3, :cond_5

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_5
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/pf;->o:J

    .line 90
    .line 91
    const-wide/16 v2, -0x1

    .line 92
    .line 93
    cmp-long v4, v0, v2

    .line 94
    .line 95
    if-eqz v4, :cond_7

    .line 96
    .line 97
    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/pf;->q:J

    .line 98
    .line 99
    sub-long/2addr v0, v6

    .line 100
    const-wide/16 v6, 0x0

    .line 101
    .line 102
    cmp-long v4, v0, v6

    .line 103
    .line 104
    if-nez v4, :cond_6

    .line 105
    .line 106
    :goto_2
    const/4 v4, -0x1

    .line 107
    goto :goto_3

    .line 108
    :cond_6
    int-to-long v6, p3

    .line 109
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 110
    .line 111
    .line 112
    move-result-wide v0

    .line 113
    long-to-int p3, v0

    .line 114
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pf;->k:Ljava/io/InputStream;

    .line 115
    .line 116
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    if-ne v4, v5, :cond_9

    .line 121
    .line 122
    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/pf;->o:J

    .line 123
    .line 124
    cmp-long p3, p1, v2

    .line 125
    .line 126
    if-nez p3, :cond_8

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_8
    new-instance p1, Ljava/io/EOFException;

    .line 130
    .line 131
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 132
    .line 133
    .line 134
    throw p1

    .line 135
    :cond_9
    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/pf;->q:J

    .line 136
    .line 137
    int-to-long v0, v4

    .line 138
    add-long/2addr p1, v0

    .line 139
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/pf;->q:J

    .line 140
    .line 141
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/Nz;->zzg(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 142
    .line 143
    .line 144
    :goto_3
    return v4

    .line 145
    :goto_4
    new-instance p2, Lcom/google/android/gms/internal/ads/GG;

    .line 146
    .line 147
    const/16 p3, 0x7d0

    .line 148
    .line 149
    const/4 v0, 0x2

    .line 150
    invoke-direct {p2, p1, p3, v0}, Lcom/google/android/gms/internal/ads/GG;-><init>(Ljava/io/IOException;II)V

    .line 151
    .line 152
    .line 153
    throw p2
.end method

.method public final l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pf;->j:Ljava/net/HttpURLConnection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    const-string v1, "Unexpected error while disconnecting"

    .line 11
    .line 12
    invoke-static {v1, v0}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    :goto_0
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/pf;->j:Ljava/net/HttpURLConnection;

    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final zzc()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pf;->j:Ljava/net/HttpURLConnection;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public final zzd()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pf;->s:Ljava/util/HashSet;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/pf;->k:Ljava/io/InputStream;

    .line 6
    .line 7
    if-eqz v3, :cond_0

    .line 8
    .line 9
    sget v4, Lcom/google/android/gms/internal/ads/Et;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v3

    .line 16
    goto :goto_1

    .line 17
    :catch_0
    move-exception v3

    .line 18
    :try_start_2
    new-instance v4, Lcom/google/android/gms/internal/ads/GG;

    .line 19
    .line 20
    const/16 v5, 0x7d0

    .line 21
    .line 22
    const/4 v6, 0x3

    .line 23
    invoke-direct {v4, v3, v5, v6}, Lcom/google/android/gms/internal/ads/GG;-><init>(Ljava/io/IOException;II)V

    .line 24
    .line 25
    .line 26
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 27
    :cond_0
    :goto_0
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/pf;->k:Ljava/io/InputStream;

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/pf;->l()V

    .line 30
    .line 31
    .line 32
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/pf;->l:Z

    .line 33
    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/pf;->l:Z

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Nz;->i()V

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :goto_1
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/pf;->k:Ljava/io/InputStream;

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/pf;->l()V

    .line 48
    .line 49
    .line 50
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/pf;->l:Z

    .line 51
    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/pf;->l:Z

    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Nz;->i()V

    .line 57
    .line 58
    .line 59
    :cond_2
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 60
    .line 61
    .line 62
    throw v3
.end method

.method public final zze()Ljava/util/Map;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pf;->j:Ljava/net/HttpURLConnection;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
