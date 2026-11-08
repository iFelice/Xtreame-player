.class public final Lcom/google/android/gms/internal/ads/vg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LK/k;

.field public final b:Lcom/google/android/gms/internal/ads/Bg;

.field public final c:Lcom/google/android/gms/internal/ads/MJ;

.field public final d:Lcom/google/android/gms/internal/ads/Ch;

.field public final e:Lcom/google/android/gms/internal/ads/Ch;

.field public final f:Lcom/google/android/gms/internal/ads/Mn;

.field public final g:Lcom/google/android/gms/internal/ads/Ou;

.field public final h:Lcom/google/android/gms/internal/ads/xt;

.field public final i:Lcom/google/android/gms/internal/ads/Jo;

.field public final j:Lcom/google/android/gms/internal/ads/Ch;

.field public final k:Lcom/google/android/gms/internal/ads/Lu;

.field public final l:Lcom/google/android/gms/internal/ads/MJ;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Bg;LK/k;)V
    .locals 21

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
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/vg;->b:Lcom/google/android/gms/internal/ads/Bg;

    .line 11
    .line 12
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/vg;->a:LK/k;

    .line 13
    .line 14
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/Bg;->q:Lcom/google/android/gms/internal/ads/MJ;

    .line 15
    .line 16
    new-instance v4, Lcom/google/android/gms/internal/ads/Ou;

    .line 17
    .line 18
    const/16 v5, 0x8

    .line 19
    .line 20
    invoke-direct {v4, v3, v5}, Lcom/google/android/gms/internal/ads/Ou;-><init>(Lcom/google/android/gms/internal/ads/MJ;I)V

    .line 21
    .line 22
    .line 23
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/HJ;->b(Lcom/google/android/gms/internal/ads/IJ;)Lcom/google/android/gms/internal/ads/MJ;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    iput-object v3, v0, Lcom/google/android/gms/internal/ads/vg;->c:Lcom/google/android/gms/internal/ads/MJ;

    .line 28
    .line 29
    new-instance v3, Lcom/google/android/gms/internal/ads/Ru;

    .line 30
    .line 31
    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/Ru;-><init>(LK/k;)V

    .line 32
    .line 33
    .line 34
    new-instance v10, Lcom/google/android/gms/internal/ads/Su;

    .line 35
    .line 36
    invoke-direct {v10, v2}, Lcom/google/android/gms/internal/ads/Su;-><init>(LK/k;)V

    .line 37
    .line 38
    .line 39
    new-instance v14, Lcom/google/android/gms/internal/ads/Uu;

    .line 40
    .line 41
    invoke-direct {v14, v2}, Lcom/google/android/gms/internal/ads/Uu;-><init>(LK/k;)V

    .line 42
    .line 43
    .line 44
    sget-object v13, Lcom/google/android/gms/internal/ads/nH;->h0:Lcom/google/android/gms/internal/ads/Bw;

    .line 45
    .line 46
    sget-object v16, Lcom/google/android/gms/internal/ads/Cw;->a:Lcom/google/android/gms/internal/ads/Jo;

    .line 47
    .line 48
    new-instance v15, Lcom/google/android/gms/internal/ads/Ch;

    .line 49
    .line 50
    iget-object v12, v1, Lcom/google/android/gms/internal/ads/Bg;->h:Lcom/google/android/gms/internal/ads/jg;

    .line 51
    .line 52
    iget-object v11, v1, Lcom/google/android/gms/internal/ads/Bg;->e:Lcom/google/android/gms/internal/ads/MJ;

    .line 53
    .line 54
    const/16 v17, 0xc

    .line 55
    .line 56
    move-object v4, v15

    .line 57
    move-object v5, v13

    .line 58
    move-object v6, v12

    .line 59
    move-object v7, v11

    .line 60
    move-object/from16 v8, v16

    .line 61
    .line 62
    move-object v9, v3

    .line 63
    move-object/from16 v20, v11

    .line 64
    .line 65
    move-object v11, v14

    .line 66
    move-object/from16 v18, v12

    .line 67
    .line 68
    move/from16 v12, v17

    .line 69
    .line 70
    invoke-direct/range {v4 .. v12}, Lcom/google/android/gms/internal/ads/Ch;-><init>(Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/IJ;Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/IJ;Lcom/google/android/gms/internal/ads/MJ;I)V

    .line 71
    .line 72
    .line 73
    iput-object v15, v0, Lcom/google/android/gms/internal/ads/vg;->d:Lcom/google/android/gms/internal/ads/Ch;

    .line 74
    .line 75
    new-instance v15, Lcom/google/android/gms/internal/ads/Qu;

    .line 76
    .line 77
    invoke-direct {v15, v2}, Lcom/google/android/gms/internal/ads/Qu;-><init>(LK/k;)V

    .line 78
    .line 79
    .line 80
    new-instance v12, Lcom/google/android/gms/internal/ads/Ch;

    .line 81
    .line 82
    iget-object v11, v1, Lcom/google/android/gms/internal/ads/Bg;->O:Lcom/google/android/gms/internal/ads/MJ;

    .line 83
    .line 84
    const/16 v17, 0xd

    .line 85
    .line 86
    move-object v4, v12

    .line 87
    move-object v5, v13

    .line 88
    move-object v6, v3

    .line 89
    move-object/from16 v7, v18

    .line 90
    .line 91
    move-object v8, v11

    .line 92
    move-object/from16 v9, v20

    .line 93
    .line 94
    move-object/from16 v10, v16

    .line 95
    .line 96
    move-object v3, v11

    .line 97
    move-object v11, v15

    .line 98
    move-object v13, v12

    .line 99
    move/from16 v12, v17

    .line 100
    .line 101
    invoke-direct/range {v4 .. v12}, Lcom/google/android/gms/internal/ads/Ch;-><init>(Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/IJ;Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/IJ;Lcom/google/android/gms/internal/ads/MJ;I)V

    .line 102
    .line 103
    .line 104
    iput-object v13, v0, Lcom/google/android/gms/internal/ads/vg;->e:Lcom/google/android/gms/internal/ads/Ch;

    .line 105
    .line 106
    new-instance v4, Lcom/google/android/gms/internal/ads/Mn;

    .line 107
    .line 108
    move-object/from16 v5, v18

    .line 109
    .line 110
    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ads/Mn;-><init>(Lcom/google/android/gms/internal/ads/jg;)V

    .line 111
    .line 112
    .line 113
    iput-object v4, v0, Lcom/google/android/gms/internal/ads/vg;->f:Lcom/google/android/gms/internal/ads/Mn;

    .line 114
    .line 115
    new-instance v4, Lcom/google/android/gms/internal/ads/Ou;

    .line 116
    .line 117
    invoke-direct {v4, v15}, Lcom/google/android/gms/internal/ads/Ou;-><init>(Lcom/google/android/gms/internal/ads/Qu;)V

    .line 118
    .line 119
    .line 120
    iput-object v4, v0, Lcom/google/android/gms/internal/ads/vg;->g:Lcom/google/android/gms/internal/ads/Ou;

    .line 121
    .line 122
    new-instance v4, Lcom/google/android/gms/internal/ads/xt;

    .line 123
    .line 124
    const/16 v6, 0x12

    .line 125
    .line 126
    move-object/from16 v8, v20

    .line 127
    .line 128
    invoke-direct {v4, v8, v5, v6}, Lcom/google/android/gms/internal/ads/xt;-><init>(Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/IJ;I)V

    .line 129
    .line 130
    .line 131
    iput-object v4, v0, Lcom/google/android/gms/internal/ads/vg;->h:Lcom/google/android/gms/internal/ads/xt;

    .line 132
    .line 133
    new-instance v4, Lcom/google/android/gms/internal/ads/Jo;

    .line 134
    .line 135
    const/16 v5, 0x9

    .line 136
    .line 137
    const/4 v6, 0x0

    .line 138
    invoke-direct {v4, v5, v6}, Lcom/google/android/gms/internal/ads/Jo;-><init>(II)V

    .line 139
    .line 140
    .line 141
    iput-object v4, v0, Lcom/google/android/gms/internal/ads/vg;->i:Lcom/google/android/gms/internal/ads/Jo;

    .line 142
    .line 143
    new-instance v13, Lcom/google/android/gms/internal/ads/Tu;

    .line 144
    .line 145
    invoke-direct {v13, v2}, Lcom/google/android/gms/internal/ads/Tu;-><init>(LK/k;)V

    .line 146
    .line 147
    .line 148
    sget-object v4, Lcom/google/android/gms/internal/ads/nH;->i0:Lcom/google/android/gms/internal/ads/Bw;

    .line 149
    .line 150
    new-instance v5, Lcom/google/android/gms/internal/ads/Ch;

    .line 151
    .line 152
    const/16 v19, 0xe

    .line 153
    .line 154
    move-object v11, v5

    .line 155
    move-object v12, v3

    .line 156
    move-object v6, v15

    .line 157
    move-object v15, v4

    .line 158
    move-object/from16 v17, v6

    .line 159
    .line 160
    move-object/from16 v18, v8

    .line 161
    .line 162
    invoke-direct/range {v11 .. v19}, Lcom/google/android/gms/internal/ads/Ch;-><init>(Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/IJ;Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/IJ;Lcom/google/android/gms/internal/ads/MJ;I)V

    .line 163
    .line 164
    .line 165
    iput-object v5, v0, Lcom/google/android/gms/internal/ads/vg;->j:Lcom/google/android/gms/internal/ads/Ch;

    .line 166
    .line 167
    sget-object v7, Lcom/google/android/gms/internal/ads/nH;->g0:Lcom/google/android/gms/internal/ads/Bw;

    .line 168
    .line 169
    new-instance v10, Lcom/google/android/gms/internal/ads/Lu;

    .line 170
    .line 171
    const/4 v9, 0x0

    .line 172
    move-object v4, v10

    .line 173
    move-object v5, v6

    .line 174
    move-object v6, v7

    .line 175
    move-object v7, v3

    .line 176
    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/Lu;-><init>(Lcom/google/android/gms/internal/ads/IJ;Lcom/google/android/gms/internal/ads/IJ;Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/MJ;I)V

    .line 177
    .line 178
    .line 179
    iput-object v10, v0, Lcom/google/android/gms/internal/ads/vg;->k:Lcom/google/android/gms/internal/ads/Lu;

    .line 180
    .line 181
    new-instance v3, Lcom/google/android/gms/internal/ads/bl;

    .line 182
    .line 183
    const/4 v4, 0x3

    .line 184
    invoke-direct {v3, v2, v4}, Lcom/google/android/gms/internal/ads/bl;-><init>(Ljava/lang/Object;I)V

    .line 185
    .line 186
    .line 187
    sget-object v2, Lcom/google/android/gms/internal/ads/el;->m:Lcom/google/android/gms/internal/ads/wk;

    .line 188
    .line 189
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/HJ;->b(Lcom/google/android/gms/internal/ads/IJ;)Lcom/google/android/gms/internal/ads/MJ;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    sget-object v4, Lcom/google/android/gms/internal/ads/el;->l:Lcom/google/android/gms/internal/ads/wk;

    .line 194
    .line 195
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/HJ;->b(Lcom/google/android/gms/internal/ads/IJ;)Lcom/google/android/gms/internal/ads/MJ;

    .line 196
    .line 197
    .line 198
    move-result-object v4

    .line 199
    sget-object v5, Lcom/google/android/gms/internal/ads/el;->n:Lcom/google/android/gms/internal/ads/wk;

    .line 200
    .line 201
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/HJ;->b(Lcom/google/android/gms/internal/ads/IJ;)Lcom/google/android/gms/internal/ads/MJ;

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    sget-object v6, Lcom/google/android/gms/internal/ads/el;->o:Lcom/google/android/gms/internal/ads/wk;

    .line 206
    .line 207
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/HJ;->b(Lcom/google/android/gms/internal/ads/IJ;)Lcom/google/android/gms/internal/ads/MJ;

    .line 208
    .line 209
    .line 210
    move-result-object v6

    .line 211
    sget v7, Lcom/google/android/gms/internal/ads/KJ;->b:I

    .line 212
    .line 213
    const/4 v7, 0x4

    .line 214
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/Cw;->G0(I)Ljava/util/LinkedHashMap;

    .line 215
    .line 216
    .line 217
    move-result-object v7

    .line 218
    sget-object v8, Lcom/google/android/gms/internal/ads/Iw;->L:Lcom/google/android/gms/internal/ads/Iw;

    .line 219
    .line 220
    invoke-virtual {v7, v8, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    sget-object v2, Lcom/google/android/gms/internal/ads/Iw;->M:Lcom/google/android/gms/internal/ads/Iw;

    .line 224
    .line 225
    invoke-virtual {v7, v2, v4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    sget-object v2, Lcom/google/android/gms/internal/ads/Iw;->O:Lcom/google/android/gms/internal/ads/Iw;

    .line 229
    .line 230
    invoke-virtual {v7, v2, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    sget-object v2, Lcom/google/android/gms/internal/ads/Iw;->Q:Lcom/google/android/gms/internal/ads/Iw;

    .line 234
    .line 235
    invoke-virtual {v7, v2, v6}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    new-instance v2, Lcom/google/android/gms/internal/ads/KJ;

    .line 239
    .line 240
    invoke-direct {v2, v7}, Lcom/google/android/gms/internal/ads/FJ;-><init>(Ljava/util/LinkedHashMap;)V

    .line 241
    .line 242
    .line 243
    new-instance v4, Lv3/E;

    .line 244
    .line 245
    const/16 v5, 0x11

    .line 246
    .line 247
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/Bg;->h:Lcom/google/android/gms/internal/ads/jg;

    .line 248
    .line 249
    invoke-direct {v4, v3, v6, v2, v5}, Lv3/E;-><init>(Lcom/google/android/gms/internal/ads/IJ;Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/MJ;I)V

    .line 250
    .line 251
    .line 252
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/HJ;->b(Lcom/google/android/gms/internal/ads/IJ;)Lcom/google/android/gms/internal/ads/MJ;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    sget v3, Lcom/google/android/gms/internal/ads/NJ;->c:I

    .line 257
    .line 258
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    new-instance v4, Ljava/util/ArrayList;

    .line 263
    .line 264
    const/4 v5, 0x1

    .line 265
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 266
    .line 267
    .line 268
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    new-instance v2, Lcom/google/android/gms/internal/ads/NJ;

    .line 272
    .line 273
    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/ads/NJ;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 274
    .line 275
    .line 276
    new-instance v3, Lcom/google/android/gms/internal/ads/Mw;

    .line 277
    .line 278
    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/Mw;-><init>(Lcom/google/android/gms/internal/ads/NJ;)V

    .line 279
    .line 280
    .line 281
    new-instance v2, Lcom/google/android/gms/internal/ads/xt;

    .line 282
    .line 283
    const/16 v4, 0x14

    .line 284
    .line 285
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Bg;->e:Lcom/google/android/gms/internal/ads/MJ;

    .line 286
    .line 287
    invoke-direct {v2, v1, v3, v4}, Lcom/google/android/gms/internal/ads/xt;-><init>(Lcom/google/android/gms/internal/ads/MJ;Lcom/google/android/gms/internal/ads/IJ;I)V

    .line 288
    .line 289
    .line 290
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/HJ;->b(Lcom/google/android/gms/internal/ads/IJ;)Lcom/google/android/gms/internal/ads/MJ;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/vg;->l:Lcom/google/android/gms/internal/ads/MJ;

    .line 295
    .line 296
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/zs;
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zs;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/se;->a:Lcom/google/android/gms/internal/ads/re;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Cw;->N0(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/vg;->a:LK/k;

    .line 9
    .line 10
    iget-object v3, v2, LK/k;->I:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v3, Lcom/google/android/gms/internal/ads/Wc;

    .line 13
    .line 14
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/Wc;->G:Landroid/os/Bundle;

    .line 15
    .line 16
    const-string v4, "ms"

    .line 17
    .line 18
    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    if-nez v3, :cond_0

    .line 23
    .line 24
    const-string v3, ""

    .line 25
    .line 26
    :cond_0
    iget-object v2, v2, LK/k;->I:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v2, Lcom/google/android/gms/internal/ads/Wc;

    .line 29
    .line 30
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/Wc;->L:Landroid/content/pm/PackageInfo;

    .line 31
    .line 32
    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zs;-><init>(Lcom/google/android/gms/internal/ads/re;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-object v0
.end method
