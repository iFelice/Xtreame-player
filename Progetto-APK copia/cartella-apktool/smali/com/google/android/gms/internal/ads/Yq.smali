.class public final Lcom/google/android/gms/internal/ads/Yq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/pq;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/ug;

.field public final b:Lcom/google/android/gms/internal/ads/jC;

.field public final c:Lcom/google/android/gms/internal/ads/pm;

.field public final d:Lcom/google/android/gms/internal/ads/hw;

.field public final e:Lcom/google/android/gms/internal/ads/Wm;

.field public final f:Lcom/google/android/gms/internal/ads/Cn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ug;Lcom/google/android/gms/internal/ads/re;Lcom/google/android/gms/internal/ads/pm;Lcom/google/android/gms/internal/ads/hw;Lcom/google/android/gms/internal/ads/Wm;Lcom/google/android/gms/internal/ads/Cn;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Yq;->a:Lcom/google/android/gms/internal/ads/ug;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Yq;->b:Lcom/google/android/gms/internal/ads/jC;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Yq;->c:Lcom/google/android/gms/internal/ads/pm;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/Yq;->d:Lcom/google/android/gms/internal/ads/hw;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/Yq;->e:Lcom/google/android/gms/internal/ads/Wm;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/Yq;->f:Lcom/google/android/gms/internal/ads/Cn;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/Ov;)LD4/b;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Yq;->d:Lcom/google/android/gms/internal/ads/hw;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hw;->a()LD4/b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/google/android/gms/internal/ads/Va;

    .line 8
    .line 9
    const/16 v2, 0xd

    .line 10
    .line 11
    invoke-direct {v1, v2, p0, p2}, Lcom/google/android/gms/internal/ads/Va;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Yq;->b:Lcom/google/android/gms/internal/ads/jC;

    .line 15
    .line 16
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Cw;->d2(LD4/b;Lcom/google/android/gms/internal/ads/RB;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/JB;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Lv3/c;

    .line 21
    .line 22
    const/4 v3, 0x6

    .line 23
    invoke-direct {v1, p0, p1, p2, v3}, Lv3/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 24
    .line 25
    .line 26
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/Cw;->d2(LD4/b;Lcom/google/android/gms/internal/ads/RB;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/JB;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1
.end method

.method public final b(Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/Ov;)Z
    .locals 0

    .line 1
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/Ov;->s:Lcom/google/android/gms/internal/ads/Rv;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Rv;->c:Lorg/json/JSONObject;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    return p1

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    return p1
.end method

.method public final c(Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/Ov;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/WB;
    .locals 29

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v4, p1

    .line 4
    .line 5
    move-object/from16 v5, p2

    .line 6
    .line 7
    move-object/from16 v6, p3

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->W1:Lcom/google/android/gms/internal/ads/J7;

    .line 11
    .line 12
    sget-object v8, Ll3/q;->d:Ll3/q;

    .line 13
    .line 14
    iget-object v9, v8, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 15
    .line 16
    invoke-virtual {v9, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/lang/Boolean;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/Yq;->f:Lcom/google/android/gms/internal/ads/Cn;

    .line 29
    .line 30
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Cn;->c:Landroid/os/Bundle;

    .line 31
    .line 32
    sget-object v9, Lk3/l;->A:Lk3/l;

    .line 33
    .line 34
    iget-object v9, v9, Lk3/l;->j:LP3/b;

    .line 35
    .line 36
    const-string v10, "rendering-webview-creation-start"

    .line 37
    .line 38
    invoke-static {v9, v1, v10}, Lt/a;->g(LP3/b;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/Yq;->d:Lcom/google/android/gms/internal/ads/hw;

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/hw;->a()LD4/b;

    .line 44
    .line 45
    .line 46
    move-result-object v20

    .line 47
    iget-object v1, v7, Lcom/google/android/gms/internal/ads/Yq;->c:Lcom/google/android/gms/internal/ads/pm;

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    new-instance v9, Lv3/d;

    .line 53
    .line 54
    invoke-direct {v9, v4, v5, v6}, Lv3/d;-><init>(Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/Ov;Lorg/json/JSONObject;)V

    .line 55
    .line 56
    .line 57
    iget-object v15, v1, Lcom/google/android/gms/internal/ads/pm;->a:Lcom/google/android/gms/internal/ads/jC;

    .line 58
    .line 59
    move-object v10, v15

    .line 60
    check-cast v10, Lcom/google/android/gms/internal/ads/IB;

    .line 61
    .line 62
    invoke-virtual {v10, v9}, Lcom/google/android/gms/internal/ads/IB;->b(Ljava/util/concurrent/Callable;)LD4/b;

    .line 63
    .line 64
    .line 65
    move-result-object v14

    .line 66
    iget-object v13, v1, Lcom/google/android/gms/internal/ads/pm;->b:Lcom/google/android/gms/internal/ads/um;

    .line 67
    .line 68
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    .line 70
    .line 71
    const-string v12, "images"

    .line 72
    .line 73
    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 74
    .line 75
    .line 76
    move-result-object v9

    .line 77
    iget-object v11, v13, Lcom/google/android/gms/internal/ads/um;->h:Lcom/google/android/gms/internal/ads/M8;

    .line 78
    .line 79
    iget-boolean v10, v11, Lcom/google/android/gms/internal/ads/M8;->H:Z

    .line 80
    .line 81
    iget-boolean v0, v11, Lcom/google/android/gms/internal/ads/M8;->J:Z

    .line 82
    .line 83
    invoke-virtual {v13, v9, v10, v0}, Lcom/google/android/gms/internal/ads/um;->b(Lorg/json/JSONArray;ZZ)LD4/b;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iget-object v10, v4, Lcom/google/android/gms/internal/ads/Tv;->b:Lcom/google/android/gms/internal/ads/xc;

    .line 88
    .line 89
    iget-object v9, v10, Lcom/google/android/gms/internal/ads/xc;->I:Ljava/lang/Object;

    .line 90
    .line 91
    move-object/from16 v16, v9

    .line 92
    .line 93
    check-cast v16, Lcom/google/android/gms/internal/ads/Qv;

    .line 94
    .line 95
    sget-object v9, Lcom/google/android/gms/internal/ads/Q7;->o9:Lcom/google/android/gms/internal/ads/J7;

    .line 96
    .line 97
    iget-object v8, v8, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 98
    .line 99
    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v9

    .line 103
    check-cast v9, Ljava/lang/Boolean;

    .line 104
    .line 105
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 106
    .line 107
    .line 108
    move-result v9

    .line 109
    const/16 v17, 0x0

    .line 110
    .line 111
    const-string v2, "html"

    .line 112
    .line 113
    if-nez v9, :cond_1

    .line 114
    .line 115
    invoke-static/range {v17 .. v17}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 116
    .line 117
    .line 118
    move-result-object v9

    .line 119
    :goto_0
    move-object/from16 v23, v8

    .line 120
    .line 121
    move-object v4, v9

    .line 122
    move-object/from16 v25, v10

    .line 123
    .line 124
    move-object/from16 v26, v11

    .line 125
    .line 126
    move-object/from16 v27, v12

    .line 127
    .line 128
    move-object/from16 v28, v13

    .line 129
    .line 130
    move-object v3, v14

    .line 131
    move-object v7, v15

    .line 132
    goto/16 :goto_4

    .line 133
    .line 134
    :cond_1
    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 135
    .line 136
    .line 137
    move-result-object v9

    .line 138
    if-eqz v9, :cond_2

    .line 139
    .line 140
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    .line 141
    .line 142
    .line 143
    move-result v18

    .line 144
    if-gtz v18, :cond_3

    .line 145
    .line 146
    :cond_2
    move-object/from16 v23, v8

    .line 147
    .line 148
    move-object/from16 v25, v10

    .line 149
    .line 150
    move-object/from16 v26, v11

    .line 151
    .line 152
    move-object/from16 v27, v12

    .line 153
    .line 154
    move-object/from16 v28, v13

    .line 155
    .line 156
    move-object v3, v14

    .line 157
    move-object v7, v15

    .line 158
    goto/16 :goto_3

    .line 159
    .line 160
    :cond_3
    invoke-virtual {v9, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 161
    .line 162
    .line 163
    move-result-object v9

    .line 164
    if-nez v9, :cond_4

    .line 165
    .line 166
    invoke-static/range {v17 .. v17}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 167
    .line 168
    .line 169
    move-result-object v9

    .line 170
    goto :goto_0

    .line 171
    :cond_4
    const-string v3, "base_url"

    .line 172
    .line 173
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v18

    .line 181
    const-string v4, "width"

    .line 182
    .line 183
    move-object/from16 v19, v8

    .line 184
    .line 185
    const/4 v8, 0x0

    .line 186
    invoke-virtual {v9, v4, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 187
    .line 188
    .line 189
    move-result v4

    .line 190
    move-object/from16 v21, v10

    .line 191
    .line 192
    const-string v10, "height"

    .line 193
    .line 194
    invoke-virtual {v9, v10, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 195
    .line 196
    .line 197
    move-result v9

    .line 198
    if-nez v4, :cond_6

    .line 199
    .line 200
    if-eqz v9, :cond_5

    .line 201
    .line 202
    const/4 v4, 0x0

    .line 203
    goto :goto_1

    .line 204
    :cond_5
    invoke-static {}, Ll3/d1;->l()Ll3/d1;

    .line 205
    .line 206
    .line 207
    move-result-object v4

    .line 208
    move-object v10, v4

    .line 209
    goto :goto_2

    .line 210
    :cond_6
    :goto_1
    new-instance v8, Ll3/d1;

    .line 211
    .line 212
    new-instance v10, Lf3/g;

    .line 213
    .line 214
    invoke-direct {v10, v4, v9}, Lf3/g;-><init>(II)V

    .line 215
    .line 216
    .line 217
    iget-object v4, v13, Lcom/google/android/gms/internal/ads/um;->a:Landroid/content/Context;

    .line 218
    .line 219
    invoke-direct {v8, v4, v10}, Ll3/d1;-><init>(Landroid/content/Context;Lf3/g;)V

    .line 220
    .line 221
    .line 222
    move-object v10, v8

    .line 223
    :goto_2
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 224
    .line 225
    .line 226
    move-result v4

    .line 227
    if-eqz v4, :cond_7

    .line 228
    .line 229
    invoke-static/range {v17 .. v17}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 230
    .line 231
    .line 232
    move-result-object v3

    .line 233
    move-object v4, v3

    .line 234
    move-object/from16 v26, v11

    .line 235
    .line 236
    move-object/from16 v27, v12

    .line 237
    .line 238
    move-object/from16 v28, v13

    .line 239
    .line 240
    move-object v3, v14

    .line 241
    move-object v7, v15

    .line 242
    move-object/from16 v23, v19

    .line 243
    .line 244
    move-object/from16 v25, v21

    .line 245
    .line 246
    goto :goto_4

    .line 247
    :cond_7
    invoke-static/range {v17 .. v17}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 248
    .line 249
    .line 250
    move-result-object v4

    .line 251
    new-instance v9, Lcom/google/android/gms/internal/ads/tm;

    .line 252
    .line 253
    const/16 v22, 0x0

    .line 254
    .line 255
    move-object/from16 v23, v19

    .line 256
    .line 257
    move-object v8, v9

    .line 258
    move-object/from16 v24, v9

    .line 259
    .line 260
    move-object v9, v13

    .line 261
    move-object/from16 v25, v21

    .line 262
    .line 263
    move-object/from16 v26, v11

    .line 264
    .line 265
    move-object/from16 v11, p2

    .line 266
    .line 267
    move-object/from16 v27, v12

    .line 268
    .line 269
    move-object/from16 v12, v16

    .line 270
    .line 271
    move-object/from16 v28, v13

    .line 272
    .line 273
    move-object v13, v3

    .line 274
    move-object v3, v14

    .line 275
    move-object/from16 v14, v18

    .line 276
    .line 277
    move-object v7, v15

    .line 278
    move/from16 v15, v22

    .line 279
    .line 280
    invoke-direct/range {v8 .. v15}, Lcom/google/android/gms/internal/ads/tm;-><init>(Ljava/lang/Object;Ll3/d1;Lcom/google/android/gms/internal/ads/Ov;Lcom/google/android/gms/internal/ads/Qv;Ljava/lang/String;Ljava/lang/String;I)V

    .line 281
    .line 282
    .line 283
    sget-object v8, Lcom/google/android/gms/internal/ads/se;->e:Lcom/google/android/gms/internal/ads/re;

    .line 284
    .line 285
    move-object/from16 v9, v24

    .line 286
    .line 287
    invoke-static {v4, v9, v8}, Lcom/google/android/gms/internal/ads/Cw;->d2(LD4/b;Lcom/google/android/gms/internal/ads/RB;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/JB;

    .line 288
    .line 289
    .line 290
    move-result-object v4

    .line 291
    new-instance v8, Lcom/google/android/gms/internal/ads/sm;

    .line 292
    .line 293
    const/4 v9, 0x1

    .line 294
    invoke-direct {v8, v9, v4}, Lcom/google/android/gms/internal/ads/sm;-><init>(ILD4/b;)V

    .line 295
    .line 296
    .line 297
    sget-object v9, Lcom/google/android/gms/internal/ads/se;->f:Lcom/google/android/gms/internal/ads/re;

    .line 298
    .line 299
    invoke-static {v4, v8, v9}, Lcom/google/android/gms/internal/ads/Cw;->d2(LD4/b;Lcom/google/android/gms/internal/ads/RB;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/JB;

    .line 300
    .line 301
    .line 302
    move-result-object v4

    .line 303
    goto :goto_4

    .line 304
    :goto_3
    invoke-static/range {v17 .. v17}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 305
    .line 306
    .line 307
    move-result-object v4

    .line 308
    :goto_4
    const-string v8, "secondary_image"

    .line 309
    .line 310
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 311
    .line 312
    .line 313
    move-result-object v8

    .line 314
    move-object/from16 v9, v26

    .line 315
    .line 316
    iget-boolean v10, v9, Lcom/google/android/gms/internal/ads/M8;->H:Z

    .line 317
    .line 318
    move-object/from16 v11, v28

    .line 319
    .line 320
    invoke-virtual {v11, v8, v10}, Lcom/google/android/gms/internal/ads/um;->a(Lorg/json/JSONObject;Z)LD4/b;

    .line 321
    .line 322
    .line 323
    move-result-object v12

    .line 324
    const-string v8, "app_icon"

    .line 325
    .line 326
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 327
    .line 328
    .line 329
    move-result-object v8

    .line 330
    iget-boolean v9, v9, Lcom/google/android/gms/internal/ads/M8;->H:Z

    .line 331
    .line 332
    invoke-virtual {v11, v8, v9}, Lcom/google/android/gms/internal/ads/um;->a(Lorg/json/JSONObject;Z)LD4/b;

    .line 333
    .line 334
    .line 335
    move-result-object v13

    .line 336
    const-string v8, "attribution"

    .line 337
    .line 338
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 339
    .line 340
    .line 341
    move-result-object v8

    .line 342
    const-class v9, Ljava/lang/Exception;

    .line 343
    .line 344
    const-string v10, "image"

    .line 345
    .line 346
    if-nez v8, :cond_8

    .line 347
    .line 348
    invoke-static/range {v17 .. v17}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 349
    .line 350
    .line 351
    move-result-object v8

    .line 352
    move-object/from16 v21, v7

    .line 353
    .line 354
    move-object v7, v8

    .line 355
    :goto_5
    move-object/from16 v8, v25

    .line 356
    .line 357
    goto :goto_6

    .line 358
    :cond_8
    move-object/from16 v14, v27

    .line 359
    .line 360
    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 361
    .line 362
    .line 363
    move-result-object v14

    .line 364
    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 365
    .line 366
    .line 367
    move-result-object v15

    .line 368
    if-nez v14, :cond_9

    .line 369
    .line 370
    if-eqz v15, :cond_9

    .line 371
    .line 372
    new-instance v14, Lorg/json/JSONArray;

    .line 373
    .line 374
    invoke-direct {v14}, Lorg/json/JSONArray;-><init>()V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v14, v15}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 378
    .line 379
    .line 380
    :cond_9
    move-object/from16 v21, v7

    .line 381
    .line 382
    const/4 v7, 0x0

    .line 383
    const/4 v15, 0x1

    .line 384
    invoke-virtual {v11, v14, v7, v15}, Lcom/google/android/gms/internal/ads/um;->b(Lorg/json/JSONArray;ZZ)LD4/b;

    .line 385
    .line 386
    .line 387
    move-result-object v14

    .line 388
    new-instance v7, Lcom/google/android/gms/internal/ads/Ta;

    .line 389
    .line 390
    invoke-direct {v7, v15, v11, v8}, Lcom/google/android/gms/internal/ads/Ta;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 391
    .line 392
    .line 393
    iget-object v15, v11, Lcom/google/android/gms/internal/ads/um;->g:Ljava/util/concurrent/Executor;

    .line 394
    .line 395
    invoke-static {v14, v7, v15}, Lcom/google/android/gms/internal/ads/Cw;->b2(LD4/b;Lcom/google/android/gms/internal/ads/vz;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/KB;

    .line 396
    .line 397
    .line 398
    move-result-object v7

    .line 399
    const-string v14, "require"

    .line 400
    .line 401
    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 402
    .line 403
    .line 404
    move-result v8

    .line 405
    if-eqz v8, :cond_a

    .line 406
    .line 407
    new-instance v8, Lcom/google/android/gms/internal/ads/sm;

    .line 408
    .line 409
    const/4 v14, 0x2

    .line 410
    invoke-direct {v8, v14, v7}, Lcom/google/android/gms/internal/ads/sm;-><init>(ILD4/b;)V

    .line 411
    .line 412
    .line 413
    sget-object v15, Lcom/google/android/gms/internal/ads/se;->f:Lcom/google/android/gms/internal/ads/re;

    .line 414
    .line 415
    invoke-static {v7, v8, v15}, Lcom/google/android/gms/internal/ads/Cw;->d2(LD4/b;Lcom/google/android/gms/internal/ads/RB;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/JB;

    .line 416
    .line 417
    .line 418
    move-result-object v7

    .line 419
    goto :goto_5

    .line 420
    :cond_a
    const/4 v14, 0x2

    .line 421
    new-instance v8, Lcom/google/android/gms/internal/ads/hh;

    .line 422
    .line 423
    const/4 v15, 0x0

    .line 424
    invoke-direct {v8, v14, v15}, Lcom/google/android/gms/internal/ads/hh;-><init>(II)V

    .line 425
    .line 426
    .line 427
    sget-object v14, Lcom/google/android/gms/internal/ads/se;->f:Lcom/google/android/gms/internal/ads/re;

    .line 428
    .line 429
    invoke-static {v7, v9, v8, v14}, Lcom/google/android/gms/internal/ads/Cw;->D1(LD4/b;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/RB;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/rB;

    .line 430
    .line 431
    .line 432
    move-result-object v7

    .line 433
    goto :goto_5

    .line 434
    :goto_6
    iget-object v8, v8, Lcom/google/android/gms/internal/ads/xc;->I:Ljava/lang/Object;

    .line 435
    .line 436
    check-cast v8, Lcom/google/android/gms/internal/ads/Qv;

    .line 437
    .line 438
    const-string v14, "html_containers"

    .line 439
    .line 440
    const-string v15, "instream"

    .line 441
    .line 442
    filled-new-array {v14, v15}, [Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v14

    .line 446
    invoke-static {v6, v14}, LQ3/b;->e0(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    .line 447
    .line 448
    .line 449
    move-result-object v15

    .line 450
    if-nez v15, :cond_b

    .line 451
    .line 452
    move-object/from16 v14, v17

    .line 453
    .line 454
    goto :goto_7

    .line 455
    :cond_b
    const/16 v16, 0x1

    .line 456
    .line 457
    aget-object v14, v14, v16

    .line 458
    .line 459
    invoke-virtual {v15, v14}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 460
    .line 461
    .line 462
    move-result-object v14

    .line 463
    :goto_7
    const-string v15, "video"

    .line 464
    .line 465
    if-nez v14, :cond_10

    .line 466
    .line 467
    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 468
    .line 469
    .line 470
    move-result-object v14

    .line 471
    if-nez v14, :cond_c

    .line 472
    .line 473
    invoke-static/range {v17 .. v17}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 474
    .line 475
    .line 476
    move-result-object v2

    .line 477
    move-object/from16 v18, v7

    .line 478
    .line 479
    move-object/from16 v22, v12

    .line 480
    .line 481
    move-object/from16 v19, v13

    .line 482
    .line 483
    move-object/from16 v12, v23

    .line 484
    .line 485
    :goto_8
    move-object/from16 v23, v4

    .line 486
    .line 487
    goto/16 :goto_c

    .line 488
    .line 489
    :cond_c
    move-object/from16 v18, v7

    .line 490
    .line 491
    const-string v7, "vast_xml"

    .line 492
    .line 493
    invoke-virtual {v14, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v7

    .line 497
    move-object/from16 v19, v13

    .line 498
    .line 499
    sget-object v13, Lcom/google/android/gms/internal/ads/Q7;->n9:Lcom/google/android/gms/internal/ads/J7;

    .line 500
    .line 501
    move-object/from16 v22, v12

    .line 502
    .line 503
    move-object/from16 v12, v23

    .line 504
    .line 505
    invoke-virtual {v12, v13}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 506
    .line 507
    .line 508
    move-result-object v13

    .line 509
    check-cast v13, Ljava/lang/Boolean;

    .line 510
    .line 511
    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    .line 512
    .line 513
    .line 514
    move-result v13

    .line 515
    if-eqz v13, :cond_d

    .line 516
    .line 517
    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 518
    .line 519
    .line 520
    move-result v2

    .line 521
    if-eqz v2, :cond_d

    .line 522
    .line 523
    const/4 v2, 0x1

    .line 524
    goto :goto_9

    .line 525
    :cond_d
    const/4 v2, 0x0

    .line 526
    :goto_9
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 527
    .line 528
    .line 529
    move-result v7

    .line 530
    if-eqz v7, :cond_f

    .line 531
    .line 532
    if-nez v2, :cond_e

    .line 533
    .line 534
    const-string v2, "Required field \'vast_xml\' or \'html\' is missing"

    .line 535
    .line 536
    invoke-static {v2}, Lp3/h;->g(Ljava/lang/String;)V

    .line 537
    .line 538
    .line 539
    invoke-static/range {v17 .. v17}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 540
    .line 541
    .line 542
    move-result-object v2

    .line 543
    goto :goto_8

    .line 544
    :cond_e
    move-object/from16 v23, v4

    .line 545
    .line 546
    goto :goto_a

    .line 547
    :cond_f
    if-nez v2, :cond_e

    .line 548
    .line 549
    iget-object v2, v11, Lcom/google/android/gms/internal/ads/um;->i:Lcom/google/android/gms/internal/ads/Dm;

    .line 550
    .line 551
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 552
    .line 553
    .line 554
    invoke-static/range {v17 .. v17}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 555
    .line 556
    .line 557
    move-result-object v7

    .line 558
    new-instance v8, Lcom/google/android/gms/internal/ads/No;

    .line 559
    .line 560
    const/16 v13, 0x8

    .line 561
    .line 562
    invoke-direct {v8, v2, v13}, Lcom/google/android/gms/internal/ads/No;-><init>(Ljava/lang/Object;I)V

    .line 563
    .line 564
    .line 565
    iget-object v13, v2, Lcom/google/android/gms/internal/ads/Dm;->b:Ljava/util/concurrent/Executor;

    .line 566
    .line 567
    invoke-static {v7, v8, v13}, Lcom/google/android/gms/internal/ads/Cw;->d2(LD4/b;Lcom/google/android/gms/internal/ads/RB;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/JB;

    .line 568
    .line 569
    .line 570
    move-result-object v7

    .line 571
    new-instance v8, Lcom/google/android/gms/internal/ads/Va;

    .line 572
    .line 573
    move-object/from16 v23, v4

    .line 574
    .line 575
    const/4 v4, 0x6

    .line 576
    invoke-direct {v8, v4, v2, v14}, Lcom/google/android/gms/internal/ads/Va;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 577
    .line 578
    .line 579
    invoke-static {v7, v8, v13}, Lcom/google/android/gms/internal/ads/Cw;->d2(LD4/b;Lcom/google/android/gms/internal/ads/RB;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/JB;

    .line 580
    .line 581
    .line 582
    move-result-object v2

    .line 583
    goto :goto_b

    .line 584
    :goto_a
    invoke-virtual {v11, v14, v5, v8}, Lcom/google/android/gms/internal/ads/um;->c(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/Ov;Lcom/google/android/gms/internal/ads/Qv;)Lcom/google/android/gms/internal/ads/JB;

    .line 585
    .line 586
    .line 587
    move-result-object v2

    .line 588
    :goto_b
    sget-object v4, Lcom/google/android/gms/internal/ads/Q7;->z3:Lcom/google/android/gms/internal/ads/J7;

    .line 589
    .line 590
    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 591
    .line 592
    .line 593
    move-result-object v4

    .line 594
    check-cast v4, Ljava/lang/Integer;

    .line 595
    .line 596
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 597
    .line 598
    .line 599
    move-result v4

    .line 600
    int-to-long v7, v4

    .line 601
    iget-object v4, v11, Lcom/google/android/gms/internal/ads/um;->k:Ljava/util/concurrent/ScheduledExecutorService;

    .line 602
    .line 603
    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 604
    .line 605
    invoke-static {v2, v7, v8, v13, v4}, Lcom/google/android/gms/internal/ads/Cw;->e2(LD4/b;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)LD4/b;

    .line 606
    .line 607
    .line 608
    move-result-object v2

    .line 609
    new-instance v4, Lcom/google/android/gms/internal/ads/hh;

    .line 610
    .line 611
    const/4 v7, 0x0

    .line 612
    const/4 v8, 0x2

    .line 613
    invoke-direct {v4, v8, v7}, Lcom/google/android/gms/internal/ads/hh;-><init>(II)V

    .line 614
    .line 615
    .line 616
    sget-object v7, Lcom/google/android/gms/internal/ads/se;->f:Lcom/google/android/gms/internal/ads/re;

    .line 617
    .line 618
    invoke-static {v2, v9, v4, v7}, Lcom/google/android/gms/internal/ads/Cw;->D1(LD4/b;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/RB;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/rB;

    .line 619
    .line 620
    .line 621
    move-result-object v2

    .line 622
    goto :goto_c

    .line 623
    :cond_10
    move-object/from16 v18, v7

    .line 624
    .line 625
    move-object/from16 v22, v12

    .line 626
    .line 627
    move-object/from16 v19, v13

    .line 628
    .line 629
    move-object/from16 v12, v23

    .line 630
    .line 631
    move-object/from16 v23, v4

    .line 632
    .line 633
    invoke-virtual {v11, v14, v5, v8}, Lcom/google/android/gms/internal/ads/um;->c(Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/Ov;Lcom/google/android/gms/internal/ads/Qv;)Lcom/google/android/gms/internal/ads/JB;

    .line 634
    .line 635
    .line 636
    move-result-object v2

    .line 637
    :goto_c
    sget-object v4, Lcom/google/android/gms/internal/ads/Q7;->ic:Lcom/google/android/gms/internal/ads/J7;

    .line 638
    .line 639
    invoke-virtual {v12, v4}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 640
    .line 641
    .line 642
    move-result-object v4

    .line 643
    check-cast v4, Ljava/lang/Boolean;

    .line 644
    .line 645
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 646
    .line 647
    .line 648
    move-result v4

    .line 649
    if-eqz v4, :cond_11

    .line 650
    .line 651
    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 652
    .line 653
    .line 654
    move-result-object v4

    .line 655
    invoke-static {v4}, Lc4/J0;->o(Lorg/json/JSONObject;)Ljava/util/Optional;

    .line 656
    .line 657
    .line 658
    move-result-object v4

    .line 659
    new-instance v7, Lcom/google/android/gms/internal/ads/nm;

    .line 660
    .line 661
    const/4 v8, 0x0

    .line 662
    invoke-direct {v7, v8}, Lcom/google/android/gms/internal/ads/nm;-><init>(I)V

    .line 663
    .line 664
    .line 665
    invoke-static {v4, v7}, Lc4/J0;->m(Ljava/util/Optional;Lcom/google/android/gms/internal/ads/nm;)Ljava/util/Optional;

    .line 666
    .line 667
    .line 668
    move-result-object v4

    .line 669
    new-instance v7, Lcom/google/android/gms/internal/ads/nm;

    .line 670
    .line 671
    const/4 v8, 0x1

    .line 672
    invoke-direct {v7, v8}, Lcom/google/android/gms/internal/ads/nm;-><init>(I)V

    .line 673
    .line 674
    .line 675
    invoke-static {v4, v7}, Lc4/J0;->m(Ljava/util/Optional;Lcom/google/android/gms/internal/ads/nm;)Ljava/util/Optional;

    .line 676
    .line 677
    .line 678
    move-result-object v4

    .line 679
    new-instance v7, Lcom/google/android/gms/internal/ads/nm;

    .line 680
    .line 681
    const/4 v8, 0x2

    .line 682
    invoke-direct {v7, v8}, Lcom/google/android/gms/internal/ads/nm;-><init>(I)V

    .line 683
    .line 684
    .line 685
    invoke-static {v4, v7}, Lc4/J0;->m(Ljava/util/Optional;Lcom/google/android/gms/internal/ads/nm;)Ljava/util/Optional;

    .line 686
    .line 687
    .line 688
    move-result-object v4

    .line 689
    invoke-static {v4}, Lc4/J0;->f(Ljava/util/Optional;)Ljava/lang/Object;

    .line 690
    .line 691
    .line 692
    move-result-object v4

    .line 693
    check-cast v4, Ljava/lang/Integer;

    .line 694
    .line 695
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 696
    .line 697
    .line 698
    move-result v4

    .line 699
    const/4 v7, 0x3

    .line 700
    if-ne v4, v7, :cond_11

    .line 701
    .line 702
    new-instance v4, Lcom/google/android/gms/internal/ads/te;

    .line 703
    .line 704
    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/te;-><init>()V

    .line 705
    .line 706
    .line 707
    new-instance v7, Lcom/google/android/gms/internal/ads/Ua;

    .line 708
    .line 709
    const/4 v8, 0x0

    .line 710
    invoke-direct {v7, v4, v8}, Lcom/google/android/gms/internal/ads/Ua;-><init>(Lcom/google/android/gms/internal/ads/te;I)V

    .line 711
    .line 712
    .line 713
    sget-object v8, Lcom/google/android/gms/internal/ads/se;->e:Lcom/google/android/gms/internal/ads/re;

    .line 714
    .line 715
    invoke-static {v2, v7, v8}, Lcom/google/android/gms/internal/ads/Cw;->h2(LD4/b;Lcom/google/android/gms/internal/ads/dC;Ljava/util/concurrent/Executor;)V

    .line 716
    .line 717
    .line 718
    goto :goto_d

    .line 719
    :cond_11
    new-instance v4, Landroid/os/Bundle;

    .line 720
    .line 721
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 722
    .line 723
    .line 724
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 725
    .line 726
    .line 727
    move-result-object v4

    .line 728
    :goto_d
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/pm;->c:Lcom/google/android/gms/internal/ads/xm;

    .line 729
    .line 730
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 731
    .line 732
    .line 733
    const-string v7, "custom_assets"

    .line 734
    .line 735
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 736
    .line 737
    .line 738
    move-result-object v7

    .line 739
    if-nez v7, :cond_12

    .line 740
    .line 741
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 742
    .line 743
    .line 744
    move-result-object v1

    .line 745
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 746
    .line 747
    .line 748
    move-result-object v1

    .line 749
    goto/16 :goto_11

    .line 750
    .line 751
    :cond_12
    new-instance v8, Ljava/util/ArrayList;

    .line 752
    .line 753
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 754
    .line 755
    .line 756
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    .line 757
    .line 758
    .line 759
    move-result v9

    .line 760
    const/4 v12, 0x0

    .line 761
    :goto_e
    iget-object v13, v1, Lcom/google/android/gms/internal/ads/xm;->a:Ljava/util/concurrent/Executor;

    .line 762
    .line 763
    if-ge v12, v9, :cond_17

    .line 764
    .line 765
    invoke-virtual {v7, v12}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 766
    .line 767
    .line 768
    move-result-object v14

    .line 769
    if-nez v14, :cond_13

    .line 770
    .line 771
    invoke-static/range {v17 .. v17}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 772
    .line 773
    .line 774
    move-result-object v13

    .line 775
    :goto_f
    move-object/from16 v24, v7

    .line 776
    .line 777
    goto :goto_10

    .line 778
    :cond_13
    const-string v15, "name"

    .line 779
    .line 780
    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 781
    .line 782
    .line 783
    move-result-object v15

    .line 784
    if-nez v15, :cond_14

    .line 785
    .line 786
    invoke-static/range {v17 .. v17}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 787
    .line 788
    .line 789
    move-result-object v13

    .line 790
    goto :goto_f

    .line 791
    :cond_14
    const-string v5, "type"

    .line 792
    .line 793
    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 794
    .line 795
    .line 796
    move-result-object v5

    .line 797
    move-object/from16 v24, v7

    .line 798
    .line 799
    const-string v7, "string"

    .line 800
    .line 801
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 802
    .line 803
    .line 804
    move-result v7

    .line 805
    if-eqz v7, :cond_15

    .line 806
    .line 807
    new-instance v5, Lcom/google/android/gms/internal/ads/wm;

    .line 808
    .line 809
    const-string v7, "string_value"

    .line 810
    .line 811
    invoke-virtual {v14, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 812
    .line 813
    .line 814
    move-result-object v7

    .line 815
    invoke-direct {v5, v15, v7}, Lcom/google/android/gms/internal/ads/wm;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    .line 817
    .line 818
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 819
    .line 820
    .line 821
    move-result-object v13

    .line 822
    goto :goto_10

    .line 823
    :cond_15
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 824
    .line 825
    .line 826
    move-result v5

    .line 827
    if-eqz v5, :cond_16

    .line 828
    .line 829
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/xm;->b:Lcom/google/android/gms/internal/ads/um;

    .line 830
    .line 831
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 832
    .line 833
    .line 834
    const-string v7, "image_value"

    .line 835
    .line 836
    invoke-virtual {v14, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 837
    .line 838
    .line 839
    move-result-object v7

    .line 840
    iget-object v14, v5, Lcom/google/android/gms/internal/ads/um;->h:Lcom/google/android/gms/internal/ads/M8;

    .line 841
    .line 842
    iget-boolean v14, v14, Lcom/google/android/gms/internal/ads/M8;->H:Z

    .line 843
    .line 844
    invoke-virtual {v5, v7, v14}, Lcom/google/android/gms/internal/ads/um;->a(Lorg/json/JSONObject;Z)LD4/b;

    .line 845
    .line 846
    .line 847
    move-result-object v5

    .line 848
    new-instance v7, Lcom/google/android/gms/internal/ads/I9;

    .line 849
    .line 850
    const/4 v14, 0x2

    .line 851
    invoke-direct {v7, v15, v14}, Lcom/google/android/gms/internal/ads/I9;-><init>(Ljava/lang/String;I)V

    .line 852
    .line 853
    .line 854
    invoke-static {v5, v7, v13}, Lcom/google/android/gms/internal/ads/Cw;->b2(LD4/b;Lcom/google/android/gms/internal/ads/vz;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/KB;

    .line 855
    .line 856
    .line 857
    move-result-object v13

    .line 858
    goto :goto_10

    .line 859
    :cond_16
    invoke-static/range {v17 .. v17}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 860
    .line 861
    .line 862
    move-result-object v13

    .line 863
    :goto_10
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 864
    .line 865
    .line 866
    const/4 v5, 0x1

    .line 867
    add-int/2addr v12, v5

    .line 868
    move-object/from16 v5, p2

    .line 869
    .line 870
    move-object/from16 v7, v24

    .line 871
    .line 872
    goto :goto_e

    .line 873
    :cond_17
    const/4 v5, 0x1

    .line 874
    new-instance v1, Lcom/google/android/gms/internal/ads/SB;

    .line 875
    .line 876
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/uA;->t(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/uA;

    .line 877
    .line 878
    .line 879
    move-result-object v7

    .line 880
    invoke-direct {v1, v7, v5}, Lcom/google/android/gms/internal/ads/SB;-><init>(Lcom/google/android/gms/internal/ads/uA;Z)V

    .line 881
    .line 882
    .line 883
    new-instance v5, Lcom/google/android/gms/internal/ads/u1;

    .line 884
    .line 885
    const/16 v7, 0x8

    .line 886
    .line 887
    invoke-direct {v5, v7}, Lcom/google/android/gms/internal/ads/u1;-><init>(I)V

    .line 888
    .line 889
    .line 890
    invoke-static {v1, v5, v13}, Lcom/google/android/gms/internal/ads/Cw;->b2(LD4/b;Lcom/google/android/gms/internal/ads/vz;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/KB;

    .line 891
    .line 892
    .line 893
    move-result-object v1

    .line 894
    :goto_11
    const-string v5, "enable_omid"

    .line 895
    .line 896
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 897
    .line 898
    .line 899
    move-result v5

    .line 900
    if-nez v5, :cond_18

    .line 901
    .line 902
    invoke-static/range {v17 .. v17}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 903
    .line 904
    .line 905
    move-result-object v5

    .line 906
    goto :goto_12

    .line 907
    :cond_18
    const-string v5, "omid_settings"

    .line 908
    .line 909
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 910
    .line 911
    .line 912
    move-result-object v5

    .line 913
    if-nez v5, :cond_19

    .line 914
    .line 915
    invoke-static/range {v17 .. v17}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 916
    .line 917
    .line 918
    move-result-object v5

    .line 919
    goto :goto_12

    .line 920
    :cond_19
    const-string v7, "omid_html"

    .line 921
    .line 922
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 923
    .line 924
    .line 925
    move-result-object v5

    .line 926
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 927
    .line 928
    .line 929
    move-result v7

    .line 930
    if-eqz v7, :cond_1a

    .line 931
    .line 932
    invoke-static/range {v17 .. v17}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 933
    .line 934
    .line 935
    move-result-object v5

    .line 936
    goto :goto_12

    .line 937
    :cond_1a
    invoke-static/range {v17 .. v17}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 938
    .line 939
    .line 940
    move-result-object v7

    .line 941
    new-instance v8, Lcom/google/android/gms/internal/ads/Va;

    .line 942
    .line 943
    invoke-direct {v8, v11, v5}, Lcom/google/android/gms/internal/ads/Va;-><init>(Lcom/google/android/gms/internal/ads/um;Ljava/lang/String;)V

    .line 944
    .line 945
    .line 946
    sget-object v5, Lcom/google/android/gms/internal/ads/se;->e:Lcom/google/android/gms/internal/ads/re;

    .line 947
    .line 948
    invoke-static {v7, v8, v5}, Lcom/google/android/gms/internal/ads/Cw;->d2(LD4/b;Lcom/google/android/gms/internal/ads/RB;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/JB;

    .line 949
    .line 950
    .line 951
    move-result-object v5

    .line 952
    :goto_12
    new-instance v7, Ljava/util/ArrayList;

    .line 953
    .line 954
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 955
    .line 956
    .line 957
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 958
    .line 959
    .line 960
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 961
    .line 962
    .line 963
    move-object/from16 v15, v23

    .line 964
    .line 965
    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 966
    .line 967
    .line 968
    move-object/from16 v12, v22

    .line 969
    .line 970
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 971
    .line 972
    .line 973
    move-object/from16 v11, v19

    .line 974
    .line 975
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 976
    .line 977
    .line 978
    move-object/from16 v13, v18

    .line 979
    .line 980
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 981
    .line 982
    .line 983
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 984
    .line 985
    .line 986
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 987
    .line 988
    .line 989
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 990
    .line 991
    .line 992
    sget-object v8, Lcom/google/android/gms/internal/ads/Q7;->P4:Lcom/google/android/gms/internal/ads/J7;

    .line 993
    .line 994
    sget-object v9, Ll3/q;->d:Ll3/q;

    .line 995
    .line 996
    iget-object v9, v9, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 997
    .line 998
    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 999
    .line 1000
    .line 1001
    move-result-object v8

    .line 1002
    check-cast v8, Ljava/lang/Boolean;

    .line 1003
    .line 1004
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1005
    .line 1006
    .line 1007
    move-result v8

    .line 1008
    if-nez v8, :cond_1b

    .line 1009
    .line 1010
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1011
    .line 1012
    .line 1013
    :cond_1b
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/uA;->t(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/uA;

    .line 1014
    .line 1015
    .line 1016
    move-result-object v7

    .line 1017
    new-instance v14, Lcom/google/android/gms/internal/ads/om;

    .line 1018
    .line 1019
    move-object v8, v14

    .line 1020
    move-object v9, v3

    .line 1021
    move-object v10, v0

    .line 1022
    move-object v0, v14

    .line 1023
    move-object/from16 v14, p3

    .line 1024
    .line 1025
    move-object v3, v15

    .line 1026
    move-object v15, v2

    .line 1027
    move-object/from16 v16, v4

    .line 1028
    .line 1029
    move-object/from16 v17, v3

    .line 1030
    .line 1031
    move-object/from16 v18, v5

    .line 1032
    .line 1033
    move-object/from16 v19, v1

    .line 1034
    .line 1035
    invoke-direct/range {v8 .. v19}, Lcom/google/android/gms/internal/ads/om;-><init>(LD4/b;LD4/b;LD4/b;LD4/b;LD4/b;Lorg/json/JSONObject;LD4/b;LD4/b;LD4/b;LD4/b;LD4/b;)V

    .line 1036
    .line 1037
    .line 1038
    new-instance v2, Lcom/google/android/gms/internal/ads/WB;

    .line 1039
    .line 1040
    const/4 v3, 0x0

    .line 1041
    invoke-direct {v2, v7, v3, v3}, Lcom/google/android/gms/internal/ads/MB;-><init>(Lcom/google/android/gms/internal/ads/uA;ZZ)V

    .line 1042
    .line 1043
    .line 1044
    new-instance v1, Lcom/google/android/gms/internal/ads/UB;

    .line 1045
    .line 1046
    move-object/from16 v4, v21

    .line 1047
    .line 1048
    invoke-direct {v1, v2, v0, v4}, Lcom/google/android/gms/internal/ads/UB;-><init>(Lcom/google/android/gms/internal/ads/WB;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)V

    .line 1049
    .line 1050
    .line 1051
    iput-object v1, v2, Lcom/google/android/gms/internal/ads/WB;->V:Lcom/google/android/gms/internal/ads/UB;

    .line 1052
    .line 1053
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/MB;->x()V

    .line 1054
    .line 1055
    .line 1056
    const/4 v0, 0x2

    .line 1057
    new-array v0, v0, [LD4/b;

    .line 1058
    .line 1059
    aput-object v20, v0, v3

    .line 1060
    .line 1061
    const/4 v4, 0x1

    .line 1062
    aput-object v2, v0, v4

    .line 1063
    .line 1064
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/uA;->u([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/PA;

    .line 1065
    .line 1066
    .line 1067
    move-result-object v7

    .line 1068
    new-instance v8, Lcom/google/android/gms/internal/ads/Xq;

    .line 1069
    .line 1070
    move-object v0, v8

    .line 1071
    move-object/from16 v1, p0

    .line 1072
    .line 1073
    const/4 v9, 0x1

    .line 1074
    const/4 v10, 0x0

    .line 1075
    move-object/from16 v3, v20

    .line 1076
    .line 1077
    move-object/from16 v4, p1

    .line 1078
    .line 1079
    move-object/from16 v5, p2

    .line 1080
    .line 1081
    move-object/from16 v6, p3

    .line 1082
    .line 1083
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/Xq;-><init>(Lcom/google/android/gms/internal/ads/Yq;Lcom/google/android/gms/internal/ads/WB;LD4/b;Lcom/google/android/gms/internal/ads/Tv;Lcom/google/android/gms/internal/ads/Ov;Lorg/json/JSONObject;)V

    .line 1084
    .line 1085
    .line 1086
    new-instance v0, Lcom/google/android/gms/internal/ads/WB;

    .line 1087
    .line 1088
    invoke-direct {v0, v7, v9, v10}, Lcom/google/android/gms/internal/ads/MB;-><init>(Lcom/google/android/gms/internal/ads/uA;ZZ)V

    .line 1089
    .line 1090
    .line 1091
    new-instance v1, Lcom/google/android/gms/internal/ads/UB;

    .line 1092
    .line 1093
    move-object/from16 v2, p0

    .line 1094
    .line 1095
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/Yq;->b:Lcom/google/android/gms/internal/ads/jC;

    .line 1096
    .line 1097
    invoke-direct {v1, v0, v8, v3}, Lcom/google/android/gms/internal/ads/UB;-><init>(Lcom/google/android/gms/internal/ads/WB;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)V

    .line 1098
    .line 1099
    .line 1100
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/WB;->V:Lcom/google/android/gms/internal/ads/UB;

    .line 1101
    .line 1102
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/MB;->x()V

    .line 1103
    .line 1104
    .line 1105
    return-object v0
.end method
