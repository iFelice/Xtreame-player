.class public final Lcom/google/android/gms/internal/ads/oM;
.super Lcom/google/android/gms/internal/ads/VM;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/FK;


# instance fields
.field public final A0:Lcom/google/android/gms/internal/ads/JM;

.field public B0:I

.field public C0:Z

.field public D0:Z

.field public E0:Lcom/google/android/gms/internal/ads/p0;

.field public F0:Lcom/google/android/gms/internal/ads/p0;

.field public G0:J

.field public H0:Z

.field public I0:Z

.field public J0:Z

.field public K0:I

.field public final x0:Landroid/content/Context;

.field public final y0:Lcom/google/android/gms/internal/ads/oL;

.field public final z0:Lcom/google/android/gms/internal/ads/TL;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/I7;Landroid/os/Handler;Lcom/google/android/gms/internal/ads/sK;Lcom/google/android/gms/internal/ads/lM;)V
    .locals 3

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 2
    .line 3
    const/16 v1, 0x23

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/JM;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/JM;-><init>()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    const v1, 0x472c4400    # 44100.0f

    .line 15
    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-direct {p0, v2, p2, v1}, Lcom/google/android/gms/internal/ads/VM;-><init>(ILcom/google/android/gms/internal/ads/I7;F)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/oM;->x0:Landroid/content/Context;

    .line 26
    .line 27
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/oM;->z0:Lcom/google/android/gms/internal/ads/TL;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/oM;->A0:Lcom/google/android/gms/internal/ads/JM;

    .line 30
    .line 31
    const/16 p1, -0x3e8

    .line 32
    .line 33
    iput p1, p0, Lcom/google/android/gms/internal/ads/oM;->K0:I

    .line 34
    .line 35
    new-instance p1, Lcom/google/android/gms/internal/ads/oL;

    .line 36
    .line 37
    invoke-direct {p1, p3, p4}, Lcom/google/android/gms/internal/ads/oL;-><init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/sK;)V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/oM;->y0:Lcom/google/android/gms/internal/ads/oL;

    .line 41
    .line 42
    new-instance p1, Lcom/google/android/gms/internal/ads/nM;

    .line 43
    .line 44
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/nM;-><init>(Lcom/google/android/gms/internal/ads/oM;)V

    .line 45
    .line 46
    .line 47
    iput-object p1, p5, Lcom/google/android/gms/internal/ads/lM;->l:Lcom/google/android/gms/internal/ads/nM;

    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public final A(JZ)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/VM;->A(JZ)V

    .line 2
    .line 3
    .line 4
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/oM;->z0:Lcom/google/android/gms/internal/ads/TL;

    .line 5
    .line 6
    check-cast p3, Lcom/google/android/gms/internal/ads/lM;

    .line 7
    .line 8
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/lM;->m()V

    .line 9
    .line 10
    .line 11
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/oM;->G0:J

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/oM;->J0:Z

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/oM;->H0:Z

    .line 18
    .line 19
    return-void
.end method

