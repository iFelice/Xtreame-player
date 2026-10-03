.class public final Lb7/z1;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Landroid/content/Context;

.field public final c:Ljava/util/ArrayList;

.field public d:Ljava/util/HashMap;

.field public e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lb7/A1;Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lb7/z1;->a:I

    .line 2
    iput-object p1, p0, Lb7/z1;->f:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lb7/z1;->d:Ljava/util/HashMap;

    .line 4
    const-string p1, ""

    iput-object p1, p0, Lb7/z1;->e:Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Lb7/z1;->b:Landroid/content/Context;

    .line 6
    iput-object p3, p0, Lb7/z1;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lpe/hf/black20/UsersHistoryActivity;Lpe/hf/black20/UsersHistoryActivity;Ljava/util/ArrayList;)V
    .locals 1

    .line 7
    const/4 v0, 0x1

    iput v0, p0, Lb7/z1;->a:I

    .line 8
    iput-object p1, p0, Lb7/z1;->f:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 9
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lb7/z1;->d:Ljava/util/HashMap;

    .line 10
    iput-object p2, p0, Lb7/z1;->b:Landroid/content/Context;

    .line 11
    iput-object p3, p0, Lb7/z1;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .line 1
    iget v0, p0, Lb7/z1;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lb7/z1;->c:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0

    .line 13
    :pswitch_0
    iget-object v0, p0, Lb7/z1;->c:Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    iget v3, v0, Lb7/z1;->a:I

    .line 8
    .line 9
    const-string v4, "name"

    .line 10
    .line 11
    const-string v5, "layout_inflater"

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    packed-switch v3, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    iget-object v3, v0, Lb7/z1;->b:Landroid/content/Context;

    .line 18
    .line 19
    const-string v7, "pe.hf.black20"

    .line 20
    .line 21
    invoke-virtual {v3, v7, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iput-object v3, v0, Lb7/z1;->e:Ljava/lang/Object;

    .line 26
    .line 27
    iget-object v3, v0, Lb7/z1;->b:Landroid/content/Context;

    .line 28
    .line 29
    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Landroid/view/LayoutInflater;

    .line 34
    .line 35
    const v5, 0x7f0e0056

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v5, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    iget-object v3, v0, Lb7/z1;->c:Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Ljava/util/HashMap;

    .line 49
    .line 50
    iput-object v1, v0, Lb7/z1;->d:Ljava/util/HashMap;

    .line 51
    .line 52
    const v1, 0x7f0b0554

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Landroid/widget/TextView;

    .line 60
    .line 61
    const v3, 0x7f0b058b

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    check-cast v3, Landroid/widget/TextView;

    .line 69
    .line 70
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    const-string v6, "ORT_PROFILE"

    .line 75
    .line 76
    const-string v7, "Default (XC)"

    .line 77
    .line 78
    invoke-virtual {v5, v6, v7}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    iget-object v6, v0, Lb7/z1;->d:Ljava/util/HashMap;

    .line 83
    .line 84
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    const-string v6, "portal5_name"

    .line 93
    .line 94
    const-string v7, "PANEL 5"

    .line 95
    .line 96
    const-string v8, "portal4_name"

    .line 97
    .line 98
    const-string v9, "PANEL 4"

    .line 99
    .line 100
    const-string v10, "portal3_name"

    .line 101
    .line 102
    const-string v11, "PANEL 3"

    .line 103
    .line 104
    const-string v12, "portal2_name"

    .line 105
    .line 106
    const-string v13, "PANEL 2"

    .line 107
    .line 108
    const-string v14, "portal_name"

    .line 109
    .line 110
    const-string v15, "PANEL 1"

    .line 111
    .line 112
    move-object/from16 p2, v2

    .line 113
    .line 114
    const/4 v2, 0x0

    .line 115
    if-eqz v5, :cond_5

    .line 116
    .line 117
    iget-object v5, v0, Lb7/z1;->d:Ljava/util/HashMap;

    .line 118
    .line 119
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    check-cast v5, Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {v5, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 126
    .line 127
    .line 128
    move-result v5

    .line 129
    const-string v15, " (In Use)"

    .line 130
    .line 131
    if-eqz v5, :cond_0

    .line 132
    .line 133
    new-instance v4, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    iget-object v5, v0, Lb7/z1;->e:Ljava/lang/Object;

    .line 139
    .line 140
    check-cast v5, Landroid/content/SharedPreferences;

    .line 141
    .line 142
    invoke-interface {v5, v14, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    .line 158
    .line 159
    goto/16 :goto_0

    .line 160
    .line 161
    :cond_0
    iget-object v5, v0, Lb7/z1;->d:Ljava/util/HashMap;

    .line 162
    .line 163
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v5

    .line 167
    check-cast v5, Ljava/lang/String;

    .line 168
    .line 169
    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 170
    .line 171
    .line 172
    move-result v5

    .line 173
    if-eqz v5, :cond_1

    .line 174
    .line 175
    new-instance v4, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    .line 179
    .line 180
    iget-object v5, v0, Lb7/z1;->e:Ljava/lang/Object;

    .line 181
    .line 182
    check-cast v5, Landroid/content/SharedPreferences;

    .line 183
    .line 184
    invoke-interface {v5, v12, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    .line 200
    .line 201
    goto/16 :goto_0

    .line 202
    .line 203
    :cond_1
    iget-object v5, v0, Lb7/z1;->d:Ljava/util/HashMap;

    .line 204
    .line 205
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v5

    .line 209
    check-cast v5, Ljava/lang/String;

    .line 210
    .line 211
    invoke-virtual {v5, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 212
    .line 213
    .line 214
    move-result v5

    .line 215
    if-eqz v5, :cond_2

    .line 216
    .line 217
    new-instance v4, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .line 221
    .line 222
    iget-object v5, v0, Lb7/z1;->e:Ljava/lang/Object;

    .line 223
    .line 224
    check-cast v5, Landroid/content/SharedPreferences;

    .line 225
    .line 226
    invoke-interface {v5, v10, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    .line 242
    .line 243
    goto :goto_0

    .line 244
    :cond_2
    iget-object v5, v0, Lb7/z1;->d:Ljava/util/HashMap;

    .line 245
    .line 246
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v5

    .line 250
    check-cast v5, Ljava/lang/String;

    .line 251
    .line 252
    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 253
    .line 254
    .line 255
    move-result v5

    .line 256
    if-eqz v5, :cond_3

    .line 257
    .line 258
    new-instance v4, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    .line 262
    .line 263
    iget-object v5, v0, Lb7/z1;->e:Ljava/lang/Object;

    .line 264
    .line 265
    check-cast v5, Landroid/content/SharedPreferences;

    .line 266
    .line 267
    invoke-interface {v5, v8, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v2

    .line 271
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v2

    .line 281
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    .line 283
    .line 284
    goto :goto_0

    .line 285
    :cond_3
    iget-object v5, v0, Lb7/z1;->d:Ljava/util/HashMap;

    .line 286
    .line 287
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v5

    .line 291
    check-cast v5, Ljava/lang/String;

    .line 292
    .line 293
    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 294
    .line 295
    .line 296
    move-result v5

    .line 297
    if-eqz v5, :cond_4

    .line 298
    .line 299
    new-instance v4, Ljava/lang/StringBuilder;

    .line 300
    .line 301
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    .line 303
    .line 304
    iget-object v5, v0, Lb7/z1;->e:Ljava/lang/Object;

    .line 305
    .line 306
    check-cast v5, Landroid/content/SharedPreferences;

    .line 307
    .line 308
    invoke-interface {v5, v6, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    .line 314
    .line 315
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v2

    .line 322
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    .line 324
    .line 325
    goto :goto_0

    .line 326
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 327
    .line 328
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 329
    .line 330
    .line 331
    iget-object v5, v0, Lb7/z1;->d:Ljava/util/HashMap;

    .line 332
    .line 333
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v4

    .line 337
    check-cast v4, Ljava/lang/String;

    .line 338
    .line 339
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v2

    .line 349
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    .line 351
    .line 352
    :goto_0
    const v2, -0xff0100

    .line 353
    .line 354
    .line 355
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 356
    .line 357
    .line 358
    goto/16 :goto_1

    .line 359
    .line 360
    :cond_5
    iget-object v5, v0, Lb7/z1;->d:Ljava/util/HashMap;

    .line 361
    .line 362
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v5

    .line 366
    check-cast v5, Ljava/lang/String;

    .line 367
    .line 368
    invoke-virtual {v5, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 369
    .line 370
    .line 371
    move-result v5

    .line 372
    if-eqz v5, :cond_6

    .line 373
    .line 374
    iget-object v4, v0, Lb7/z1;->e:Ljava/lang/Object;

    .line 375
    .line 376
    check-cast v4, Landroid/content/SharedPreferences;

    .line 377
    .line 378
    invoke-interface {v4, v14, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v2

    .line 382
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    .line 384
    .line 385
    goto/16 :goto_1

    .line 386
    .line 387
    :cond_6
    iget-object v5, v0, Lb7/z1;->d:Ljava/util/HashMap;

    .line 388
    .line 389
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object v5

    .line 393
    check-cast v5, Ljava/lang/String;

    .line 394
    .line 395
    invoke-virtual {v5, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 396
    .line 397
    .line 398
    move-result v5

    .line 399
    if-eqz v5, :cond_7

    .line 400
    .line 401
    iget-object v4, v0, Lb7/z1;->e:Ljava/lang/Object;

    .line 402
    .line 403
    check-cast v4, Landroid/content/SharedPreferences;

    .line 404
    .line 405
    invoke-interface {v4, v12, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v2

    .line 409
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    .line 411
    .line 412
    goto :goto_1

    .line 413
    :cond_7
    iget-object v5, v0, Lb7/z1;->d:Ljava/util/HashMap;

    .line 414
    .line 415
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    move-result-object v5

    .line 419
    check-cast v5, Ljava/lang/String;

    .line 420
    .line 421
    invoke-virtual {v5, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 422
    .line 423
    .line 424
    move-result v5

    .line 425
    if-eqz v5, :cond_8

    .line 426
    .line 427
    iget-object v4, v0, Lb7/z1;->e:Ljava/lang/Object;

    .line 428
    .line 429
    check-cast v4, Landroid/content/SharedPreferences;

    .line 430
    .line 431
    invoke-interface {v4, v10, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v2

    .line 435
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    .line 437
    .line 438
    goto :goto_1

    .line 439
    :cond_8
    iget-object v5, v0, Lb7/z1;->d:Ljava/util/HashMap;

    .line 440
    .line 441
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    .line 443
    .line 444
    move-result-object v5

    .line 445
    check-cast v5, Ljava/lang/String;

    .line 446
    .line 447
    invoke-virtual {v5, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 448
    .line 449
    .line 450
    move-result v5

    .line 451
    if-eqz v5, :cond_9

    .line 452
    .line 453
    iget-object v4, v0, Lb7/z1;->e:Ljava/lang/Object;

    .line 454
    .line 455
    check-cast v4, Landroid/content/SharedPreferences;

    .line 456
    .line 457
    invoke-interface {v4, v8, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v2

    .line 461
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 462
    .line 463
    .line 464
    goto :goto_1

    .line 465
    :cond_9
    iget-object v5, v0, Lb7/z1;->d:Ljava/util/HashMap;

    .line 466
    .line 467
    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    .line 469
    .line 470
    move-result-object v5

    .line 471
    check-cast v5, Ljava/lang/String;

    .line 472
    .line 473
    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 474
    .line 475
    .line 476
    move-result v5

    .line 477
    if-eqz v5, :cond_a

    .line 478
    .line 479
    iget-object v4, v0, Lb7/z1;->e:Ljava/lang/Object;

    .line 480
    .line 481
    check-cast v4, Landroid/content/SharedPreferences;

    .line 482
    .line 483
    invoke-interface {v4, v6, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v2

    .line 487
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 488
    .line 489
    .line 490
    goto :goto_1

    .line 491
    :cond_a
    iget-object v2, v0, Lb7/z1;->d:Ljava/util/HashMap;

    .line 492
    .line 493
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    .line 495
    .line 496
    move-result-object v2

    .line 497
    check-cast v2, Ljava/lang/CharSequence;

    .line 498
    .line 499
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    .line 501
    .line 502
    :goto_1
    iget-object v1, v0, Lb7/z1;->d:Ljava/util/HashMap;

    .line 503
    .line 504
    const-string v2, "username"

    .line 505
    .line 506
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    .line 508
    .line 509
    move-result-object v1

    .line 510
    check-cast v1, Ljava/lang/String;

    .line 511
    .line 512
    const-string v4, "not_setup"

    .line 513
    .line 514
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 515
    .line 516
    .line 517
    move-result v1

    .line 518
    const v4, 0x7f13022e

    .line 519
    .line 520
    .line 521
    if-nez v1, :cond_c

    .line 522
    .line 523
    iget-object v1, v0, Lb7/z1;->d:Ljava/util/HashMap;

    .line 524
    .line 525
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    .line 527
    .line 528
    move-result-object v1

    .line 529
    if-nez v1, :cond_b

    .line 530
    .line 531
    goto :goto_2

    .line 532
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    .line 533
    .line 534
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 535
    .line 536
    .line 537
    iget-object v5, v0, Lb7/z1;->b:Landroid/content/Context;

    .line 538
    .line 539
    invoke-virtual {v5, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object v4

    .line 543
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    .line 545
    .line 546
    const-string v4, ": "

    .line 547
    .line 548
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    .line 550
    .line 551
    iget-object v4, v0, Lb7/z1;->d:Ljava/util/HashMap;

    .line 552
    .line 553
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    .line 555
    .line 556
    move-result-object v2

    .line 557
    check-cast v2, Ljava/lang/String;

    .line 558
    .line 559
    invoke-static {v2}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v2

    .line 563
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    .line 565
    .line 566
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 567
    .line 568
    .line 569
    move-result-object v1

    .line 570
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 571
    .line 572
    .line 573
    goto :goto_3

    .line 574
    :cond_c
    :goto_2
    const-string v1, "ORT_WHICH_PANEL"

    .line 575
    .line 576
    const-string v2, "xtreamcodes"

    .line 577
    .line 578
    const-string v5, "m3u"

    .line 579
    .line 580
    invoke-static {v1, v2, v5}, Lcom/google/protobuf/U2;->z(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 581
    .line 582
    .line 583
    move-result v1

    .line 584
    if-eqz v1, :cond_d

    .line 585
    .line 586
    new-instance v1, Ljava/lang/StringBuilder;

    .line 587
    .line 588
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 589
    .line 590
    .line 591
    iget-object v2, v0, Lb7/z1;->b:Landroid/content/Context;

    .line 592
    .line 593
    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 594
    .line 595
    .line 596
    move-result-object v2

    .line 597
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    .line 599
    .line 600
    const-string v2, ": m3u"

    .line 601
    .line 602
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    .line 604
    .line 605
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 606
    .line 607
    .line 608
    move-result-object v1

    .line 609
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 610
    .line 611
    .line 612
    goto :goto_3

    .line 613
    :cond_d
    const-string v1, "Account not ready"

    .line 614
    .line 615
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 616
    .line 617
    .line 618
    :goto_3
    sget-object v1, Lpe/hf/black20/UsersHistoryActivity;->Z:Landroid/widget/ListView;

    .line 619
    .line 620
    new-instance v2, Lb7/f;

    .line 621
    .line 622
    const/16 v3, 0x12

    .line 623
    .line 624
    invoke-direct {v2, v0, v3}, Lb7/f;-><init>(Ljava/lang/Object;I)V

    .line 625
    .line 626
    .line 627
    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 628
    .line 629
    .line 630
    return-object p2

    .line 631
    :pswitch_0
    iget-object v3, v0, Lb7/z1;->b:Landroid/content/Context;

    .line 632
    .line 633
    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 634
    .line 635
    .line 636
    move-result-object v3

    .line 637
    check-cast v3, Landroid/view/LayoutInflater;

    .line 638
    .line 639
    const v5, 0x7f0e0085

    .line 640
    .line 641
    .line 642
    invoke-virtual {v3, v5, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 643
    .line 644
    .line 645
    move-result-object v2

    .line 646
    iget-object v3, v0, Lb7/z1;->c:Ljava/util/ArrayList;

    .line 647
    .line 648
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 649
    .line 650
    .line 651
    move-result-object v1

    .line 652
    check-cast v1, Ljava/util/HashMap;

    .line 653
    .line 654
    iput-object v1, v0, Lb7/z1;->d:Ljava/util/HashMap;

    .line 655
    .line 656
    const v1, 0x7f0b051c

    .line 657
    .line 658
    .line 659
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 660
    .line 661
    .line 662
    move-result-object v1

    .line 663
    check-cast v1, Landroid/widget/TextView;

    .line 664
    .line 665
    const v3, 0x7f0b0539

    .line 666
    .line 667
    .line 668
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 669
    .line 670
    .line 671
    move-result-object v3

    .line 672
    check-cast v3, Landroid/widget/TextView;

    .line 673
    .line 674
    const v5, 0x7f0b0538

    .line 675
    .line 676
    .line 677
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 678
    .line 679
    .line 680
    move-result-object v5

    .line 681
    check-cast v5, Landroid/widget/TextView;

    .line 682
    .line 683
    const v7, 0x7f0b0533

    .line 684
    .line 685
    .line 686
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 687
    .line 688
    .line 689
    move-result-object v7

    .line 690
    check-cast v7, Landroid/widget/TextView;

    .line 691
    .line 692
    const v8, 0x7f0b028d

    .line 693
    .line 694
    .line 695
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 696
    .line 697
    .line 698
    move-result-object v8

    .line 699
    check-cast v8, Landroid/widget/ImageView;

    .line 700
    .line 701
    iget-object v9, v0, Lb7/z1;->d:Ljava/util/HashMap;

    .line 702
    .line 703
    invoke-virtual {v9, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    .line 705
    .line 706
    move-result-object v4

    .line 707
    check-cast v4, Ljava/lang/String;

    .line 708
    .line 709
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 710
    .line 711
    .line 712
    move-result-object v4

    .line 713
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 714
    .line 715
    .line 716
    iget-object v1, v0, Lb7/z1;->d:Ljava/util/HashMap;

    .line 717
    .line 718
    const-string v4, "title"

    .line 719
    .line 720
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    .line 722
    .line 723
    move-result-object v1

    .line 724
    check-cast v1, Ljava/lang/CharSequence;

    .line 725
    .line 726
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 727
    .line 728
    .line 729
    iget-object v1, v0, Lb7/z1;->d:Ljava/util/HashMap;

    .line 730
    .line 731
    const-string v3, "pr_time"

    .line 732
    .line 733
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    .line 735
    .line 736
    move-result-object v1

    .line 737
    check-cast v1, Ljava/lang/CharSequence;

    .line 738
    .line 739
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 740
    .line 741
    .line 742
    iget-object v1, v0, Lb7/z1;->d:Ljava/util/HashMap;

    .line 743
    .line 744
    const-string v3, "description"

    .line 745
    .line 746
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    .line 748
    .line 749
    move-result-object v1

    .line 750
    check-cast v1, Ljava/lang/CharSequence;

    .line 751
    .line 752
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 753
    .line 754
    .line 755
    iget-object v1, v0, Lb7/z1;->d:Ljava/util/HashMap;

    .line 756
    .line 757
    const-string v3, "stream_icon"

    .line 758
    .line 759
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    .line 761
    .line 762
    move-result-object v1

    .line 763
    check-cast v1, Ljava/lang/String;

    .line 764
    .line 765
    const-string v4, ""

    .line 766
    .line 767
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 768
    .line 769
    .line 770
    move-result v1

    .line 771
    iget-object v5, v0, Lb7/z1;->f:Ljava/lang/Object;

    .line 772
    .line 773
    const v7, 0x7f08086d

    .line 774
    .line 775
    .line 776
    if-eqz v1, :cond_e

    .line 777
    .line 778
    check-cast v5, Lb7/A1;

    .line 779
    .line 780
    invoke-virtual {v5}, LY/s;->l()Landroid/content/Context;

    .line 781
    .line 782
    .line 783
    move-result-object v1

    .line 784
    invoke-static {v1}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 785
    .line 786
    .line 787
    move-result-object v1

    .line 788
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 789
    .line 790
    .line 791
    move-result-object v3

    .line 792
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/n;->m(Ljava/lang/Integer;)Lcom/bumptech/glide/l;

    .line 793
    .line 794
    .line 795
    move-result-object v1

    .line 796
    invoke-virtual {v1}, LL2/a;->g()LL2/a;

    .line 797
    .line 798
    .line 799
    move-result-object v1

    .line 800
    check-cast v1, Lcom/bumptech/glide/l;

    .line 801
    .line 802
    invoke-virtual {v1, v8}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V

    .line 803
    .line 804
    .line 805
    goto/16 :goto_4

    .line 806
    .line 807
    :cond_e
    iget-object v1, v0, Lb7/z1;->d:Ljava/util/HashMap;

    .line 808
    .line 809
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    .line 811
    .line 812
    move-result-object v1

    .line 813
    check-cast v1, Ljava/lang/String;

    .line 814
    .line 815
    iput-object v1, v0, Lb7/z1;->e:Ljava/lang/Object;

    .line 816
    .line 817
    const-string v3, " "

    .line 818
    .line 819
    const-string v9, "%20"

    .line 820
    .line 821
    invoke-virtual {v1, v3, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 822
    .line 823
    .line 824
    move-result-object v1

    .line 825
    iput-object v1, v0, Lb7/z1;->e:Ljava/lang/Object;

    .line 826
    .line 827
    const-string v3, "\\\\"

    .line 828
    .line 829
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 830
    .line 831
    .line 832
    move-result-object v1

    .line 833
    iput-object v1, v0, Lb7/z1;->e:Ljava/lang/Object;

    .line 834
    .line 835
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 836
    .line 837
    .line 838
    move-result-object v3

    .line 839
    const-string v9, "ORT_PROFILE_SERVER"

    .line 840
    .line 841
    invoke-virtual {v3, v9, v4}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 842
    .line 843
    .line 844
    move-result-object v3

    .line 845
    invoke-static {v3}, Lpe/hf/black20/encryption/Encrypt;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 846
    .line 847
    .line 848
    move-result-object v3

    .line 849
    const-string v4, "http://:"

    .line 850
    .line 851
    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 852
    .line 853
    .line 854
    move-result-object v1

    .line 855
    iput-object v1, v0, Lb7/z1;->e:Ljava/lang/Object;

    .line 856
    .line 857
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 858
    .line 859
    .line 860
    move-result-object v1

    .line 861
    const-string v3, "ORT_isDemo"

    .line 862
    .line 863
    invoke-virtual {v1, v3, v6}, LQ5/a;->a(Ljava/lang/String;Z)Z

    .line 864
    .line 865
    .line 866
    move-result v1

    .line 867
    if-nez v1, :cond_f

    .line 868
    .line 869
    :try_start_0
    check-cast v5, Lb7/A1;

    .line 870
    .line 871
    invoke-virtual {v5}, LY/s;->l()Landroid/content/Context;

    .line 872
    .line 873
    .line 874
    move-result-object v1

    .line 875
    invoke-static {v1}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 876
    .line 877
    .line 878
    move-result-object v1

    .line 879
    iget-object v3, v0, Lb7/z1;->e:Ljava/lang/Object;

    .line 880
    .line 881
    check-cast v3, Ljava/lang/String;

    .line 882
    .line 883
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/n;->n(Ljava/lang/String;)Lcom/bumptech/glide/l;

    .line 884
    .line 885
    .line 886
    move-result-object v1

    .line 887
    invoke-virtual {v1}, LL2/a;->g()LL2/a;

    .line 888
    .line 889
    .line 890
    move-result-object v1

    .line 891
    check-cast v1, Lcom/bumptech/glide/l;

    .line 892
    .line 893
    invoke-virtual {v1, v7}, LL2/a;->f(I)LL2/a;

    .line 894
    .line 895
    .line 896
    move-result-object v1

    .line 897
    check-cast v1, Lcom/bumptech/glide/l;

    .line 898
    .line 899
    invoke-virtual {v1, v8}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 900
    .line 901
    .line 902
    goto :goto_4

    .line 903
    :cond_f
    check-cast v5, Lb7/A1;

    .line 904
    .line 905
    invoke-virtual {v5}, LY/s;->l()Landroid/content/Context;

    .line 906
    .line 907
    .line 908
    move-result-object v1

    .line 909
    invoke-static {v1}, Lcom/bumptech/glide/b;->d(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 910
    .line 911
    .line 912
    move-result-object v1

    .line 913
    iget-object v3, v0, Lb7/z1;->e:Ljava/lang/Object;

    .line 914
    .line 915
    check-cast v3, Ljava/lang/String;

    .line 916
    .line 917
    invoke-virtual {v1, v3}, Lcom/bumptech/glide/n;->n(Ljava/lang/String;)Lcom/bumptech/glide/l;

    .line 918
    .line 919
    .line 920
    move-result-object v1

    .line 921
    const/4 v3, 0x6

    .line 922
    invoke-virtual {v1, v3, v3}, LL2/a;->l(II)LL2/a;

    .line 923
    .line 924
    .line 925
    move-result-object v1

    .line 926
    check-cast v1, Lcom/bumptech/glide/l;

    .line 927
    .line 928
    invoke-virtual {v1}, LL2/a;->b()LL2/a;

    .line 929
    .line 930
    .line 931
    move-result-object v1

    .line 932
    check-cast v1, Lcom/bumptech/glide/l;

    .line 933
    .line 934
    invoke-virtual {v1, v8}, Lcom/bumptech/glide/l;->F(Landroid/widget/ImageView;)V

    .line 935
    .line 936
    .line 937
    :catch_0
    :goto_4
    return-object v2

    .line 938
    nop

    .line 939
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
