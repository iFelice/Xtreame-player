.class public abstract LS3/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/ClassLoader;

.field public static b:Ljava/lang/Thread;


# direct methods
.method public static A(Lcom/google/android/gms/internal/ads/NA;)Lcom/google/android/gms/internal/ads/IA;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/IA;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/IA;-><init>(Lcom/google/android/gms/internal/ads/NA;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static B(Ljava/lang/String;Landroid/content/Context;Landroid/graphics/Point;Landroid/graphics/Point;)Lorg/json/JSONObject;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 3
    .line 4
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 5
    .line 6
    .line 7
    :try_start_1
    const-string v2, "click_point"

    .line 8
    .line 9
    new-instance v3, Lorg/json/JSONObject;

    .line 10
    .line 11
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 12
    .line 13
    .line 14
    :try_start_2
    const-string v4, "x"

    .line 15
    .line 16
    iget v5, p3, Landroid/graphics/Point;->x:I

    .line 17
    .line 18
    sget-object v6, Ll3/p;->f:Ll3/p;

    .line 19
    .line 20
    iget-object v7, v6, Ll3/p;->a:Lp3/d;

    .line 21
    .line 22
    invoke-virtual {v7, p1, v5}, Lp3/d;->f(Landroid/content/Context;I)I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 27
    .line 28
    .line 29
    const-string v4, "y"

    .line 30
    .line 31
    iget p3, p3, Landroid/graphics/Point;->y:I

    .line 32
    .line 33
    iget-object v5, v6, Ll3/p;->a:Lp3/d;

    .line 34
    .line 35
    invoke-virtual {v5, p1, p3}, Lp3/d;->f(Landroid/content/Context;I)I

    .line 36
    .line 37
    .line 38
    move-result p3

    .line 39
    invoke-virtual {v3, v4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 40
    .line 41
    .line 42
    const-string p3, "start_x"

    .line 43
    .line 44
    iget v4, p2, Landroid/graphics/Point;->x:I

    .line 45
    .line 46
    iget-object v5, v6, Ll3/p;->a:Lp3/d;

    .line 47
    .line 48
    invoke-virtual {v5, p1, v4}, Lp3/d;->f(Landroid/content/Context;I)I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    invoke-virtual {v3, p3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 53
    .line 54
    .line 55
    const-string p3, "start_y"

    .line 56
    .line 57
    iget p2, p2, Landroid/graphics/Point;->y:I

    .line 58
    .line 59
    iget-object v4, v6, Ll3/p;->a:Lp3/d;

    .line 60
    .line 61
    invoke-virtual {v4, p1, p2}, Lp3/d;->f(Landroid/content/Context;I)I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    invoke-virtual {v3, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 66
    .line 67
    .line 68
    move-object v0, v3

    .line 69
    goto :goto_0

    .line 70
    :catch_0
    move-exception p0

    .line 71
    goto :goto_1

    .line 72
    :catch_1
    move-exception p1

    .line 73
    :try_start_3
    const-string p2, "Error occurred while putting signals into JSON object."

    .line 74
    .line 75
    invoke-static {p2, p1}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    :goto_0
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    .line 80
    .line 81
    const-string p1, "asset_id"

    .line 82
    .line 83
    invoke-virtual {v1, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 84
    .line 85
    .line 86
    goto :goto_3

    .line 87
    :goto_1
    move-object v0, v1

    .line 88
    goto :goto_2

    .line 89
    :catch_2
    move-exception p0

    .line 90
    :goto_2
    const-string p1, "Error occurred while grabbing click signals."

    .line 91
    .line 92
    invoke-static {p1, p0}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    .line 94
    .line 95
    move-object v1, v0

    .line 96
    :goto_3
    return-object v1
.end method

.method public static C(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Landroid/view/View;Landroid/widget/ImageView$ScaleType;)Lorg/json/JSONObject;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    const-string v3, "ad_view"

    .line 8
    .line 9
    const-string v4, "relative_to"

    .line 10
    .line 11
    const-string v5, "y"

    .line 12
    .line 13
    const-string v6, "x"

    .line 14
    .line 15
    const-string v7, "height"

    .line 16
    .line 17
    const-string v8, "width"

    .line 18
    .line 19
    new-instance v9, Lorg/json/JSONObject;

    .line 20
    .line 21
    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 22
    .line 23
    .line 24
    if-eqz p1, :cond_a

    .line 25
    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    goto/16 :goto_a

    .line 29
    .line 30
    :cond_0
    const/4 v10, 0x2

    .line 31
    new-array v11, v10, [I

    .line 32
    .line 33
    invoke-virtual {v2, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 34
    .line 35
    .line 36
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v12

    .line 48
    if-eqz v12, :cond_a

    .line 49
    .line 50
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v12

    .line 54
    check-cast v12, Ljava/util/Map$Entry;

    .line 55
    .line 56
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v13

    .line 60
    check-cast v13, Ljava/lang/ref/WeakReference;

    .line 61
    .line 62
    invoke-virtual {v13}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v13

    .line 66
    check-cast v13, Landroid/view/View;

    .line 67
    .line 68
    if-eqz v13, :cond_1

    .line 69
    .line 70
    new-array v14, v10, [I

    .line 71
    .line 72
    invoke-virtual {v13, v14}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 73
    .line 74
    .line 75
    new-instance v15, Lorg/json/JSONObject;

    .line 76
    .line 77
    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    .line 78
    .line 79
    .line 80
    new-instance v10, Lorg/json/JSONObject;

    .line 81
    .line 82
    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 83
    .line 84
    .line 85
    move-object/from16 p1, v2

    .line 86
    .line 87
    :try_start_0
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    .line 88
    .line 89
    .line 90
    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_5

    .line 91
    move-object/from16 v16, v9

    .line 92
    .line 93
    :try_start_1
    sget-object v9, Ll3/p;->f:Ll3/p;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_4

    .line 94
    .line 95
    :try_start_2
    iget-object v1, v9, Ll3/p;->a:Lp3/d;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 96
    .line 97
    iget-object v9, v9, Ll3/p;->a:Lp3/d;

    .line 98
    .line 99
    :try_start_3
    invoke-virtual {v1, v0, v2}, Lp3/d;->f(Landroid/content/Context;I)I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    invoke-virtual {v10, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    invoke-virtual {v9, v0, v1}, Lp3/d;->f(Landroid/content/Context;I)I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    invoke-virtual {v10, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 115
    .line 116
    .line 117
    const/4 v1, 0x0

    .line 118
    aget v2, v14, v1

    .line 119
    .line 120
    aget v17, v11, v1

    .line 121
    .line 122
    sub-int v2, v2, v17

    .line 123
    .line 124
    invoke-virtual {v9, v0, v2}, Lp3/d;->f(Landroid/content/Context;I)I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    invoke-virtual {v10, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 129
    .line 130
    .line 131
    const/4 v2, 0x1

    .line 132
    aget v17, v14, v2

    .line 133
    .line 134
    aget v18, v11, v2

    .line 135
    .line 136
    sub-int v2, v17, v18

    .line 137
    .line 138
    invoke-virtual {v9, v0, v2}, Lp3/d;->f(Landroid/content/Context;I)I

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    invoke-virtual {v10, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v10, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    .line 147
    .line 148
    const-string v2, "frame"

    .line 149
    .line 150
    invoke-virtual {v15, v2, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    .line 152
    .line 153
    new-instance v2, Landroid/graphics/Rect;

    .line 154
    .line 155
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v13, v2}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 159
    .line 160
    .line 161
    move-result v10

    .line 162
    if-eqz v10, :cond_2

    .line 163
    .line 164
    invoke-static {v0, v2}, LS3/e;->I(Landroid/content/Context;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    const/4 v10, 0x1

    .line 169
    goto :goto_3

    .line 170
    :catch_0
    move-object/from16 v2, p2

    .line 171
    .line 172
    :goto_1
    move-object v14, v11

    .line 173
    :catch_1
    :goto_2
    move-object/from16 v9, v16

    .line 174
    .line 175
    goto/16 :goto_9

    .line 176
    .line 177
    :cond_2
    new-instance v2, Lorg/json/JSONObject;

    .line 178
    .line 179
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v2, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 186
    .line 187
    .line 188
    aget v10, v14, v1

    .line 189
    .line 190
    aget v17, v11, v1

    .line 191
    .line 192
    sub-int v10, v10, v17

    .line 193
    .line 194
    invoke-virtual {v9, v0, v10}, Lp3/d;->f(Landroid/content/Context;I)I

    .line 195
    .line 196
    .line 197
    move-result v10

    .line 198
    invoke-virtual {v2, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 199
    .line 200
    .line 201
    const/4 v10, 0x1

    .line 202
    aget v14, v14, v10

    .line 203
    .line 204
    aget v17, v11, v10

    .line 205
    .line 206
    sub-int v14, v14, v17

    .line 207
    .line 208
    invoke-virtual {v9, v0, v14}, Lp3/d;->f(Landroid/content/Context;I)I

    .line 209
    .line 210
    .line 211
    move-result v9

    .line 212
    invoke-virtual {v2, v5, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 216
    .line 217
    .line 218
    :goto_3
    const-string v9, "visible_bounds"

    .line 219
    .line 220
    invoke-virtual {v15, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 221
    .line 222
    .line 223
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    check-cast v2, Ljava/lang/String;

    .line 228
    .line 229
    const-string v9, "3010"

    .line 230
    .line 231
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v2

    .line 235
    if-eqz v2, :cond_7

    .line 236
    .line 237
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->l7:Lcom/google/android/gms/internal/ads/J7;

    .line 238
    .line 239
    sget-object v9, Ll3/q;->d:Ll3/q;

    .line 240
    .line 241
    iget-object v14, v9, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    .line 242
    .line 243
    iget-object v9, v9, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 244
    .line 245
    :try_start_4
    invoke-virtual {v14, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    check-cast v2, Ljava/lang/Boolean;

    .line 250
    .line 251
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    if-eqz v2, :cond_3

    .line 256
    .line 257
    const-string v2, "mediaview_graphics_matrix"

    .line 258
    .line 259
    invoke-virtual {v13}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    .line 260
    .line 261
    .line 262
    move-result-object v14

    .line 263
    invoke-virtual {v14}, Landroid/graphics/Matrix;->toShortString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v14

    .line 267
    invoke-virtual {v15, v2, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 268
    .line 269
    .line 270
    :cond_3
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->m7:Lcom/google/android/gms/internal/ads/J7;

    .line 271
    .line 272
    invoke-virtual {v9, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    check-cast v2, Ljava/lang/Boolean;

    .line 277
    .line 278
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 279
    .line 280
    .line 281
    move-result v2

    .line 282
    if-eqz v2, :cond_4

    .line 283
    .line 284
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 285
    .line 286
    .line 287
    move-result-object v2

    .line 288
    const-string v14, "view_width_layout_type"

    .line 289
    .line 290
    iget v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 291
    .line 292
    invoke-static {v1}, LS3/e;->J(I)I

    .line 293
    .line 294
    .line 295
    move-result v1

    .line 296
    add-int/lit8 v1, v1, -0x1

    .line 297
    .line 298
    invoke-virtual {v15, v14, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 299
    .line 300
    .line 301
    const-string v1, "view_height_layout_type"

    .line 302
    .line 303
    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 304
    .line 305
    invoke-static {v2}, LS3/e;->J(I)I

    .line 306
    .line 307
    .line 308
    move-result v2

    .line 309
    add-int/lit8 v2, v2, -0x1

    .line 310
    .line 311
    invoke-virtual {v15, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 312
    .line 313
    .line 314
    :cond_4
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->n7:Lcom/google/android/gms/internal/ads/J7;

    .line 315
    .line 316
    invoke-virtual {v9, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    check-cast v1, Ljava/lang/Boolean;

    .line 321
    .line 322
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 323
    .line 324
    .line 325
    move-result v1

    .line 326
    if-eqz v1, :cond_6

    .line 327
    .line 328
    const-string v1, "view_path"

    .line 329
    .line 330
    new-instance v2, Ljava/util/ArrayList;

    .line 331
    .line 332
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v13}, Landroid/view/View;->getId()I

    .line 336
    .line 337
    .line 338
    move-result v9

    .line 339
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 340
    .line 341
    .line 342
    move-result-object v9

    .line 343
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    .line 345
    .line 346
    invoke-virtual {v13}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 347
    .line 348
    .line 349
    move-result-object v9

    .line 350
    :goto_4
    instance-of v14, v9, Landroid/view/View;

    .line 351
    .line 352
    if-eqz v14, :cond_5

    .line 353
    .line 354
    move-object v14, v9

    .line 355
    check-cast v14, Landroid/view/View;

    .line 356
    .line 357
    invoke-virtual {v14}, Landroid/view/View;->getId()I

    .line 358
    .line 359
    .line 360
    move-result v14

    .line 361
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 362
    .line 363
    .line 364
    move-result-object v14

    .line 365
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    .line 367
    .line 368
    invoke-interface {v9}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 369
    .line 370
    .line 371
    move-result-object v9

    .line 372
    goto :goto_4

    .line 373
    :cond_5
    const-string v9, "/"

    .line 374
    .line 375
    invoke-static {v9, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v2

    .line 379
    invoke-virtual {v15, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 380
    .line 381
    .line 382
    :cond_6
    if-eqz p4, :cond_7

    .line 383
    .line 384
    const-string v1, "mediaview_scale_type"

    .line 385
    .line 386
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Enum;->ordinal()I

    .line 387
    .line 388
    .line 389
    move-result v2

    .line 390
    invoke-virtual {v15, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 391
    .line 392
    .line 393
    :cond_7
    instance-of v1, v13, Landroid/widget/TextView;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 394
    .line 395
    if-eqz v1, :cond_8

    .line 396
    .line 397
    :try_start_5
    move-object v1, v13

    .line 398
    check-cast v1, Landroid/widget/TextView;

    .line 399
    .line 400
    const-string v2, "text_color"

    .line 401
    .line 402
    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    .line 403
    .line 404
    .line 405
    move-result v9

    .line 406
    invoke-virtual {v15, v2, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 407
    .line 408
    .line 409
    const-string v2, "font_size"

    .line 410
    .line 411
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    .line 412
    .line 413
    .line 414
    move-result v9
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_3

    .line 415
    move-object v14, v11

    .line 416
    float-to-double v10, v9

    .line 417
    :try_start_6
    invoke-virtual {v15, v2, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 418
    .line 419
    .line 420
    const-string v2, "text"

    .line 421
    .line 422
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 423
    .line 424
    .line 425
    move-result-object v1

    .line 426
    invoke-virtual {v15, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 427
    .line 428
    .line 429
    goto :goto_6

    .line 430
    :catch_2
    :goto_5
    move-object/from16 v2, p2

    .line 431
    .line 432
    goto/16 :goto_2

    .line 433
    .line 434
    :catch_3
    move-object v14, v11

    .line 435
    goto :goto_5

    .line 436
    :cond_8
    move-object v14, v11

    .line 437
    :goto_6
    const-string v1, "is_clickable"
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2

    .line 438
    .line 439
    move-object/from16 v2, p2

    .line 440
    .line 441
    if-eqz v2, :cond_9

    .line 442
    .line 443
    :try_start_7
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 444
    .line 445
    .line 446
    move-result-object v9

    .line 447
    invoke-interface {v2, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 448
    .line 449
    .line 450
    move-result v9

    .line 451
    if-eqz v9, :cond_9

    .line 452
    .line 453
    invoke-virtual {v13}, Landroid/view/View;->isClickable()Z

    .line 454
    .line 455
    .line 456
    move-result v9

    .line 457
    if-eqz v9, :cond_9

    .line 458
    .line 459
    const/4 v9, 0x1

    .line 460
    goto :goto_7

    .line 461
    :cond_9
    const/4 v9, 0x0

    .line 462
    :goto_7
    invoke-virtual {v15, v1, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 463
    .line 464
    .line 465
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    move-result-object v1

    .line 469
    check-cast v1, Ljava/lang/String;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1

    .line 470
    .line 471
    move-object/from16 v9, v16

    .line 472
    .line 473
    :try_start_8
    invoke-virtual {v9, v1, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_6

    .line 474
    .line 475
    .line 476
    :goto_8
    move-object v1, v2

    .line 477
    move-object v11, v14

    .line 478
    const/4 v10, 0x2

    .line 479
    move-object/from16 v2, p1

    .line 480
    .line 481
    goto/16 :goto_0

    .line 482
    .line 483
    :catch_4
    move-object v2, v1

    .line 484
    goto/16 :goto_1

    .line 485
    .line 486
    :catch_5
    move-object v2, v1

    .line 487
    move-object v14, v11

    .line 488
    :catch_6
    :goto_9
    const-string v1, "Unable to get asset views information"

    .line 489
    .line 490
    invoke-static {v1}, Lp3/h;->g(Ljava/lang/String;)V

    .line 491
    .line 492
    .line 493
    goto :goto_8

    .line 494
    :cond_a
    :goto_a
    return-object v9
.end method

.method public static D(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    :try_start_0
    const-string v1, "can_show_on_lock_screen"

    .line 9
    .line 10
    sget-object v2, Lk3/l;->A:Lk3/l;

    .line 11
    .line 12
    iget-object v2, v2, Lk3/l;->c:Lo3/O;

    .line 13
    .line 14
    invoke-static {p1}, Lo3/O;->C(Landroid/view/View;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 19
    .line 20
    .line 21
    const-string p1, "is_keyguard_locked"

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    if-nez p0, :cond_0

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_0
    const-string v2, "keyguard"

    .line 28
    .line 29
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    if-eqz p0, :cond_1

    .line 34
    .line 35
    instance-of v2, p0, Landroid/app/KeyguardManager;

    .line 36
    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    check-cast p0, Landroid/app/KeyguardManager;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 p0, 0x0

    .line 43
    :goto_0
    if-eqz p0, :cond_2

    .line 44
    .line 45
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-eqz p0, :cond_2

    .line 50
    .line 51
    const/4 v1, 0x1

    .line 52
    :cond_2
    :goto_1
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :catch_0
    const-string p0, "Unable to get lock screen information"

    .line 57
    .line 58
    invoke-static {p0}, Lp3/h;->g(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_3
    :goto_2
    return-object v0
.end method

.method public static E(Landroid/view/View;)Lorg/json/JSONObject;
    .locals 6

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    goto :goto_4

    .line 9
    :cond_0
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->k7:Lcom/google/android/gms/internal/ads/J7;

    .line 10
    .line 11
    sget-object v2, Ll3/q;->d:Ll3/q;

    .line 12
    .line 13
    iget-object v2, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/lang/Boolean;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    const/4 v2, 0x1

    .line 26
    const/4 v3, 0x0

    .line 27
    const-string v4, "contained_in_scroll_view"

    .line 28
    .line 29
    if-eqz v1, :cond_3

    .line 30
    .line 31
    :try_start_1
    sget-object v1, Lk3/l;->A:Lk3/l;

    .line 32
    .line 33
    iget-object v1, v1, Lk3/l;->c:Lo3/O;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    :goto_0
    if-eqz p0, :cond_1

    .line 40
    .line 41
    instance-of v1, p0, Landroid/widget/ScrollView;

    .line 42
    .line 43
    if-nez v1, :cond_1

    .line 44
    .line 45
    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    if-nez p0, :cond_2

    .line 51
    .line 52
    const/4 v2, 0x0

    .line 53
    :cond_2
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 54
    .line 55
    .line 56
    goto :goto_4

    .line 57
    :cond_3
    sget-object v1, Lk3/l;->A:Lk3/l;

    .line 58
    .line 59
    iget-object v1, v1, Lk3/l;->c:Lo3/O;

    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    :goto_1
    if-eqz v1, :cond_4

    .line 66
    .line 67
    instance-of v5, v1, Landroid/widget/AdapterView;

    .line 68
    .line 69
    if-nez v5, :cond_4

    .line 70
    .line 71
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    goto :goto_1

    .line 76
    :cond_4
    if-nez v1, :cond_5

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_5
    check-cast v1, Landroid/widget/AdapterView;

    .line 80
    .line 81
    invoke-virtual {v1, p0}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    const/4 v1, -0x1

    .line 86
    if-eq p0, v1, :cond_6

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_6
    :goto_2
    const/4 v2, 0x0

    .line 90
    :goto_3
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 91
    .line 92
    .line 93
    :catch_0
    :goto_4
    return-object v0
.end method

.method public static F(Landroid/content/Context;Landroid/view/View;)Lorg/json/JSONObject;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "window"

    .line 6
    .line 7
    const-string v3, "relative_to"

    .line 8
    .line 9
    const-string v4, "y"

    .line 10
    .line 11
    const-string v5, "x"

    .line 12
    .line 13
    const-string v6, "height"

    .line 14
    .line 15
    const-string v7, "width"

    .line 16
    .line 17
    new-instance v8, Lorg/json/JSONObject;

    .line 18
    .line 19
    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 20
    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    goto/16 :goto_9

    .line 25
    .line 26
    :cond_0
    const/4 v9, 0x2

    .line 27
    const/4 v10, 0x1

    .line 28
    const/4 v11, 0x0

    .line 29
    :try_start_0
    new-array v12, v9, [I

    .line 30
    .line 31
    invoke-virtual {v1, v12}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 32
    .line 33
    .line 34
    new-array v13, v9, [I

    .line 35
    .line 36
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 37
    .line 38
    .line 39
    move-result v14

    .line 40
    aput v14, v13, v11

    .line 41
    .line 42
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 43
    .line 44
    .line 45
    move-result v14

    .line 46
    aput v14, v13, v10

    .line 47
    .line 48
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 49
    .line 50
    .line 51
    move-result-object v14

    .line 52
    :goto_0
    instance-of v15, v14, Landroid/view/ViewGroup;

    .line 53
    .line 54
    if-eqz v15, :cond_1

    .line 55
    .line 56
    move-object v15, v14

    .line 57
    check-cast v15, Landroid/view/ViewGroup;

    .line 58
    .line 59
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    .line 60
    .line 61
    .line 62
    move-result v9

    .line 63
    aget v10, v13, v11

    .line 64
    .line 65
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    .line 66
    .line 67
    .line 68
    move-result v9

    .line 69
    aput v9, v13, v11

    .line 70
    .line 71
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    .line 72
    .line 73
    .line 74
    move-result v9

    .line 75
    const/4 v10, 0x1

    .line 76
    aget v15, v13, v10

    .line 77
    .line 78
    invoke-static {v9, v15}, Ljava/lang/Math;->min(II)I

    .line 79
    .line 80
    .line 81
    move-result v9

    .line 82
    aput v9, v13, v10

    .line 83
    .line 84
    invoke-interface {v14}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    .line 85
    .line 86
    .line 87
    move-result-object v14

    .line 88
    const/4 v9, 0x2

    .line 89
    const/4 v10, 0x1

    .line 90
    goto :goto_0

    .line 91
    :cond_1
    new-instance v9, Lorg/json/JSONObject;

    .line 92
    .line 93
    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 97
    .line 98
    .line 99
    move-result v10

    .line 100
    sget-object v14, Ll3/p;->f:Ll3/p;

    .line 101
    .line 102
    iget-object v15, v14, Ll3/p;->a:Lp3/d;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .line 104
    iget-object v14, v14, Ll3/p;->a:Lp3/d;

    .line 105
    .line 106
    :try_start_1
    invoke-virtual {v15, v0, v10}, Lp3/d;->f(Landroid/content/Context;I)I

    .line 107
    .line 108
    .line 109
    move-result v10

    .line 110
    invoke-virtual {v9, v7, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 111
    .line 112
    .line 113
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 114
    .line 115
    .line 116
    move-result v10

    .line 117
    invoke-virtual {v14, v0, v10}, Lp3/d;->f(Landroid/content/Context;I)I

    .line 118
    .line 119
    .line 120
    move-result v10

    .line 121
    invoke-virtual {v9, v6, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 122
    .line 123
    .line 124
    aget v10, v12, v11

    .line 125
    .line 126
    invoke-virtual {v14, v0, v10}, Lp3/d;->f(Landroid/content/Context;I)I

    .line 127
    .line 128
    .line 129
    move-result v10

    .line 130
    invoke-virtual {v9, v5, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 131
    .line 132
    .line 133
    const/4 v10, 0x1

    .line 134
    aget v15, v12, v10

    .line 135
    .line 136
    invoke-virtual {v14, v0, v15}, Lp3/d;->f(Landroid/content/Context;I)I

    .line 137
    .line 138
    .line 139
    move-result v10

    .line 140
    invoke-virtual {v9, v4, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 141
    .line 142
    .line 143
    const-string v10, "maximum_visible_width"

    .line 144
    .line 145
    aget v15, v13, v11

    .line 146
    .line 147
    invoke-virtual {v14, v0, v15}, Lp3/d;->f(Landroid/content/Context;I)I

    .line 148
    .line 149
    .line 150
    move-result v15

    .line 151
    invoke-virtual {v9, v10, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 152
    .line 153
    .line 154
    const-string v10, "maximum_visible_height"

    .line 155
    .line 156
    const/4 v15, 0x1

    .line 157
    aget v13, v13, v15

    .line 158
    .line 159
    invoke-virtual {v14, v0, v13}, Lp3/d;->f(Landroid/content/Context;I)I

    .line 160
    .line 161
    .line 162
    move-result v13

    .line 163
    invoke-virtual {v9, v10, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v9, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    .line 168
    .line 169
    const-string v10, "frame"

    .line 170
    .line 171
    invoke-virtual {v8, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    .line 173
    .line 174
    new-instance v9, Landroid/graphics/Rect;

    .line 175
    .line 176
    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1, v9}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 180
    .line 181
    .line 182
    move-result v10

    .line 183
    if-eqz v10, :cond_2

    .line 184
    .line 185
    invoke-static {v0, v9}, LS3/e;->I(Landroid/content/Context;Landroid/graphics/Rect;)Lorg/json/JSONObject;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    goto :goto_1

    .line 190
    :cond_2
    new-instance v9, Lorg/json/JSONObject;

    .line 191
    .line 192
    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v9, v7, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v9, v6, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 199
    .line 200
    .line 201
    aget v6, v12, v11

    .line 202
    .line 203
    invoke-virtual {v14, v0, v6}, Lp3/d;->f(Landroid/content/Context;I)I

    .line 204
    .line 205
    .line 206
    move-result v6

    .line 207
    invoke-virtual {v9, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 208
    .line 209
    .line 210
    const/4 v5, 0x1

    .line 211
    aget v6, v12, v5

    .line 212
    .line 213
    invoke-virtual {v14, v0, v6}, Lp3/d;->f(Landroid/content/Context;I)I

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    invoke-virtual {v9, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v9, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 221
    .line 222
    .line 223
    move-object v0, v9

    .line 224
    :goto_1
    const-string v2, "visible_bounds"

    .line 225
    .line 226
    invoke-virtual {v8, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 227
    .line 228
    .line 229
    goto :goto_2

    .line 230
    :catch_0
    const-string v0, "Unable to get native ad view bounding box"

    .line 231
    .line 232
    invoke-static {v0}, Lp3/h;->g(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    if-eqz v0, :cond_3

    .line 240
    .line 241
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    const-string v3, "getTemplateTypeName"

    .line 246
    .line 247
    new-array v4, v11, [Ljava/lang/Class;

    .line 248
    .line 249
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    new-array v3, v11, [Ljava/lang/Object;

    .line 254
    .line 255
    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    check-cast v0, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1

    .line 260
    .line 261
    goto :goto_4

    .line 262
    :catch_1
    move-exception v0

    .line 263
    goto :goto_3

    .line 264
    :catch_2
    move-exception v0

    .line 265
    goto :goto_3

    .line 266
    :catch_3
    move-exception v0

    .line 267
    :goto_3
    const-string v2, "Cannot access method getTemplateTypeName: "

    .line 268
    .line 269
    invoke-static {v2, v0}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 270
    .line 271
    .line 272
    :catch_4
    :cond_3
    const-string v0, ""

    .line 273
    .line 274
    :goto_4
    const/4 v10, -0x1

    .line 275
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 276
    .line 277
    .line 278
    move-result v2
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_5

    .line 279
    const v3, -0x7b2ddf4e

    .line 280
    .line 281
    .line 282
    if-eq v2, v3, :cond_5

    .line 283
    .line 284
    const v3, 0x78630204

    .line 285
    .line 286
    .line 287
    if-eq v2, v3, :cond_4

    .line 288
    .line 289
    goto :goto_5

    .line 290
    :cond_4
    const-string v2, "medium_template"

    .line 291
    .line 292
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    move-result v0

    .line 296
    if-eqz v0, :cond_6

    .line 297
    .line 298
    const/4 v0, 0x1

    .line 299
    goto :goto_6

    .line 300
    :cond_5
    const-string v2, "small_template"

    .line 301
    .line 302
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    move-result v0

    .line 306
    if-eqz v0, :cond_6

    .line 307
    .line 308
    const/4 v0, 0x0

    .line 309
    goto :goto_6

    .line 310
    :cond_6
    :goto_5
    const/4 v0, -0x1

    .line 311
    :goto_6
    const-string v2, "native_template_type"

    .line 312
    .line 313
    if-eqz v0, :cond_8

    .line 314
    .line 315
    const/4 v3, 0x1

    .line 316
    if-eq v0, v3, :cond_7

    .line 317
    .line 318
    :try_start_4
    invoke-virtual {v8, v2, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 319
    .line 320
    .line 321
    goto :goto_8

    .line 322
    :catch_5
    move-exception v0

    .line 323
    goto :goto_7

    .line 324
    :cond_7
    const/4 v3, 0x2

    .line 325
    invoke-virtual {v8, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 326
    .line 327
    .line 328
    goto :goto_8

    .line 329
    :cond_8
    const/4 v3, 0x1

    .line 330
    invoke-virtual {v8, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_5

    .line 331
    .line 332
    .line 333
    goto :goto_8

    .line 334
    :goto_7
    const-string v2, "Could not log native template signal to JSON"

    .line 335
    .line 336
    invoke-static {v2, v0}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 337
    .line 338
    .line 339
    :goto_8
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->m7:Lcom/google/android/gms/internal/ads/J7;

    .line 340
    .line 341
    sget-object v2, Ll3/q;->d:Ll3/q;

    .line 342
    .line 343
    iget-object v2, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 344
    .line 345
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    check-cast v0, Ljava/lang/Boolean;

    .line 350
    .line 351
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 352
    .line 353
    .line 354
    move-result v0

    .line 355
    if-eqz v0, :cond_9

    .line 356
    .line 357
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    const-string v1, "view_width_layout_type"

    .line 362
    .line 363
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 364
    .line 365
    invoke-static {v2}, LS3/e;->J(I)I

    .line 366
    .line 367
    .line 368
    move-result v2

    .line 369
    add-int/2addr v2, v10

    .line 370
    invoke-virtual {v8, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 371
    .line 372
    .line 373
    const-string v1, "view_height_layout_type"

    .line 374
    .line 375
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 376
    .line 377
    invoke-static {v0}, LS3/e;->J(I)I

    .line 378
    .line 379
    .line 380
    move-result v0

    .line 381
    add-int/2addr v0, v10

    .line 382
    invoke-virtual {v8, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 383
    .line 384
    .line 385
    goto :goto_9

    .line 386
    :catch_6
    const-string v0, "Unable to get native ad view layout types"

    .line 387
    .line 388
    invoke-static {v0}, Lo3/I;->k(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    :cond_9
    :goto_9
    return-object v8
.end method

.method public static G(Landroid/content/Context;Lcom/google/android/gms/internal/ads/Ov;)Z
    .locals 3

    .line 1
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/Ov;->N:Z

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/Q7;->o7:Lcom/google/android/gms/internal/ads/J7;

    .line 8
    .line 9
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 10
    .line 11
    iget-object v2, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 12
    .line 13
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Ljava/lang/Boolean;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 24
    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    sget-object p0, Lcom/google/android/gms/internal/ads/Q7;->r7:Lcom/google/android/gms/internal/ads/J7;

    .line 28
    .line 29
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Ljava/lang/Boolean;

    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    return p0

    .line 40
    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/ads/Q7;->p7:Lcom/google/android/gms/internal/ads/J7;

    .line 41
    .line 42
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-nez v1, :cond_4

    .line 53
    .line 54
    if-nez p0, :cond_2

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    new-instance v1, Lcom/google/android/gms/internal/ads/tz;

    .line 62
    .line 63
    const/16 v2, 0x3b

    .line 64
    .line 65
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/tz;-><init>(C)V

    .line 66
    .line 67
    .line 68
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Xu;->j(Lcom/google/android/gms/internal/ads/tz;)Lcom/google/android/gms/internal/ads/Xu;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/Xu;->t(Ljava/lang/CharSequence;)Ljava/util/Iterator;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    :cond_3
    move-object v1, p1

    .line 77
    check-cast v1, Lcom/google/android/gms/internal/ads/Ez;

    .line 78
    .line 79
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Ez;->a()Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_4

    .line 84
    .line 85
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Ez;->b()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    check-cast v1, Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_3

    .line 96
    .line 97
    const/4 p0, 0x1

    .line 98
    return p0

    .line 99
    :cond_4
    :goto_0
    return v0
.end method

.method public static H(I)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->j3:Lcom/google/android/gms/internal/ads/J7;

    .line 2
    .line 3
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 4
    .line 5
    iget-object v2, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 6
    .line 7
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->k3:Lcom/google/android/gms/internal/ads/J7;

    .line 20
    .line 21
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/Boolean;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    const v0, 0xe9759f

    .line 36
    .line 37
    .line 38
    if-gt p0, v0, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 p0, 0x0

    .line 42
    return p0

    .line 43
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 44
    return p0
.end method

.method public static I(Landroid/content/Context;Landroid/graphics/Rect;)Lorg/json/JSONObject;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p1, Landroid/graphics/Rect;->right:I

    .line 7
    .line 8
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 9
    .line 10
    sub-int/2addr v1, v2

    .line 11
    sget-object v2, Ll3/p;->f:Ll3/p;

    .line 12
    .line 13
    iget-object v3, v2, Ll3/p;->a:Lp3/d;

    .line 14
    .line 15
    invoke-virtual {v3, p0, v1}, Lp3/d;->f(Landroid/content/Context;I)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const-string v3, "width"

    .line 20
    .line 21
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 22
    .line 23
    .line 24
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 25
    .line 26
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 27
    .line 28
    sub-int/2addr v1, v3

    .line 29
    iget-object v2, v2, Ll3/p;->a:Lp3/d;

    .line 30
    .line 31
    invoke-virtual {v2, p0, v1}, Lp3/d;->f(Landroid/content/Context;I)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    const-string v3, "height"

    .line 36
    .line 37
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 38
    .line 39
    .line 40
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 41
    .line 42
    invoke-virtual {v2, p0, v1}, Lp3/d;->f(Landroid/content/Context;I)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    const-string v3, "x"

    .line 47
    .line 48
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 49
    .line 50
    .line 51
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 52
    .line 53
    invoke-virtual {v2, p0, p1}, Lp3/d;->f(Landroid/content/Context;I)I

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    const-string p1, "y"

    .line 58
    .line 59
    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 60
    .line 61
    .line 62
    const-string p0, "relative_to"

    .line 63
    .line 64
    const-string p1, "self"

    .line 65
    .line 66
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    .line 68
    .line 69
    return-object v0
.end method

.method public static J(I)I
    .locals 1

    .line 1
    const/4 v0, -0x2

    .line 2
    if-eq p0, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    if-eq p0, v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x2

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x3

    .line 10
    return p0

    .line 11
    :cond_1
    const/4 p0, 0x4

    .line 12
    return p0
.end method

.method public static final a([B)Ljava/util/LinkedHashSet;
    .locals 9

    .line 1
    const-string v0, "bytes"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 9
    .line 10
    .line 11
    array-length v1, p0

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 18
    .line 19
    .line 20
    const/4 p0, 0x0

    .line 21
    :try_start_0
    new-instance v2, Ljava/io/ObjectInputStream;

    .line 22
    .line 23
    invoke-direct {v2, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 24
    .line 25
    .line 26
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readInt()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    const/4 v4, 0x0

    .line 31
    :goto_0
    if-ge v4, v3, :cond_1

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readBoolean()Z

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    new-instance v7, Ld2/c;

    .line 46
    .line 47
    const-string v8, "uri"

    .line 48
    .line 49
    invoke-static {v5, v8}, Lz4/q0;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-direct {v7, v5, v6}, Ld2/c;-><init>(Landroid/net/Uri;Z)V

    .line 53
    .line 54
    .line 55
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    .line 57
    .line 58
    add-int/lit8 v4, v4, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception v3

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    :try_start_2
    invoke-static {v2, p0}, Lz4/q0;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 64
    .line 65
    .line 66
    goto :goto_3

    .line 67
    :catchall_1
    move-exception p0

    .line 68
    goto :goto_4

    .line 69
    :catch_0
    move-exception v2

    .line 70
    goto :goto_2

    .line 71
    :goto_1
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 72
    :catchall_2
    move-exception v4

    .line 73
    :try_start_4
    invoke-static {v2, v3}, Lz4/q0;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 74
    .line 75
    .line 76
    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 77
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 78
    .line 79
    .line 80
    :goto_3
    invoke-static {v1, p0}, Lz4/q0;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 81
    .line 82
    .line 83
    return-object v0

    .line 84
    :goto_4
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 85
    :catchall_3
    move-exception v0

    .line 86
    invoke-static {v1, p0}, Lz4/q0;->k(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 87
    .line 88
    .line 89
    throw v0
.end method

.method public static final b(II)V
    .locals 3

    .line 1
    if-gt p0, p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v2, "toIndex ("

    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p0, ") is greater than size ("

    .line 17
    .line 18
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p0, ")."

    .line 25
    .line 26
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v0
.end method

.method public static c(Ljava/lang/Object;Lx6/e;LC6/p;)Lx6/e;
    .locals 2

    .line 1
    const-string v0, "completion"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p2, Lz6/a;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p2, Lz6/a;

    .line 11
    .line 12
    invoke-virtual {p2, p0, p1}, Lz6/a;->d(Ljava/lang/Object;Lx6/e;)Lx6/e;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-interface {p1}, Lx6/e;->getContext()Lx6/j;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget-object v1, Lx6/k;->G:Lx6/k;

    .line 22
    .line 23
    if-ne v0, v1, :cond_1

    .line 24
    .line 25
    new-instance v0, Ly6/b;

    .line 26
    .line 27
    invoke-direct {v0, p0, p1, p2}, Ly6/b;-><init>(Ljava/lang/Object;Lx6/e;LC6/p;)V

    .line 28
    .line 29
    .line 30
    move-object p0, v0

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    new-instance v1, Ly6/c;

    .line 33
    .line 34
    invoke-direct {v1, p1, v0, p2, p0}, Ly6/c;-><init>(Lx6/e;Lx6/j;LC6/p;Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    move-object p0, v1

    .line 38
    :goto_0
    return-object p0
.end method

.method public static final d(I)I
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p0, :cond_1

    .line 3
    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    const-string v1, "Could not convert "

    .line 11
    .line 12
    const-string v2, " to BackoffPolicy"

    .line 13
    .line 14
    invoke-static {v1, p0, v2}, LA0/O;->y(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0

    .line 22
    :cond_1
    :goto_0
    return v0
.end method

.method public static final e(I)I
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p0, :cond_3

    .line 3
    .line 4
    const/4 v1, 0x2

    .line 5
    if-eq p0, v0, :cond_2

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p0, v1, :cond_3

    .line 9
    .line 10
    const/4 v1, 0x4

    .line 11
    if-eq p0, v0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x5

    .line 14
    if-eq p0, v1, :cond_3

    .line 15
    .line 16
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 17
    .line 18
    const/16 v2, 0x1e

    .line 19
    .line 20
    if-lt v1, v2, :cond_0

    .line 21
    .line 22
    if-ne p0, v0, :cond_0

    .line 23
    .line 24
    const/4 p0, 0x6

    .line 25
    return p0

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    const-string v1, "Could not convert "

    .line 29
    .line 30
    const-string v2, " to NetworkType"

    .line 31
    .line 32
    invoke-static {v1, p0, v2}, LA0/O;->y(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v0

    .line 40
    :cond_1
    const/4 v0, 0x4

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    const/4 v0, 0x2

    .line 43
    :cond_3
    :goto_0
    return v0
.end method

.method public static final f(I)I
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p0, :cond_1

    .line 3
    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    const-string v1, "Could not convert "

    .line 11
    .line 12
    const-string v2, " to OutOfQuotaPolicy"

    .line 13
    .line 14
    invoke-static {v1, p0, v2}, LA0/O;->y(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0

    .line 22
    :cond_1
    :goto_0
    return v0
.end method

.method public static final g(I)I
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p0, :cond_3

    .line 3
    .line 4
    const/4 v1, 0x2

    .line 5
    if-eq p0, v0, :cond_2

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p0, v1, :cond_3

    .line 9
    .line 10
    const/4 v1, 0x4

    .line 11
    if-eq p0, v0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x5

    .line 14
    if-eq p0, v1, :cond_3

    .line 15
    .line 16
    if-ne p0, v0, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x6

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    const-string v1, "Could not convert "

    .line 23
    .line 24
    const-string v2, " to State"

    .line 25
    .line 26
    invoke-static {v1, p0, v2}, LA0/O;->y(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v0

    .line 34
    :cond_1
    const/4 v0, 0x4

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const/4 v0, 0x2

    .line 37
    :cond_3
    :goto_0
    return v0
.end method

.method public static h(Lx6/e;)Lx6/e;
    .locals 2

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p0, Lz6/c;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    move-object v0, p0

    .line 11
    check-cast v0, Lz6/c;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget-object p0, v0, Lz6/c;->I:Lx6/e;

    .line 18
    .line 19
    if-nez p0, :cond_2

    .line 20
    .line 21
    iget-object p0, v0, Lz6/c;->H:Lx6/j;

    .line 22
    .line 23
    invoke-static {p0}, Lz4/q0;->e(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    sget-object v1, Lx6/f;->G:Lx6/f;

    .line 27
    .line 28
    invoke-interface {p0, v1}, Lx6/j;->k(Lx6/i;)Lx6/h;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Lx6/g;

    .line 33
    .line 34
    if-eqz p0, :cond_1

    .line 35
    .line 36
    check-cast p0, LJ6/m;

    .line 37
    .line 38
    new-instance v1, LN6/d;

    .line 39
    .line 40
    invoke-direct {v1, p0, v0}, LN6/d;-><init>(LJ6/m;Lz6/c;)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    move-object v1, v0

    .line 45
    :goto_1
    iput-object v1, v0, Lz6/c;->I:Lx6/e;

    .line 46
    .line 47
    move-object p0, v1

    .line 48
    :cond_2
    return-object p0
.end method

.method public static i(Landroid/content/Context;I)Z
    .locals 3

    .line 1
    const-string v0, "com.google.android.gms"

    .line 2
    .line 3
    invoke-static {p1, p0, v0}, LS3/e;->r(ILandroid/content/Context;Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    goto :goto_2

    .line 11
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const/16 v2, 0x40

    .line 16
    .line 17
    :try_start_0
    invoke-virtual {p1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 18
    .line 19
    .line 20
    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    invoke-static {p0}, LJ3/k;->b(Landroid/content/Context;)LJ3/k;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    invoke-static {p1, v1}, LJ3/k;->g(Landroid/content/pm/PackageInfo;Z)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/4 v2, 0x1

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    :goto_0
    const/4 v1, 0x1

    .line 39
    goto :goto_1

    .line 40
    :cond_2
    invoke-static {p1, v2}, LJ3/k;->g(Landroid/content/pm/PackageInfo;Z)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_4

    .line 45
    .line 46
    iget-object p0, p0, LJ3/k;->G:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p0, Landroid/content/Context;

    .line 49
    .line 50
    invoke-static {p0}, LJ3/j;->b(Landroid/content/Context;)Z

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-eqz p0, :cond_3

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    const-string p0, "GoogleSignatureVerifier"

    .line 58
    .line 59
    const-string p1, "Test-keys aren\'t accepted on this build."

    .line 60
    .line 61
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    :cond_4
    :goto_1
    return v1

    .line 65
    :catch_0
    const/4 p0, 0x3

    .line 66
    const-string p1, "UidVerifier"

    .line 67
    .line 68
    invoke-static {p1, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    if-eqz p0, :cond_5

    .line 73
    .line 74
    const-string p0, "Package manager can\'t find google play services package, defaulting to false"

    .line 75
    .line 76
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    :cond_5
    :goto_2
    return v1
.end method

.method public static j(Landroid/view/View;IIII)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    int-to-float v1, v1

    .line 11
    const-string v2, "\tdesired (w,h)"

    .line 12
    .line 13
    invoke-static {v2, v0, v1}, Ly4/k;->U(Ljava/lang/String;FF)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/16 v1, 0x8

    .line 21
    .line 22
    if-ne v0, v1, :cond_0

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    const/4 p2, 0x0

    .line 26
    :cond_0
    invoke-static {p1, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    invoke-static {p2, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    int-to-float p1, p1

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    int-to-float p0, p0

    .line 47
    const-string p2, "\tactual (w,h)"

    .line 48
    .line 49
    invoke-static {p2, p1, p0}, Ly4/k;->U(Ljava/lang/String;FF)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public static k(Landroid/view/View;II)V
    .locals 1

    .line 1
    const/high16 v0, -0x80000000

    .line 2
    .line 3
    invoke-static {p0, p1, p2, v0, v0}, LS3/e;->j(Landroid/view/View;IIII)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static l(Landroid/app/Activity;Landroid/app/Activity;Lg7/c;)V
    .locals 11

    .line 1
    new-instance v0, Lc7/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lc7/a;-><init>(Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    const-string v2, "Default (XC)"

    .line 8
    .line 9
    const-string v3, "ORT_PROFILE"

    .line 10
    .line 11
    invoke-static {v3, v2, v0}, LA0/O;->x(Ljava/lang/String;Ljava/lang/String;Lc7/a;)Lh7/i;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v2, "pe.hf.black20"

    .line 16
    .line 17
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    iget-object v1, v0, Lh7/i;->c:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v1}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v9

    .line 27
    iget-object v1, v0, Lh7/i;->d:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v1}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v10

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    iget-object v0, v0, Lh7/i;->e:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v0}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v0, "/panel_pro/api/client/refresh_token"

    .line 48
    .line 49
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    const-string v0, "XCIPTV_TAG"

    .line 57
    .line 58
    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    new-instance v1, Ljava/util/HashMap;

    .line 62
    .line 63
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v2, "otr_refresh_token"

    .line 67
    .line 68
    const/4 v3, 0x0

    .line 69
    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-static {p0}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    const-string v2, "refresh_token"

    .line 78
    .line 79
    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    :try_start_0
    new-instance v2, Lcom/google/android/gms/internal/ads/i6;

    .line 83
    .line 84
    const-string v6, "renewToken"

    .line 85
    .line 86
    new-instance v8, Lorg/json/JSONObject;

    .line 87
    .line 88
    invoke-direct {v8, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 89
    .line 90
    .line 91
    const/4 v3, 0x1

    .line 92
    move-object v4, p1

    .line 93
    move-object v5, p2

    .line 94
    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/ads/i6;-><init>(ILandroid/app/Activity;Lg7/c;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :catch_0
    const-string p0, "OTRUpdateContents - OTR info - VolleyGETStringRequest Error"

    .line 99
    .line 100
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    :goto_0
    return-void
.end method

.method public static m(Landroid/content/Context;LY/s;Lg7/c;)V
    .locals 11

    .line 1
    new-instance v0, Lc7/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lc7/a;-><init>(Landroid/content/Context;I)V

    .line 5
    .line 6
    .line 7
    const-string v2, "Default (XC)"

    .line 8
    .line 9
    const-string v3, "ORT_PROFILE"

    .line 10
    .line 11
    invoke-static {v3, v2, v0}, LA0/O;->x(Ljava/lang/String;Ljava/lang/String;Lc7/a;)Lh7/i;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v2, "pe.hf.black20"

    .line 16
    .line 17
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    iget-object v1, v0, Lh7/i;->c:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v1}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v9

    .line 27
    iget-object v1, v0, Lh7/i;->d:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v1}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v10

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    iget-object v0, v0, Lh7/i;->e:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {v0}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v0, "/panel_pro/api/client/refresh_token"

    .line 48
    .line 49
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    const-string v0, "XCIPTV_TAG"

    .line 57
    .line 58
    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    new-instance v1, Ljava/util/HashMap;

    .line 62
    .line 63
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v2, "otr_refresh_token"

    .line 67
    .line 68
    const/4 v3, 0x0

    .line 69
    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-static {p0}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    const-string v2, "refresh_token"

    .line 78
    .line 79
    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    :try_start_0
    new-instance v2, Lcom/google/android/gms/internal/ads/i6;

    .line 83
    .line 84
    const-string v6, "renewToken"

    .line 85
    .line 86
    new-instance v8, Lorg/json/JSONObject;

    .line 87
    .line 88
    invoke-direct {v8, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 89
    .line 90
    .line 91
    const/4 v3, 0x1

    .line 92
    move-object v4, p1

    .line 93
    move-object v5, p2

    .line 94
    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/ads/i6;-><init>(ILY/s;Lg7/c;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :catch_0
    const-string p0, "OTRUpdateContents - OTR info - VolleyGETStringRequest Error"

    .line 99
    .line 100
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    :goto_0
    return-void
.end method

.method public static final n(LJ6/x;Lx6/e;Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, LJ6/x;->h()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, LJ6/x;->e(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-static {v1}, Lz4/q0;->n(Ljava/lang/Throwable;)Lt6/d;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0, v0}, LJ6/x;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    :goto_0
    if-eqz p2, :cond_2

    .line 21
    .line 22
    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTaskKt.resume>"

    .line 23
    .line 24
    invoke-static {p1, p2}, Lz4/q0;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    check-cast p1, LN6/d;

    .line 28
    .line 29
    iget-object p2, p1, LN6/d;->K:Lx6/e;

    .line 30
    .line 31
    invoke-interface {p2}, Lx6/e;->getContext()Lx6/j;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object p1, p1, LN6/d;->M:Ljava/lang/Object;

    .line 36
    .line 37
    invoke-static {v0, p1}, LN6/e;->d(Lx6/j;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    sget-object v1, LN6/e;->c:Lp3/e;

    .line 42
    .line 43
    if-eq p1, v1, :cond_1

    .line 44
    .line 45
    invoke-static {p2, v0}, La7/b;->i(Lx6/e;Lx6/j;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    :try_start_0
    invoke-interface {p2, p0}, Lx6/e;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    .line 50
    .line 51
    invoke-static {v0, p1}, LN6/e;->a(Lx6/j;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    invoke-static {v0, p1}, LN6/e;->a(Lx6/j;Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    throw p0

    .line 60
    :cond_2
    invoke-interface {p1, p0}, Lx6/e;->b(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :goto_1
    return-void
.end method

.method public static final o(I)I
    .locals 2

    .line 1
    const-string v0, "state"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lt/a;->f(ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lu/h;->b(I)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-eqz p0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    if-eq p0, v0, :cond_2

    .line 14
    .line 15
    const/4 v0, 0x2

    .line 16
    if-eq p0, v0, :cond_2

    .line 17
    .line 18
    const/4 v0, 0x3

    .line 19
    if-eq p0, v0, :cond_2

    .line 20
    .line 21
    const/4 v0, 0x4

    .line 22
    if-eq p0, v0, :cond_2

    .line 23
    .line 24
    const/4 v0, 0x5

    .line 25
    if-ne p0, v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance p0, LY/r;

    .line 29
    .line 30
    const/16 v0, 0x10

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0, v0, v1}, LY/r;-><init>(ILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    throw p0

    .line 37
    :cond_1
    const/4 v0, 0x0

    .line 38
    :cond_2
    :goto_0
    return v0
.end method

.method public static p(LF6/c;I)LF6/a;
    .locals 2

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-lez p1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    iget v0, p0, LF6/a;->I:I

    .line 18
    .line 19
    if-lez v0, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    neg-int p1, p1

    .line 23
    :goto_1
    new-instance v0, LF6/a;

    .line 24
    .line 25
    iget v1, p0, LF6/a;->G:I

    .line 26
    .line 27
    iget p0, p0, LF6/a;->H:I

    .line 28
    .line 29
    invoke-direct {v0, v1, p0, p1}, LF6/a;-><init>(III)V

    .line 30
    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 34
    .line 35
    new-instance p1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v0, "Step must be positive, was: "

    .line 38
    .line 39
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const/16 v0, 0x2e

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p0
.end method

.method public static q(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/lang/VirtualMachineError;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    instance-of v0, p0, Ljava/lang/ThreadDeath;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    instance-of v0, p0, Ljava/lang/LinkageError;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    check-cast p0, Ljava/lang/LinkageError;

    .line 15
    .line 16
    throw p0

    .line 17
    :cond_1
    check-cast p0, Ljava/lang/ThreadDeath;

    .line 18
    .line 19
    throw p0

    .line 20
    :cond_2
    check-cast p0, Ljava/lang/VirtualMachineError;

    .line 21
    .line 22
    throw p0
.end method

.method public static r(ILandroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p1}, LQ3/c;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/U1;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/U1;->G:Landroid/content/Context;

    .line 9
    .line 10
    const-string v0, "appops"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Landroid/app/AppOpsManager;

    .line 17
    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1, p0, p2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 26
    .line 27
    const-string p1, "context.getSystemService(Context.APP_OPS_SERVICE) is null"

    .line 28
    .line 29
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :catch_0
    const/4 p0, 0x0

    .line 34
    :goto_0
    return p0
.end method

.method public static s(II)LF6/c;
    .locals 2

    .line 1
    const/high16 v0, -0x80000000

    .line 2
    .line 3
    if-gt p1, v0, :cond_0

    .line 4
    .line 5
    sget-object p0, LF6/c;->J:LF6/c;

    .line 6
    .line 7
    sget-object p0, LF6/c;->J:LF6/c;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance v0, LF6/c;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    sub-int/2addr p1, v1

    .line 14
    invoke-direct {v0, p0, p1, v1}, LF6/a;-><init>(III)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public static declared-synchronized t()Ljava/lang/ClassLoader;
    .locals 11

    .line 1
    const-class v0, LS3/e;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, LS3/e;->a:Ljava/lang/ClassLoader;

    .line 5
    .line 6
    if-nez v1, :cond_8

    .line 7
    .line 8
    sget-object v1, LS3/e;->b:Ljava/lang/Thread;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v1, :cond_7

    .line 12
    .line 13
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    move-object v1, v2

    .line 28
    goto/16 :goto_7

    .line 29
    .line 30
    :cond_0
    const-class v3, Ljava/lang/Void;

    .line 31
    .line 32
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 33
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/ThreadGroup;->activeGroupCount()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    new-array v5, v4, [Ljava/lang/ThreadGroup;

    .line 38
    .line 39
    invoke-virtual {v1, v5}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/ThreadGroup;)I

    .line 40
    .line 41
    .line 42
    const/4 v6, 0x0

    .line 43
    const/4 v7, 0x0

    .line 44
    :goto_0
    if-ge v7, v4, :cond_2

    .line 45
    .line 46
    aget-object v8, v5, v7

    .line 47
    .line 48
    const-string v9, "dynamiteLoader"

    .line 49
    .line 50
    invoke-virtual {v8}, Ljava/lang/ThreadGroup;->getName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v10

    .line 54
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v9

    .line 58
    if-eqz v9, :cond_1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception v1

    .line 65
    goto/16 :goto_8

    .line 66
    .line 67
    :catch_0
    move-exception v1

    .line 68
    goto :goto_4

    .line 69
    :cond_2
    move-object v8, v2

    .line 70
    :goto_1
    if-nez v8, :cond_3

    .line 71
    .line 72
    new-instance v8, Ljava/lang/ThreadGroup;

    .line 73
    .line 74
    const-string v4, "dynamiteLoader"

    .line 75
    .line 76
    invoke-direct {v8, v1, v4}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :cond_3
    invoke-virtual {v8}, Ljava/lang/ThreadGroup;->activeCount()I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    new-array v4, v1, [Ljava/lang/Thread;

    .line 84
    .line 85
    invoke-virtual {v8, v4}, Ljava/lang/ThreadGroup;->enumerate([Ljava/lang/Thread;)I

    .line 86
    .line 87
    .line 88
    :goto_2
    if-ge v6, v1, :cond_5

    .line 89
    .line 90
    aget-object v5, v4, v6

    .line 91
    .line 92
    const-string v7, "GmsDynamite"

    .line 93
    .line 94
    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v9

    .line 98
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v7
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    if-eqz v7, :cond_4

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_5
    move-object v5, v2

    .line 109
    :goto_3
    if-nez v5, :cond_6

    .line 110
    .line 111
    :try_start_2
    new-instance v1, LS3/d;

    .line 112
    .line 113
    invoke-direct {v1, v8}, LS3/d;-><init>(Ljava/lang/ThreadGroup;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    .line 115
    .line 116
    :try_start_3
    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 120
    .line 121
    .line 122
    move-object v5, v1

    .line 123
    goto :goto_6

    .line 124
    :catch_1
    move-exception v4

    .line 125
    move-object v5, v1

    .line 126
    goto :goto_5

    .line 127
    :catch_2
    move-exception v1

    .line 128
    move-object v4, v1

    .line 129
    goto :goto_5

    .line 130
    :goto_4
    move-object v4, v1

    .line 131
    move-object v5, v2

    .line 132
    :goto_5
    :try_start_4
    const-string v1, "DynamiteLoaderV2CL"

    .line 133
    .line 134
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    new-instance v6, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    const-string v7, "Failed to enumerate thread/threadgroup "

    .line 144
    .line 145
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    :cond_6
    :goto_6
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 159
    move-object v1, v5

    .line 160
    :goto_7
    :try_start_5
    sput-object v1, LS3/e;->b:Ljava/lang/Thread;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 161
    .line 162
    if-nez v1, :cond_7

    .line 163
    .line 164
    goto :goto_a

    .line 165
    :catchall_1
    move-exception v1

    .line 166
    goto :goto_d

    .line 167
    :goto_8
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 168
    :try_start_7
    throw v1

    .line 169
    :cond_7
    monitor-enter v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 170
    :try_start_8
    sget-object v3, LS3/e;->b:Ljava/lang/Thread;

    .line 171
    .line 172
    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    .line 173
    .line 174
    .line 175
    move-result-object v2
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 176
    goto :goto_9

    .line 177
    :catchall_2
    move-exception v2

    .line 178
    goto :goto_b

    .line 179
    :catch_3
    move-exception v3

    .line 180
    :try_start_9
    const-string v4, "DynamiteLoaderV2CL"

    .line 181
    .line 182
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    new-instance v5, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    .line 191
    const-string v6, "Failed to get thread context classloader "

    .line 192
    .line 193
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .line 205
    .line 206
    :goto_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 207
    :goto_a
    :try_start_a
    sput-object v2, LS3/e;->a:Ljava/lang/ClassLoader;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 208
    .line 209
    goto :goto_c

    .line 210
    :goto_b
    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 211
    :try_start_c
    throw v2

    .line 212
    :cond_8
    :goto_c
    sget-object v1, LS3/e;->a:Ljava/lang/ClassLoader;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 213
    .line 214
    monitor-exit v0

    .line 215
    return-object v1

    .line 216
    :goto_d
    monitor-exit v0

    .line 217
    throw v1
.end method

.method public static varargs v(Lcom/google/android/gms/internal/ads/W7;Lcom/google/android/gms/internal/ads/U7;[Ljava/lang/String;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 5
    .line 6
    iget-object v0, v0, Lk3/l;->j:LP3/b;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/W7;->c(Lcom/google/android/gms/internal/ads/U7;J[Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/z8;->a:Lcom/google/android/gms/internal/ads/f8;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {p0}, Lp3/h;->b(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public static x(Lcom/google/android/gms/internal/ads/jr;II)J
    .locals 11

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const/4 v0, 0x5

    .line 9
    if-ge p1, v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/jr;->r()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    const/high16 v0, 0x800000

    .line 17
    .line 18
    and-int/2addr v0, p1

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    shr-int/lit8 v0, p1, 0x8

    .line 22
    .line 23
    and-int/lit16 v0, v0, 0x1fff

    .line 24
    .line 25
    if-ne v0, p2, :cond_1

    .line 26
    .line 27
    and-int/lit8 p1, p1, 0x20

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    const/4 p2, 0x7

    .line 36
    if-lt p1, p2, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/jr;->o()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-lt p1, p2, :cond_1

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    const/16 v0, 0x10

    .line 49
    .line 50
    and-int/2addr p1, v0

    .line 51
    if-ne p1, v0, :cond_1

    .line 52
    .line 53
    const/4 p1, 0x6

    .line 54
    new-array v0, p1, [B

    .line 55
    .line 56
    const/4 v1, 0x0

    .line 57
    invoke-virtual {p0, v1, v0, p1}, Lcom/google/android/gms/internal/ads/jr;->f(I[BI)V

    .line 58
    .line 59
    .line 60
    aget-byte p0, v0, v1

    .line 61
    .line 62
    int-to-long p0, p0

    .line 63
    const/4 v1, 0x1

    .line 64
    aget-byte v1, v0, v1

    .line 65
    .line 66
    int-to-long v1, v1

    .line 67
    const/4 v3, 0x2

    .line 68
    aget-byte v3, v0, v3

    .line 69
    .line 70
    int-to-long v3, v3

    .line 71
    const/4 v5, 0x3

    .line 72
    aget-byte v5, v0, v5

    .line 73
    .line 74
    int-to-long v5, v5

    .line 75
    const/4 v7, 0x4

    .line 76
    aget-byte v0, v0, v7

    .line 77
    .line 78
    int-to-long v7, v0

    .line 79
    const-wide/16 v9, 0xff

    .line 80
    .line 81
    and-long/2addr v7, v9

    .line 82
    shr-long/2addr v7, p2

    .line 83
    and-long/2addr p0, v9

    .line 84
    and-long v0, v1, v9

    .line 85
    .line 86
    and-long v2, v3, v9

    .line 87
    .line 88
    and-long v4, v5, v9

    .line 89
    .line 90
    const/16 p2, 0x19

    .line 91
    .line 92
    shl-long/2addr p0, p2

    .line 93
    const/16 p2, 0x11

    .line 94
    .line 95
    shl-long/2addr v0, p2

    .line 96
    or-long/2addr p0, v0

    .line 97
    const/16 p2, 0x9

    .line 98
    .line 99
    shl-long v0, v2, p2

    .line 100
    .line 101
    or-long/2addr p0, v0

    .line 102
    add-long/2addr v4, v4

    .line 103
    or-long/2addr p0, v4

    .line 104
    or-long/2addr p0, v7

    .line 105
    return-wide p0

    .line 106
    :cond_1
    :goto_0
    const-wide p0, -0x7fffffffffffffffL    # -4.9E-324

    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    return-wide p0
.end method

.method public static y()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 1
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    .line 2
    .line 3
    const/4 v5, -0x2

    .line 4
    const/4 v3, 0x0

    .line 5
    const/4 v4, 0x0

    .line 6
    move-object v0, v6

    .line 7
    move v1, v5

    .line 8
    move v2, v5

    .line 9
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 10
    .line 11
    .line 12
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->q7:Lcom/google/android/gms/internal/ads/J7;

    .line 13
    .line 14
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 15
    .line 16
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Ljava/lang/Integer;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 29
    .line 30
    const/4 v0, 0x2

    .line 31
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 32
    .line 33
    const v0, 0x800033

    .line 34
    .line 35
    .line 36
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 37
    .line 38
    return-object v6
.end method

.method public static z(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;II)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p0, p2, p3, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    array-length v1, v0

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    const/16 v3, 0x21

    .line 12
    .line 13
    if-ge v2, v1, :cond_1

    .line 14
    .line 15
    aget-object v4, v0, v2

    .line 16
    .line 17
    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    if-ne v5, p2, :cond_0

    .line 22
    .line 23
    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    if-ne v5, p3, :cond_0

    .line 28
    .line 29
    invoke-interface {p0, v4}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-ne v5, v3, :cond_0

    .line 34
    .line 35
    invoke-interface {p0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-interface {p0, p1, p2, p3, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 42
    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public abstract u(I[BI)V
.end method
