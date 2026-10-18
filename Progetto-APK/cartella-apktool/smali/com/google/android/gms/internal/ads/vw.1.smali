.class public final Lcom/google/android/gms/internal/ads/vw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vw;->a:Ljava/util/HashMap;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/nw;Landroid/content/Context;Lcom/google/android/gms/internal/ads/kw;Lcom/google/android/gms/internal/ads/Xu;)Lcom/google/android/gms/internal/ads/uw;
    .locals 14

    .line 1
    move-object v9, p1

    .line 2
    move-object v10, p0

    .line 3
    iget-object v11, v10, Lcom/google/android/gms/internal/ads/vw;->a:Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {v11, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/google/android/gms/internal/ads/uw;

    .line 10
    .line 11
    if-nez v0, :cond_3

    .line 12
    .line 13
    new-instance v12, La3/b;

    .line 14
    .line 15
    sget-object v0, Lcom/google/android/gms/internal/ads/nw;->G:Lcom/google/android/gms/internal/ads/nw;

    .line 16
    .line 17
    if-ne v9, v0, :cond_0

    .line 18
    .line 19
    new-instance v13, Lcom/google/android/gms/internal/ads/ow;

    .line 20
    .line 21
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->Q5:Lcom/google/android/gms/internal/ads/J7;

    .line 22
    .line 23
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 24
    .line 25
    iget-object v2, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 26
    .line 27
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/lang/Integer;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->W5:Lcom/google/android/gms/internal/ads/J7;

    .line 38
    .line 39
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Ljava/lang/Integer;

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->Y5:Lcom/google/android/gms/internal/ads/J7;

    .line 52
    .line 53
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Ljava/lang/Integer;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->a6:Lcom/google/android/gms/internal/ads/J7;

    .line 64
    .line 65
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    move-object v6, v0

    .line 70
    check-cast v6, Ljava/lang/String;

    .line 71
    .line 72
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->S5:Lcom/google/android/gms/internal/ads/J7;

    .line 73
    .line 74
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    move-object v7, v0

    .line 79
    check-cast v7, Ljava/lang/String;

    .line 80
    .line 81
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->U5:Lcom/google/android/gms/internal/ads/J7;

    .line 82
    .line 83
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    move-object v8, v0

    .line 88
    check-cast v8, Ljava/lang/String;

    .line 89
    .line 90
    move-object v0, v13

    .line 91
    move-object/from16 v1, p2

    .line 92
    .line 93
    move-object v2, p1

    .line 94
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/ow;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/nw;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    goto/16 :goto_0

    .line 98
    .line 99
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/nw;->H:Lcom/google/android/gms/internal/ads/nw;

    .line 100
    .line 101
    if-ne v9, v0, :cond_1

    .line 102
    .line 103
    new-instance v13, Lcom/google/android/gms/internal/ads/ow;

    .line 104
    .line 105
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->R5:Lcom/google/android/gms/internal/ads/J7;

    .line 106
    .line 107
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 108
    .line 109
    iget-object v2, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 110
    .line 111
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    check-cast v0, Ljava/lang/Integer;

    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->X5:Lcom/google/android/gms/internal/ads/J7;

    .line 122
    .line 123
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 124
    .line 125
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    check-cast v0, Ljava/lang/Integer;

    .line 130
    .line 131
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->Z5:Lcom/google/android/gms/internal/ads/J7;

    .line 136
    .line 137
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    check-cast v0, Ljava/lang/Integer;

    .line 142
    .line 143
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 144
    .line 145
    .line 146
    move-result v5

    .line 147
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->b6:Lcom/google/android/gms/internal/ads/J7;

    .line 148
    .line 149
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    move-object v6, v0

    .line 154
    check-cast v6, Ljava/lang/String;

    .line 155
    .line 156
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->T5:Lcom/google/android/gms/internal/ads/J7;

    .line 157
    .line 158
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    move-object v7, v0

    .line 163
    check-cast v7, Ljava/lang/String;

    .line 164
    .line 165
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->V5:Lcom/google/android/gms/internal/ads/J7;

    .line 166
    .line 167
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    move-object v8, v0

    .line 172
    check-cast v8, Ljava/lang/String;

    .line 173
    .line 174
    move-object v0, v13

    .line 175
    move-object/from16 v1, p2

    .line 176
    .line 177
    move-object v2, p1

    .line 178
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/ow;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/nw;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    goto :goto_0

    .line 182
    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/ads/nw;->I:Lcom/google/android/gms/internal/ads/nw;

    .line 183
    .line 184
    if-ne v9, v0, :cond_2

    .line 185
    .line 186
    new-instance v13, Lcom/google/android/gms/internal/ads/ow;

    .line 187
    .line 188
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->e6:Lcom/google/android/gms/internal/ads/J7;

    .line 189
    .line 190
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 191
    .line 192
    iget-object v2, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 193
    .line 194
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    check-cast v0, Ljava/lang/Integer;

    .line 199
    .line 200
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 201
    .line 202
    .line 203
    move-result v3

    .line 204
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->g6:Lcom/google/android/gms/internal/ads/J7;

    .line 205
    .line 206
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 207
    .line 208
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    check-cast v0, Ljava/lang/Integer;

    .line 213
    .line 214
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 215
    .line 216
    .line 217
    move-result v4

    .line 218
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->h6:Lcom/google/android/gms/internal/ads/J7;

    .line 219
    .line 220
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    check-cast v0, Ljava/lang/Integer;

    .line 225
    .line 226
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 227
    .line 228
    .line 229
    move-result v5

    .line 230
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->c6:Lcom/google/android/gms/internal/ads/J7;

    .line 231
    .line 232
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    move-object v6, v0

    .line 237
    check-cast v6, Ljava/lang/String;

    .line 238
    .line 239
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->d6:Lcom/google/android/gms/internal/ads/J7;

    .line 240
    .line 241
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    move-object v7, v0

    .line 246
    check-cast v7, Ljava/lang/String;

    .line 247
    .line 248
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->f6:Lcom/google/android/gms/internal/ads/J7;

    .line 249
    .line 250
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    move-object v8, v0

    .line 255
    check-cast v8, Ljava/lang/String;

    .line 256
    .line 257
    move-object v0, v13

    .line 258
    move-object/from16 v1, p2

    .line 259
    .line 260
    move-object v2, p1

    .line 261
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/ow;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/nw;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    goto :goto_0

    .line 265
    :cond_2
    const/4 v13, 0x0

    .line 266
    :goto_0
    invoke-direct {v12, v13}, La3/b;-><init>(Lcom/google/android/gms/internal/ads/ow;)V

    .line 267
    .line 268
    .line 269
    new-instance v0, Lcom/google/android/gms/internal/ads/xw;

    .line 270
    .line 271
    move-object/from16 v1, p3

    .line 272
    .line 273
    move-object/from16 v2, p4

    .line 274
    .line 275
    invoke-direct {v0, v12, v1, v2}, Lcom/google/android/gms/internal/ads/xw;-><init>(La3/b;Lcom/google/android/gms/internal/ads/kw;Lcom/google/android/gms/internal/ads/Xu;)V

    .line 276
    .line 277
    .line 278
    new-instance v1, Lcom/google/android/gms/internal/ads/uw;

    .line 279
    .line 280
    invoke-direct {v1, v12, v0}, Lcom/google/android/gms/internal/ads/uw;-><init>(La3/b;Lcom/google/android/gms/internal/ads/xw;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v11, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    return-object v1

    .line 287
    :cond_3
    return-object v0
.end method
