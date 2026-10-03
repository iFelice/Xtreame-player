.class public final Lcom/google/android/gms/internal/ads/g5;
.super Lcom/google/android/gms/internal/ads/t5;
.source "SourceFile"


# static fields
.field public static final j:Lcom/google/android/gms/internal/ads/K4;


# instance fields
.field public final h:Lcom/google/android/gms/internal/ads/U3;

.field public final i:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/K4;

    .line 2
    .line 3
    const/16 v1, 0xf

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/K4;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/google/android/gms/internal/ads/g5;->j:Lcom/google/android/gms/internal/ads/K4;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/V4;Lcom/google/android/gms/internal/ads/V3;ILandroid/content/Context;Lcom/google/android/gms/internal/ads/U3;)V
    .locals 7

    .line 1
    const/16 v6, 0x1b

    .line 2
    .line 3
    const-string v2, "5gR2Yi2k1qmqwB908rtZUebo4TzAbjEGSkWYIuNbRdnGPocO4kIxU9dsn2qP+c0J"

    .line 4
    .line 5
    const-string v3, "NnIoFyYmTm9Yd/i5F1TZFAo2tPeZkpFEZBtgPBr60Ow="

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move-object v4, p2

    .line 10
    move v5, p3

    .line 11
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/t5;-><init>(Lcom/google/android/gms/internal/ads/V4;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/V3;II)V

    .line 12
    .line 13
    .line 14
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/g5;->i:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/g5;->h:Lcom/google/android/gms/internal/ads/U3;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 11

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/g5;->j:Lcom/google/android/gms/internal/ads/K4;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/g5;->i:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/K4;->d(Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReference;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/google/android/gms/internal/ads/v4;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/v4;->a:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/X4;->b(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_0

    .line 29
    .line 30
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/v4;->a:Ljava/lang/String;

    .line 31
    .line 32
    const-string v3, "E"

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-nez v2, :cond_0

    .line 39
    .line 40
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/v4;->a:Ljava/lang/String;

    .line 41
    .line 42
    const-string v2, "0000000000000000000000000000000000000000000000000000000000000000"

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_9

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception v1

    .line 52
    goto/16 :goto_7

    .line 53
    .line 54
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 55
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/X4;->b(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    const/4 v3, 0x3

    .line 60
    if-nez v2, :cond_1

    .line 61
    .line 62
    const/4 v2, 0x5

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    const/4 v2, 0x3

    .line 65
    :goto_1
    const/4 v4, 0x1

    .line 66
    const/4 v5, 0x0

    .line 67
    if-ne v2, v3, :cond_2

    .line 68
    .line 69
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/g5;->h:Lcom/google/android/gms/internal/ads/U3;

    .line 70
    .line 71
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/U3;->B()Z

    .line 72
    .line 73
    .line 74
    move-result v6

    .line 75
    if-nez v6, :cond_2

    .line 76
    .line 77
    const/4 v6, 0x1

    .line 78
    goto :goto_2

    .line 79
    :cond_2
    const/4 v6, 0x0

    .line 80
    :goto_2
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    sget-object v7, Lcom/google/android/gms/internal/ads/Q7;->m2:Lcom/google/android/gms/internal/ads/J7;

    .line 85
    .line 86
    sget-object v8, Ll3/q;->d:Ll3/q;

    .line 87
    .line 88
    iget-object v9, v8, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 89
    .line 90
    invoke-virtual {v9, v7}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    check-cast v7, Ljava/lang/Boolean;

    .line 95
    .line 96
    sget-object v9, Lcom/google/android/gms/internal/ads/Q7;->l2:Lcom/google/android/gms/internal/ads/J7;

    .line 97
    .line 98
    iget-object v8, v8, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 99
    .line 100
    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    check-cast v8, Ljava/lang/Boolean;

    .line 105
    .line 106
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 107
    .line 108
    .line 109
    move-result v8

    .line 110
    if-eqz v8, :cond_3

    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/g5;->c()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v8

    .line 116
    goto :goto_3

    .line 117
    :cond_3
    move-object v8, v1

    .line 118
    :goto_3
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    if-eqz v7, :cond_4

    .line 123
    .line 124
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/t5;->a:Lcom/google/android/gms/internal/ads/V4;

    .line 125
    .line 126
    iget-boolean v7, v7, Lcom/google/android/gms/internal/ads/V4;->n:Z

    .line 127
    .line 128
    if-eqz v7, :cond_4

    .line 129
    .line 130
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/X4;->b(Ljava/lang/String;)Z

    .line 131
    .line 132
    .line 133
    move-result v7

    .line 134
    if-eqz v7, :cond_4

    .line 135
    .line 136
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/g5;->d()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v8

    .line 140
    :cond_4
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/t5;->e:Ljava/lang/reflect/Method;

    .line 141
    .line 142
    new-array v9, v3, [Ljava/lang/Object;

    .line 143
    .line 144
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/g5;->i:Landroid/content/Context;

    .line 145
    .line 146
    aput-object v10, v9, v5

    .line 147
    .line 148
    aput-object v6, v9, v4

    .line 149
    .line 150
    const/4 v4, 0x2

    .line 151
    aput-object v8, v9, v4

    .line 152
    .line 153
    invoke-virtual {v7, v1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    check-cast v4, Ljava/lang/String;

    .line 158
    .line 159
    new-instance v5, Lcom/google/android/gms/internal/ads/v4;

    .line 160
    .line 161
    invoke-direct {v5, v4}, Lcom/google/android/gms/internal/ads/v4;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    iget-object v4, v5, Lcom/google/android/gms/internal/ads/v4;->a:Ljava/lang/String;

    .line 165
    .line 166
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/X4;->b(Ljava/lang/String;)Z

    .line 167
    .line 168
    .line 169
    move-result v4

    .line 170
    if-nez v4, :cond_5

    .line 171
    .line 172
    iget-object v4, v5, Lcom/google/android/gms/internal/ads/v4;->a:Ljava/lang/String;

    .line 173
    .line 174
    const-string v6, "E"

    .line 175
    .line 176
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v4

    .line 180
    if-eqz v4, :cond_8

    .line 181
    .line 182
    :cond_5
    add-int/lit8 v2, v2, -0x1

    .line 183
    .line 184
    if-eq v2, v3, :cond_7

    .line 185
    .line 186
    const/4 v3, 0x4

    .line 187
    if-eq v2, v3, :cond_6

    .line 188
    .line 189
    goto :goto_4

    .line 190
    :cond_6
    throw v1

    .line 191
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/g5;->d()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/X4;->b(Ljava/lang/String;)Z

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    if-nez v2, :cond_8

    .line 200
    .line 201
    iput-object v1, v5, Lcom/google/android/gms/internal/ads/v4;->a:Ljava/lang/String;

    .line 202
    .line 203
    :cond_8
    :goto_4
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    :cond_9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    check-cast v1, Lcom/google/android/gms/internal/ads/v4;

    .line 211
    .line 212
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/t5;->d:Lcom/google/android/gms/internal/ads/V3;

    .line 214
    .line 215
    monitor-enter v2

    .line 216
    if-eqz v1, :cond_a

    .line 217
    .line 218
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t5;->d:Lcom/google/android/gms/internal/ads/V3;

    .line 219
    .line 220
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/v4;->a:Ljava/lang/String;

    .line 221
    .line 222
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 223
    .line 224
    .line 225
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 226
    .line 227
    check-cast v0, Lcom/google/android/gms/internal/ads/j4;

    .line 228
    .line 229
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/j4;->N0(Lcom/google/android/gms/internal/ads/j4;Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t5;->d:Lcom/google/android/gms/internal/ads/V3;

    .line 233
    .line 234
    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/v4;->b:J

    .line 235
    .line 236
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 237
    .line 238
    .line 239
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 240
    .line 241
    check-cast v0, Lcom/google/android/gms/internal/ads/j4;

    .line 242
    .line 243
    invoke-static {v0, v3, v4}, Lcom/google/android/gms/internal/ads/j4;->C(Lcom/google/android/gms/internal/ads/j4;J)V

    .line 244
    .line 245
    .line 246
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t5;->d:Lcom/google/android/gms/internal/ads/V3;

    .line 247
    .line 248
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/v4;->c:Ljava/lang/String;

    .line 249
    .line 250
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 251
    .line 252
    .line 253
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 254
    .line 255
    check-cast v0, Lcom/google/android/gms/internal/ads/j4;

    .line 256
    .line 257
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/j4;->B(Lcom/google/android/gms/internal/ads/j4;Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t5;->d:Lcom/google/android/gms/internal/ads/V3;

    .line 261
    .line 262
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/v4;->d:Ljava/lang/String;

    .line 263
    .line 264
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 265
    .line 266
    .line 267
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 268
    .line 269
    check-cast v0, Lcom/google/android/gms/internal/ads/j4;

    .line 270
    .line 271
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/j4;->L(Lcom/google/android/gms/internal/ads/j4;Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t5;->d:Lcom/google/android/gms/internal/ads/V3;

    .line 275
    .line 276
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/v4;->e:Ljava/lang/String;

    .line 277
    .line 278
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 279
    .line 280
    .line 281
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 282
    .line 283
    check-cast v0, Lcom/google/android/gms/internal/ads/j4;

    .line 284
    .line 285
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/j4;->M(Lcom/google/android/gms/internal/ads/j4;Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    goto :goto_5

    .line 289
    :catchall_1
    move-exception v0

    .line 290
    goto :goto_6

    .line 291
    :cond_a
    :goto_5
    monitor-exit v2

    .line 292
    return-void

    .line 293
    :goto_6
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 294
    throw v0

    .line 295
    :goto_7
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 296
    throw v1
.end method

.method public final c()Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "X.509"

    .line 3
    .line 4
    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->n2:Lcom/google/android/gms/internal/ads/J7;

    .line 9
    .line 10
    sget-object v3, Ll3/q;->d:Ll3/q;

    .line 11
    .line 12
    iget-object v4, v3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 13
    .line 14
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/X4;->c(Ljava/lang/String;)[B

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    new-instance v4, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    new-instance v5, Ljava/io/ByteArrayInputStream;

    .line 30
    .line 31
    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 42
    .line 43
    const-string v5, "user"

    .line 44
    .line 45
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-nez v2, :cond_0

    .line 50
    .line 51
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->o2:Lcom/google/android/gms/internal/ads/J7;

    .line 52
    .line 53
    iget-object v3, v3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 54
    .line 55
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/X4;->c(Ljava/lang/String;)[B

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    new-instance v3, Ljava/io/ByteArrayInputStream;

    .line 66
    .line 67
    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/g5;->i:Landroid/content/Context;

    .line 78
    .line 79
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/t5;->a:Lcom/google/android/gms/internal/ads/V4;

    .line 84
    .line 85
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 89
    .line 90
    const/16 v5, 0x1e

    .line 91
    .line 92
    if-gt v3, v5, :cond_1

    .line 93
    .line 94
    sget-object v3, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 95
    .line 96
    const-string v5, "S"

    .line 97
    .line 98
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-nez v3, :cond_1

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_1
    new-instance v3, Lcom/google/android/gms/internal/ads/pC;

    .line 106
    .line 107
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    new-instance v5, Lcom/google/android/gms/internal/ads/u5;

    .line 115
    .line 116
    invoke-direct {v5, v3}, Lcom/google/android/gms/internal/ads/u5;-><init>(Lcom/google/android/gms/internal/ads/pC;)V

    .line 117
    .line 118
    .line 119
    invoke-static {v1, v2, v4, v5}, LN/f;->l(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/util/ArrayList;Lcom/google/android/gms/internal/ads/u5;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/GB;->get()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .line 128
    move-object v0, v1

    .line 129
    :catch_0
    :goto_0
    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t5;->a:Lcom/google/android/gms/internal/ads/V4;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/V4;->k:Ljava/util/concurrent/Future;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/t5;->a:Lcom/google/android/gms/internal/ads/V4;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/V4;->j:Lcom/google/android/gms/internal/ads/j4;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/j4;->k0()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/j4;->y0()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    return-object v0

    .line 27
    :catch_0
    :cond_1
    const/4 v0, 0x0

    .line 28
    return-object v0
.end method
