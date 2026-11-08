.class public final Lcom/google/android/gms/internal/measurement/h2;
.super Lcom/google/android/gms/internal/measurement/k;
.source "SourceFile"


# instance fields
.field public final H:Lcom/google/android/gms/internal/ads/bD;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/bD;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/k;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/h2;->H:Lcom/google/android/gms/internal/ads/bD;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final l(Ljava/lang/String;Lm2/i;Ljava/util/ArrayList;)Lcom/google/android/gms/internal/measurement/n;
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const-string v4, "getEventName"

    .line 12
    .line 13
    const/4 v5, 0x3

    .line 14
    const-string v6, "getTimestamp"

    .line 15
    .line 16
    const-string v7, "getParamValue"

    .line 17
    .line 18
    const-string v8, "getParams"

    .line 19
    .line 20
    const-string v10, "setParamValue"

    .line 21
    .line 22
    const/4 v11, 0x4

    .line 23
    const-string v12, "setEventName"

    .line 24
    .line 25
    const/4 v13, 0x2

    .line 26
    const/4 v14, 0x1

    .line 27
    sparse-switch v3, :sswitch_data_0

    .line 28
    .line 29
    .line 30
    goto :goto_1

    .line 31
    :sswitch_0
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    const/4 v3, 0x4

    .line 38
    :goto_0
    move-object/from16 v15, p0

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :sswitch_1
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_0

    .line 46
    .line 47
    const/4 v3, 0x5

    .line 48
    goto :goto_0

    .line 49
    :sswitch_2
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-eqz v3, :cond_0

    .line 54
    .line 55
    const/4 v3, 0x2

    .line 56
    goto :goto_0

    .line 57
    :sswitch_3
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_0

    .line 62
    .line 63
    const/4 v3, 0x1

    .line 64
    goto :goto_0

    .line 65
    :sswitch_4
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_0

    .line 70
    .line 71
    const/4 v3, 0x3

    .line 72
    goto :goto_0

    .line 73
    :sswitch_5
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-eqz v3, :cond_0

    .line 78
    .line 79
    const/4 v3, 0x0

    .line 80
    goto :goto_0

    .line 81
    :cond_0
    :goto_1
    const/4 v3, -0x1

    .line 82
    goto :goto_0

    .line 83
    :goto_2
    iget-object v9, v15, Lcom/google/android/gms/internal/measurement/h2;->H:Lcom/google/android/gms/internal/ads/bD;

    .line 84
    .line 85
    if-eqz v3, :cond_a

    .line 86
    .line 87
    if-eq v3, v14, :cond_8

    .line 88
    .line 89
    if-eq v3, v13, :cond_6

    .line 90
    .line 91
    if-eq v3, v5, :cond_5

    .line 92
    .line 93
    if-eq v3, v11, :cond_3

    .line 94
    .line 95
    const/4 v4, 0x5

    .line 96
    if-eq v3, v4, :cond_1

    .line 97
    .line 98
    invoke-super/range {p0 .. p3}, Lcom/google/android/gms/internal/measurement/k;->l(Ljava/lang/String;Lm2/i;Ljava/util/ArrayList;)Lcom/google/android/gms/internal/measurement/n;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    return-object v0

    .line 103
    :cond_1
    invoke-static {v10, v13, v2}, Lcom/google/android/gms/internal/ads/Cw;->O1(Ljava/lang/String;ILjava/util/List;)V

    .line 104
    .line 105
    .line 106
    const/4 v0, 0x0

    .line 107
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    .line 112
    .line 113
    invoke-virtual {v1, v0}, Lm2/i;->t(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/n;->zzi()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    check-cast v2, Lcom/google/android/gms/internal/measurement/n;

    .line 126
    .line 127
    invoke-virtual {v1, v2}, Lm2/i;->t(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    iget-object v2, v9, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast v2, Lcom/google/android/gms/internal/measurement/b;

    .line 134
    .line 135
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Cw;->F1(Lcom/google/android/gms/internal/measurement/n;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/b;->c:Ljava/util/HashMap;

    .line 140
    .line 141
    if-nez v3, :cond_2

    .line 142
    .line 143
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_2
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    invoke-static {v4, v3, v0}, Lcom/google/android/gms/internal/measurement/b;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    :goto_3
    return-object v1

    .line 159
    :cond_3
    invoke-static {v12, v14, v2}, Lcom/google/android/gms/internal/ads/Cw;->O1(Ljava/lang/String;ILjava/util/List;)V

    .line 160
    .line 161
    .line 162
    const/4 v0, 0x0

    .line 163
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    .line 168
    .line 169
    invoke-virtual {v1, v0}, Lm2/i;->t(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    sget-object v1, Lcom/google/android/gms/internal/measurement/n;->s:Lcom/google/android/gms/internal/measurement/r;

    .line 174
    .line 175
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/r;->equals(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    if-nez v1, :cond_4

    .line 180
    .line 181
    sget-object v1, Lcom/google/android/gms/internal/measurement/n;->t:Lcom/google/android/gms/internal/measurement/l;

    .line 182
    .line 183
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/l;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    if-nez v1, :cond_4

    .line 188
    .line 189
    iget-object v1, v9, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 190
    .line 191
    check-cast v1, Lcom/google/android/gms/internal/measurement/b;

    .line 192
    .line 193
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/n;->zzi()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    iput-object v2, v1, Lcom/google/android/gms/internal/measurement/b;->a:Ljava/lang/String;

    .line 198
    .line 199
    new-instance v1, Lcom/google/android/gms/internal/measurement/q;

    .line 200
    .line 201
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/n;->zzi()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/q;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    return-object v1

    .line 209
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 210
    .line 211
    const-string v1, "Illegal event name"

    .line 212
    .line 213
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    throw v0

    .line 217
    :cond_5
    const/4 v0, 0x0

    .line 218
    invoke-static {v6, v0, v2}, Lcom/google/android/gms/internal/ads/Cw;->O1(Ljava/lang/String;ILjava/util/List;)V

    .line 219
    .line 220
    .line 221
    iget-object v0, v9, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 222
    .line 223
    check-cast v0, Lcom/google/android/gms/internal/measurement/b;

    .line 224
    .line 225
    new-instance v1, Lcom/google/android/gms/internal/measurement/g;

    .line 226
    .line 227
    iget-wide v2, v0, Lcom/google/android/gms/internal/measurement/b;->b:J

    .line 228
    .line 229
    long-to-double v2, v2

    .line 230
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/g;-><init>(Ljava/lang/Double;)V

    .line 235
    .line 236
    .line 237
    return-object v1

    .line 238
    :cond_6
    const/4 v0, 0x0

    .line 239
    invoke-static {v8, v0, v2}, Lcom/google/android/gms/internal/ads/Cw;->O1(Ljava/lang/String;ILjava/util/List;)V

    .line 240
    .line 241
    .line 242
    iget-object v0, v9, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 243
    .line 244
    check-cast v0, Lcom/google/android/gms/internal/measurement/b;

    .line 245
    .line 246
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/b;->c:Ljava/util/HashMap;

    .line 247
    .line 248
    new-instance v1, Lcom/google/android/gms/internal/measurement/k;

    .line 249
    .line 250
    invoke-direct {v1}, Lcom/google/android/gms/internal/measurement/k;-><init>()V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 254
    .line 255
    .line 256
    move-result-object v2

    .line 257
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 262
    .line 263
    .line 264
    move-result v3

    .line 265
    if-eqz v3, :cond_7

    .line 266
    .line 267
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v3

    .line 271
    check-cast v3, Ljava/lang/String;

    .line 272
    .line 273
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v4

    .line 277
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/Cw;->C0(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/n;

    .line 278
    .line 279
    .line 280
    move-result-object v4

    .line 281
    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/measurement/k;->i(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/n;)V

    .line 282
    .line 283
    .line 284
    goto :goto_4

    .line 285
    :cond_7
    return-object v1

    .line 286
    :cond_8
    invoke-static {v7, v14, v2}, Lcom/google/android/gms/internal/ads/Cw;->O1(Ljava/lang/String;ILjava/util/List;)V

    .line 287
    .line 288
    .line 289
    const/4 v0, 0x0

    .line 290
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    check-cast v0, Lcom/google/android/gms/internal/measurement/n;

    .line 295
    .line 296
    invoke-virtual {v1, v0}, Lm2/i;->t(Lcom/google/android/gms/internal/measurement/n;)Lcom/google/android/gms/internal/measurement/n;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/n;->zzi()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    iget-object v1, v9, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 305
    .line 306
    check-cast v1, Lcom/google/android/gms/internal/measurement/b;

    .line 307
    .line 308
    iget-object v1, v1, Lcom/google/android/gms/internal/measurement/b;->c:Ljava/util/HashMap;

    .line 309
    .line 310
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    move-result v2

    .line 314
    if-eqz v2, :cond_9

    .line 315
    .line 316
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    goto :goto_5

    .line 321
    :cond_9
    const/4 v0, 0x0

    .line 322
    :goto_5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->C0(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/n;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    return-object v0

    .line 327
    :cond_a
    const/4 v0, 0x0

    .line 328
    invoke-static {v4, v0, v2}, Lcom/google/android/gms/internal/ads/Cw;->O1(Ljava/lang/String;ILjava/util/List;)V

    .line 329
    .line 330
    .line 331
    iget-object v0, v9, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 332
    .line 333
    check-cast v0, Lcom/google/android/gms/internal/measurement/b;

    .line 334
    .line 335
    new-instance v1, Lcom/google/android/gms/internal/measurement/q;

    .line 336
    .line 337
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/b;->a:Ljava/lang/String;

    .line 338
    .line 339
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/q;-><init>(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    return-object v1

    .line 343
    :sswitch_data_0
    .sparse-switch
        0x149f58f -> :sswitch_5
        0x2b69a60 -> :sswitch_4
        0x8bc90da -> :sswitch_3
        0x29c21c7c -> :sswitch_2
        0x36e0dee6 -> :sswitch_1
        0x5d9db603 -> :sswitch_0
    .end sparse-switch
.end method
