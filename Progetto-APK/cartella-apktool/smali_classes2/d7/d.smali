.class public final Ld7/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lb7/G;


# direct methods
.method public synthetic constructor <init>(Lb7/G;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Ld7/d;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Ld7/d;->H:Lb7/G;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Ld7/d;->G:I

    .line 4
    .line 5
    iget-object v2, v0, Ld7/d;->H:Lb7/G;

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    packed-switch v1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v4, "::"

    .line 20
    .line 21
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/4 v4, 0x0

    .line 26
    aget-object v5, v1, v4

    .line 27
    .line 28
    aget-object v15, v1, v3

    .line 29
    .line 30
    invoke-static {v15}, Lb7/G;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v10

    .line 34
    const/4 v6, 0x2

    .line 35
    aget-object v1, v1, v6

    .line 36
    .line 37
    iget-object v6, v2, Lb7/G;->b:Landroid/content/Context;

    .line 38
    .line 39
    const-string v7, "pe.hf.black20"

    .line 40
    .line 41
    invoke-virtual {v6, v7, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    const-string v8, "ORT_PROFILE_ID"

    .line 50
    .line 51
    const-string v9, ""

    .line 52
    .line 53
    invoke-virtual {v7, v8, v9}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    sget-object v11, Lpe/hf/black20/epg/EPGActivityXMLTV;->v0:Ljava/lang/String;

    .line 58
    .line 59
    sget-object v12, Lpe/hf/black20/epg/EPGActivityXMLTV;->u0:Ljava/lang/String;

    .line 60
    .line 61
    new-instance v8, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .line 65
    .line 66
    sget-object v8, Lpe/hf/black20/epg/EPGActivityXMLTV;->C0:Lr0/b;

    .line 67
    .line 68
    const-string v13, "no-title"

    .line 69
    .line 70
    invoke-virtual {v8, v5, v1, v13}, Lr0/b;->O(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-lez v5, :cond_0

    .line 79
    .line 80
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    check-cast v5, Ld7/g;

    .line 85
    .line 86
    iget-object v5, v5, Ld7/g;->a:Ljava/lang/String;

    .line 87
    .line 88
    invoke-static {v5}, Lpe/hf/black20/util/Methods;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v8

    .line 96
    check-cast v8, Ld7/g;

    .line 97
    .line 98
    iget-object v8, v8, Ld7/g;->b:Ljava/lang/String;

    .line 99
    .line 100
    invoke-static {v8}, Lpe/hf/black20/util/Methods;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v13

    .line 108
    check-cast v13, Ld7/g;

    .line 109
    .line 110
    iget-object v13, v13, Ld7/g;->d:Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    check-cast v1, Ld7/g;

    .line 117
    .line 118
    iget-object v1, v1, Ld7/g;->e:Ljava/lang/String;

    .line 119
    .line 120
    move-object v14, v13

    .line 121
    move-object v13, v1

    .line 122
    move-object v1, v8

    .line 123
    goto :goto_0

    .line 124
    :cond_0
    move-object v1, v9

    .line 125
    move-object v5, v1

    .line 126
    move-object v13, v5

    .line 127
    move-object v14, v13

    .line 128
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    sget-object v3, Lpe/hf/black20/epg/EPGActivityXMLTV;->w0:Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string v3, "/live/"

    .line 139
    .line 140
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    sget-object v3, Lpe/hf/black20/epg/EPGActivityXMLTV;->x0:Ljava/lang/String;

    .line 144
    .line 145
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v3, "/"

    .line 149
    .line 150
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    sget-object v4, Lpe/hf/black20/epg/EPGActivityXMLTV;->y0:Ljava/lang/String;

    .line 154
    .line 155
    invoke-static {v8, v4, v3}, La/r;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    sget-object v4, Lb7/G;->l:Ljava/lang/String;

    .line 160
    .line 161
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v4

    .line 165
    const/4 v9, 0x0

    .line 166
    if-eqz v4, :cond_1

    .line 167
    .line 168
    new-instance v4, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    const-string v3, "."

    .line 180
    .line 181
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const-string v3, "streamFormat"

    .line 185
    .line 186
    invoke-static {v6, v3, v9, v4}, Lcom/google/protobuf/U2;->h(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    goto :goto_1

    .line 191
    :cond_1
    sget-object v3, Lb7/G;->l:Ljava/lang/String;

    .line 192
    .line 193
    :goto_1
    invoke-static {v5}, Lpe/hf/black20/util/Methods;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v4

    .line 197
    invoke-static {v4}, Lpe/hf/black20/util/Methods;->u(Ljava/lang/String;)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    invoke-static {v1}, Lpe/hf/black20/util/Methods;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v6

    .line 205
    invoke-static {v6}, Lpe/hf/black20/util/Methods;->u(Ljava/lang/String;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v16

    .line 209
    sget-object v17, Lb7/G;->l:Ljava/lang/String;

    .line 210
    .line 211
    const-string v18, "new"

    .line 212
    .line 213
    move-object v6, v7

    .line 214
    move-object v7, v15

    .line 215
    move-object v8, v14

    .line 216
    move-object v0, v9

    .line 217
    move-object v9, v13

    .line 218
    move-object v13, v4

    .line 219
    move-object v4, v14

    .line 220
    move-object/from16 v14, v16

    .line 221
    .line 222
    move-object v0, v15

    .line 223
    move-object/from16 v15, v18

    .line 224
    .line 225
    move-object/from16 v16, v17

    .line 226
    .line 227
    filled-new-array/range {v6 .. v16}, [Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v6

    .line 231
    filled-new-array {v0, v4, v3, v5, v1}, [Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    iget-object v1, v2, Lb7/G;->b:Landroid/content/Context;

    .line 236
    .line 237
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    const v3, 0x7f0e0127

    .line 242
    .line 243
    .line 244
    const/4 v4, 0x0

    .line 245
    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    new-instance v3, Landroid/app/AlertDialog$Builder;

    .line 250
    .line 251
    iget-object v4, v2, Lb7/G;->b:Landroid/content/Context;

    .line 252
    .line 253
    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 257
    .line 258
    .line 259
    move-result-object v3

    .line 260
    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 261
    .line 262
    .line 263
    move-result-object v4

    .line 264
    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    .line 265
    .line 266
    const-string v7, "#99000000"

    .line 267
    .line 268
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 269
    .line 270
    .line 271
    move-result v7

    .line 272
    invoke-direct {v5, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 273
    .line 274
    .line 275
    const v7, 0x7f0b0119

    .line 276
    .line 277
    .line 278
    invoke-static {v4, v5, v3, v1, v7}, LA0/O;->w(Landroid/view/Window;Landroid/graphics/drawable/ColorDrawable;Landroid/app/AlertDialog;Landroid/view/View;I)Landroid/view/View;

    .line 279
    .line 280
    .line 281
    move-result-object v4

    .line 282
    check-cast v4, Landroid/widget/Button;

    .line 283
    .line 284
    const v5, 0x7f0b0110

    .line 285
    .line 286
    .line 287
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 288
    .line 289
    .line 290
    move-result-object v5

    .line 291
    check-cast v5, Landroid/widget/Button;

    .line 292
    .line 293
    const v7, 0x7f0b00b0

    .line 294
    .line 295
    .line 296
    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    check-cast v1, Landroid/widget/Button;

    .line 301
    .line 302
    new-instance v7, Ld7/f;

    .line 303
    .line 304
    const/4 v8, 0x0

    .line 305
    invoke-direct {v7, v2, v0, v3, v8}, Ld7/f;-><init>(Lb7/G;[Ljava/lang/String;Landroid/app/AlertDialog;I)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    .line 310
    .line 311
    new-instance v0, Ld7/f;

    .line 312
    .line 313
    const/4 v4, 0x1

    .line 314
    invoke-direct {v0, v2, v6, v3, v4}, Ld7/f;-><init>(Lb7/G;[Ljava/lang/String;Landroid/app/AlertDialog;I)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    .line 319
    .line 320
    new-instance v0, Ld7/b;

    .line 321
    .line 322
    invoke-direct {v0, v3, v8}, Ld7/b;-><init>(Landroid/app/AlertDialog;I)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 329
    .line 330
    .line 331
    return v4

    .line 332
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 333
    .line 334
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 335
    .line 336
    .line 337
    iget-object v1, v2, Lb7/G;->b:Landroid/content/Context;

    .line 338
    .line 339
    const v3, 0x7f130153

    .line 340
    .line 341
    .line 342
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    const-string v1, ", "

    .line 350
    .line 351
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    iget-object v1, v2, Lb7/G;->b:Landroid/content/Context;

    .line 355
    .line 356
    const v3, 0x7f13019a

    .line 357
    .line 358
    .line 359
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v1

    .line 363
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    invoke-virtual {v2, v0}, Lb7/G;->b(Ljava/lang/String;)V

    .line 371
    .line 372
    .line 373
    const/4 v0, 0x1

    .line 374
    return v0

    .line 375
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
