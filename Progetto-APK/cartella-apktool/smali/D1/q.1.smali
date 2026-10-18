.class public final LD1/q;
.super LO1/C;
.source "SourceFile"


# instance fields
.field public final synthetic I:I

.field public final J:Ljava/lang/Object;

.field public K:Ljava/lang/Object;

.field public L:Ljava/lang/Object;

.field public final synthetic M:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LD1/v;[Ljava/lang/String;[Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, LD1/q;->I:I

    .line 2
    iput-object p1, p0, LD1/q;->M:Ljava/lang/Object;

    invoke-direct {p0}, LO1/C;-><init>()V

    .line 3
    iput-object p2, p0, LD1/q;->J:Ljava/lang/Object;

    .line 4
    array-length p1, p2

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, LD1/q;->K:Ljava/lang/Object;

    .line 5
    iput-object p3, p0, LD1/q;->L:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lb7/A1;Ljava/util/ArrayList;)V
    .locals 1

    .line 18
    const/4 v0, 0x4

    iput v0, p0, LD1/q;->I:I

    .line 19
    iput-object p1, p0, LD1/q;->M:Ljava/lang/Object;

    invoke-direct {p0}, LO1/C;-><init>()V

    .line 20
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, LD1/q;->K:Ljava/lang/Object;

    .line 21
    const-string p1, ""

    iput-object p1, p0, LD1/q;->L:Ljava/lang/Object;

    .line 22
    iput-object p2, p0, LD1/q;->J:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lb7/I0;Ljava/util/ArrayList;)V
    .locals 1

    .line 6
    const/4 v0, 0x1

    iput v0, p0, LD1/q;->I:I

    .line 7
    iput-object p1, p0, LD1/q;->M:Ljava/lang/Object;

    invoke-direct {p0}, LO1/C;-><init>()V

    .line 8
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, LD1/q;->K:Ljava/lang/Object;

    .line 9
    const-string p1, ""

    iput-object p1, p0, LD1/q;->L:Ljava/lang/Object;

    .line 10
    iput-object p2, p0, LD1/q;->J:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lb7/S0;Ljava/util/ArrayList;I)V
    .locals 1

    .line 11
    iput p3, p0, LD1/q;->I:I

    const/4 v0, 0x3

    if-eq p3, v0, :cond_0

    .line 12
    iput-object p1, p0, LD1/q;->M:Ljava/lang/Object;

    invoke-direct {p0}, LO1/C;-><init>()V

    .line 13
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, LD1/q;->K:Ljava/lang/Object;

    .line 14
    iput-object p2, p0, LD1/q;->J:Ljava/lang/Object;

    return-void

    .line 15
    :cond_0
    iput-object p1, p0, LD1/q;->M:Ljava/lang/Object;

    invoke-direct {p0}, LO1/C;-><init>()V

    .line 16
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, LD1/q;->K:Ljava/lang/Object;

    .line 17
    iput-object p2, p0, LD1/q;->J:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, LD1/q;->I:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LD1/q;->J:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0

    .line 15
    :pswitch_0
    iget-object v0, p0, LD1/q;->J:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
    :pswitch_1
    iget-object v0, p0, LD1/q;->J:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    return v0

    .line 33
    :pswitch_2
    iget-object v0, p0, LD1/q;->J:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v0, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    return v0

    .line 42
    :pswitch_3
    iget-object v0, p0, LD1/q;->J:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, [Ljava/lang/String;

    .line 45
    .line 46
    array-length v0, v0

    .line 47
    return v0

    .line 48
    nop

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(LO1/c0;I)V
    .locals 24

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move/from16 v8, p2

    .line 4
    .line 5
    iget v0, v7, LD1/q;->I:I

    .line 6
    .line 7
    const-string v10, ")"

    .line 8
    .line 9
    const-string v11, " ("

    .line 10
    .line 11
    const-string v12, "\u2b50"

    .line 12
    .line 13
    const-string v1, "\""

    .line 14
    .line 15
    const-string v13, "stream_id"

    .line 16
    .line 17
    const-string v14, "stream_icon"

    .line 18
    .line 19
    const-string v15, ""

    .line 20
    .line 21
    const-string v2, "series_id"

    .line 22
    .line 23
    const-string v3, "cover"

    .line 24
    .line 25
    const-string v6, "rating"

    .line 26
    .line 27
    const-string v9, "name"

    .line 28
    .line 29
    iget-object v4, v7, LD1/q;->M:Ljava/lang/Object;

    .line 30
    .line 31
    const/4 v5, 0x1

    .line 32
    packed-switch v0, :pswitch_data_0

    .line 33
    .line 34
    .line 35
    move-object/from16 v0, p1

    .line 36
    .line 37
    check-cast v0, Lb7/s0;

    .line 38
    .line 39
    iget-object v1, v7, LD1/q;->J:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v1, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Ljava/util/HashMap;

    .line 48
    .line 49
    iput-object v1, v7, LD1/q;->K:Ljava/lang/Object;

    .line 50
    .line 51
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const-string v6, "ORT_isDemo"

    .line 56
    .line 57
    const/4 v10, 0x0

    .line 58
    invoke-virtual {v1, v6, v10}, LQ5/a;->a(Ljava/lang/String;Z)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    const/16 v6, 0x9

    .line 63
    .line 64
    if-nez v1, :cond_0

    .line 65
    .line 66
    move-object v1, v4

    .line 67
    check-cast v1, Lb7/A1;

    .line 68
    .line 69
    invoke-virtual {v1}, LY/s;->l()Landroid/content/Context;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-static {v1}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    iget-object v10, v7, LD1/q;->K:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v10, Ljava/util/HashMap;

    .line 80
    .line 81
    invoke-virtual {v10, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    check-cast v3, Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/n;->n(Ljava/lang/String;)Lcom/bumptech/glide/l;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    const v3, 0x7f08086d

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v3}, LL2/a;->f(I)LL2/a;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    check-cast v1, Lcom/bumptech/glide/l;

    .line 99
    .line 100
    invoke-virtual {v1}, LL2/a;->b()LL2/a;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    check-cast v1, Lcom/bumptech/glide/l;

    .line 105
    .line 106
    iget-object v3, v0, Lb7/s0;->b0:Landroid/widget/ImageView;

    .line 107
    .line 108
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_0
    move-object v1, v4

    .line 113
    check-cast v1, Lb7/A1;

    .line 114
    .line 115
    invoke-virtual {v1}, LY/s;->l()Landroid/content/Context;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-static {v1}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    iget-object v10, v7, LD1/q;->K:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast v10, Ljava/util/HashMap;

    .line 126
    .line 127
    invoke-virtual {v10, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    check-cast v3, Ljava/lang/String;

    .line 132
    .line 133
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/n;->n(Ljava/lang/String;)Lcom/bumptech/glide/l;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    const/4 v3, 0x6

    .line 138
    invoke-virtual {v1, v3, v6}, LL2/a;->l(II)LL2/a;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    check-cast v1, Lcom/bumptech/glide/l;

    .line 143
    .line 144
    invoke-virtual {v1}, LL2/a;->b()LL2/a;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    check-cast v1, Lcom/bumptech/glide/l;

    .line 149
    .line 150
    iget-object v3, v0, Lb7/s0;->b0:Landroid/widget/ImageView;

    .line 151
    .line 152
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V

    .line 153
    .line 154
    .line 155
    :goto_0
    iget-object v1, v0, Lb7/s0;->c0:Landroid/widget/ImageView;

    .line 156
    .line 157
    iget-object v3, v7, LD1/q;->K:Ljava/lang/Object;

    .line 158
    .line 159
    check-cast v3, Ljava/util/HashMap;

    .line 160
    .line 161
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    iget-object v1, v0, Lb7/s0;->c0:Landroid/widget/ImageView;

    .line 169
    .line 170
    const/16 v2, 0x8

    .line 171
    .line 172
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 173
    .line 174
    .line 175
    iget-object v1, v0, Lb7/s0;->d0:Landroidx/cardview/widget/CardView;

    .line 176
    .line 177
    const v3, 0x7f080904

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 184
    .line 185
    .line 186
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    iget-object v3, v0, Lb7/s0;->a0:Landroid/widget/TextView;

    .line 194
    .line 195
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 196
    .line 197
    .line 198
    iget-object v2, v7, LD1/q;->K:Ljava/lang/Object;

    .line 199
    .line 200
    check-cast v2, Ljava/util/HashMap;

    .line 201
    .line 202
    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    check-cast v2, Ljava/lang/CharSequence;

    .line 207
    .line 208
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 216
    .line 217
    check-cast v4, Lb7/A1;

    .line 218
    .line 219
    iget v3, v4, Lb7/A1;->V0:I

    .line 220
    .line 221
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 222
    .line 223
    iget v3, v4, Lb7/A1;->U0:I

    .line 224
    .line 225
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 226
    .line 227
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    .line 229
    .line 230
    new-instance v2, Lb7/j0;

    .line 231
    .line 232
    invoke-direct {v2, v6, v7, v0}, Lb7/j0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 236
    .line 237
    .line 238
    new-instance v0, Lf/c;

    .line 239
    .line 240
    const/16 v2, 0x15

    .line 241
    .line 242
    invoke-direct {v0, v7, v2}, Lf/c;-><init>(Ljava/lang/Object;I)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    .line 247
    .line 248
    return-void

    .line 249
    :pswitch_0
    move-object/from16 v3, p1

    .line 250
    .line 251
    check-cast v3, Lb7/R0;

    .line 252
    .line 253
    const-string v0, "ORT_PROFILE_USERNAME"

    .line 254
    .line 255
    invoke-static {v0, v15}, Lcom/google/protobuf/U2;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v21

    .line 259
    const-string v0, "ORT_PROFILE_PASSWORD"

    .line 260
    .line 261
    invoke-static {v0, v15}, Lcom/google/protobuf/U2;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v22

    .line 265
    iget-object v0, v7, LD1/q;->J:Ljava/lang/Object;

    .line 266
    .line 267
    check-cast v0, Ljava/util/ArrayList;

    .line 268
    .line 269
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    check-cast v0, Ljava/util/HashMap;

    .line 274
    .line 275
    iput-object v0, v7, LD1/q;->K:Ljava/lang/Object;

    .line 276
    .line 277
    check-cast v4, Lb7/S0;

    .line 278
    .line 279
    invoke-virtual {v4}, LY/s;->l()Landroid/content/Context;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    invoke-static {v0}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    iget-object v2, v7, LD1/q;->K:Ljava/lang/Object;

    .line 288
    .line 289
    check-cast v2, Ljava/util/HashMap;

    .line 290
    .line 291
    invoke-virtual {v2, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    check-cast v2, Ljava/lang/String;

    .line 296
    .line 297
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/n;->n(Ljava/lang/String;)Lcom/bumptech/glide/l;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    const v2, 0x7f08086d

    .line 302
    .line 303
    .line 304
    invoke-virtual {v0, v2}, LL2/a;->f(I)LL2/a;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    check-cast v0, Lcom/bumptech/glide/l;

    .line 309
    .line 310
    iget-object v2, v3, Lb7/R0;->b0:Landroid/widget/ImageView;

    .line 311
    .line 312
    invoke-virtual {v0, v2}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V

    .line 313
    .line 314
    .line 315
    iget-object v0, v4, Lb7/S0;->k1:Ljava/lang/String;

    .line 316
    .line 317
    new-instance v2, Ljava/lang/StringBuilder;

    .line 318
    .line 319
    const-string v5, "\"stream_id\":\""

    .line 320
    .line 321
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    iget-object v5, v7, LD1/q;->K:Ljava/lang/Object;

    .line 325
    .line 326
    check-cast v5, Ljava/util/HashMap;

    .line 327
    .line 328
    invoke-virtual {v5, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v5

    .line 332
    check-cast v5, Ljava/lang/String;

    .line 333
    .line 334
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 345
    .line 346
    .line 347
    move-result v0

    .line 348
    iget-object v1, v3, Lb7/R0;->c0:Landroid/widget/ImageView;

    .line 349
    .line 350
    if-eqz v0, :cond_1

    .line 351
    .line 352
    const/4 v5, 0x0

    .line 353
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 354
    .line 355
    .line 356
    goto :goto_1

    .line 357
    :cond_1
    const/16 v0, 0x8

    .line 358
    .line 359
    const/4 v5, 0x0

    .line 360
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 361
    .line 362
    .line 363
    :goto_1
    iget-object v0, v7, LD1/q;->K:Ljava/lang/Object;

    .line 364
    .line 365
    check-cast v0, Ljava/util/HashMap;

    .line 366
    .line 367
    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 372
    .line 373
    .line 374
    iget-object v2, v3, Lb7/R0;->d0:Landroidx/cardview/widget/CardView;

    .line 375
    .line 376
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 381
    .line 382
    iget v1, v4, Lb7/S0;->K0:I

    .line 383
    .line 384
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 385
    .line 386
    iget v1, v4, Lb7/S0;->J0:I

    .line 387
    .line 388
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 389
    .line 390
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 391
    .line 392
    .line 393
    iget-object v0, v3, Lb7/R0;->a0:Landroid/widget/TextView;

    .line 394
    .line 395
    const/16 v1, 0x8

    .line 396
    .line 397
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 398
    .line 399
    .line 400
    iget-object v1, v7, LD1/q;->K:Ljava/lang/Object;

    .line 401
    .line 402
    check-cast v1, Ljava/util/HashMap;

    .line 403
    .line 404
    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    .line 406
    .line 407
    move-result-object v1

    .line 408
    check-cast v1, Ljava/lang/CharSequence;

    .line 409
    .line 410
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    .line 412
    .line 413
    const v0, 0x7f080904

    .line 414
    .line 415
    .line 416
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 417
    .line 418
    .line 419
    new-instance v0, Lb7/F0;

    .line 420
    .line 421
    const/4 v1, 0x1

    .line 422
    invoke-direct {v0, v8, v1, v7, v3}, Lb7/F0;-><init>(IILO1/C;LO1/c0;)V

    .line 423
    .line 424
    .line 425
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v2, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 429
    .line 430
    .line 431
    new-instance v0, Lb7/Q0;

    .line 432
    .line 433
    move-object/from16 p1, v0

    .line 434
    .line 435
    const/16 v17, 0x1

    .line 436
    .line 437
    move-object/from16 v1, p0

    .line 438
    .line 439
    move-object/from16 v20, v15

    .line 440
    .line 441
    move-object v15, v2

    .line 442
    move/from16 v2, p2

    .line 443
    .line 444
    move-object/from16 v18, v3

    .line 445
    .line 446
    move-object/from16 v19, v4

    .line 447
    .line 448
    move-object/from16 v4, v21

    .line 449
    .line 450
    move-object/from16 v21, v13

    .line 451
    .line 452
    const/4 v13, 0x1

    .line 453
    move-object/from16 v5, v22

    .line 454
    .line 455
    move-object/from16 v23, v6

    .line 456
    .line 457
    move/from16 v6, p2

    .line 458
    .line 459
    invoke-direct/range {v0 .. v6}, Lb7/Q0;-><init>(LD1/q;ILb7/R0;Ljava/lang/String;Ljava/lang/String;I)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v15, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 463
    .line 464
    .line 465
    new-instance v0, Lb7/G0;

    .line 466
    .line 467
    move-object/from16 v1, v18

    .line 468
    .line 469
    invoke-direct {v0, v8, v13, v7, v1}, Lb7/G0;-><init>(IILO1/C;LO1/c0;)V

    .line 470
    .line 471
    .line 472
    invoke-virtual {v15, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 473
    .line 474
    .line 475
    invoke-static {}, Lpe/hf/black20/util/Methods;->P()Z

    .line 476
    .line 477
    .line 478
    move-result v0

    .line 479
    if-nez v0, :cond_2

    .line 480
    .line 481
    invoke-virtual/range {v19 .. v19}, LY/s;->l()Landroid/content/Context;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    invoke-static {v0}, Lpe/hf/black20/util/Methods;->T(Landroid/content/Context;)Z

    .line 486
    .line 487
    .line 488
    move-result v0

    .line 489
    if-eqz v0, :cond_4

    .line 490
    .line 491
    :cond_2
    move-object/from16 v4, v19

    .line 492
    .line 493
    iget-boolean v0, v4, Lb7/S0;->i1:Z

    .line 494
    .line 495
    if-nez v0, :cond_4

    .line 496
    .line 497
    iput-boolean v13, v4, Lb7/S0;->i1:Z

    .line 498
    .line 499
    invoke-static {v4}, Lb7/S0;->T(Lb7/S0;)V

    .line 500
    .line 501
    .line 502
    invoke-static {v4}, Lb7/S0;->U(Lb7/S0;)V

    .line 503
    .line 504
    .line 505
    sput-boolean v13, Lpe/hf/black20/ORPlayerMainActivity;->G0:Z

    .line 506
    .line 507
    iget-object v0, v7, LD1/q;->J:Ljava/lang/Object;

    .line 508
    .line 509
    check-cast v0, Ljava/util/ArrayList;

    .line 510
    .line 511
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 512
    .line 513
    .line 514
    move-result-object v0

    .line 515
    check-cast v0, Ljava/util/HashMap;

    .line 516
    .line 517
    move-object/from16 v5, v23

    .line 518
    .line 519
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    .line 521
    .line 522
    move-result-object v0

    .line 523
    check-cast v0, Ljava/lang/String;

    .line 524
    .line 525
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 526
    .line 527
    .line 528
    move-result v1

    .line 529
    if-lez v1, :cond_3

    .line 530
    .line 531
    const/4 v1, 0x0

    .line 532
    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v0

    .line 536
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 537
    .line 538
    .line 539
    move-result v0

    .line 540
    move-object/from16 v2, v20

    .line 541
    .line 542
    const/4 v1, 0x0

    .line 543
    :goto_2
    if-ge v1, v0, :cond_3

    .line 544
    .line 545
    invoke-static {v2, v12}, Lcom/google/protobuf/U2;->A(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    move-result-object v2

    .line 549
    iget-object v3, v4, Lb7/S0;->T0:Landroid/widget/TextView;

    .line 550
    .line 551
    invoke-static {v2, v11}, La/r;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    .line 553
    .line 554
    move-result-object v6

    .line 555
    iget-object v13, v7, LD1/q;->J:Ljava/lang/Object;

    .line 556
    .line 557
    check-cast v13, Ljava/util/ArrayList;

    .line 558
    .line 559
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 560
    .line 561
    .line 562
    move-result-object v13

    .line 563
    check-cast v13, Ljava/util/HashMap;

    .line 564
    .line 565
    invoke-virtual {v13, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    .line 567
    .line 568
    move-result-object v13

    .line 569
    check-cast v13, Ljava/lang/String;

    .line 570
    .line 571
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    .line 573
    .line 574
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    .line 576
    .line 577
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 578
    .line 579
    .line 580
    move-result-object v6

    .line 581
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    .line 583
    .line 584
    add-int/lit8 v1, v1, 0x1

    .line 585
    .line 586
    goto :goto_2

    .line 587
    :cond_3
    iget-object v0, v4, Lb7/S0;->S0:Landroid/widget/TextView;

    .line 588
    .line 589
    iget-object v1, v7, LD1/q;->J:Ljava/lang/Object;

    .line 590
    .line 591
    check-cast v1, Ljava/util/ArrayList;

    .line 592
    .line 593
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 594
    .line 595
    .line 596
    move-result-object v1

    .line 597
    check-cast v1, Ljava/util/HashMap;

    .line 598
    .line 599
    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    .line 601
    .line 602
    move-result-object v1

    .line 603
    check-cast v1, Ljava/lang/String;

    .line 604
    .line 605
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 606
    .line 607
    .line 608
    move-result-object v1

    .line 609
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 610
    .line 611
    .line 612
    invoke-virtual {v4}, LY/s;->l()Landroid/content/Context;

    .line 613
    .line 614
    .line 615
    move-result-object v0

    .line 616
    invoke-static {v0}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 617
    .line 618
    .line 619
    move-result-object v0

    .line 620
    iget-object v1, v7, LD1/q;->J:Ljava/lang/Object;

    .line 621
    .line 622
    check-cast v1, Ljava/util/ArrayList;

    .line 623
    .line 624
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 625
    .line 626
    .line 627
    move-result-object v1

    .line 628
    check-cast v1, Ljava/util/HashMap;

    .line 629
    .line 630
    invoke-virtual {v1, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    .line 632
    .line 633
    move-result-object v1

    .line 634
    check-cast v1, Ljava/lang/String;

    .line 635
    .line 636
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/n;->n(Ljava/lang/String;)Lcom/bumptech/glide/l;

    .line 637
    .line 638
    .line 639
    move-result-object v0

    .line 640
    invoke-virtual {v0}, LL2/a;->b()LL2/a;

    .line 641
    .line 642
    .line 643
    move-result-object v0

    .line 644
    check-cast v0, Lcom/bumptech/glide/l;

    .line 645
    .line 646
    const v1, 0x7f08053d

    .line 647
    .line 648
    .line 649
    invoke-virtual {v0, v1}, LL2/a;->f(I)LL2/a;

    .line 650
    .line 651
    .line 652
    move-result-object v0

    .line 653
    check-cast v0, Lcom/bumptech/glide/l;

    .line 654
    .line 655
    iget-object v1, v4, Lb7/S0;->d1:LN2/a;

    .line 656
    .line 657
    invoke-static {v1}, LG2/c;->b(LN2/a;)LG2/c;

    .line 658
    .line 659
    .line 660
    move-result-object v1

    .line 661
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/l;->H(LG2/c;)Lcom/bumptech/glide/l;

    .line 662
    .line 663
    .line 664
    move-result-object v0

    .line 665
    iget-object v1, v4, Lb7/S0;->R0:Landroid/widget/ImageView;

    .line 666
    .line 667
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V

    .line 668
    .line 669
    .line 670
    iget-object v0, v7, LD1/q;->J:Ljava/lang/Object;

    .line 671
    .line 672
    check-cast v0, Ljava/util/ArrayList;

    .line 673
    .line 674
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 675
    .line 676
    .line 677
    move-result-object v0

    .line 678
    check-cast v0, Ljava/util/HashMap;

    .line 679
    .line 680
    move-object/from16 v1, v21

    .line 681
    .line 682
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    .line 684
    .line 685
    move-result-object v0

    .line 686
    check-cast v0, Ljava/lang/String;

    .line 687
    .line 688
    iput-object v0, v4, Lb7/S0;->f1:Ljava/lang/String;

    .line 689
    .line 690
    invoke-virtual {v15}, Landroid/view/View;->requestFocus()Z

    .line 691
    .line 692
    .line 693
    const v0, 0x7f080906

    .line 694
    .line 695
    .line 696
    invoke-virtual {v15, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 697
    .line 698
    .line 699
    :cond_4
    return-void

    .line 700
    :pswitch_1
    move-object v5, v6

    .line 701
    move-object v1, v13

    .line 702
    const/4 v13, 0x1

    .line 703
    move-object/from16 v0, p1

    .line 704
    .line 705
    check-cast v0, Lb7/P0;

    .line 706
    .line 707
    const-string v2, "category_id"

    .line 708
    .line 709
    iget-object v3, v7, LD1/q;->J:Ljava/lang/Object;

    .line 710
    .line 711
    check-cast v3, Ljava/util/ArrayList;

    .line 712
    .line 713
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 714
    .line 715
    .line 716
    move-result-object v3

    .line 717
    check-cast v3, Ljava/util/HashMap;

    .line 718
    .line 719
    iput-object v3, v7, LD1/q;->K:Ljava/lang/Object;

    .line 720
    .line 721
    iget-object v6, v0, Lb7/P0;->a0:Landroid/widget/TextView;

    .line 722
    .line 723
    const-string v8, "category_name"

    .line 724
    .line 725
    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    .line 727
    .line 728
    move-result-object v3

    .line 729
    check-cast v3, Ljava/lang/String;

    .line 730
    .line 731
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 732
    .line 733
    .line 734
    move-result-object v3

    .line 735
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 736
    .line 737
    .line 738
    const/4 v3, 0x0

    .line 739
    iput-object v3, v7, LD1/q;->L:Ljava/lang/Object;

    .line 740
    .line 741
    new-instance v3, Ljava/util/ArrayList;

    .line 742
    .line 743
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 744
    .line 745
    .line 746
    iput-object v3, v7, LD1/q;->L:Ljava/lang/Object;

    .line 747
    .line 748
    const/4 v3, 0x0

    .line 749
    :goto_3
    move-object v6, v4

    .line 750
    check-cast v6, Lb7/S0;

    .line 751
    .line 752
    iget-object v8, v6, Lb7/S0;->p1:Lorg/json/JSONArray;

    .line 753
    .line 754
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    .line 755
    .line 756
    .line 757
    move-result v8

    .line 758
    if-ge v3, v8, :cond_9

    .line 759
    .line 760
    :try_start_0
    move-object v6, v4

    .line 761
    check-cast v6, Lb7/S0;

    .line 762
    .line 763
    iget-object v6, v6, Lb7/S0;->p1:Lorg/json/JSONArray;

    .line 764
    .line 765
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 766
    .line 767
    .line 768
    move-result-object v6

    .line 769
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 770
    .line 771
    .line 772
    move-result-object v6

    .line 773
    move-object v8, v4

    .line 774
    check-cast v8, Lb7/S0;

    .line 775
    .line 776
    iget-object v8, v8, Lb7/S0;->e1:Ljava/lang/String;

    .line 777
    .line 778
    const-string v10, "fav"

    .line 779
    .line 780
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 781
    .line 782
    .line 783
    move-result v8
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 784
    const-string v10, "direct_source"

    .line 785
    .line 786
    const-string v11, "custom_sid"

    .line 787
    .line 788
    const-string v12, "container_extension"

    .line 789
    .line 790
    const-string v15, "added"

    .line 791
    .line 792
    const-string v13, "rating_5based"

    .line 793
    .line 794
    move-object/from16 p1, v0

    .line 795
    .line 796
    const-string v0, "stream_type"

    .line 797
    .line 798
    move-object/from16 p2, v10

    .line 799
    .line 800
    const-string v10, "num"

    .line 801
    .line 802
    if-nez v8, :cond_8

    .line 803
    .line 804
    :try_start_1
    move-object v8, v4

    .line 805
    check-cast v8, Lb7/S0;

    .line 806
    .line 807
    iget-object v8, v8, Lb7/S0;->e1:Ljava/lang/String;

    .line 808
    .line 809
    move-object/from16 v16, v11

    .line 810
    .line 811
    const-string v11, "cont"

    .line 812
    .line 813
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 814
    .line 815
    .line 816
    move-result v8

    .line 817
    if-nez v8, :cond_5

    .line 818
    .line 819
    move-object v8, v4

    .line 820
    check-cast v8, Lb7/S0;

    .line 821
    .line 822
    iget-object v8, v8, Lb7/S0;->e1:Ljava/lang/String;

    .line 823
    .line 824
    const-string v11, "search"

    .line 825
    .line 826
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 827
    .line 828
    .line 829
    move-result v8

    .line 830
    if-eqz v8, :cond_6

    .line 831
    .line 832
    :cond_5
    move-object/from16 v11, p2

    .line 833
    .line 834
    move-object/from16 v8, v16

    .line 835
    .line 836
    goto/16 :goto_5

    .line 837
    .line 838
    :cond_6
    move-object v8, v4

    .line 839
    check-cast v8, Lb7/S0;

    .line 840
    .line 841
    iget-object v8, v8, Lb7/S0;->e1:Ljava/lang/String;

    .line 842
    .line 843
    const-string v11, "all"

    .line 844
    .line 845
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 846
    .line 847
    .line 848
    move-result v8

    .line 849
    if-eqz v8, :cond_7

    .line 850
    .line 851
    iget-object v8, v7, LD1/q;->K:Ljava/lang/Object;

    .line 852
    .line 853
    check-cast v8, Ljava/util/HashMap;

    .line 854
    .line 855
    invoke-virtual {v8, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 856
    .line 857
    .line 858
    move-result-object v8

    .line 859
    check-cast v8, Ljava/lang/String;

    .line 860
    .line 861
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 862
    .line 863
    .line 864
    move-result v6

    .line 865
    if-eqz v6, :cond_7

    .line 866
    .line 867
    new-instance v6, Ljava/util/HashMap;

    .line 868
    .line 869
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 870
    .line 871
    .line 872
    move-object v8, v4

    .line 873
    check-cast v8, Lb7/S0;

    .line 874
    .line 875
    iget-object v8, v8, Lb7/S0;->p1:Lorg/json/JSONArray;

    .line 876
    .line 877
    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 878
    .line 879
    .line 880
    move-result-object v8

    .line 881
    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 882
    .line 883
    .line 884
    move-result-object v8

    .line 885
    invoke-virtual {v6, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    .line 887
    .line 888
    move-object v8, v4

    .line 889
    check-cast v8, Lb7/S0;

    .line 890
    .line 891
    iget-object v8, v8, Lb7/S0;->p1:Lorg/json/JSONArray;

    .line 892
    .line 893
    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 894
    .line 895
    .line 896
    move-result-object v8

    .line 897
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 898
    .line 899
    .line 900
    move-result-object v8

    .line 901
    invoke-virtual {v6, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    .line 903
    .line 904
    move-object v8, v4

    .line 905
    check-cast v8, Lb7/S0;

    .line 906
    .line 907
    iget-object v8, v8, Lb7/S0;->p1:Lorg/json/JSONArray;

    .line 908
    .line 909
    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 910
    .line 911
    .line 912
    move-result-object v8

    .line 913
    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 914
    .line 915
    .line 916
    move-result-object v8

    .line 917
    invoke-virtual {v6, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    .line 919
    .line 920
    move-object v0, v4

    .line 921
    check-cast v0, Lb7/S0;

    .line 922
    .line 923
    iget-object v0, v0, Lb7/S0;->p1:Lorg/json/JSONArray;

    .line 924
    .line 925
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 926
    .line 927
    .line 928
    move-result-object v0

    .line 929
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 930
    .line 931
    .line 932
    move-result-object v0

    .line 933
    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    .line 935
    .line 936
    move-object v0, v4

    .line 937
    check-cast v0, Lb7/S0;

    .line 938
    .line 939
    iget-object v0, v0, Lb7/S0;->p1:Lorg/json/JSONArray;

    .line 940
    .line 941
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 942
    .line 943
    .line 944
    move-result-object v0

    .line 945
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 946
    .line 947
    .line 948
    move-result-object v0

    .line 949
    invoke-virtual {v6, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 950
    .line 951
    .line 952
    move-object v0, v4

    .line 953
    check-cast v0, Lb7/S0;

    .line 954
    .line 955
    iget-object v0, v0, Lb7/S0;->p1:Lorg/json/JSONArray;

    .line 956
    .line 957
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 958
    .line 959
    .line 960
    move-result-object v0

    .line 961
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 962
    .line 963
    .line 964
    move-result-object v0

    .line 965
    invoke-virtual {v6, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    .line 967
    .line 968
    move-object v0, v4

    .line 969
    check-cast v0, Lb7/S0;

    .line 970
    .line 971
    iget-object v0, v0, Lb7/S0;->p1:Lorg/json/JSONArray;

    .line 972
    .line 973
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 974
    .line 975
    .line 976
    move-result-object v0

    .line 977
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 978
    .line 979
    .line 980
    move-result-object v0

    .line 981
    invoke-virtual {v6, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    .line 983
    .line 984
    move-object v0, v4

    .line 985
    check-cast v0, Lb7/S0;

    .line 986
    .line 987
    iget-object v0, v0, Lb7/S0;->p1:Lorg/json/JSONArray;

    .line 988
    .line 989
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 990
    .line 991
    .line 992
    move-result-object v0

    .line 993
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 994
    .line 995
    .line 996
    move-result-object v0

    .line 997
    invoke-virtual {v6, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    .line 999
    .line 1000
    move-object v0, v4

    .line 1001
    check-cast v0, Lb7/S0;

    .line 1002
    .line 1003
    iget-object v0, v0, Lb7/S0;->p1:Lorg/json/JSONArray;

    .line 1004
    .line 1005
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v0

    .line 1009
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1010
    .line 1011
    .line 1012
    move-result-object v0

    .line 1013
    invoke-virtual {v6, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    .line 1015
    .line 1016
    move-object v0, v4

    .line 1017
    check-cast v0, Lb7/S0;

    .line 1018
    .line 1019
    iget-object v0, v0, Lb7/S0;->p1:Lorg/json/JSONArray;

    .line 1020
    .line 1021
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 1022
    .line 1023
    .line 1024
    move-result-object v0

    .line 1025
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v0

    .line 1029
    invoke-virtual {v6, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    .line 1031
    .line 1032
    move-object v0, v4

    .line 1033
    check-cast v0, Lb7/S0;

    .line 1034
    .line 1035
    iget-object v0, v0, Lb7/S0;->p1:Lorg/json/JSONArray;

    .line 1036
    .line 1037
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 1038
    .line 1039
    .line 1040
    move-result-object v0

    .line 1041
    move-object/from16 v8, v16

    .line 1042
    .line 1043
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v0

    .line 1047
    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1048
    .line 1049
    .line 1050
    move-object v0, v4

    .line 1051
    check-cast v0, Lb7/S0;

    .line 1052
    .line 1053
    iget-object v0, v0, Lb7/S0;->p1:Lorg/json/JSONArray;

    .line 1054
    .line 1055
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 1056
    .line 1057
    .line 1058
    move-result-object v0

    .line 1059
    move-object/from16 v11, p2

    .line 1060
    .line 1061
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v0

    .line 1065
    invoke-virtual {v6, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1066
    .line 1067
    .line 1068
    iget-object v0, v7, LD1/q;->L:Ljava/lang/Object;

    .line 1069
    .line 1070
    check-cast v0, Ljava/util/ArrayList;

    .line 1071
    .line 1072
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1073
    .line 1074
    .line 1075
    :catch_0
    :cond_7
    :goto_4
    move-object v0, v7

    .line 1076
    goto/16 :goto_6

    .line 1077
    .line 1078
    :cond_8
    move-object v8, v11

    .line 1079
    move-object/from16 v11, p2

    .line 1080
    .line 1081
    :goto_5
    new-instance v6, Ljava/util/HashMap;

    .line 1082
    .line 1083
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1084
    .line 1085
    .line 1086
    :try_start_2
    move-object v7, v4

    .line 1087
    check-cast v7, Lb7/S0;

    .line 1088
    .line 1089
    iget-object v7, v7, Lb7/S0;->p1:Lorg/json/JSONArray;

    .line 1090
    .line 1091
    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 1092
    .line 1093
    .line 1094
    move-result-object v7

    .line 1095
    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1096
    .line 1097
    .line 1098
    move-result-object v7

    .line 1099
    invoke-virtual {v6, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1100
    .line 1101
    .line 1102
    move-object v7, v4

    .line 1103
    check-cast v7, Lb7/S0;

    .line 1104
    .line 1105
    iget-object v7, v7, Lb7/S0;->p1:Lorg/json/JSONArray;

    .line 1106
    .line 1107
    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 1108
    .line 1109
    .line 1110
    move-result-object v7

    .line 1111
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v7

    .line 1115
    invoke-virtual {v6, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1116
    .line 1117
    .line 1118
    move-object v7, v4

    .line 1119
    check-cast v7, Lb7/S0;

    .line 1120
    .line 1121
    iget-object v7, v7, Lb7/S0;->p1:Lorg/json/JSONArray;

    .line 1122
    .line 1123
    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 1124
    .line 1125
    .line 1126
    move-result-object v7

    .line 1127
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1128
    .line 1129
    .line 1130
    move-result-object v7

    .line 1131
    invoke-virtual {v6, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1132
    .line 1133
    .line 1134
    move-object v0, v4

    .line 1135
    check-cast v0, Lb7/S0;

    .line 1136
    .line 1137
    iget-object v0, v0, Lb7/S0;->p1:Lorg/json/JSONArray;

    .line 1138
    .line 1139
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 1140
    .line 1141
    .line 1142
    move-result-object v0

    .line 1143
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1144
    .line 1145
    .line 1146
    move-result-object v0

    .line 1147
    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1148
    .line 1149
    .line 1150
    move-object v0, v4

    .line 1151
    check-cast v0, Lb7/S0;

    .line 1152
    .line 1153
    iget-object v0, v0, Lb7/S0;->p1:Lorg/json/JSONArray;

    .line 1154
    .line 1155
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 1156
    .line 1157
    .line 1158
    move-result-object v0

    .line 1159
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1160
    .line 1161
    .line 1162
    move-result-object v0

    .line 1163
    invoke-virtual {v6, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1164
    .line 1165
    .line 1166
    move-object v0, v4

    .line 1167
    check-cast v0, Lb7/S0;

    .line 1168
    .line 1169
    iget-object v0, v0, Lb7/S0;->p1:Lorg/json/JSONArray;

    .line 1170
    .line 1171
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 1172
    .line 1173
    .line 1174
    move-result-object v0

    .line 1175
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1176
    .line 1177
    .line 1178
    move-result-object v0

    .line 1179
    invoke-virtual {v6, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1180
    .line 1181
    .line 1182
    move-object v0, v4

    .line 1183
    check-cast v0, Lb7/S0;

    .line 1184
    .line 1185
    iget-object v0, v0, Lb7/S0;->p1:Lorg/json/JSONArray;

    .line 1186
    .line 1187
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 1188
    .line 1189
    .line 1190
    move-result-object v0

    .line 1191
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1192
    .line 1193
    .line 1194
    move-result-object v0

    .line 1195
    invoke-virtual {v6, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    .line 1197
    .line 1198
    move-object v0, v4

    .line 1199
    check-cast v0, Lb7/S0;

    .line 1200
    .line 1201
    iget-object v0, v0, Lb7/S0;->p1:Lorg/json/JSONArray;

    .line 1202
    .line 1203
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 1204
    .line 1205
    .line 1206
    move-result-object v0

    .line 1207
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1208
    .line 1209
    .line 1210
    move-result-object v0

    .line 1211
    invoke-virtual {v6, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1212
    .line 1213
    .line 1214
    move-object v0, v4

    .line 1215
    check-cast v0, Lb7/S0;

    .line 1216
    .line 1217
    iget-object v0, v0, Lb7/S0;->p1:Lorg/json/JSONArray;

    .line 1218
    .line 1219
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 1220
    .line 1221
    .line 1222
    move-result-object v0

    .line 1223
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1224
    .line 1225
    .line 1226
    move-result-object v0

    .line 1227
    invoke-virtual {v6, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1228
    .line 1229
    .line 1230
    move-object v0, v4

    .line 1231
    check-cast v0, Lb7/S0;

    .line 1232
    .line 1233
    iget-object v0, v0, Lb7/S0;->p1:Lorg/json/JSONArray;

    .line 1234
    .line 1235
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 1236
    .line 1237
    .line 1238
    move-result-object v0

    .line 1239
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1240
    .line 1241
    .line 1242
    move-result-object v0

    .line 1243
    invoke-virtual {v6, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1244
    .line 1245
    .line 1246
    move-object v0, v4

    .line 1247
    check-cast v0, Lb7/S0;

    .line 1248
    .line 1249
    iget-object v0, v0, Lb7/S0;->p1:Lorg/json/JSONArray;

    .line 1250
    .line 1251
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 1252
    .line 1253
    .line 1254
    move-result-object v0

    .line 1255
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1256
    .line 1257
    .line 1258
    move-result-object v0

    .line 1259
    invoke-virtual {v6, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1260
    .line 1261
    .line 1262
    move-object v0, v4

    .line 1263
    check-cast v0, Lb7/S0;

    .line 1264
    .line 1265
    iget-object v0, v0, Lb7/S0;->p1:Lorg/json/JSONArray;

    .line 1266
    .line 1267
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 1268
    .line 1269
    .line 1270
    move-result-object v0

    .line 1271
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1272
    .line 1273
    .line 1274
    move-result-object v0

    .line 1275
    invoke-virtual {v6, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1276
    .line 1277
    .line 1278
    move-object/from16 v0, p0

    .line 1279
    .line 1280
    :try_start_3
    iget-object v7, v0, LD1/q;->L:Ljava/lang/Object;

    .line 1281
    .line 1282
    check-cast v7, Ljava/util/ArrayList;

    .line 1283
    .line 1284
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1285
    .line 1286
    .line 1287
    goto :goto_6

    .line 1288
    :catch_1
    move-object/from16 v0, p0

    .line 1289
    .line 1290
    goto :goto_6

    .line 1291
    :catch_2
    move-object/from16 p1, v0

    .line 1292
    .line 1293
    goto/16 :goto_4

    .line 1294
    .line 1295
    :catch_3
    :goto_6
    add-int/lit8 v3, v3, 0x1

    .line 1296
    .line 1297
    move-object v7, v0

    .line 1298
    const/4 v13, 0x1

    .line 1299
    move-object/from16 v0, p1

    .line 1300
    .line 1301
    goto/16 :goto_3

    .line 1302
    .line 1303
    :cond_9
    move-object/from16 p1, v0

    .line 1304
    .line 1305
    move-object v0, v7

    .line 1306
    new-instance v1, LD1/q;

    .line 1307
    .line 1308
    invoke-virtual {v6}, LY/s;->l()Landroid/content/Context;

    .line 1309
    .line 1310
    .line 1311
    iget-object v2, v0, LD1/q;->L:Ljava/lang/Object;

    .line 1312
    .line 1313
    check-cast v2, Ljava/util/ArrayList;

    .line 1314
    .line 1315
    const/4 v3, 0x3

    .line 1316
    invoke-direct {v1, v6, v2, v3}, LD1/q;-><init>(Lb7/S0;Ljava/util/ArrayList;I)V

    .line 1317
    .line 1318
    .line 1319
    move-object/from16 v2, p1

    .line 1320
    .line 1321
    iget-object v3, v2, Lb7/P0;->b0:Landroidx/recyclerview/widget/RecyclerView;

    .line 1322
    .line 1323
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(LO1/C;)V

    .line 1324
    .line 1325
    .line 1326
    new-instance v1, LO1/m;

    .line 1327
    .line 1328
    const/4 v4, 0x5

    .line 1329
    invoke-direct {v1, v0, v4}, LO1/m;-><init>(Ljava/lang/Object;I)V

    .line 1330
    .line 1331
    .line 1332
    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->j(LO1/P;)V

    .line 1333
    .line 1334
    .line 1335
    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 1336
    .line 1337
    .line 1338
    move-result-object v1

    .line 1339
    new-instance v3, Lb7/D0;

    .line 1340
    .line 1341
    const/4 v4, 0x1

    .line 1342
    invoke-direct {v3, v0, v2, v4}, Lb7/D0;-><init>(LO1/C;LO1/c0;I)V

    .line 1343
    .line 1344
    .line 1345
    invoke-virtual {v1, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1346
    .line 1347
    .line 1348
    return-void

    .line 1349
    :pswitch_2
    move-object v5, v6

    .line 1350
    move-object v0, v7

    .line 1351
    move-object/from16 v20, v15

    .line 1352
    .line 1353
    move-object/from16 v6, p1

    .line 1354
    .line 1355
    check-cast v6, Lb7/H0;

    .line 1356
    .line 1357
    iget-object v7, v0, LD1/q;->J:Ljava/lang/Object;

    .line 1358
    .line 1359
    check-cast v7, Ljava/util/ArrayList;

    .line 1360
    .line 1361
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1362
    .line 1363
    .line 1364
    move-result-object v7

    .line 1365
    check-cast v7, Ljava/util/HashMap;

    .line 1366
    .line 1367
    iput-object v7, v0, LD1/q;->K:Ljava/lang/Object;

    .line 1368
    .line 1369
    check-cast v4, Lb7/I0;

    .line 1370
    .line 1371
    invoke-virtual {v4}, LY/s;->l()Landroid/content/Context;

    .line 1372
    .line 1373
    .line 1374
    move-result-object v7

    .line 1375
    invoke-static {v7}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 1376
    .line 1377
    .line 1378
    move-result-object v7

    .line 1379
    iget-object v13, v0, LD1/q;->K:Ljava/lang/Object;

    .line 1380
    .line 1381
    check-cast v13, Ljava/util/HashMap;

    .line 1382
    .line 1383
    invoke-virtual {v13, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1384
    .line 1385
    .line 1386
    move-result-object v13

    .line 1387
    check-cast v13, Ljava/lang/String;

    .line 1388
    .line 1389
    invoke-virtual {v7, v13}, Lcom/bumptech/glide/n;->n(Ljava/lang/String;)Lcom/bumptech/glide/l;

    .line 1390
    .line 1391
    .line 1392
    move-result-object v7

    .line 1393
    const v13, 0x7f08086d

    .line 1394
    .line 1395
    .line 1396
    invoke-virtual {v7, v13}, LL2/a;->f(I)LL2/a;

    .line 1397
    .line 1398
    .line 1399
    move-result-object v7

    .line 1400
    check-cast v7, Lcom/bumptech/glide/l;

    .line 1401
    .line 1402
    iget-object v13, v6, Lb7/H0;->b0:Landroid/widget/ImageView;

    .line 1403
    .line 1404
    invoke-virtual {v7, v13}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V

    .line 1405
    .line 1406
    .line 1407
    iget-object v7, v0, LD1/q;->K:Ljava/lang/Object;

    .line 1408
    .line 1409
    check-cast v7, Ljava/util/HashMap;

    .line 1410
    .line 1411
    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1412
    .line 1413
    .line 1414
    move-result-object v7

    .line 1415
    iget-object v13, v6, Lb7/H0;->c0:Landroid/widget/ImageView;

    .line 1416
    .line 1417
    invoke-virtual {v13, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1418
    .line 1419
    .line 1420
    iget-object v7, v4, Lb7/I0;->r1:Ljava/lang/String;

    .line 1421
    .line 1422
    new-instance v14, Ljava/lang/StringBuilder;

    .line 1423
    .line 1424
    const-string v15, "\"series_id\":\""

    .line 1425
    .line 1426
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1427
    .line 1428
    .line 1429
    iget-object v15, v0, LD1/q;->K:Ljava/lang/Object;

    .line 1430
    .line 1431
    check-cast v15, Ljava/util/HashMap;

    .line 1432
    .line 1433
    invoke-virtual {v15, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1434
    .line 1435
    .line 1436
    move-result-object v15

    .line 1437
    check-cast v15, Ljava/lang/String;

    .line 1438
    .line 1439
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1440
    .line 1441
    .line 1442
    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1443
    .line 1444
    .line 1445
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1446
    .line 1447
    .line 1448
    move-result-object v1

    .line 1449
    invoke-virtual {v7, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 1450
    .line 1451
    .line 1452
    move-result v1

    .line 1453
    if-eqz v1, :cond_a

    .line 1454
    .line 1455
    const/4 v1, 0x0

    .line 1456
    invoke-virtual {v13, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1457
    .line 1458
    .line 1459
    goto :goto_7

    .line 1460
    :cond_a
    const/16 v1, 0x8

    .line 1461
    .line 1462
    invoke-virtual {v13, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1463
    .line 1464
    .line 1465
    :goto_7
    iget-object v1, v6, Lb7/H0;->d0:Landroidx/cardview/widget/CardView;

    .line 1466
    .line 1467
    const v7, 0x7f080904

    .line 1468
    .line 1469
    .line 1470
    invoke-virtual {v1, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1471
    .line 1472
    .line 1473
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1474
    .line 1475
    .line 1476
    move-result-object v7

    .line 1477
    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 1478
    .line 1479
    iget v13, v4, Lb7/I0;->S0:I

    .line 1480
    .line 1481
    iput v13, v7, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1482
    .line 1483
    iget v13, v4, Lb7/I0;->R0:I

    .line 1484
    .line 1485
    iput v13, v7, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1486
    .line 1487
    invoke-virtual {v1, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1488
    .line 1489
    .line 1490
    iget-object v7, v6, Lb7/H0;->a0:Landroid/widget/TextView;

    .line 1491
    .line 1492
    const/16 v13, 0x8

    .line 1493
    .line 1494
    invoke-virtual {v7, v13}, Landroid/view/View;->setVisibility(I)V

    .line 1495
    .line 1496
    .line 1497
    iget-object v13, v0, LD1/q;->K:Ljava/lang/Object;

    .line 1498
    .line 1499
    check-cast v13, Ljava/util/HashMap;

    .line 1500
    .line 1501
    invoke-virtual {v13, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1502
    .line 1503
    .line 1504
    move-result-object v13

    .line 1505
    check-cast v13, Ljava/lang/CharSequence;

    .line 1506
    .line 1507
    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1508
    .line 1509
    .line 1510
    new-instance v7, Lb7/F0;

    .line 1511
    .line 1512
    const/4 v13, 0x0

    .line 1513
    invoke-direct {v7, v8, v13, v0, v6}, Lb7/F0;-><init>(IILO1/C;LO1/c0;)V

    .line 1514
    .line 1515
    .line 1516
    invoke-virtual {v1, v7}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1517
    .line 1518
    .line 1519
    const/4 v7, 0x1

    .line 1520
    invoke-virtual {v1, v7}, Landroid/view/View;->setFocusable(Z)V

    .line 1521
    .line 1522
    .line 1523
    new-instance v7, Lb7/v;

    .line 1524
    .line 1525
    invoke-direct {v7, v0, v6, v8}, Lb7/v;-><init>(LD1/q;Lb7/H0;I)V

    .line 1526
    .line 1527
    .line 1528
    invoke-virtual {v1, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1529
    .line 1530
    .line 1531
    new-instance v7, Lb7/G0;

    .line 1532
    .line 1533
    invoke-direct {v7, v8, v13, v0, v6}, Lb7/G0;-><init>(IILO1/C;LO1/c0;)V

    .line 1534
    .line 1535
    .line 1536
    invoke-virtual {v1, v7}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1537
    .line 1538
    .line 1539
    invoke-static {}, Lpe/hf/black20/util/Methods;->P()Z

    .line 1540
    .line 1541
    .line 1542
    move-result v6

    .line 1543
    if-nez v6, :cond_b

    .line 1544
    .line 1545
    invoke-virtual {v4}, LY/s;->l()Landroid/content/Context;

    .line 1546
    .line 1547
    .line 1548
    move-result-object v6

    .line 1549
    invoke-static {v6}, Lpe/hf/black20/util/Methods;->T(Landroid/content/Context;)Z

    .line 1550
    .line 1551
    .line 1552
    move-result v6

    .line 1553
    if-eqz v6, :cond_f

    .line 1554
    .line 1555
    :cond_b
    iget-boolean v6, v4, Lb7/I0;->n1:Z

    .line 1556
    .line 1557
    if-nez v6, :cond_f

    .line 1558
    .line 1559
    const/4 v6, 0x1

    .line 1560
    iput-boolean v6, v4, Lb7/I0;->n1:Z

    .line 1561
    .line 1562
    const/4 v6, 0x0

    .line 1563
    sput-boolean v6, Lpe/hf/black20/ORPlayerMainActivity;->G0:Z

    .line 1564
    .line 1565
    iget-object v6, v4, Lb7/I0;->X0:Landroid/widget/TextView;

    .line 1566
    .line 1567
    move-object/from16 v7, v20

    .line 1568
    .line 1569
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1570
    .line 1571
    .line 1572
    iget-object v6, v4, Lb7/I0;->Y0:Landroid/widget/TextView;

    .line 1573
    .line 1574
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1575
    .line 1576
    .line 1577
    iget-object v6, v4, Lb7/I0;->a1:Landroid/widget/TextView;

    .line 1578
    .line 1579
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1580
    .line 1581
    .line 1582
    iget-object v6, v4, Lb7/I0;->Z0:Landroid/widget/TextView;

    .line 1583
    .line 1584
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1585
    .line 1586
    .line 1587
    iget-object v6, v4, Lb7/I0;->W0:Landroid/widget/TextView;

    .line 1588
    .line 1589
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1590
    .line 1591
    .line 1592
    iget-object v6, v4, Lb7/I0;->V0:Landroid/widget/TextView;

    .line 1593
    .line 1594
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1595
    .line 1596
    .line 1597
    iget-object v6, v4, Lb7/I0;->U0:Landroid/widget/TextView;

    .line 1598
    .line 1599
    iget-object v13, v0, LD1/q;->J:Ljava/lang/Object;

    .line 1600
    .line 1601
    check-cast v13, Ljava/util/ArrayList;

    .line 1602
    .line 1603
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1604
    .line 1605
    .line 1606
    move-result-object v13

    .line 1607
    check-cast v13, Ljava/util/HashMap;

    .line 1608
    .line 1609
    invoke-virtual {v13, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1610
    .line 1611
    .line 1612
    move-result-object v9

    .line 1613
    check-cast v9, Ljava/lang/String;

    .line 1614
    .line 1615
    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 1616
    .line 1617
    .line 1618
    move-result-object v9

    .line 1619
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1620
    .line 1621
    .line 1622
    iget-object v6, v0, LD1/q;->J:Ljava/lang/Object;

    .line 1623
    .line 1624
    check-cast v6, Ljava/util/ArrayList;

    .line 1625
    .line 1626
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1627
    .line 1628
    .line 1629
    move-result-object v6

    .line 1630
    check-cast v6, Ljava/util/HashMap;

    .line 1631
    .line 1632
    const-string v9, "backdrop_path"

    .line 1633
    .line 1634
    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1635
    .line 1636
    .line 1637
    move-result-object v6

    .line 1638
    check-cast v6, Ljava/lang/String;

    .line 1639
    .line 1640
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1641
    .line 1642
    .line 1643
    move-result v6

    .line 1644
    iget-object v13, v4, Lb7/I0;->q1:LN2/a;

    .line 1645
    .line 1646
    if-eqz v6, :cond_c

    .line 1647
    .line 1648
    invoke-virtual {v4}, LY/s;->l()Landroid/content/Context;

    .line 1649
    .line 1650
    .line 1651
    move-result-object v6

    .line 1652
    invoke-static {v6}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 1653
    .line 1654
    .line 1655
    move-result-object v6

    .line 1656
    iget-object v9, v0, LD1/q;->J:Ljava/lang/Object;

    .line 1657
    .line 1658
    check-cast v9, Ljava/util/ArrayList;

    .line 1659
    .line 1660
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1661
    .line 1662
    .line 1663
    move-result-object v9

    .line 1664
    check-cast v9, Ljava/util/HashMap;

    .line 1665
    .line 1666
    invoke-virtual {v9, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1667
    .line 1668
    .line 1669
    move-result-object v3

    .line 1670
    check-cast v3, Ljava/lang/String;

    .line 1671
    .line 1672
    invoke-virtual {v6, v3}, Lcom/bumptech/glide/n;->n(Ljava/lang/String;)Lcom/bumptech/glide/l;

    .line 1673
    .line 1674
    .line 1675
    move-result-object v3

    .line 1676
    invoke-virtual {v3}, LL2/a;->b()LL2/a;

    .line 1677
    .line 1678
    .line 1679
    move-result-object v3

    .line 1680
    check-cast v3, Lcom/bumptech/glide/l;

    .line 1681
    .line 1682
    invoke-static {v13}, LG2/c;->b(LN2/a;)LG2/c;

    .line 1683
    .line 1684
    .line 1685
    move-result-object v6

    .line 1686
    invoke-virtual {v3, v6}, Lcom/bumptech/glide/l;->H(LG2/c;)Lcom/bumptech/glide/l;

    .line 1687
    .line 1688
    .line 1689
    move-result-object v3

    .line 1690
    iget-object v6, v4, Lb7/I0;->T0:Landroid/widget/ImageView;

    .line 1691
    .line 1692
    invoke-virtual {v3, v6}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V

    .line 1693
    .line 1694
    .line 1695
    goto :goto_8

    .line 1696
    :cond_c
    invoke-virtual {v4}, LY/s;->l()Landroid/content/Context;

    .line 1697
    .line 1698
    .line 1699
    move-result-object v3

    .line 1700
    invoke-static {v3}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 1701
    .line 1702
    .line 1703
    move-result-object v3

    .line 1704
    iget-object v6, v0, LD1/q;->J:Ljava/lang/Object;

    .line 1705
    .line 1706
    check-cast v6, Ljava/util/ArrayList;

    .line 1707
    .line 1708
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1709
    .line 1710
    .line 1711
    move-result-object v6

    .line 1712
    check-cast v6, Ljava/util/HashMap;

    .line 1713
    .line 1714
    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1715
    .line 1716
    .line 1717
    move-result-object v6

    .line 1718
    check-cast v6, Ljava/lang/String;

    .line 1719
    .line 1720
    invoke-virtual {v3, v6}, Lcom/bumptech/glide/n;->n(Ljava/lang/String;)Lcom/bumptech/glide/l;

    .line 1721
    .line 1722
    .line 1723
    move-result-object v3

    .line 1724
    invoke-virtual {v3}, LL2/a;->b()LL2/a;

    .line 1725
    .line 1726
    .line 1727
    move-result-object v3

    .line 1728
    check-cast v3, Lcom/bumptech/glide/l;

    .line 1729
    .line 1730
    invoke-static {v13}, LG2/c;->b(LN2/a;)LG2/c;

    .line 1731
    .line 1732
    .line 1733
    move-result-object v6

    .line 1734
    invoke-virtual {v3, v6}, Lcom/bumptech/glide/l;->H(LG2/c;)Lcom/bumptech/glide/l;

    .line 1735
    .line 1736
    .line 1737
    move-result-object v3

    .line 1738
    iget-object v6, v4, Lb7/I0;->T0:Landroid/widget/ImageView;

    .line 1739
    .line 1740
    invoke-virtual {v3, v6}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V

    .line 1741
    .line 1742
    .line 1743
    :goto_8
    iget-object v3, v0, LD1/q;->J:Ljava/lang/Object;

    .line 1744
    .line 1745
    check-cast v3, Ljava/util/ArrayList;

    .line 1746
    .line 1747
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1748
    .line 1749
    .line 1750
    move-result-object v3

    .line 1751
    check-cast v3, Ljava/util/HashMap;

    .line 1752
    .line 1753
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1754
    .line 1755
    .line 1756
    move-result-object v2

    .line 1757
    check-cast v2, Ljava/lang/String;

    .line 1758
    .line 1759
    iput-object v2, v0, LD1/q;->L:Ljava/lang/Object;

    .line 1760
    .line 1761
    iget-object v2, v4, Lb7/I0;->X0:Landroid/widget/TextView;

    .line 1762
    .line 1763
    iget-object v3, v0, LD1/q;->J:Ljava/lang/Object;

    .line 1764
    .line 1765
    check-cast v3, Ljava/util/ArrayList;

    .line 1766
    .line 1767
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1768
    .line 1769
    .line 1770
    move-result-object v3

    .line 1771
    check-cast v3, Ljava/util/HashMap;

    .line 1772
    .line 1773
    const-string v6, "genre"

    .line 1774
    .line 1775
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1776
    .line 1777
    .line 1778
    move-result-object v3

    .line 1779
    check-cast v3, Ljava/lang/CharSequence;

    .line 1780
    .line 1781
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1782
    .line 1783
    .line 1784
    iget-object v2, v4, Lb7/I0;->Y0:Landroid/widget/TextView;

    .line 1785
    .line 1786
    iget-object v3, v0, LD1/q;->J:Ljava/lang/Object;

    .line 1787
    .line 1788
    check-cast v3, Ljava/util/ArrayList;

    .line 1789
    .line 1790
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1791
    .line 1792
    .line 1793
    move-result-object v3

    .line 1794
    check-cast v3, Ljava/util/HashMap;

    .line 1795
    .line 1796
    const-string v6, "plot"

    .line 1797
    .line 1798
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1799
    .line 1800
    .line 1801
    move-result-object v3

    .line 1802
    check-cast v3, Ljava/lang/CharSequence;

    .line 1803
    .line 1804
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1805
    .line 1806
    .line 1807
    iget-object v2, v4, Lb7/I0;->a1:Landroid/widget/TextView;

    .line 1808
    .line 1809
    iget-object v3, v0, LD1/q;->J:Ljava/lang/Object;

    .line 1810
    .line 1811
    check-cast v3, Ljava/util/ArrayList;

    .line 1812
    .line 1813
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1814
    .line 1815
    .line 1816
    move-result-object v3

    .line 1817
    check-cast v3, Ljava/util/HashMap;

    .line 1818
    .line 1819
    const-string v6, "cast"

    .line 1820
    .line 1821
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1822
    .line 1823
    .line 1824
    move-result-object v3

    .line 1825
    check-cast v3, Ljava/lang/CharSequence;

    .line 1826
    .line 1827
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1828
    .line 1829
    .line 1830
    iget-object v2, v0, LD1/q;->J:Ljava/lang/Object;

    .line 1831
    .line 1832
    check-cast v2, Ljava/util/ArrayList;

    .line 1833
    .line 1834
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1835
    .line 1836
    .line 1837
    move-result-object v2

    .line 1838
    check-cast v2, Ljava/util/HashMap;

    .line 1839
    .line 1840
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1841
    .line 1842
    .line 1843
    move-result-object v2

    .line 1844
    check-cast v2, Ljava/lang/String;

    .line 1845
    .line 1846
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 1847
    .line 1848
    .line 1849
    move-result v3

    .line 1850
    if-lez v3, :cond_d

    .line 1851
    .line 1852
    const/4 v3, 0x0

    .line 1853
    const/4 v6, 0x1

    .line 1854
    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 1855
    .line 1856
    .line 1857
    move-result-object v2

    .line 1858
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1859
    .line 1860
    .line 1861
    move-result v2

    .line 1862
    move-object v15, v7

    .line 1863
    const/4 v3, 0x0

    .line 1864
    :goto_9
    if-ge v3, v2, :cond_d

    .line 1865
    .line 1866
    invoke-static {v15, v12}, Lcom/google/protobuf/U2;->A(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1867
    .line 1868
    .line 1869
    move-result-object v15

    .line 1870
    iget-object v6, v4, Lb7/I0;->V0:Landroid/widget/TextView;

    .line 1871
    .line 1872
    invoke-static {v15, v11}, La/r;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1873
    .line 1874
    .line 1875
    move-result-object v7

    .line 1876
    iget-object v9, v0, LD1/q;->J:Ljava/lang/Object;

    .line 1877
    .line 1878
    check-cast v9, Ljava/util/ArrayList;

    .line 1879
    .line 1880
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1881
    .line 1882
    .line 1883
    move-result-object v9

    .line 1884
    check-cast v9, Ljava/util/HashMap;

    .line 1885
    .line 1886
    invoke-virtual {v9, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1887
    .line 1888
    .line 1889
    move-result-object v9

    .line 1890
    check-cast v9, Ljava/lang/String;

    .line 1891
    .line 1892
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1893
    .line 1894
    .line 1895
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1896
    .line 1897
    .line 1898
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1899
    .line 1900
    .line 1901
    move-result-object v7

    .line 1902
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1903
    .line 1904
    .line 1905
    add-int/lit8 v3, v3, 0x1

    .line 1906
    .line 1907
    goto :goto_9

    .line 1908
    :cond_d
    iget-object v2, v0, LD1/q;->J:Ljava/lang/Object;

    .line 1909
    .line 1910
    check-cast v2, Ljava/util/ArrayList;

    .line 1911
    .line 1912
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1913
    .line 1914
    .line 1915
    move-result-object v2

    .line 1916
    check-cast v2, Ljava/util/HashMap;

    .line 1917
    .line 1918
    const-string v3, "releaseDate"

    .line 1919
    .line 1920
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1921
    .line 1922
    .line 1923
    move-result-object v2

    .line 1924
    check-cast v2, Ljava/lang/String;

    .line 1925
    .line 1926
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 1927
    .line 1928
    .line 1929
    move-result v3

    .line 1930
    const/16 v5, 0x8

    .line 1931
    .line 1932
    if-le v3, v5, :cond_e

    .line 1933
    .line 1934
    invoke-static {v2}, Lpe/hf/black20/util/Methods;->x(Ljava/lang/String;)Ljava/lang/String;

    .line 1935
    .line 1936
    .line 1937
    move-result-object v2

    .line 1938
    :cond_e
    iget-object v3, v4, Lb7/I0;->W0:Landroid/widget/TextView;

    .line 1939
    .line 1940
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1941
    .line 1942
    .line 1943
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 1944
    .line 1945
    .line 1946
    const v2, 0x7f080906

    .line 1947
    .line 1948
    .line 1949
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1950
    .line 1951
    .line 1952
    :cond_f
    return-void

    .line 1953
    :pswitch_3
    move-object v0, v7

    .line 1954
    move-object/from16 v1, p1

    .line 1955
    .line 1956
    check-cast v1, LD1/p;

    .line 1957
    .line 1958
    invoke-virtual {v0, v8}, LD1/q;->g(I)Z

    .line 1959
    .line 1960
    .line 1961
    move-result v2

    .line 1962
    iget-object v3, v1, LO1/c0;->G:Landroid/view/View;

    .line 1963
    .line 1964
    if-eqz v2, :cond_10

    .line 1965
    .line 1966
    new-instance v2, LO1/M;

    .line 1967
    .line 1968
    const/4 v4, -0x1

    .line 1969
    const/4 v5, -0x2

    .line 1970
    invoke-direct {v2, v4, v5}, LO1/M;-><init>(II)V

    .line 1971
    .line 1972
    .line 1973
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1974
    .line 1975
    .line 1976
    goto :goto_a

    .line 1977
    :cond_10
    new-instance v2, LO1/M;

    .line 1978
    .line 1979
    const/4 v4, 0x0

    .line 1980
    invoke-direct {v2, v4, v4}, LO1/M;-><init>(II)V

    .line 1981
    .line 1982
    .line 1983
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1984
    .line 1985
    .line 1986
    :goto_a
    iget-object v2, v0, LD1/q;->J:Ljava/lang/Object;

    .line 1987
    .line 1988
    check-cast v2, [Ljava/lang/String;

    .line 1989
    .line 1990
    aget-object v2, v2, v8

    .line 1991
    .line 1992
    iget-object v3, v1, LD1/p;->a0:Landroid/widget/TextView;

    .line 1993
    .line 1994
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1995
    .line 1996
    .line 1997
    iget-object v2, v0, LD1/q;->K:Ljava/lang/Object;

    .line 1998
    .line 1999
    check-cast v2, [Ljava/lang/String;

    .line 2000
    .line 2001
    aget-object v2, v2, v8

    .line 2002
    .line 2003
    iget-object v3, v1, LD1/p;->b0:Landroid/widget/TextView;

    .line 2004
    .line 2005
    if-nez v2, :cond_11

    .line 2006
    .line 2007
    const/16 v4, 0x8

    .line 2008
    .line 2009
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2010
    .line 2011
    .line 2012
    goto :goto_b

    .line 2013
    :cond_11
    const/16 v4, 0x8

    .line 2014
    .line 2015
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2016
    .line 2017
    .line 2018
    :goto_b
    iget-object v2, v0, LD1/q;->L:Ljava/lang/Object;

    .line 2019
    .line 2020
    check-cast v2, [Landroid/graphics/drawable/Drawable;

    .line 2021
    .line 2022
    aget-object v2, v2, v8

    .line 2023
    .line 2024
    iget-object v1, v1, LD1/p;->c0:Landroid/widget/ImageView;

    .line 2025
    .line 2026
    if-nez v2, :cond_12

    .line 2027
    .line 2028
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2029
    .line 2030
    .line 2031
    goto :goto_c

    .line 2032
    :cond_12
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2033
    .line 2034
    .line 2035
    :goto_c
    return-void

    .line 2036
    nop

    .line 2037
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Landroidx/recyclerview/widget/RecyclerView;I)LO1/c0;
    .locals 7

    .line 1
    iget p2, p0, LD1/q;->I:I

    .line 2
    .line 3
    iget-object v0, p0, LD1/q;->M:Ljava/lang/Object;

    .line 4
    .line 5
    const v1, 0x7f0b0156

    .line 6
    .line 7
    .line 8
    const v2, 0x7f0b0292

    .line 9
    .line 10
    .line 11
    const v3, 0x7f0b02a2

    .line 12
    .line 13
    .line 14
    const v4, 0x7f0b0553

    .line 15
    .line 16
    .line 17
    const v5, 0x7f0e00fa

    .line 18
    .line 19
    .line 20
    const/4 v6, 0x0

    .line 21
    packed-switch p2, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p2, v5, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    new-instance p2, Lb7/s0;

    .line 37
    .line 38
    invoke-direct {p2, p1}, Lb7/s0;-><init>(Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    return-object p2

    .line 42
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p2, v5, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    new-instance p2, Lb7/R0;

    .line 55
    .line 56
    invoke-direct {p2, p1}, LO1/c0;-><init>(Landroid/view/View;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Landroid/widget/TextView;

    .line 64
    .line 65
    iput-object v0, p2, Lb7/R0;->a0:Landroid/widget/TextView;

    .line 66
    .line 67
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Landroid/widget/ImageView;

    .line 72
    .line 73
    iput-object v0, p2, Lb7/R0;->b0:Landroid/widget/ImageView;

    .line 74
    .line 75
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Landroid/widget/ImageView;

    .line 80
    .line 81
    iput-object v0, p2, Lb7/R0;->c0:Landroid/widget/ImageView;

    .line 82
    .line 83
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    check-cast p1, Landroidx/cardview/widget/CardView;

    .line 88
    .line 89
    iput-object p1, p2, Lb7/R0;->d0:Landroidx/cardview/widget/CardView;

    .line 90
    .line 91
    return-object p2

    .line 92
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    const v1, 0x7f0e00f9

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2, v1, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    new-instance p2, Lb7/P0;

    .line 108
    .line 109
    check-cast v0, Lb7/S0;

    .line 110
    .line 111
    invoke-direct {p2, p1}, LO1/c0;-><init>(Landroid/view/View;)V

    .line 112
    .line 113
    .line 114
    const v1, 0x7f0b0510

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    check-cast v1, Landroid/widget/TextView;

    .line 122
    .line 123
    iput-object v1, p2, Lb7/P0;->a0:Landroid/widget/TextView;

    .line 124
    .line 125
    const v1, 0x7f0b0423

    .line 126
    .line 127
    .line 128
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 133
    .line 134
    iput-object p1, p2, Lb7/P0;->b0:Landroidx/recyclerview/widget/RecyclerView;

    .line 135
    .line 136
    new-instance v1, Lpe/hf/black20/util/ORPlayerLinearLayoutManager;

    .line 137
    .line 138
    invoke-virtual {v0}, LY/s;->l()Landroid/content/Context;

    .line 139
    .line 140
    .line 141
    invoke-direct {v1, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(LO1/L;)V

    .line 145
    .line 146
    .line 147
    return-object p2

    .line 148
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    invoke-virtual {p2, v5, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    new-instance p2, Lb7/H0;

    .line 161
    .line 162
    invoke-direct {p2, p1}, LO1/c0;-><init>(Landroid/view/View;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    check-cast v0, Landroid/widget/TextView;

    .line 170
    .line 171
    iput-object v0, p2, Lb7/H0;->a0:Landroid/widget/TextView;

    .line 172
    .line 173
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    check-cast v0, Landroid/widget/ImageView;

    .line 178
    .line 179
    iput-object v0, p2, Lb7/H0;->b0:Landroid/widget/ImageView;

    .line 180
    .line 181
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    check-cast v0, Landroid/widget/ImageView;

    .line 186
    .line 187
    iput-object v0, p2, Lb7/H0;->c0:Landroid/widget/ImageView;

    .line 188
    .line 189
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    check-cast p1, Landroidx/cardview/widget/CardView;

    .line 194
    .line 195
    iput-object p1, p2, Lb7/H0;->d0:Landroidx/cardview/widget/CardView;

    .line 196
    .line 197
    return-object p2

    .line 198
    :pswitch_3
    check-cast v0, LD1/v;

    .line 199
    .line 200
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 201
    .line 202
    .line 203
    move-result-object p2

    .line 204
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 205
    .line 206
    .line 207
    move-result-object p2

    .line 208
    const v1, 0x7f0e007e

    .line 209
    .line 210
    .line 211
    invoke-virtual {p2, v1, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    new-instance p2, LD1/p;

    .line 216
    .line 217
    invoke-direct {p2, v0, p1}, LD1/p;-><init>(LD1/v;Landroid/view/View;)V

    .line 218
    .line 219
    .line 220
    return-object p2

    .line 221
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final f(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, LD1/q;->K:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [Ljava/lang/String;

    .line 4
    .line 5
    aput-object p2, v0, p1

    .line 6
    .line 7
    return-void
.end method

.method public final g(I)Z
    .locals 4

    .line 1
    iget-object v0, p0, LD1/q;->M:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, LD1/v;

    .line 5
    .line 6
    iget-object v1, v1, LD1/v;->V0:Lm0/Y;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return v2

    .line 12
    :cond_0
    if-eqz p1, :cond_3

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    if-eq p1, v1, :cond_1

    .line 16
    .line 17
    return v1

    .line 18
    :cond_1
    move-object p1, v0

    .line 19
    check-cast p1, LD1/v;

    .line 20
    .line 21
    iget-object p1, p1, LD1/v;->V0:Lm0/Y;

    .line 22
    .line 23
    const/16 v3, 0x1e

    .line 24
    .line 25
    check-cast p1, Lm0/f;

    .line 26
    .line 27
    invoke-virtual {p1, v3}, Lm0/f;->c(I)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    check-cast v0, LD1/v;

    .line 34
    .line 35
    iget-object p1, v0, LD1/v;->V0:Lm0/Y;

    .line 36
    .line 37
    const/16 v0, 0x1d

    .line 38
    .line 39
    check-cast p1, Lm0/f;

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Lm0/f;->c(I)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    const/4 v2, 0x1

    .line 48
    :cond_2
    return v2

    .line 49
    :cond_3
    check-cast v0, LD1/v;

    .line 50
    .line 51
    iget-object p1, v0, LD1/v;->V0:Lm0/Y;

    .line 52
    .line 53
    const/16 v0, 0xd

    .line 54
    .line 55
    check-cast p1, Lm0/f;

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Lm0/f;->c(I)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    return p1
.end method