.method public final B(F[Lcom/google/android/gms/internal/ads/p0;)F
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, -0x1

    .line 3
    const/4 v2, -0x1

    .line 4
    :goto_0
    array-length v3, p2

    .line 5
    if-ge v0, v3, :cond_1

    .line 6
    .line 7
    aget-object v3, p2, v0

    .line 8
    .line 9
    iget v3, v3, Lcom/google/android/gms/internal/ads/p0;->B:I

    .line 10
    .line 11
    if-eq v3, v1, :cond_0

    .line 12
    .line 13
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    if-ne v2, v1, :cond_2

    .line 21
    .line 22
    const/high16 p1, -0x40800000    # -1.0f

    .line 23
    .line 24
    return p1

    .line 25
    :cond_2
    int-to-float p2, v2

    .line 26
    mul-float p2, p2, p1

    .line 27
    .line 28
    return p2
.end method

.method public final T(Lcom/google/android/gms/internal/ads/WM;Lcom/google/android/gms/internal/ads/p0;)I
    .locals 17

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/p0;->m:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/va;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "audio"

    .line 10
    .line 11
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/16 v3, 0x80

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    return v3

    .line 20
    :cond_0
    const/4 v1, 0x1

    .line 21
    const/4 v4, 0x0

    .line 22
    iget v5, v0, Lcom/google/android/gms/internal/ads/p0;->H:I

    .line 23
    .line 24
    if-eqz v5, :cond_1

    .line 25
    .line 26
    const/4 v6, 0x0

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v6, 0x1

    .line 29
    :goto_0
    const-string v8, "audio/raw"

    .line 30
    .line 31
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/p0;->m:Ljava/lang/String;

    .line 32
    .line 33
    move-object/from16 v10, p0

    .line 34
    .line 35
    iget-object v11, v10, Lcom/google/android/gms/internal/ads/oM;->z0:Lcom/google/android/gms/internal/ads/TL;

    .line 36
    .line 37
    iget v12, v0, Lcom/google/android/gms/internal/ads/p0;->A:I

    .line 38
    .line 39
    iget v13, v0, Lcom/google/android/gms/internal/ads/p0;->B:I

    .line 40
    .line 41
    if-eqz v6, :cond_3

    .line 42
    .line 43
    if-eqz v5, :cond_4

    .line 44
    .line 45
    invoke-static {v8, v4, v4}, Lcom/google/android/gms/internal/ads/cN;->c(Ljava/lang/String;ZZ)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    .line 50
    .line 51
    .line 52
    move-result v14

    .line 53
    if-eqz v14, :cond_2

    .line 54
    .line 55
    const/4 v5, 0x0

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    check-cast v5, Lcom/google/android/gms/internal/ads/PM;

    .line 62
    .line 63
    :goto_1
    if-eqz v5, :cond_3

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_3
    const/4 v3, 0x0

    .line 67
    goto/16 :goto_b

    .line 68
    .line 69
    :cond_4
    :goto_2
    move-object v5, v11

    .line 70
    check-cast v5, Lcom/google/android/gms/internal/ads/lM;

    .line 71
    .line 72
    iget-boolean v14, v5, Lcom/google/android/gms/internal/ads/lM;->S:Z

    .line 73
    .line 74
    if-eqz v14, :cond_5

    .line 75
    .line 76
    sget-object v2, Lcom/google/android/gms/internal/ads/JL;->d:Lcom/google/android/gms/internal/ads/JL;

    .line 77
    .line 78
    goto/16 :goto_8

    .line 79
    .line 80
    :cond_5
    iget-object v14, v5, Lcom/google/android/gms/internal/ads/lM;->t:Lcom/google/android/gms/internal/ads/bH;

    .line 81
    .line 82
    iget-object v15, v5, Lcom/google/android/gms/internal/ads/lM;->Y:Lcom/google/android/gms/internal/ads/aM;

    .line 83
    .line 84
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    sget v7, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 91
    .line 92
    const/16 v3, 0x1d

    .line 93
    .line 94
    if-lt v7, v3, :cond_f

    .line 95
    .line 96
    const/4 v3, -0x1

    .line 97
    if-ne v13, v3, :cond_6

    .line 98
    .line 99
    goto/16 :goto_7

    .line 100
    .line 101
    :cond_6
    iget-object v3, v15, Lcom/google/android/gms/internal/ads/aM;->b:Ljava/lang/Boolean;

    .line 102
    .line 103
    if-eqz v3, :cond_7

    .line 104
    .line 105
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    goto :goto_5

    .line 110
    :cond_7
    iget-object v3, v15, Lcom/google/android/gms/internal/ads/aM;->a:Landroid/content/Context;

    .line 111
    .line 112
    if-eqz v3, :cond_a

    .line 113
    .line 114
    invoke-virtual {v3, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    check-cast v2, Landroid/media/AudioManager;

    .line 119
    .line 120
    if-eqz v2, :cond_9

    .line 121
    .line 122
    const-string v3, "offloadVariableRateSupported"

    .line 123
    .line 124
    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v2

    .line 128
    if-eqz v2, :cond_8

    .line 129
    .line 130
    const-string v3, "offloadVariableRateSupported=1"

    .line 131
    .line 132
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-eqz v2, :cond_8

    .line 137
    .line 138
    const/4 v2, 0x1

    .line 139
    goto :goto_3

    .line 140
    :cond_8
    const/4 v2, 0x0

    .line 141
    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    iput-object v2, v15, Lcom/google/android/gms/internal/ads/aM;->b:Ljava/lang/Boolean;

    .line 146
    .line 147
    goto :goto_4

    .line 148
    :cond_9
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 149
    .line 150
    iput-object v2, v15, Lcom/google/android/gms/internal/ads/aM;->b:Ljava/lang/Boolean;

    .line 151
    .line 152
    goto :goto_4

    .line 153
    :cond_a
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 154
    .line 155
    iput-object v2, v15, Lcom/google/android/gms/internal/ads/aM;->b:Ljava/lang/Boolean;

    .line 156
    .line 157
    :goto_4
    iget-object v2, v15, Lcom/google/android/gms/internal/ads/aM;->b:Ljava/lang/Boolean;

    .line 158
    .line 159
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    :goto_5
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/p0;->j:Ljava/lang/String;

    .line 167
    .line 168
    invoke-static {v9, v3}, Lcom/google/android/gms/internal/ads/va;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    if-eqz v3, :cond_e

    .line 173
    .line 174
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Et;->m(I)I

    .line 175
    .line 176
    .line 177
    move-result v15

    .line 178
    if-ge v7, v15, :cond_b

    .line 179
    .line 180
    goto :goto_6

    .line 181
    :cond_b
    invoke-static {v12}, Lcom/google/android/gms/internal/ads/Et;->n(I)I

    .line 182
    .line 183
    .line 184
    move-result v15

    .line 185
    if-nez v15, :cond_c

    .line 186
    .line 187
    sget-object v2, Lcom/google/android/gms/internal/ads/JL;->d:Lcom/google/android/gms/internal/ads/JL;

    .line 188
    .line 189
    goto :goto_8

    .line 190
    :cond_c
    :try_start_0
    invoke-static {v13, v15, v3}, Lcom/google/android/gms/internal/ads/Et;->x(III)Landroid/media/AudioFormat;

    .line 191
    .line 192
    .line 193
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    const/16 v15, 0x1f

    .line 195
    .line 196
    if-lt v7, v15, :cond_d

    .line 197
    .line 198
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/bH;->a()Lcom/google/android/gms/internal/ads/Of;

    .line 199
    .line 200
    .line 201
    move-result-object v7

    .line 202
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/Of;->H:Ljava/lang/Object;

    .line 203
    .line 204
    check-cast v7, Landroid/media/AudioAttributes;

    .line 205
    .line 206
    invoke-static {v3, v7, v2}, Lcom/google/android/gms/internal/ads/ZL;->a(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;Z)Lcom/google/android/gms/internal/ads/JL;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    goto :goto_8

    .line 211
    :cond_d
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/bH;->a()Lcom/google/android/gms/internal/ads/Of;

    .line 212
    .line 213
    .line 214
    move-result-object v7

    .line 215
    iget-object v7, v7, Lcom/google/android/gms/internal/ads/Of;->H:Ljava/lang/Object;

    .line 216
    .line 217
    check-cast v7, Landroid/media/AudioAttributes;

    .line 218
    .line 219
    invoke-static {v3, v7, v2}, Lcom/google/android/gms/internal/ads/YL;->a(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;Z)Lcom/google/android/gms/internal/ads/JL;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    goto :goto_8

    .line 224
    :catch_0
    sget-object v2, Lcom/google/android/gms/internal/ads/JL;->d:Lcom/google/android/gms/internal/ads/JL;

    .line 225
    .line 226
    goto :goto_8

    .line 227
    :cond_e
    :goto_6
    sget-object v2, Lcom/google/android/gms/internal/ads/JL;->d:Lcom/google/android/gms/internal/ads/JL;

    .line 228
    .line 229
    goto :goto_8

    .line 230
    :cond_f
    :goto_7
    sget-object v2, Lcom/google/android/gms/internal/ads/JL;->d:Lcom/google/android/gms/internal/ads/JL;

    .line 231
    .line 232
    :goto_8
    iget-boolean v3, v2, Lcom/google/android/gms/internal/ads/JL;->a:Z

    .line 233
    .line 234
    if-nez v3, :cond_10

    .line 235
    .line 236
    const/4 v3, 0x0

    .line 237
    goto :goto_a

    .line 238
    :cond_10
    iget-boolean v3, v2, Lcom/google/android/gms/internal/ads/JL;->b:Z

    .line 239
    .line 240
    if-eq v1, v3, :cond_11

    .line 241
    .line 242
    const/16 v3, 0x200

    .line 243
    .line 244
    goto :goto_9

    .line 245
    :cond_11
    const/16 v3, 0x600

    .line 246
    .line 247
    :goto_9
    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/JL;->c:Z

    .line 248
    .line 249
    if-eqz v2, :cond_12

    .line 250
    .line 251
    or-int/lit16 v3, v3, 0x800

    .line 252
    .line 253
    :cond_12
    :goto_a
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/lM;->k(Lcom/google/android/gms/internal/ads/p0;)I

    .line 254
    .line 255
    .line 256
    move-result v2

    .line 257
    if-eqz v2, :cond_13

    .line 258
    .line 259
    or-int/lit16 v0, v3, 0xac

    .line 260
    .line 261
    return v0

    .line 262
    :cond_13
    :goto_b
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result v2

    .line 266
    if-eqz v2, :cond_15

    .line 267
    .line 268
    move-object v2, v11

    .line 269
    check-cast v2, Lcom/google/android/gms/internal/ads/lM;

    .line 270
    .line 271
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/lM;->k(Lcom/google/android/gms/internal/ads/p0;)I

    .line 272
    .line 273
    .line 274
    move-result v2

    .line 275
    if-eqz v2, :cond_14

    .line 276
    .line 277
    goto :goto_d

    .line 278
    :cond_14
    :goto_c
    const/16 v0, 0x80

    .line 279
    .line 280
    goto/16 :goto_15

    .line 281
    .line 282
    :cond_15
    :goto_d
    new-instance v2, Lcom/google/android/gms/internal/ads/K;

    .line 283
    .line 284
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/K;-><init>()V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/K;->f(Ljava/lang/String;)V

    .line 288
    .line 289
    .line 290
    iput v12, v2, Lcom/google/android/gms/internal/ads/K;->z:I

    .line 291
    .line 292
    iput v13, v2, Lcom/google/android/gms/internal/ads/K;->A:I

    .line 293
    .line 294
    const/4 v5, 0x2

    .line 295
    iput v5, v2, Lcom/google/android/gms/internal/ads/K;->B:I

    .line 296
    .line 297
    new-instance v7, Lcom/google/android/gms/internal/ads/p0;

    .line 298
    .line 299
    invoke-direct {v7, v2}, Lcom/google/android/gms/internal/ads/p0;-><init>(Lcom/google/android/gms/internal/ads/K;)V

    .line 300
    .line 301
    .line 302
    check-cast v11, Lcom/google/android/gms/internal/ads/lM;

    .line 303
    .line 304
    invoke-virtual {v11, v7}, Lcom/google/android/gms/internal/ads/lM;->k(Lcom/google/android/gms/internal/ads/p0;)I

    .line 305
    .line 306
    .line 307
    move-result v2

    .line 308
    if-eqz v2, :cond_14

    .line 309
    .line 310
    if-nez v9, :cond_16

    .line 311
    .line 312
    sget-object v2, Lcom/google/android/gms/internal/ads/PA;->K:Lcom/google/android/gms/internal/ads/PA;

    .line 313
    .line 314
    goto :goto_f

    .line 315
    :cond_16
    invoke-virtual {v11, v0}, Lcom/google/android/gms/internal/ads/lM;->k(Lcom/google/android/gms/internal/ads/p0;)I

    .line 316
    .line 317
    .line 318
    move-result v2

    .line 319
    if-eqz v2, :cond_18

    .line 320
    .line 321
    invoke-static {v8, v4, v4}, Lcom/google/android/gms/internal/ads/cN;->c(Ljava/lang/String;ZZ)Ljava/util/List;

    .line 322
    .line 323
    .line 324
    move-result-object v2

    .line 325
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 326
    .line 327
    .line 328
    move-result v7

    .line 329
    if-eqz v7, :cond_17

    .line 330
    .line 331
    const/4 v7, 0x0

    .line 332
    goto :goto_e

    .line 333
    :cond_17
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v2

    .line 337
    move-object v7, v2

    .line 338
    check-cast v7, Lcom/google/android/gms/internal/ads/PM;

    .line 339
    .line 340
    :goto_e
    if-eqz v7, :cond_18

    .line 341
    .line 342
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/uA;->w(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/PA;

    .line 343
    .line 344
    .line 345
    move-result-object v2

    .line 346
    goto :goto_f

    .line 347
    :cond_18
    move-object/from16 v2, p1

    .line 348
    .line 349
    invoke-static {v2, v0, v4, v4}, Lcom/google/android/gms/internal/ads/cN;->d(Lcom/google/android/gms/internal/ads/WM;Lcom/google/android/gms/internal/ads/p0;ZZ)Lcom/google/android/gms/internal/ads/PA;

    .line 350
    .line 351
    .line 352
    move-result-object v2

    .line 353
    :goto_f
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 354
    .line 355
    .line 356
    move-result v7

    .line 357
    if-eqz v7, :cond_19

    .line 358
    .line 359
    goto :goto_c

    .line 360
    :cond_19
    if-nez v6, :cond_1a

    .line 361
    .line 362
    const/16 v0, 0x80

    .line 363
    .line 364
    const/4 v1, 0x2

    .line 365
    goto :goto_15

    .line 366
    :cond_1a
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/PA;->get(I)Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object v5

    .line 370
    check-cast v5, Lcom/google/android/gms/internal/ads/PM;

    .line 371
    .line 372
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/PM;->c(Lcom/google/android/gms/internal/ads/p0;)Z

    .line 373
    .line 374
    .line 375
    move-result v6

    .line 376
    if-nez v6, :cond_1c

    .line 377
    .line 378
    const/4 v7, 0x1

    .line 379
    :goto_10
    iget v8, v2, Lcom/google/android/gms/internal/ads/PA;->J:I

    .line 380
    .line 381
    if-ge v7, v8, :cond_1c

    .line 382
    .line 383
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/PA;->get(I)Ljava/lang/Object;

    .line 384
    .line 385
    .line 386
    move-result-object v8

    .line 387
    check-cast v8, Lcom/google/android/gms/internal/ads/PM;

    .line 388
    .line 389
    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/ads/PM;->c(Lcom/google/android/gms/internal/ads/p0;)Z

    .line 390
    .line 391
    .line 392
    move-result v9

    .line 393
    if-eqz v9, :cond_1b

    .line 394
    .line 395
    move-object v5, v8

    .line 396
    const/4 v2, 0x0

    .line 397
    const/4 v6, 0x1

    .line 398
    goto :goto_11

    .line 399
    :cond_1b
    add-int/lit8 v7, v7, 0x1

    .line 400
    .line 401
    goto :goto_10

    .line 402
    :cond_1c
    const/4 v2, 0x1

    .line 403
    :goto_11
    if-eq v1, v6, :cond_1d

    .line 404
    .line 405
    const/4 v7, 0x3

    .line 406
    goto :goto_12

    .line 407
    :cond_1d
    const/4 v7, 0x4

    .line 408
    :goto_12
    const/16 v8, 0x8

    .line 409
    .line 410
    if-eqz v6, :cond_1e

    .line 411
    .line 412
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/PM;->d(Lcom/google/android/gms/internal/ads/p0;)Z

    .line 413
    .line 414
    .line 415
    move-result v0

    .line 416
    if-eqz v0, :cond_1e

    .line 417
    .line 418
    const/16 v8, 0x10

    .line 419
    .line 420
    :cond_1e
    iget-boolean v0, v5, Lcom/google/android/gms/internal/ads/PM;->g:Z

    .line 421
    .line 422
    if-eq v1, v0, :cond_1f

    .line 423
    .line 424
    const/4 v0, 0x0

    .line 425
    goto :goto_13

    .line 426
    :cond_1f
    const/16 v0, 0x40

    .line 427
    .line 428
    :goto_13
    if-eq v1, v2, :cond_20

    .line 429
    .line 430
    const/16 v16, 0x0

    .line 431
    .line 432
    goto :goto_14

    .line 433
    :cond_20
    const/16 v16, 0x80

    .line 434
    .line 435
    :goto_14
    or-int v1, v7, v8

    .line 436
    .line 437
    or-int/lit8 v1, v1, 0x20

    .line 438
    .line 439
    or-int/2addr v0, v1

    .line 440
    or-int v0, v0, v16

    .line 441
    .line 442
    or-int/2addr v0, v3

    .line 443
    return v0

    .line 444
    :goto_15
    or-int/2addr v0, v1

    .line 445
    return v0
.end method

.method public final U(Lcom/google/android/gms/internal/ads/PM;Lcom/google/android/gms/internal/ads/p0;Lcom/google/android/gms/internal/ads/p0;)Lcom/google/android/gms/internal/ads/dK;
    .locals 10

    .line 1
    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/PM;->a(Lcom/google/android/gms/internal/ads/p0;Lcom/google/android/gms/internal/ads/p0;)Lcom/google/android/gms/internal/ads/dK;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/VM;->v0:Lcom/google/android/gms/internal/ads/yM;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/oM;->k0(Lcom/google/android/gms/internal/ads/p0;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    :goto_0
    iget v3, v0, Lcom/google/android/gms/internal/ads/dK;->e:I

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    const v1, 0x8000

    .line 24
    .line 25
    .line 26
    or-int/2addr v3, v1

    .line 27
    :cond_1
    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/internal/ads/oM;->m0(Lcom/google/android/gms/internal/ads/PM;Lcom/google/android/gms/internal/ads/p0;)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    iget v4, p0, Lcom/google/android/gms/internal/ads/oM;->B0:I

    .line 32
    .line 33
    if-le v1, v4, :cond_2

    .line 34
    .line 35
    or-int/lit8 v3, v3, 0x40

    .line 36
    .line 37
    :cond_2
    new-instance v1, Lcom/google/android/gms/internal/ads/dK;

    .line 38
    .line 39
    if-eqz v3, :cond_3

    .line 40
    .line 41
    move v9, v3

    .line 42
    const/4 v8, 0x0

    .line 43
    goto :goto_1

    .line 44
    :cond_3
    iget v0, v0, Lcom/google/android/gms/internal/ads/dK;->d:I

    .line 45
    .line 46
    move v8, v0

    .line 47
    const/4 v9, 0x0

    .line 48
    :goto_1
    iget-object v5, p1, Lcom/google/android/gms/internal/ads/PM;->a:Ljava/lang/String;

    .line 49
    .line 50
    move-object v4, v1

    .line 51
    move-object v6, p2

    .line 52
    move-object v7, p3

    .line 53
    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/dK;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/p0;Lcom/google/android/gms/internal/ads/p0;II)V

    .line 54
    .line 55
    .line 56
    return-object v1
.end method

.method public final V(Lcom/google/android/gms/internal/ads/Om;)Lcom/google/android/gms/internal/ads/dK;
    .locals 8

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/Om;->H:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v3, v0

    .line 4
    check-cast v3, Lcom/google/android/gms/internal/ads/p0;

    .line 5
    .line 6
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/oM;->E0:Lcom/google/android/gms/internal/ads/p0;

    .line 10
    .line 11
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/VM;->V(Lcom/google/android/gms/internal/ads/Om;)Lcom/google/android/gms/internal/ads/dK;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/oM;->y0:Lcom/google/android/gms/internal/ads/oL;

    .line 16
    .line 17
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/oL;->H:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Landroid/os/Handler;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    new-instance v7, LK/a;

    .line 24
    .line 25
    const/16 v5, 0x1c

    .line 26
    .line 27
    const/4 v6, 0x0

    .line 28
    move-object v1, v7

    .line 29
    move-object v4, p1

    .line 30
    invoke-direct/range {v1 .. v6}, LK/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 34
    .line 35
    .line 36
    :cond_0
    return-object p1
.end method

.method public final Y(Lcom/google/android/gms/internal/ads/PM;Lcom/google/android/gms/internal/ads/p0;F)Lcom/google/android/gms/internal/ads/KM;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aK;->j:[Lcom/google/android/gms/internal/ads/p0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    array-length v1, v0

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/oM;->m0(Lcom/google/android/gms/internal/ads/PM;Lcom/google/android/gms/internal/ads/p0;)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x1

    .line 12
    const/4 v4, 0x0

    .line 13
    if-ne v1, v3, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    const/4 v5, 0x0

    .line 17
    :goto_0
    if-ge v5, v1, :cond_2

    .line 18
    .line 19
    aget-object v6, v0, v5

    .line 20
    .line 21
    invoke-virtual {p1, p2, v6}, Lcom/google/android/gms/internal/ads/PM;->a(Lcom/google/android/gms/internal/ads/p0;Lcom/google/android/gms/internal/ads/p0;)Lcom/google/android/gms/internal/ads/dK;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    iget v7, v7, Lcom/google/android/gms/internal/ads/dK;->d:I

    .line 26
    .line 27
    if-eqz v7, :cond_1

    .line 28
    .line 29
    invoke-virtual {p0, p1, v6}, Lcom/google/android/gms/internal/ads/oM;->m0(Lcom/google/android/gms/internal/ads/PM;Lcom/google/android/gms/internal/ads/p0;)I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    :goto_1
    iput v2, p0, Lcom/google/android/gms/internal/ads/oM;->B0:I

    .line 41
    .line 42
    sget v0, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 43
    .line 44
    const/16 v1, 0x18

    .line 45
    .line 46
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/PM;->a:Ljava/lang/String;

    .line 47
    .line 48
    if-ge v0, v1, :cond_4

    .line 49
    .line 50
    const-string v5, "OMX.SEC.aac.dec"

    .line 51
    .line 52
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v5

    .line 56
    if-eqz v5, :cond_4

    .line 57
    .line 58
    const-string v5, "samsung"

    .line 59
    .line 60
    sget-object v6, Lcom/google/android/gms/internal/ads/Et;->c:Ljava/lang/String;

    .line 61
    .line 62
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    if-eqz v5, :cond_4

    .line 67
    .line 68
    sget-object v5, Lcom/google/android/gms/internal/ads/Et;->b:Ljava/lang/String;

    .line 69
    .line 70
    const-string v6, "zeroflte"

    .line 71
    .line 72
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    if-nez v6, :cond_3

    .line 77
    .line 78
    const-string v6, "herolte"

    .line 79
    .line 80
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    if-nez v6, :cond_3

    .line 85
    .line 86
    const-string v6, "heroqlte"

    .line 87
    .line 88
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    if-eqz v5, :cond_4

    .line 93
    .line 94
    :cond_3
    const/4 v5, 0x1

    .line 95
    goto :goto_2

    .line 96
    :cond_4
    const/4 v5, 0x0

    .line 97
    :goto_2
    iput-boolean v5, p0, Lcom/google/android/gms/internal/ads/oM;->C0:Z

    .line 98
    .line 99
    const-string v5, "OMX.google.opus.decoder"

    .line 100
    .line 101
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v5

    .line 105
    if-nez v5, :cond_5

    .line 106
    .line 107
    const-string v5, "c2.android.opus.decoder"

    .line 108
    .line 109
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    if-nez v5, :cond_5

    .line 114
    .line 115
    const-string v5, "OMX.google.vorbis.decoder"

    .line 116
    .line 117
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    if-nez v5, :cond_5

    .line 122
    .line 123
    const-string v5, "c2.android.vorbis.decoder"

    .line 124
    .line 125
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-eqz v2, :cond_6

    .line 130
    .line 131
    :cond_5
    const/4 v2, 0x1

    .line 132
    goto :goto_3

    .line 133
    :cond_6
    const/4 v2, 0x0

    .line 134
    :goto_3
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/oM;->D0:Z

    .line 135
    .line 136
    iget v2, p0, Lcom/google/android/gms/internal/ads/oM;->B0:I

    .line 137
    .line 138
    new-instance v7, Landroid/media/MediaFormat;

    .line 139
    .line 140
    invoke-direct {v7}, Landroid/media/MediaFormat;-><init>()V

    .line 141
    .line 142
    .line 143
    const-string v5, "mime"

    .line 144
    .line 145
    iget-object v6, p1, Lcom/google/android/gms/internal/ads/PM;->c:Ljava/lang/String;

    .line 146
    .line 147
    invoke-virtual {v7, v5, v6}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    const-string v5, "channel-count"

    .line 151
    .line 152
    iget v6, p2, Lcom/google/android/gms/internal/ads/p0;->A:I

    .line 153
    .line 154
    invoke-virtual {v7, v5, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 155
    .line 156
    .line 157
    const-string v5, "sample-rate"

    .line 158
    .line 159
    iget v8, p2, Lcom/google/android/gms/internal/ads/p0;->B:I

    .line 160
    .line 161
    invoke-virtual {v7, v5, v8}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 162
    .line 163
    .line 164
    iget-object v5, p2, Lcom/google/android/gms/internal/ads/p0;->p:Ljava/util/List;

    .line 165
    .line 166
    invoke-static {v7, v5}, Lo3/r;->w(Landroid/media/MediaFormat;Ljava/util/List;)V

    .line 167
    .line 168
    .line 169
    const-string v5, "max-input-size"

    .line 170
    .line 171
    invoke-static {v7, v5, v2}, Lo3/r;->r(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 172
    .line 173
    .line 174
    const/16 v2, 0x17

    .line 175
    .line 176
    if-lt v0, v2, :cond_8

    .line 177
    .line 178
    const-string v5, "priority"

    .line 179
    .line 180
    invoke-virtual {v7, v5, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 181
    .line 182
    .line 183
    const/high16 v5, -0x40800000    # -1.0f

    .line 184
    .line 185
    cmpl-float v5, p3, v5

    .line 186
    .line 187
    if-eqz v5, :cond_8

    .line 188
    .line 189
    if-ne v0, v2, :cond_7

    .line 190
    .line 191
    sget-object v2, Lcom/google/android/gms/internal/ads/Et;->d:Ljava/lang/String;

    .line 192
    .line 193
    const-string v5, "ZTE B2017G"

    .line 194
    .line 195
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v5

    .line 199
    if-nez v5, :cond_8

    .line 200
    .line 201
    const-string v5, "AXON 7 mini"

    .line 202
    .line 203
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v2

    .line 207
    if-nez v2, :cond_8

    .line 208
    .line 209
    :cond_7
    const-string v2, "operating-rate"

    .line 210
    .line 211
    invoke-virtual {v7, v2, p3}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 212
    .line 213
    .line 214
    :cond_8
    const/16 p3, 0x1c

    .line 215
    .line 216
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/p0;->m:Ljava/lang/String;

    .line 217
    .line 218
    if-gt v0, p3, :cond_9

    .line 219
    .line 220
    const-string p3, "audio/ac4"

    .line 221
    .line 222
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    move-result p3

    .line 226
    if-eqz p3, :cond_9

    .line 227
    .line 228
    const-string p3, "ac4-is-sync"

    .line 229
    .line 230
    invoke-virtual {v7, p3, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 231
    .line 232
    .line 233
    :cond_9
    const-string p3, "audio/raw"

    .line 234
    .line 235
    if-lt v0, v1, :cond_a

    .line 236
    .line 237
    new-instance v1, Lcom/google/android/gms/internal/ads/K;

    .line 238
    .line 239
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/K;-><init>()V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/ads/K;->f(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    iput v6, v1, Lcom/google/android/gms/internal/ads/K;->z:I

    .line 246
    .line 247
    iput v8, v1, Lcom/google/android/gms/internal/ads/K;->A:I

    .line 248
    .line 249
    const/4 v3, 0x4

    .line 250
    iput v3, v1, Lcom/google/android/gms/internal/ads/K;->B:I

    .line 251
    .line 252
    new-instance v5, Lcom/google/android/gms/internal/ads/p0;

    .line 253
    .line 254
    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/ads/p0;-><init>(Lcom/google/android/gms/internal/ads/K;)V

    .line 255
    .line 256
    .line 257
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/oM;->z0:Lcom/google/android/gms/internal/ads/TL;

    .line 258
    .line 259
    check-cast v1, Lcom/google/android/gms/internal/ads/lM;

    .line 260
    .line 261
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/lM;->k(Lcom/google/android/gms/internal/ads/p0;)I

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    const/4 v5, 0x2

    .line 266
    if-ne v1, v5, :cond_a

    .line 267
    .line 268
    const-string v1, "pcm-encoding"

    .line 269
    .line 270
    invoke-virtual {v7, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 271
    .line 272
    .line 273
    :cond_a
    const/16 v1, 0x20

    .line 274
    .line 275
    if-lt v0, v1, :cond_b

    .line 276
    .line 277
    const-string v1, "max-output-channel-count"

    .line 278
    .line 279
    const/16 v3, 0x63

    .line 280
    .line 281
    invoke-virtual {v7, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 282
    .line 283
    .line 284
    :cond_b
    const/16 v1, 0x23

    .line 285
    .line 286
    if-lt v0, v1, :cond_c

    .line 287
    .line 288
    iget v0, p0, Lcom/google/android/gms/internal/ads/oM;->K0:I

    .line 289
    .line 290
    neg-int v0, v0

    .line 291
    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    const-string v1, "importance"

    .line 296
    .line 297
    invoke-virtual {v7, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 298
    .line 299
    .line 300
    :cond_c
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/PM;->b:Ljava/lang/String;

    .line 301
    .line 302
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    move-result v0

    .line 306
    const/4 v1, 0x0

    .line 307
    if-eqz v0, :cond_d

    .line 308
    .line 309
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    move-result p3

    .line 313
    if-nez p3, :cond_d

    .line 314
    .line 315
    move-object v1, p2

    .line 316
    :cond_d
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/oM;->F0:Lcom/google/android/gms/internal/ads/p0;

    .line 317
    .line 318
    new-instance p3, Lcom/google/android/gms/internal/ads/KM;

    .line 319
    .line 320
    const/4 v9, 0x0

    .line 321
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/oM;->A0:Lcom/google/android/gms/internal/ads/JM;

    .line 322
    .line 323
    move-object v5, p3

    .line 324
    move-object v6, p1

    .line 325
    move-object v8, p2

    .line 326
    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/KM;-><init>(Lcom/google/android/gms/internal/ads/PM;Landroid/media/MediaFormat;Lcom/google/android/gms/internal/ads/p0;Landroid/view/Surface;Lcom/google/android/gms/internal/ads/JM;)V

    .line 327
    .line 328
    .line 329
    return-object p3
.end method

.method public final Z(Lcom/google/android/gms/internal/ads/WM;Lcom/google/android/gms/internal/ads/p0;)Ljava/util/ArrayList;
    .locals 3

    .line 1
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/p0;->m:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object p1, Lcom/google/android/gms/internal/ads/PA;->K:Lcom/google/android/gms/internal/ads/PA;

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oM;->z0:Lcom/google/android/gms/internal/ads/TL;

    .line 9
    .line 10
    check-cast v0, Lcom/google/android/gms/internal/ads/lM;

    .line 11
    .line 12
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/lM;->k(Lcom/google/android/gms/internal/ads/p0;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    const-string v0, "audio/raw"

    .line 20
    .line 21
    invoke-static {v0, v1, v1}, Lcom/google/android/gms/internal/ads/cN;->c(Ljava/lang/String;ZZ)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/google/android/gms/internal/ads/PM;

    .line 38
    .line 39
    :goto_0
    if-eqz v0, :cond_2

    .line 40
    .line 41
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uA;->w(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/PA;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    invoke-static {p1, p2, v1, v1}, Lcom/google/android/gms/internal/ads/cN;->d(Lcom/google/android/gms/internal/ads/WM;Lcom/google/android/gms/internal/ads/p0;ZZ)Lcom/google/android/gms/internal/ads/PA;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    :goto_1
    sget-object v0, Lcom/google/android/gms/internal/ads/cN;->a:Ljava/util/regex/Pattern;

    .line 51
    .line 52
    new-instance v0, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 55
    .line 56
    .line 57
    new-instance p1, Lcom/google/android/gms/internal/ads/Xu;

    .line 58
    .line 59
    const/16 v1, 0x1c

    .line 60
    .line 61
    invoke-direct {p1, p2, v1}, Lcom/google/android/gms/internal/ads/Xu;-><init>(Ljava/lang/Object;I)V

    .line 62
    .line 63
    .line 64
    new-instance p2, Lcom/google/android/gms/internal/ads/XM;

    .line 65
    .line 66
    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/XM;-><init>(Lcom/google/android/gms/internal/ads/bN;)V

    .line 67
    .line 68
    .line 69
    invoke-static {v0, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 70
    .line 71
    .line 72
    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/ob;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oM;->z0:Lcom/google/android/gms/internal/ads/TL;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/lM;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/google/android/gms/internal/ads/ob;

    .line 9
    .line 10
    iget v2, p1, Lcom/google/android/gms/internal/ads/ob;->a:F

    .line 11
    .line 12
    const/high16 v3, 0x41000000    # 8.0f

    .line 13
    .line 14
    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const v4, 0x3dcccccd    # 0.1f

    .line 19
    .line 20
    .line 21
    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    iget v5, p1, Lcom/google/android/gms/internal/ads/ob;->b:F

    .line 26
    .line 27
    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/ob;-><init>(FF)V

    .line 36
    .line 37
    .line 38
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/lM;->w:Lcom/google/android/gms/internal/ads/ob;

    .line 39
    .line 40
    new-instance v1, Lcom/google/android/gms/internal/ads/gM;

    .line 41
    .line 42
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    move-object v4, v1

    .line 48
    move-object v5, p1

    .line 49
    move-wide v6, v8

    .line 50
    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/gM;-><init>(Lcom/google/android/gms/internal/ads/ob;JJ)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/lM;->i()Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_0

    .line 58
    .line 59
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/lM;->u:Lcom/google/android/gms/internal/ads/gM;

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/lM;->v:Lcom/google/android/gms/internal/ads/gM;

    .line 63
    .line 64
    :goto_0
    return-void
.end method

.method public final b(ILjava/lang/Object;)V
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/oM;->z0:Lcom/google/android/gms/internal/ads/TL;

    .line 3
    .line 4
    if-eq p1, v0, :cond_e

    .line 5
    .line 6
    const/4 v0, 0x3

    .line 7
    if-eq p1, v0, :cond_b

    .line 8
    .line 9
    const/4 v0, 0x6

    .line 10
    if-eq p1, v0, :cond_8

    .line 11
    .line 12
    const/16 v0, 0xc

    .line 13
    .line 14
    if-eq p1, v0, :cond_6

    .line 15
    .line 16
    const/16 v0, 0x10

    .line 17
    .line 18
    const/16 v2, 0x23

    .line 19
    .line 20
    if-eq p1, v0, :cond_5

    .line 21
    .line 22
    const/16 v0, 0x9

    .line 23
    .line 24
    if-eq p1, v0, :cond_3

    .line 25
    .line 26
    const/16 v0, 0xa

    .line 27
    .line 28
    if-eq p1, v0, :cond_1

    .line 29
    .line 30
    const/16 v0, 0xb

    .line 31
    .line 32
    if-ne p1, v0, :cond_0

    .line 33
    .line 34
    check-cast p2, Lcom/google/android/gms/internal/ads/yK;

    .line 35
    .line 36
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/VM;->D:Lcom/google/android/gms/internal/ads/yK;

    .line 37
    .line 38
    :cond_0
    return-void

    .line 39
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    check-cast p2, Ljava/lang/Integer;

    .line 43
    .line 44
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    check-cast v1, Lcom/google/android/gms/internal/ads/lM;

    .line 49
    .line 50
    iget p2, v1, Lcom/google/android/gms/internal/ads/lM;->O:I

    .line 51
    .line 52
    if-eq p2, p1, :cond_2

    .line 53
    .line 54
    iput p1, v1, Lcom/google/android/gms/internal/ads/lM;->O:I

    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/lM;->m()V

    .line 57
    .line 58
    .line 59
    :cond_2
    sget p2, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 60
    .line 61
    if-lt p2, v2, :cond_7

    .line 62
    .line 63
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/oM;->A0:Lcom/google/android/gms/internal/ads/JM;

    .line 64
    .line 65
    if-eqz p2, :cond_7

    .line 66
    .line 67
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/JM;->d(I)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    check-cast p2, Ljava/lang/Boolean;

    .line 75
    .line 76
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    check-cast v1, Lcom/google/android/gms/internal/ads/lM;

    .line 81
    .line 82
    iput-boolean p1, v1, Lcom/google/android/gms/internal/ads/lM;->x:Z

    .line 83
    .line 84
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/lM;->w:Lcom/google/android/gms/internal/ads/ob;

    .line 85
    .line 86
    new-instance p1, Lcom/google/android/gms/internal/ads/gM;

    .line 87
    .line 88
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    move-object v2, p1

    .line 94
    move-wide v4, v6

    .line 95
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/gM;-><init>(Lcom/google/android/gms/internal/ads/ob;JJ)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/lM;->i()Z

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    if-eqz p2, :cond_4

    .line 103
    .line 104
    iput-object p1, v1, Lcom/google/android/gms/internal/ads/lM;->u:Lcom/google/android/gms/internal/ads/gM;

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_4
    iput-object p1, v1, Lcom/google/android/gms/internal/ads/lM;->v:Lcom/google/android/gms/internal/ads/gM;

    .line 108
    .line 109
    :goto_0
    return-void

    .line 110
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    check-cast p2, Ljava/lang/Integer;

    .line 114
    .line 115
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    iput p1, p0, Lcom/google/android/gms/internal/ads/oM;->K0:I

    .line 120
    .line 121
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/VM;->G:Lcom/google/android/gms/internal/ads/MM;

    .line 122
    .line 123
    if-eqz p1, :cond_7

    .line 124
    .line 125
    sget p2, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 126
    .line 127
    if-lt p2, v2, :cond_7

    .line 128
    .line 129
    new-instance p2, Landroid/os/Bundle;

    .line 130
    .line 131
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 132
    .line 133
    .line 134
    iget v0, p0, Lcom/google/android/gms/internal/ads/oM;->K0:I

    .line 135
    .line 136
    neg-int v0, v0

    .line 137
    const/4 v1, 0x0

    .line 138
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    const-string v1, "importance"

    .line 143
    .line 144
    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 145
    .line 146
    .line 147
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/MM;->i(Landroid/os/Bundle;)V

    .line 148
    .line 149
    .line 150
    return-void

    .line 151
    :cond_6
    sget p1, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 152
    .line 153
    const/16 v0, 0x17

    .line 154
    .line 155
    if-lt p1, v0, :cond_7

    .line 156
    .line 157
    invoke-static {v1, p2}, Lcom/google/android/gms/internal/ads/mM;->a(Lcom/google/android/gms/internal/ads/TL;Ljava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    :cond_7
    return-void

    .line 161
    :cond_8
    check-cast p2, Lcom/google/android/gms/internal/ads/bK;

    .line 162
    .line 163
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    .line 165
    .line 166
    check-cast v1, Lcom/google/android/gms/internal/ads/lM;

    .line 167
    .line 168
    iget-object p1, v1, Lcom/google/android/gms/internal/ads/lM;->P:Lcom/google/android/gms/internal/ads/bK;

    .line 169
    .line 170
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/bK;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result p1

    .line 174
    if-eqz p1, :cond_9

    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_9
    iget-object p1, v1, Lcom/google/android/gms/internal/ads/lM;->p:Landroid/media/AudioTrack;

    .line 178
    .line 179
    if-eqz p1, :cond_a

    .line 180
    .line 181
    iget-object p1, v1, Lcom/google/android/gms/internal/ads/lM;->P:Lcom/google/android/gms/internal/ads/bK;

    .line 182
    .line 183
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    .line 185
    .line 186
    :cond_a
    iput-object p2, v1, Lcom/google/android/gms/internal/ads/lM;->P:Lcom/google/android/gms/internal/ads/bK;

    .line 187
    .line 188
    :goto_1
    return-void

    .line 189
    :cond_b
    check-cast p2, Lcom/google/android/gms/internal/ads/bH;

    .line 190
    .line 191
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    .line 193
    .line 194
    check-cast v1, Lcom/google/android/gms/internal/ads/lM;

    .line 195
    .line 196
    iget-object p1, v1, Lcom/google/android/gms/internal/ads/lM;->t:Lcom/google/android/gms/internal/ads/bH;

    .line 197
    .line 198
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/bH;->equals(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    if-eqz p1, :cond_c

    .line 203
    .line 204
    goto :goto_2

    .line 205
    :cond_c
    iput-object p2, v1, Lcom/google/android/gms/internal/ads/lM;->t:Lcom/google/android/gms/internal/ads/bH;

    .line 206
    .line 207
    iget-object p1, v1, Lcom/google/android/gms/internal/ads/lM;->r:Lcom/google/android/gms/internal/ads/GL;

    .line 208
    .line 209
    if-eqz p1, :cond_d

    .line 210
    .line 211
    iput-object p2, p1, Lcom/google/android/gms/internal/ads/GL;->h:Lcom/google/android/gms/internal/ads/bH;

    .line 212
    .line 213
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/GL;->g:Lcom/google/android/gms/internal/ads/IL;

    .line 214
    .line 215
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/GL;->a:Landroid/content/Context;

    .line 216
    .line 217
    invoke-static {v2, p2, v0}, Lcom/google/android/gms/internal/ads/EL;->b(Landroid/content/Context;Lcom/google/android/gms/internal/ads/bH;Lcom/google/android/gms/internal/ads/IL;)Lcom/google/android/gms/internal/ads/EL;

    .line 218
    .line 219
    .line 220
    move-result-object p2

    .line 221
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/GL;->b(Lcom/google/android/gms/internal/ads/EL;)V

    .line 222
    .line 223
    .line 224
    :cond_d
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/lM;->m()V

    .line 225
    .line 226
    .line 227
    :goto_2
    return-void

    .line 228
    :cond_e
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 229
    .line 230
    .line 231
    check-cast p2, Ljava/lang/Float;

    .line 232
    .line 233
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 234
    .line 235
    .line 236
    move-result p1

    .line 237
    check-cast v1, Lcom/google/android/gms/internal/ads/lM;

    .line 238
    .line 239
    iget p2, v1, Lcom/google/android/gms/internal/ads/lM;->G:F

    .line 240
    .line 241
    cmpl-float p2, p2, p1

    .line 242
    .line 243
    if-eqz p2, :cond_f

    .line 244
    .line 245
    iput p1, v1, Lcom/google/android/gms/internal/ads/lM;->G:F

    .line 246
    .line 247
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/lM;->i()Z

    .line 248
    .line 249
    .line 250
    move-result p1

    .line 251
    if-eqz p1, :cond_f

    .line 252
    .line 253
    iget-object p1, v1, Lcom/google/android/gms/internal/ads/lM;->p:Landroid/media/AudioTrack;

    .line 254
    .line 255
    iget p2, v1, Lcom/google/android/gms/internal/ads/lM;->G:F

    .line 256
    .line 257
    invoke-virtual {p1, p2}, Landroid/media/AudioTrack;->setVolume(F)I

    .line 258
    .line 259
    .line 260
    :cond_f
    return-void
.end method

.method public final c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oM;->z0:Lcom/google/android/gms/internal/ads/TL;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/lM;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/lM;->r:Lcom/google/android/gms/internal/ads/GL;

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/GL;->i:Z

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/GL;->f:Lcom/google/android/gms/internal/ads/EL;

    .line 16
    .line 17
    sget v1, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 18
    .line 19
    const/16 v2, 0x17

    .line 20
    .line 21
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/GL;->a:Landroid/content/Context;

    .line 22
    .line 23
    if-lt v1, v2, :cond_1

    .line 24
    .line 25
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/GL;->c:LB0/r;

    .line 26
    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/FL;->b(Landroid/content/Context;Landroid/media/AudioDeviceCallback;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/GL;->d:Lf/G;

    .line 33
    .line 34
    invoke-virtual {v3, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/GL;->e:LD0/e;

    .line 38
    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    iget-object v2, v1, LD0/e;->b:Landroid/content/ContentResolver;

    .line 42
    .line 43
    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    const/4 v1, 0x0

    .line 47
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/GL;->i:Z

    .line 48
    .line 49
    :cond_3
    :goto_0
    sget v0, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 50
    .line 51
    const/16 v1, 0x23

    .line 52
    .line 53
    if-lt v0, v1, :cond_4

    .line 54
    .line 55
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oM;->A0:Lcom/google/android/gms/internal/ads/JM;

    .line 56
    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/JM;->b()V

    .line 60
    .line 61
    .line 62
    :cond_4
    return-void
.end method

.method public final c0(Lcom/google/android/gms/internal/ads/VJ;)V
    .locals 2

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/VJ;->c:Lcom/google/android/gms/internal/ads/p0;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/p0;->m:Ljava/lang/String;

    .line 12
    .line 13
    const-string v1, "audio/opus"

    .line 14
    .line 15
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/VM;->b0:Z

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/VJ;->h:Ljava/nio/ByteBuffer;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/VJ;->c:Lcom/google/android/gms/internal/ads/p0;

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    const/16 v1, 0x8

    .line 40
    .line 41
    if-ne p1, v1, :cond_0

    .line 42
    .line 43
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 44
    .line 45
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getLong()J

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/oM;->z0:Lcom/google/android/gms/internal/ads/TL;

    .line 53
    .line 54
    check-cast p1, Lcom/google/android/gms/internal/ads/lM;

    .line 55
    .line 56
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/lM;->p:Landroid/media/AudioTrack;

    .line 57
    .line 58
    if-eqz p1, :cond_0

    .line 59
    .line 60
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/lM;->j(Landroid/media/AudioTrack;)Z

    .line 61
    .line 62
    .line 63
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oM;->z0:Lcom/google/android/gms/internal/ads/TL;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/oM;->J0:Z

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/VM;->W()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/VM;->H()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    .line 12
    .line 13
    :try_start_1
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/VM;->v0:Lcom/google/android/gms/internal/ads/yM;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    .line 15
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/oM;->I0:Z

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/oM;->I0:Z

    .line 20
    .line 21
    check-cast v0, Lcom/google/android/gms/internal/ads/lM;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/lM;->o()V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void

    .line 27
    :catchall_0
    move-exception v2

    .line 28
    goto :goto_0

    .line 29
    :catchall_1
    move-exception v3

    .line 30
    :try_start_2
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/VM;->v0:Lcom/google/android/gms/internal/ads/yM;

    .line 31
    .line 32
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    :goto_0
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/oM;->I0:Z

    .line 34
    .line 35
    if-nez v3, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/oM;->I0:Z

    .line 39
    .line 40
    check-cast v0, Lcom/google/android/gms/internal/ads/lM;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/lM;->o()V

    .line 43
    .line 44
    .line 45
    :goto_1
    throw v2
.end method

.method public final d0(Ljava/lang/Exception;)V
    .locals 4

    .line 1
    const-string v0, "MediaCodecAudioRenderer"

    .line 2
    .line 3
    const-string v1, "Audio codec error"

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/Zo;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oM;->y0:Lcom/google/android/gms/internal/ads/oL;

    .line 9
    .line 10
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/oL;->H:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v1, Landroid/os/Handler;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    new-instance v2, Lcom/google/android/gms/internal/ads/OL;

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-direct {v2, v0, p1, v3}, Lcom/google/android/gms/internal/ads/OL;-><init>(Lcom/google/android/gms/internal/ads/oL;Ljava/lang/Exception;I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oM;->z0:Lcom/google/android/gms/internal/ads/TL;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/lM;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/lM;->n()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final e0(Ljava/lang/String;JJ)V
    .locals 10

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/oM;->y0:Lcom/google/android/gms/internal/ads/oL;

    .line 2
    .line 3
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/oL;->H:Ljava/lang/Object;

    .line 4
    .line 5
    move-object v8, v0

    .line 6
    check-cast v8, Landroid/os/Handler;

    .line 7
    .line 8
    if-eqz v8, :cond_0

    .line 9
    .line 10
    new-instance v9, Lcom/google/android/gms/internal/ads/t;

    .line 11
    .line 12
    const/4 v7, 0x1

    .line 13
    move-object v0, v9

    .line 14
    move-object v2, p1

    .line 15
    move-wide v3, p2

    .line 16
    move-wide v5, p4

    .line 17
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/t;-><init>(Ljava/lang/Object;Ljava/lang/String;JJI)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final f()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/oM;->n0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oM;->z0:Lcom/google/android/gms/internal/ads/TL;

    .line 5
    .line 6
    check-cast v0, Lcom/google/android/gms/internal/ads/lM;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/lM;->N:Z

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/lM;->i()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/lM;->f:Lcom/google/android/gms/internal/ads/WL;

    .line 18
    .line 19
    const-wide/16 v3, 0x0

    .line 20
    .line 21
    iput-wide v3, v2, Lcom/google/android/gms/internal/ads/WL;->k:J

    .line 22
    .line 23
    iput v1, v2, Lcom/google/android/gms/internal/ads/WL;->w:I

    .line 24
    .line 25
    iput v1, v2, Lcom/google/android/gms/internal/ads/WL;->v:I

    .line 26
    .line 27
    iput-wide v3, v2, Lcom/google/android/gms/internal/ads/WL;->l:J

    .line 28
    .line 29
    iput-wide v3, v2, Lcom/google/android/gms/internal/ads/WL;->C:J

    .line 30
    .line 31
    iput-wide v3, v2, Lcom/google/android/gms/internal/ads/WL;->F:J

    .line 32
    .line 33
    iput-boolean v1, v2, Lcom/google/android/gms/internal/ads/WL;->j:Z

    .line 34
    .line 35
    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/WL;->x:J

    .line 36
    .line 37
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    cmp-long v7, v3, v5

    .line 43
    .line 44
    if-nez v7, :cond_0

    .line 45
    .line 46
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/WL;->e:Lcom/google/android/gms/internal/ads/VL;

    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/VL;->a(I)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/WL;->d()J

    .line 56
    .line 57
    .line 58
    move-result-wide v3

    .line 59
    iput-wide v3, v2, Lcom/google/android/gms/internal/ads/WL;->z:J

    .line 60
    .line 61
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/lM;->p:Landroid/media/AudioTrack;

    .line 62
    .line 63
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/lM;->j(Landroid/media/AudioTrack;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_1

    .line 68
    .line 69
    :goto_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/lM;->p:Landroid/media/AudioTrack;

    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 72
    .line 73
    .line 74
    :cond_1
    return-void
.end method

.method public final f0(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oM;->y0:Lcom/google/android/gms/internal/ads/oL;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/oL;->H:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Landroid/os/Handler;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v2, Lcom/google/android/gms/internal/ads/co;

    .line 10
    .line 11
    const/16 v3, 0x14

    .line 12
    .line 13
    invoke-direct {v2, v3, v0, p1}, Lcom/google/android/gms/internal/ads/co;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final g0(Lcom/google/android/gms/internal/ads/p0;Landroid/media/MediaFormat;)V
    .locals 13

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    const/4 v1, 0x7

    .line 4
    const/4 v2, 0x4

    .line 5
    const/4 v3, 0x5

    .line 6
    const/4 v4, 0x3

    .line 7
    const/4 v5, 0x6

    .line 8
    const/4 v6, 0x2

    .line 9
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/oM;->F0:Lcom/google/android/gms/internal/ads/p0;

    .line 10
    .line 11
    const/4 v8, 0x1

    .line 12
    const/4 v9, 0x0

    .line 13
    const/4 v10, 0x0

    .line 14
    if-eqz v7, :cond_0

    .line 15
    .line 16
    move-object p1, v7

    .line 17
    goto/16 :goto_3

    .line 18
    .line 19
    :cond_0
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/VM;->G:Lcom/google/android/gms/internal/ads/MM;

    .line 20
    .line 21
    if-nez v7, :cond_1

    .line 22
    .line 23
    goto/16 :goto_3

    .line 24
    .line 25
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    iget-object v7, p1, Lcom/google/android/gms/internal/ads/p0;->m:Ljava/lang/String;

    .line 29
    .line 30
    const-string v11, "audio/raw"

    .line 31
    .line 32
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    if-eqz v7, :cond_2

    .line 37
    .line 38
    iget v7, p1, Lcom/google/android/gms/internal/ads/p0;->C:I

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    sget v7, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 42
    .line 43
    const/16 v12, 0x18

    .line 44
    .line 45
    if-lt v7, v12, :cond_3

    .line 46
    .line 47
    const-string v7, "pcm-encoding"

    .line 48
    .line 49
    invoke-virtual {p2, v7}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v12

    .line 53
    if-eqz v12, :cond_3

    .line 54
    .line 55
    invoke-virtual {p2, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    goto :goto_0

    .line 60
    :cond_3
    const-string v7, "v-bits-per-sample"

    .line 61
    .line 62
    invoke-virtual {p2, v7}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result v12

    .line 66
    if-eqz v12, :cond_4

    .line 67
    .line 68
    invoke-virtual {p2, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/Et;->r(I)I

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    goto :goto_0

    .line 77
    :cond_4
    const/4 v7, 0x2

    .line 78
    :goto_0
    new-instance v12, Lcom/google/android/gms/internal/ads/K;

    .line 79
    .line 80
    invoke-direct {v12}, Lcom/google/android/gms/internal/ads/K;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v12, v11}, Lcom/google/android/gms/internal/ads/K;->f(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iput v7, v12, Lcom/google/android/gms/internal/ads/K;->B:I

    .line 87
    .line 88
    iget v7, p1, Lcom/google/android/gms/internal/ads/p0;->D:I

    .line 89
    .line 90
    iput v7, v12, Lcom/google/android/gms/internal/ads/K;->C:I

    .line 91
    .line 92
    iget v7, p1, Lcom/google/android/gms/internal/ads/p0;->E:I

    .line 93
    .line 94
    iput v7, v12, Lcom/google/android/gms/internal/ads/K;->D:I

    .line 95
    .line 96
    iget-object v7, p1, Lcom/google/android/gms/internal/ads/p0;->k:Lcom/google/android/gms/internal/ads/Q9;

    .line 97
    .line 98
    iput-object v7, v12, Lcom/google/android/gms/internal/ads/K;->j:Lcom/google/android/gms/internal/ads/Q9;

    .line 99
    .line 100
    iget-object v7, p1, Lcom/google/android/gms/internal/ads/p0;->a:Ljava/lang/String;

    .line 101
    .line 102
    iput-object v7, v12, Lcom/google/android/gms/internal/ads/K;->a:Ljava/lang/String;

    .line 103
    .line 104
    iget-object v7, p1, Lcom/google/android/gms/internal/ads/p0;->b:Ljava/lang/String;

    .line 105
    .line 106
    iput-object v7, v12, Lcom/google/android/gms/internal/ads/K;->b:Ljava/lang/String;

    .line 107
    .line 108
    iget-object v7, p1, Lcom/google/android/gms/internal/ads/p0;->c:Ljava/util/List;

    .line 109
    .line 110
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/uA;->t(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/uA;

    .line 111
    .line 112
    .line 113
    move-result-object v7

    .line 114
    iput-object v7, v12, Lcom/google/android/gms/internal/ads/K;->c:Ljava/util/List;

    .line 115
    .line 116
    iget-object v7, p1, Lcom/google/android/gms/internal/ads/p0;->d:Ljava/lang/String;

    .line 117
    .line 118
    iput-object v7, v12, Lcom/google/android/gms/internal/ads/K;->d:Ljava/lang/String;

    .line 119
    .line 120
    iget v7, p1, Lcom/google/android/gms/internal/ads/p0;->e:I

    .line 121
    .line 122
    iput v7, v12, Lcom/google/android/gms/internal/ads/K;->e:I

    .line 123
    .line 124
    iget v7, p1, Lcom/google/android/gms/internal/ads/p0;->f:I

    .line 125
    .line 126
    iput v7, v12, Lcom/google/android/gms/internal/ads/K;->f:I

    .line 127
    .line 128
    const-string v7, "channel-count"

    .line 129
    .line 130
    invoke-virtual {p2, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    move-result v7

    .line 134
    iput v7, v12, Lcom/google/android/gms/internal/ads/K;->z:I

    .line 135
    .line 136
    const-string v7, "sample-rate"

    .line 137
    .line 138
    invoke-virtual {p2, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    move-result p2

    .line 142
    iput p2, v12, Lcom/google/android/gms/internal/ads/K;->A:I

    .line 143
    .line 144
    new-instance p2, Lcom/google/android/gms/internal/ads/p0;

    .line 145
    .line 146
    invoke-direct {p2, v12}, Lcom/google/android/gms/internal/ads/p0;-><init>(Lcom/google/android/gms/internal/ads/K;)V

    .line 147
    .line 148
    .line 149
    iget-boolean v7, p0, Lcom/google/android/gms/internal/ads/oM;->C0:Z

    .line 150
    .line 151
    iget v11, p2, Lcom/google/android/gms/internal/ads/p0;->A:I

    .line 152
    .line 153
    if-eqz v7, :cond_6

    .line 154
    .line 155
    if-ne v11, v5, :cond_6

    .line 156
    .line 157
    iget p1, p1, Lcom/google/android/gms/internal/ads/p0;->A:I

    .line 158
    .line 159
    if-ge p1, v5, :cond_6

    .line 160
    .line 161
    new-array v9, p1, [I

    .line 162
    .line 163
    const/4 v0, 0x0

    .line 164
    :goto_1
    if-ge v0, p1, :cond_5

    .line 165
    .line 166
    aput v0, v9, v0

    .line 167
    .line 168
    add-int/2addr v0, v8

    .line 169
    goto :goto_1

    .line 170
    :cond_5
    :goto_2
    move-object p1, p2

    .line 171
    goto :goto_3

    .line 172
    :cond_6
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/oM;->D0:Z

    .line 173
    .line 174
    if-eqz p1, :cond_5

    .line 175
    .line 176
    if-eq v11, v4, :cond_b

    .line 177
    .line 178
    if-eq v11, v3, :cond_a

    .line 179
    .line 180
    if-eq v11, v5, :cond_9

    .line 181
    .line 182
    if-eq v11, v1, :cond_8

    .line 183
    .line 184
    if-eq v11, v0, :cond_7

    .line 185
    .line 186
    goto :goto_2

    .line 187
    :cond_7
    new-array v9, v0, [I

    .line 188
    .line 189
    fill-array-data v9, :array_0

    .line 190
    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_8
    new-array v9, v1, [I

    .line 194
    .line 195
    fill-array-data v9, :array_1

    .line 196
    .line 197
    .line 198
    goto :goto_2

    .line 199
    :cond_9
    new-array v9, v5, [I

    .line 200
    .line 201
    fill-array-data v9, :array_2

    .line 202
    .line 203
    .line 204
    goto :goto_2

    .line 205
    :cond_a
    filled-new-array {v10, v6, v8, v4, v2}, [I

    .line 206
    .line 207
    .line 208
    move-result-object v9

    .line 209
    goto :goto_2

    .line 210
    :cond_b
    filled-new-array {v10, v6, v8}, [I

    .line 211
    .line 212
    .line 213
    move-result-object v9

    .line 214
    goto :goto_2

    .line 215
    :goto_3
    :try_start_0
    sget p2, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 216
    .line 217
    const/16 v0, 0x1d

    .line 218
    .line 219
    if-lt p2, v0, :cond_e

    .line 220
    .line 221
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/VM;->b0:Z

    .line 222
    .line 223
    if-eqz v1, :cond_c

    .line 224
    .line 225
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aK;->u()V

    .line 226
    .line 227
    .line 228
    goto :goto_4

    .line 229
    :catch_0
    move-exception p1

    .line 230
    goto :goto_6

    .line 231
    :cond_c
    :goto_4
    if-lt p2, v0, :cond_d

    .line 232
    .line 233
    goto :goto_5

    .line 234
    :cond_d
    const/4 v8, 0x0

    .line 235
    :goto_5
    invoke-static {v8}, Lo3/r;->M(Z)V

    .line 236
    .line 237
    .line 238
    :cond_e
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/oM;->z0:Lcom/google/android/gms/internal/ads/TL;

    .line 239
    .line 240
    check-cast p2, Lcom/google/android/gms/internal/ads/lM;

    .line 241
    .line 242
    invoke-virtual {p2, p1, v9}, Lcom/google/android/gms/internal/ads/lM;->l(Lcom/google/android/gms/internal/ads/p0;[I)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/QL; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    .line 244
    .line 245
    return-void

    .line 246
    :goto_6
    iget-object p2, p1, Lcom/google/android/gms/internal/ads/QL;->G:Lcom/google/android/gms/internal/ads/p0;

    .line 247
    .line 248
    const/16 v0, 0x1389

    .line 249
    .line 250
    invoke-virtual {p0, v0, p2, p1, v10}, Lcom/google/android/gms/internal/ads/aK;->s(ILcom/google/android/gms/internal/ads/p0;Ljava/lang/Exception;Z)Lcom/google/android/gms/internal/ads/jK;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    throw p1

    .line 255
    :array_0
    .array-data 4
        0x0
        0x2
        0x1
        0x7
        0x5
        0x6
        0x3
        0x4
    .end array-data

    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    .line 261
    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    :array_1
    .array-data 4
        0x0
        0x2
        0x1
        0x6
        0x5
        0x3
        0x4
    .end array-data

    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    .line 288
    .line 289
    .line 290
    .line 291
    .line 292
    .line 293
    :array_2
    .array-data 4
        0x0
        0x2
        0x1
        0x5
        0x3
        0x4
    .end array-data
.end method

.method public final h0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oM;->z0:Lcom/google/android/gms/internal/ads/TL;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/lM;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/lM;->D:Z

    .line 7
    .line 8
    return-void
.end method

.method public final i0()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/oM;->z0:Lcom/google/android/gms/internal/ads/TL;

    .line 3
    .line 4
    check-cast v1, Lcom/google/android/gms/internal/ads/lM;

    .line 5
    .line 6
    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/lM;->K:Z

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/lM;->i()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/lM;->h()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/lM;->e()V

    .line 23
    .line 24
    .line 25
    iput-boolean v0, v1, Lcom/google/android/gms/internal/ads/lM;->K:Z
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/SL; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    :cond_0
    return-void

    .line 28
    :catch_0
    move-exception v1

    .line 29
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/VM;->b0:Z

    .line 30
    .line 31
    if-eq v0, v2, :cond_1

    .line 32
    .line 33
    const/16 v0, 0x138a

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/16 v0, 0x138b

    .line 37
    .line 38
    :goto_0
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/SL;->I:Lcom/google/android/gms/internal/ads/p0;

    .line 39
    .line 40
    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/SL;->H:Z

    .line 41
    .line 42
    invoke-virtual {p0, v0, v2, v1, v3}, Lcom/google/android/gms/internal/ads/aK;->s(ILcom/google/android/gms/internal/ads/p0;Ljava/lang/Exception;Z)Lcom/google/android/gms/internal/ads/jK;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    throw v0
.end method

.method public final j0(JJLcom/google/android/gms/internal/ads/MM;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/gms/internal/ads/p0;)Z
    .locals 0

    .line 1
    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/oM;->F0:Lcom/google/android/gms/internal/ads/p0;

    .line 5
    .line 6
    const/4 p2, 0x1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    and-int/lit8 p1, p8, 0x2

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    invoke-interface {p5, p7}, Lcom/google/android/gms/internal/ads/MM;->O(I)V

    .line 17
    .line 18
    .line 19
    return p2

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/oM;->z0:Lcom/google/android/gms/internal/ads/TL;

    .line 21
    .line 22
    if-eqz p12, :cond_2

    .line 23
    .line 24
    if-eqz p5, :cond_1

    .line 25
    .line 26
    invoke-interface {p5, p7}, Lcom/google/android/gms/internal/ads/MM;->O(I)V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/VM;->q0:Lcom/google/android/gms/internal/ads/cK;

    .line 30
    .line 31
    iget p4, p3, Lcom/google/android/gms/internal/ads/cK;->f:I

    .line 32
    .line 33
    add-int/2addr p4, p9

    .line 34
    iput p4, p3, Lcom/google/android/gms/internal/ads/cK;->f:I

    .line 35
    .line 36
    check-cast p1, Lcom/google/android/gms/internal/ads/lM;

    .line 37
    .line 38
    iput-boolean p2, p1, Lcom/google/android/gms/internal/ads/lM;->D:Z

    .line 39
    .line 40
    return p2

    .line 41
    :cond_2
    :try_start_0
    check-cast p1, Lcom/google/android/gms/internal/ads/lM;

    .line 42
    .line 43
    invoke-virtual {p1, p10, p11, p9, p6}, Lcom/google/android/gms/internal/ads/lM;->p(JILjava/nio/ByteBuffer;)Z

    .line 44
    .line 45
    .line 46
    move-result p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/RL; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/internal/ads/SL; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    if-eqz p1, :cond_4

    .line 48
    .line 49
    if-eqz p5, :cond_3

    .line 50
    .line 51
    invoke-interface {p5, p7}, Lcom/google/android/gms/internal/ads/MM;->O(I)V

    .line 52
    .line 53
    .line 54
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/VM;->q0:Lcom/google/android/gms/internal/ads/cK;

    .line 55
    .line 56
    iget p3, p1, Lcom/google/android/gms/internal/ads/cK;->e:I

    .line 57
    .line 58
    add-int/2addr p3, p9

    .line 59
    iput p3, p1, Lcom/google/android/gms/internal/ads/cK;->e:I

    .line 60
    .line 61
    return p2

    .line 62
    :cond_4
    const/4 p1, 0x0

    .line 63
    return p1

    .line 64
    :catch_0
    move-exception p1

    .line 65
    goto :goto_0

    .line 66
    :catch_1
    move-exception p1

    .line 67
    goto :goto_2

    .line 68
    :goto_0
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/VM;->b0:Z

    .line 69
    .line 70
    if-nez p2, :cond_5

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aK;->u()V

    .line 74
    .line 75
    .line 76
    :goto_1
    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/SL;->H:Z

    .line 77
    .line 78
    const/16 p3, 0x138a

    .line 79
    .line 80
    invoke-virtual {p0, p3, p14, p1, p2}, Lcom/google/android/gms/internal/ads/aK;->s(ILcom/google/android/gms/internal/ads/p0;Ljava/lang/Exception;Z)Lcom/google/android/gms/internal/ads/jK;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    throw p1

    .line 85
    :goto_2
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/oM;->E0:Lcom/google/android/gms/internal/ads/p0;

    .line 86
    .line 87
    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/VM;->b0:Z

    .line 88
    .line 89
    if-eqz p3, :cond_6

    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aK;->u()V

    .line 92
    .line 93
    .line 94
    :cond_6
    iget-boolean p3, p1, Lcom/google/android/gms/internal/ads/RL;->H:Z

    .line 95
    .line 96
    const/16 p4, 0x1389

    .line 97
    .line 98
    invoke-virtual {p0, p4, p2, p1, p3}, Lcom/google/android/gms/internal/ads/aK;->s(ILcom/google/android/gms/internal/ads/p0;Ljava/lang/Exception;Z)Lcom/google/android/gms/internal/ads/jK;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    throw p1
.end method

.method public final k0(Lcom/google/android/gms/internal/ads/p0;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aK;->u()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oM;->z0:Lcom/google/android/gms/internal/ads/TL;

    .line 5
    .line 6
    check-cast v0, Lcom/google/android/gms/internal/ads/lM;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/lM;->k(Lcom/google/android/gms/internal/ads/p0;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    return p1
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "MediaCodecAudioRenderer"

    return-object v0
.end method

.method public final m0(Lcom/google/android/gms/internal/ads/PM;Lcom/google/android/gms/internal/ads/p0;)I
    .locals 1

    .line 1
    const-string v0, "OMX.google.raw.decoder"

    .line 2
    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/PM;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    sget p1, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 12
    .line 13
    const/16 v0, 0x18

    .line 14
    .line 15
    if-ge p1, v0, :cond_1

    .line 16
    .line 17
    const/16 v0, 0x17

    .line 18
    .line 19
    if-ne p1, v0, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/oM;->x0:Landroid/content/Context;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Et;->e(Landroid/content/Context;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    :cond_0
    const/4 p1, -0x1

    .line 30
    return p1

    .line 31
    :cond_1
    iget p1, p2, Lcom/google/android/gms/internal/ads/p0;->n:I

    .line 32
    .line 33
    return p1
.end method

.method public final n0()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/oM;->o()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/oM;->z0:Lcom/google/android/gms/internal/ads/TL;

    .line 8
    .line 9
    check-cast v2, Lcom/google/android/gms/internal/ads/lM;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/lM;->i()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const-wide/high16 v4, -0x8000000000000000L

    .line 16
    .line 17
    if-eqz v3, :cond_7

    .line 18
    .line 19
    iget-boolean v3, v2, Lcom/google/android/gms/internal/ads/lM;->E:Z

    .line 20
    .line 21
    if-eqz v3, :cond_0

    .line 22
    .line 23
    goto/16 :goto_4

    .line 24
    .line 25
    :cond_0
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/lM;->f:Lcom/google/android/gms/internal/ads/WL;

    .line 26
    .line 27
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/WL;->a(Z)J

    .line 28
    .line 29
    .line 30
    move-result-wide v6

    .line 31
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/lM;->n:Lcom/google/android/gms/internal/ads/fM;

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/lM;->b()J

    .line 34
    .line 35
    .line 36
    move-result-wide v8

    .line 37
    iget v1, v1, Lcom/google/android/gms/internal/ads/fM;->e:I

    .line 38
    .line 39
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/ads/Et;->u(IJ)J

    .line 40
    .line 41
    .line 42
    move-result-wide v8

    .line 43
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    .line 44
    .line 45
    .line 46
    move-result-wide v6

    .line 47
    :goto_0
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/lM;->g:Ljava/util/ArrayDeque;

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-nez v3, :cond_1

    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    check-cast v3, Lcom/google/android/gms/internal/ads/gM;

    .line 60
    .line 61
    iget-wide v8, v3, Lcom/google/android/gms/internal/ads/gM;->c:J

    .line 62
    .line 63
    cmp-long v3, v6, v8

    .line 64
    .line 65
    if-ltz v3, :cond_1

    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Lcom/google/android/gms/internal/ads/gM;

    .line 72
    .line 73
    iput-object v1, v2, Lcom/google/android/gms/internal/ads/lM;->v:Lcom/google/android/gms/internal/ads/gM;

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/lM;->v:Lcom/google/android/gms/internal/ads/gM;

    .line 77
    .line 78
    iget-wide v8, v3, Lcom/google/android/gms/internal/ads/gM;->c:J

    .line 79
    .line 80
    sub-long v10, v6, v8

    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    iget-object v8, v2, Lcom/google/android/gms/internal/ads/lM;->X:Lcom/google/android/gms/internal/ads/bD;

    .line 87
    .line 88
    if-eqz v3, :cond_5

    .line 89
    .line 90
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 91
    .line 92
    check-cast v1, Lcom/google/android/gms/internal/ads/Ti;

    .line 93
    .line 94
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Ti;->zzg()Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-eqz v1, :cond_4

    .line 99
    .line 100
    iget-object v1, v8, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v1, Lcom/google/android/gms/internal/ads/Ti;

    .line 103
    .line 104
    iget-wide v14, v1, Lcom/google/android/gms/internal/ads/Ti;->o:J

    .line 105
    .line 106
    const-wide/16 v6, 0x400

    .line 107
    .line 108
    cmp-long v3, v14, v6

    .line 109
    .line 110
    if-ltz v3, :cond_3

    .line 111
    .line 112
    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/Ti;->n:J

    .line 113
    .line 114
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/Ti;->j:Lcom/google/android/gms/internal/ads/Ni;

    .line 115
    .line 116
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 117
    .line 118
    .line 119
    iget v9, v3, Lcom/google/android/gms/internal/ads/Ni;->k:I

    .line 120
    .line 121
    iget v3, v3, Lcom/google/android/gms/internal/ads/Ni;->b:I

    .line 122
    .line 123
    mul-int v9, v9, v3

    .line 124
    .line 125
    add-int/2addr v9, v9

    .line 126
    int-to-long v12, v9

    .line 127
    sub-long v12, v6, v12

    .line 128
    .line 129
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/Ti;->h:Lcom/google/android/gms/internal/ads/Th;

    .line 130
    .line 131
    iget v3, v3, Lcom/google/android/gms/internal/ads/Th;->a:I

    .line 132
    .line 133
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Ti;->g:Lcom/google/android/gms/internal/ads/Th;

    .line 134
    .line 135
    iget v1, v1, Lcom/google/android/gms/internal/ads/Th;->a:I

    .line 136
    .line 137
    if-ne v3, v1, :cond_2

    .line 138
    .line 139
    sget-object v16, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    .line 140
    .line 141
    invoke-static/range {v10 .. v16}, Lcom/google/android/gms/internal/ads/Et;->v(JJJLjava/math/RoundingMode;)J

    .line 142
    .line 143
    .line 144
    move-result-wide v6

    .line 145
    goto :goto_1

    .line 146
    :cond_2
    int-to-long v6, v3

    .line 147
    mul-long v12, v12, v6

    .line 148
    .line 149
    int-to-long v6, v1

    .line 150
    mul-long v14, v14, v6

    .line 151
    .line 152
    sget-object v16, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    .line 153
    .line 154
    invoke-static/range {v10 .. v16}, Lcom/google/android/gms/internal/ads/Et;->v(JJJLjava/math/RoundingMode;)J

    .line 155
    .line 156
    .line 157
    move-result-wide v6

    .line 158
    :goto_1
    move-wide v10, v6

    .line 159
    goto :goto_2

    .line 160
    :cond_3
    iget v1, v1, Lcom/google/android/gms/internal/ads/Ti;->c:F

    .line 161
    .line 162
    float-to-double v6, v1

    .line 163
    long-to-double v9, v10

    .line 164
    mul-double v6, v6, v9

    .line 165
    .line 166
    double-to-long v6, v6

    .line 167
    goto :goto_1

    .line 168
    :cond_4
    :goto_2
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/lM;->v:Lcom/google/android/gms/internal/ads/gM;

    .line 169
    .line 170
    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/gM;->b:J

    .line 171
    .line 172
    add-long/2addr v6, v10

    .line 173
    goto :goto_3

    .line 174
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    check-cast v1, Lcom/google/android/gms/internal/ads/gM;

    .line 179
    .line 180
    iget-wide v9, v1, Lcom/google/android/gms/internal/ads/gM;->c:J

    .line 181
    .line 182
    sub-long/2addr v9, v6

    .line 183
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/lM;->v:Lcom/google/android/gms/internal/ads/gM;

    .line 184
    .line 185
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/gM;->a:Lcom/google/android/gms/internal/ads/ob;

    .line 186
    .line 187
    iget v3, v3, Lcom/google/android/gms/internal/ads/ob;->a:F

    .line 188
    .line 189
    invoke-static {v9, v10, v3}, Lcom/google/android/gms/internal/ads/Et;->s(JF)J

    .line 190
    .line 191
    .line 192
    move-result-wide v6

    .line 193
    iget-wide v9, v1, Lcom/google/android/gms/internal/ads/gM;->b:J

    .line 194
    .line 195
    sub-long v6, v9, v6

    .line 196
    .line 197
    :goto_3
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/bD;->m()J

    .line 198
    .line 199
    .line 200
    move-result-wide v8

    .line 201
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/lM;->n:Lcom/google/android/gms/internal/ads/fM;

    .line 202
    .line 203
    iget v1, v1, Lcom/google/android/gms/internal/ads/fM;->e:I

    .line 204
    .line 205
    invoke-static {v1, v8, v9}, Lcom/google/android/gms/internal/ads/Et;->u(IJ)J

    .line 206
    .line 207
    .line 208
    move-result-wide v10

    .line 209
    add-long/2addr v10, v6

    .line 210
    iget-wide v6, v2, Lcom/google/android/gms/internal/ads/lM;->U:J

    .line 211
    .line 212
    cmp-long v1, v8, v6

    .line 213
    .line 214
    if-lez v1, :cond_8

    .line 215
    .line 216
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/lM;->n:Lcom/google/android/gms/internal/ads/fM;

    .line 217
    .line 218
    iget v1, v1, Lcom/google/android/gms/internal/ads/fM;->e:I

    .line 219
    .line 220
    sub-long v6, v8, v6

    .line 221
    .line 222
    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/ads/Et;->u(IJ)J

    .line 223
    .line 224
    .line 225
    move-result-wide v6

    .line 226
    iput-wide v8, v2, Lcom/google/android/gms/internal/ads/lM;->U:J

    .line 227
    .line 228
    iget-wide v8, v2, Lcom/google/android/gms/internal/ads/lM;->V:J

    .line 229
    .line 230
    add-long/2addr v8, v6

    .line 231
    iput-wide v8, v2, Lcom/google/android/gms/internal/ads/lM;->V:J

    .line 232
    .line 233
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/lM;->W:Landroid/os/Handler;

    .line 234
    .line 235
    if-nez v1, :cond_6

    .line 236
    .line 237
    new-instance v1, Landroid/os/Handler;

    .line 238
    .line 239
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 244
    .line 245
    .line 246
    iput-object v1, v2, Lcom/google/android/gms/internal/ads/lM;->W:Landroid/os/Handler;

    .line 247
    .line 248
    :cond_6
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/lM;->W:Landroid/os/Handler;

    .line 249
    .line 250
    const/4 v3, 0x0

    .line 251
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 252
    .line 253
    .line 254
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/lM;->W:Landroid/os/Handler;

    .line 255
    .line 256
    new-instance v3, Lcom/google/android/gms/internal/ads/Zn;

    .line 257
    .line 258
    const/16 v6, 0x16

    .line 259
    .line 260
    invoke-direct {v3, v2, v6}, Lcom/google/android/gms/internal/ads/Zn;-><init>(Ljava/lang/Object;I)V

    .line 261
    .line 262
    .line 263
    const-wide/16 v6, 0x64

    .line 264
    .line 265
    invoke-virtual {v1, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 266
    .line 267
    .line 268
    goto :goto_5

    .line 269
    :cond_7
    :goto_4
    move-wide v10, v4

    .line 270
    :cond_8
    :goto_5
    cmp-long v1, v10, v4

    .line 271
    .line 272
    if-eqz v1, :cond_a

    .line 273
    .line 274
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/oM;->H0:Z

    .line 275
    .line 276
    if-eqz v1, :cond_9

    .line 277
    .line 278
    goto :goto_6

    .line 279
    :cond_9
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/oM;->G0:J

    .line 280
    .line 281
    invoke-static {v1, v2, v10, v11}, Ljava/lang/Math;->max(JJ)J

    .line 282
    .line 283
    .line 284
    move-result-wide v10

    .line 285
    :goto_6
    iput-wide v10, v0, Lcom/google/android/gms/internal/ads/oM;->G0:J

    .line 286
    .line 287
    const/4 v1, 0x0

    .line 288
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/oM;->H0:Z

    .line 289
    .line 290
    :cond_a
    return-void
.end method

.method public final o()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/VM;->o0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oM;->z0:Lcom/google/android/gms/internal/ads/TL;

    .line 6
    .line 7
    check-cast v0, Lcom/google/android/gms/internal/ads/lM;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/lM;->i()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/lM;->K:Z

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/lM;->q()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    :cond_0
    const/4 v0, 0x1

    .line 26
    return v0

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    return v0
.end method

.method public final p()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oM;->z0:Lcom/google/android/gms/internal/ads/TL;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/lM;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/lM;->q()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/VM;->p()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    return v0

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    return v0
.end method

.method public final t()Lcom/google/android/gms/internal/ads/FK;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final y()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oM;->y0:Lcom/google/android/gms/internal/ads/oL;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/oM;->I0:Z

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/oM;->E0:Lcom/google/android/gms/internal/ads/p0;

    .line 8
    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/oM;->z0:Lcom/google/android/gms/internal/ads/TL;

    .line 10
    .line 11
    check-cast v1, Lcom/google/android/gms/internal/ads/lM;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/lM;->m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14
    .line 15
    .line 16
    :try_start_1
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/VM;->y()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/VM;->q0:Lcom/google/android/gms/internal/ads/cK;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/oL;->b(Lcom/google/android/gms/internal/ads/cK;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    goto :goto_0

    .line 27
    :catchall_1
    move-exception v1

    .line 28
    :try_start_2
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/VM;->y()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/VM;->q0:Lcom/google/android/gms/internal/ads/cK;

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/oL;->b(Lcom/google/android/gms/internal/ads/cK;)V

    .line 34
    .line 35
    .line 36
    throw v1

    .line 37
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/VM;->q0:Lcom/google/android/gms/internal/ads/cK;

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/oL;->b(Lcom/google/android/gms/internal/ads/cK;)V

    .line 40
    .line 41
    .line 42
    throw v1
.end method

.method public final z(ZZ)V
    .locals 3

    .line 1
    new-instance p1, Lcom/google/android/gms/internal/ads/cK;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/VM;->q0:Lcom/google/android/gms/internal/ads/cK;

    .line 7
    .line 8
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/oM;->y0:Lcom/google/android/gms/internal/ads/oL;

    .line 9
    .line 10
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/oL;->H:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v0, Landroid/os/Handler;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    new-instance v1, Lcom/google/android/gms/internal/ads/KL;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-direct {v1, p2, p1, v2}, Lcom/google/android/gms/internal/ads/KL;-><init>(Lcom/google/android/gms/internal/ads/oL;Lcom/google/android/gms/internal/ads/cK;I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/aK;->u()V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/aK;->f:Lcom/google/android/gms/internal/ads/zL;

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/oM;->z0:Lcom/google/android/gms/internal/ads/TL;

    .line 34
    .line 35
    check-cast p2, Lcom/google/android/gms/internal/ads/lM;

    .line 36
    .line 37
    iput-object p1, p2, Lcom/google/android/gms/internal/ads/lM;->k:Lcom/google/android/gms/internal/ads/zL;

    .line 38
    .line 39
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/aK;->g:Lcom/google/android/gms/internal/ads/pl;

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/lM;->f:Lcom/google/android/gms/internal/ads/WL;

    .line 45
    .line 46
    iput-object p1, p2, Lcom/google/android/gms/internal/ads/WL;->G:Lcom/google/android/gms/internal/ads/pl;

    .line 47
    .line 48
    return-void
.end method

.method public final zza()J
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/aK;->h:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/oM;->n0()V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/oM;->G0:J

    .line 10
    .line 11
    return-wide v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/ob;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/oM;->z0:Lcom/google/android/gms/internal/ads/TL;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/gms/internal/ads/lM;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/lM;->w:Lcom/google/android/gms/internal/ads/ob;

    .line 6
    .line 7
    return-object v0
.end method

.method public final zzj()Z
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/oM;->J0:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/oM;->J0:Z

    return v0
.end method
