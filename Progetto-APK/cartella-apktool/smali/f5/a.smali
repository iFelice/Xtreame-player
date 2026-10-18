.class public final synthetic Lf5/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lf5/a;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Lf5/a;->H:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .line 1
    iget v0, p0, Lf5/a;->G:I

    .line 2
    .line 3
    const-string v1, "XCIPTV_TAG"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    iget-object v5, p0, Lf5/a;->H:Ljava/lang/Object;

    .line 9
    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    check-cast v5, Ld7/a;

    .line 14
    .line 15
    iget-object v0, v5, Ld7/a;->H:Lpe/hf/black20/epg/EPGActivityXMLTV;

    .line 16
    .line 17
    iget-object v1, v0, Lpe/hf/black20/epg/EPGActivityXMLTV;->J:Ljava/util/ArrayList;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-lez v1, :cond_0

    .line 26
    .line 27
    sget-object v1, Lpe/hf/black20/epg/EPGActivityXMLTV;->j0:Landroid/widget/ListView;

    .line 28
    .line 29
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 30
    .line 31
    .line 32
    sget-object v1, Lpe/hf/black20/epg/EPGActivityXMLTV;->k0:Landroid/widget/ListView;

    .line 33
    .line 34
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 35
    .line 36
    .line 37
    new-instance v1, Lb7/k1;

    .line 38
    .line 39
    iget-object v3, v0, Lpe/hf/black20/epg/EPGActivityXMLTV;->L:Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v1, v2, v0, v3}, Lb7/k1;-><init>(ILandroid/app/Activity;Ljava/util/ArrayList;)V

    .line 42
    .line 43
    .line 44
    sget-object v2, Lpe/hf/black20/epg/EPGActivityXMLTV;->j0:Landroid/widget/ListView;

    .line 45
    .line 46
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 47
    .line 48
    .line 49
    sget-object v1, Lpe/hf/black20/epg/EPGActivityXMLTV;->j0:Landroid/widget/ListView;

    .line 50
    .line 51
    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setSelection(I)V

    .line 52
    .line 53
    .line 54
    new-instance v1, Lb7/G;

    .line 55
    .line 56
    iget-object v2, v0, Lpe/hf/black20/epg/EPGActivityXMLTV;->L:Ljava/util/ArrayList;

    .line 57
    .line 58
    iget-object v3, v0, Lpe/hf/black20/epg/EPGActivityXMLTV;->d0:Ljava/util/ArrayList;

    .line 59
    .line 60
    invoke-direct {v1, v0, v2, v3}, Lb7/G;-><init>(Lpe/hf/black20/epg/EPGActivityXMLTV;Ljava/util/ArrayList;Ljava/util/List;)V

    .line 61
    .line 62
    .line 63
    sget-object v0, Lpe/hf/black20/epg/EPGActivityXMLTV;->k0:Landroid/widget/ListView;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 66
    .line 67
    .line 68
    sget-object v0, Lpe/hf/black20/epg/EPGActivityXMLTV;->k0:Landroid/widget/ListView;

    .line 69
    .line 70
    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setSelection(I)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    sget-object v0, Lpe/hf/black20/epg/EPGActivityXMLTV;->f0:Landroid/app/ProgressDialog;

    .line 75
    .line 76
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_1

    .line 81
    .line 82
    sget-object v0, Lpe/hf/black20/epg/EPGActivityXMLTV;->f0:Landroid/app/ProgressDialog;

    .line 83
    .line 84
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 85
    .line 86
    .line 87
    :cond_1
    :goto_0
    return-void

    .line 88
    :pswitch_0
    check-cast v5, Lf/c;

    .line 89
    .line 90
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    const-string v0, "PlayStreamEPGActivity - Disapear Media Control View."

    .line 94
    .line 95
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    iget-object v0, v5, Lf/c;->H:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v0, Lpe/hf/black20/PlayStreamEPGActivity;

    .line 101
    .line 102
    iget-object v1, v0, Lpe/hf/black20/PlayStreamEPGActivity;->J0:Landroid/widget/FrameLayout;

    .line 103
    .line 104
    const/16 v2, 0x8

    .line 105
    .line 106
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 107
    .line 108
    .line 109
    iget-object v1, v0, Lpe/hf/black20/PlayStreamEPGActivity;->d2:Landroid/widget/ImageButton;

    .line 110
    .line 111
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 112
    .line 113
    .line 114
    iget-object v0, v0, Lpe/hf/black20/PlayStreamEPGActivity;->p1:Landroid/widget/FrameLayout;

    .line 115
    .line 116
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :pswitch_1
    check-cast v5, Lb7/S;

    .line 121
    .line 122
    iget-object v0, v5, Lb7/S;->b:Lpe/hf/black20/LoginActivity;

    .line 123
    .line 124
    iget-object v1, v0, Lpe/hf/black20/LoginActivity;->M:Landroid/app/ProgressDialog;

    .line 125
    .line 126
    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_2

    .line 131
    .line 132
    iget-object v1, v0, Lpe/hf/black20/LoginActivity;->M:Landroid/app/ProgressDialog;

    .line 133
    .line 134
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 135
    .line 136
    .line 137
    :cond_2
    iput-boolean v4, v0, Lpe/hf/black20/LoginActivity;->D0:Z

    .line 138
    .line 139
    iget-object v1, v0, Lpe/hf/black20/LoginActivity;->L:Lpe/hf/black20/LoginActivity;

    .line 140
    .line 141
    const-string v2, "Your device activation was successful!"

    .line 142
    .line 143
    invoke-virtual {v0, v1, v2}, Lpe/hf/black20/LoginActivity;->d(Lpe/hf/black20/LoginActivity;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :pswitch_2
    check-cast v5, Lpe/hf/black20/CategoriesActivity;

    .line 148
    .line 149
    sget-object v0, Lpe/hf/black20/CategoriesActivity;->THEME:Ljava/lang/String;

    .line 150
    .line 151
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 152
    .line 153
    .line 154
    const-string v0, "last_profile"

    .line 155
    .line 156
    const-string v6, "load_last_channel"

    .line 157
    .line 158
    const-string v7, "xtreamcodes"

    .line 159
    .line 160
    const-string v8, "CategoriesActivity - TV VOD Sereis - Content updated less than 6 hrs ago."

    .line 161
    .line 162
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 163
    .line 164
    .line 165
    move-result-object v9

    .line 166
    const-string v10, "ORT_PORTAL_CHANGE"

    .line 167
    .line 168
    const-string v11, "no"

    .line 169
    .line 170
    invoke-virtual {v9, v10, v11}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v9

    .line 174
    const-string v10, "yes"

    .line 175
    .line 176
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v9

    .line 180
    if-eqz v9, :cond_3

    .line 181
    .line 182
    invoke-virtual {v5}, Lpe/hf/black20/CategoriesActivity;->k()V

    .line 183
    .line 184
    .line 185
    goto/16 :goto_1

    .line 186
    .line 187
    :cond_3
    :try_start_0
    iget-object v9, v5, Lpe/hf/black20/CategoriesActivity;->M:Ljava/text/SimpleDateFormat;

    .line 188
    .line 189
    iget-object v11, v5, Lpe/hf/black20/CategoriesActivity;->X:Ljava/lang/String;

    .line 190
    .line 191
    invoke-virtual {v9, v11}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 192
    .line 193
    .line 194
    move-result-object v9

    .line 195
    iget-object v11, v5, Lpe/hf/black20/CategoriesActivity;->M:Ljava/text/SimpleDateFormat;

    .line 196
    .line 197
    iget-object v12, v5, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 198
    .line 199
    const-string v13, "tvvodseries_dl_time"

    .line 200
    .line 201
    invoke-interface {v12, v13, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v12

    .line 205
    invoke-virtual {v11, v12}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 206
    .line 207
    .line 208
    move-result-object v11

    .line 209
    invoke-static {v11, v9}, Lpe/hf/black20/util/Methods;->j(Ljava/util/Date;Ljava/util/Date;)I

    .line 210
    .line 211
    .line 212
    move-result v12

    .line 213
    invoke-static {v11, v9}, Lpe/hf/black20/util/Methods;->j(Ljava/util/Date;Ljava/util/Date;)I

    .line 214
    .line 215
    .line 216
    move-result v9

    .line 217
    const/16 v11, 0x18

    .line 218
    .line 219
    if-le v9, v11, :cond_4

    .line 220
    .line 221
    invoke-virtual {v5}, Lpe/hf/black20/CategoriesActivity;->k()V

    .line 222
    .line 223
    .line 224
    goto/16 :goto_1

    .line 225
    .line 226
    :cond_4
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 227
    .line 228
    .line 229
    move-result-object v9

    .line 230
    const-string v11, "ORT_WHICH_PANEL"

    .line 231
    .line 232
    invoke-virtual {v9, v11, v7}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v9

    .line 236
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    move-result v7

    .line 240
    if-eqz v7, :cond_5

    .line 241
    .line 242
    invoke-virtual {v5}, Lpe/hf/black20/CategoriesActivity;->a()V

    .line 243
    .line 244
    .line 245
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    .line 246
    .line 247
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v8

    .line 254
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v7

    .line 261
    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    .line 263
    .line 264
    iget-object v1, v5, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 265
    .line 266
    invoke-interface {v1, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 267
    .line 268
    .line 269
    move-result v1

    .line 270
    if-eqz v1, :cond_7

    .line 271
    .line 272
    iget-object v1, v5, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 273
    .line 274
    invoke-interface {v1, v6, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result v1

    .line 282
    if-eqz v1, :cond_7

    .line 283
    .line 284
    iget-object v1, v5, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 285
    .line 286
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 287
    .line 288
    .line 289
    move-result v1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    const-string v6, "ORT_isLoadLastLiveTVChannel"

    .line 291
    .line 292
    const-string v7, "last_channel_name"

    .line 293
    .line 294
    if-eqz v1, :cond_6

    .line 295
    .line 296
    :try_start_1
    iget-object v1, v5, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 297
    .line 298
    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    const-string v3, "ORT_PROFILE"

    .line 307
    .line 308
    const-string v8, "Default (XC)"

    .line 309
    .line 310
    invoke-virtual {v1, v3, v8}, LQ5/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result v0

    .line 318
    if-eqz v0, :cond_7

    .line 319
    .line 320
    sget-boolean v0, Lpe/hf/black20/CategoriesActivity;->I0:Z

    .line 321
    .line 322
    if-nez v0, :cond_7

    .line 323
    .line 324
    iget-object v0, v5, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 325
    .line 326
    invoke-interface {v0, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 327
    .line 328
    .line 329
    move-result v0

    .line 330
    if-eqz v0, :cond_7

    .line 331
    .line 332
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    invoke-virtual {v0, v6, v2}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 337
    .line 338
    .line 339
    sput-boolean v2, Lpe/hf/black20/CategoriesActivity;->I0:Z

    .line 340
    .line 341
    iput-boolean v2, v5, Lpe/hf/black20/CategoriesActivity;->v0:Z

    .line 342
    .line 343
    new-instance v0, Lb7/s;

    .line 344
    .line 345
    invoke-direct {v0, v5}, Lb7/s;-><init>(Lpe/hf/black20/CategoriesActivity;)V

    .line 346
    .line 347
    .line 348
    new-array v1, v4, [Ljava/lang/Void;

    .line 349
    .line 350
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 351
    .line 352
    .line 353
    goto :goto_1

    .line 354
    :cond_6
    sget-boolean v0, Lpe/hf/black20/CategoriesActivity;->I0:Z

    .line 355
    .line 356
    if-nez v0, :cond_7

    .line 357
    .line 358
    iget-object v0, v5, Lpe/hf/black20/CategoriesActivity;->H:Landroid/content/SharedPreferences;

    .line 359
    .line 360
    invoke-interface {v0, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 361
    .line 362
    .line 363
    move-result v0

    .line 364
    if-eqz v0, :cond_7

    .line 365
    .line 366
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    invoke-virtual {v0, v6, v2}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 371
    .line 372
    .line 373
    sput-boolean v2, Lpe/hf/black20/CategoriesActivity;->I0:Z

    .line 374
    .line 375
    iput-boolean v2, v5, Lpe/hf/black20/CategoriesActivity;->v0:Z

    .line 376
    .line 377
    new-instance v0, Lb7/s;

    .line 378
    .line 379
    invoke-direct {v0, v5}, Lb7/s;-><init>(Lpe/hf/black20/CategoriesActivity;)V

    .line 380
    .line 381
    .line 382
    new-array v1, v4, [Ljava/lang/Void;

    .line 383
    .line 384
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    .line 385
    .line 386
    .line 387
    :catch_0
    :cond_7
    :goto_1
    return-void

    .line 388
    :pswitch_3
    check-cast v5, LZ5/Z;

    .line 389
    .line 390
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 391
    .line 392
    .line 393
    const/4 v0, 0x0

    .line 394
    throw v0

    .line 395
    :pswitch_4
    check-cast v5, LZ5/W;

    .line 396
    .line 397
    invoke-virtual {v5}, LZ5/W;->n()V

    .line 398
    .line 399
    .line 400
    return-void

    .line 401
    :pswitch_5
    check-cast v5, LZ5/u;

    .line 402
    .line 403
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 404
    .line 405
    .line 406
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 407
    .line 408
    .line 409
    return-void

    .line 410
    :pswitch_6
    check-cast v5, LP5/a;

    .line 411
    .line 412
    iget-object v0, v5, LP5/a;->a:LP5/b;

    .line 413
    .line 414
    iput-boolean v4, v0, LP5/b;->b:Z

    .line 415
    .line 416
    invoke-virtual {v0}, LP5/b;->a()V

    .line 417
    .line 418
    .line 419
    return-void

    .line 420
    :pswitch_7
    check-cast v5, LZ3/o;

    .line 421
    .line 422
    iget-object v0, v5, LZ3/o;->H:Ljava/lang/Object;

    .line 423
    .line 424
    check-cast v0, LO5/g;

    .line 425
    .line 426
    invoke-static {v0}, LO5/g;->a(LO5/g;)V

    .line 427
    .line 428
    .line 429
    return-void

    .line 430
    nop

    .line 431
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
