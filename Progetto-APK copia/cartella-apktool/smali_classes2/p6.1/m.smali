.class public final Lp6/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public H:Ljava/lang/Object;

.field public final synthetic I:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lp6/m;->G:I

    .line 5
    .line 6
    iput-object p2, p0, Lp6/m;->I:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p3, p0, Lp6/m;->H:Ljava/lang/Object;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget v0, p0, Lp6/m;->G:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v0, Ll7/b;

    .line 9
    .line 10
    iget-object v2, p0, Lp6/m;->I:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v2, Ll7/b;

    .line 13
    .line 14
    iget-object v2, v2, Ll7/b;->b:Lpe/hf/black20/updatecontents/EZServerUpdateContents;

    .line 15
    .line 16
    invoke-direct {v0, v2, v1}, Ll7/b;-><init>(Lpe/hf/black20/updatecontents/EZServerUpdateContents;Ll7/a;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lp6/m;->H:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Ljava/lang/String;

    .line 22
    .line 23
    filled-new-array {v1}, [Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_0
    iget-object v0, p0, Lp6/m;->H:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v0, Landroid/content/Intent;

    .line 34
    .line 35
    const-string v1, "commandText"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    iget-object v0, p0, Lp6/m;->H:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Landroid/content/Intent;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object v1, p0, Lp6/m;->I:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v1, Lb7/H1;

    .line 54
    .line 55
    iget-object v1, v1, Lb7/H1;->b:Lpe/hf/black20/SettingsMenuActivity;

    .line 56
    .line 57
    sget v2, Lpe/hf/black20/SettingsMenuActivity;->W:I

    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    sget-object v2, Lpe/hf/black20/SettingsMenuActivity;->X:Landroid/widget/EditText;

    .line 63
    .line 64
    invoke-virtual {v2}, Landroid/view/View;->isFocused()Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_0

    .line 69
    .line 70
    sget-object v2, Lpe/hf/black20/SettingsMenuActivity;->X:Landroid/widget/EditText;

    .line 71
    .line 72
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, v1, Lpe/hf/black20/SettingsMenuActivity;->R:Landroid/widget/Button;

    .line 76
    .line 77
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 78
    .line 79
    .line 80
    :cond_0
    return-void

    .line 81
    :pswitch_1
    iget-object v0, p0, Lp6/m;->H:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v0, Landroid/content/Intent;

    .line 84
    .line 85
    const-string v3, "what"

    .line 86
    .line 87
    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_3

    .line 92
    .line 93
    iget-object v0, p0, Lp6/m;->H:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v0, Landroid/content/Intent;

    .line 96
    .line 97
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    const-string v3, "msg"

    .line 102
    .line 103
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    iget-object v4, p0, Lp6/m;->I:Ljava/lang/Object;

    .line 108
    .line 109
    if-eqz v3, :cond_2

    .line 110
    .line 111
    iget-object v0, p0, Lp6/m;->H:Ljava/lang/Object;

    .line 112
    .line 113
    check-cast v0, Landroid/content/Intent;

    .line 114
    .line 115
    const-string v1, "success"

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    const-string v1, "1"

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_1

    .line 128
    .line 129
    check-cast v4, Lb7/q;

    .line 130
    .line 131
    iget-object v0, v4, Lb7/q;->b:Lpe/hf/black20/CategoriesActivity;

    .line 132
    .line 133
    sget-object v1, Lpe/hf/black20/CategoriesActivity;->THEME:Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    iget-object v0, v4, Lb7/q;->b:Lpe/hf/black20/CategoriesActivity;

    .line 139
    .line 140
    iget-object v1, p0, Lp6/m;->H:Ljava/lang/Object;

    .line 141
    .line 142
    check-cast v1, Landroid/content/Intent;

    .line 143
    .line 144
    const-string v2, "msg_txt"

    .line 145
    .line 146
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    iget-object v0, v4, Lb7/q;->b:Lpe/hf/black20/CategoriesActivity;

    .line 153
    .line 154
    iget-object v0, v0, Lpe/hf/black20/CategoriesActivity;->k0:Landroid/widget/ImageButton;

    .line 155
    .line 156
    const v1, 0x7f0805c9

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 160
    .line 161
    .line 162
    goto/16 :goto_0

    .line 163
    .line 164
    :cond_1
    check-cast v4, Lb7/q;

    .line 165
    .line 166
    iget-object v0, v4, Lb7/q;->b:Lpe/hf/black20/CategoriesActivity;

    .line 167
    .line 168
    sget-object v1, Lpe/hf/black20/CategoriesActivity;->THEME:Ljava/lang/String;

    .line 169
    .line 170
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    iget-object v0, v4, Lb7/q;->b:Lpe/hf/black20/CategoriesActivity;

    .line 174
    .line 175
    iget-object v0, v0, Lpe/hf/black20/CategoriesActivity;->k0:Landroid/widget/ImageButton;

    .line 176
    .line 177
    const v1, 0x7f0805c8

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 181
    .line 182
    .line 183
    goto/16 :goto_0

    .line 184
    .line 185
    :cond_2
    const-string v3, "pr"

    .line 186
    .line 187
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    if-eqz v0, :cond_3

    .line 192
    .line 193
    check-cast v4, Lb7/q;

    .line 194
    .line 195
    iget-object v0, v4, Lb7/q;->b:Lpe/hf/black20/CategoriesActivity;

    .line 196
    .line 197
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 198
    .line 199
    .line 200
    move-result v0

    .line 201
    if-nez v0, :cond_3

    .line 202
    .line 203
    iget-object v0, v4, Lb7/q;->b:Lpe/hf/black20/CategoriesActivity;

    .line 204
    .line 205
    iget-object v3, p0, Lp6/m;->H:Ljava/lang/Object;

    .line 206
    .line 207
    check-cast v3, Landroid/content/Intent;

    .line 208
    .line 209
    const-string v4, "title"

    .line 210
    .line 211
    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    iget-object v4, p0, Lp6/m;->H:Ljava/lang/Object;

    .line 216
    .line 217
    check-cast v4, Landroid/content/Intent;

    .line 218
    .line 219
    const-string v5, "desc"

    .line 220
    .line 221
    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v4

    .line 225
    iget-object v5, p0, Lp6/m;->H:Ljava/lang/Object;

    .line 226
    .line 227
    check-cast v5, Landroid/content/Intent;

    .line 228
    .line 229
    const-string v6, "time"

    .line 230
    .line 231
    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v5

    .line 235
    iget-object v6, v0, Lpe/hf/black20/CategoriesActivity;->G:Lpe/hf/black20/CategoriesActivity;

    .line 236
    .line 237
    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 238
    .line 239
    .line 240
    move-result-object v7

    .line 241
    const v8, 0x7f0e0126

    .line 242
    .line 243
    .line 244
    invoke-virtual {v7, v8, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    new-instance v7, Landroid/app/AlertDialog$Builder;

    .line 249
    .line 250
    invoke-direct {v7, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 254
    .line 255
    .line 256
    move-result-object v6

    .line 257
    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 258
    .line 259
    .line 260
    move-result-object v7

    .line 261
    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    .line 262
    .line 263
    const-string v9, "#99000000"

    .line 264
    .line 265
    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 266
    .line 267
    .line 268
    move-result v9

    .line 269
    invoke-direct {v8, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 270
    .line 271
    .line 272
    const v9, 0x7f0b0584

    .line 273
    .line 274
    .line 275
    invoke-static {v7, v8, v6, v1, v9}, LA0/O;->w(Landroid/view/Window;Landroid/graphics/drawable/ColorDrawable;Landroid/app/AlertDialog;Landroid/view/View;I)Landroid/view/View;

    .line 276
    .line 277
    .line 278
    move-result-object v7

    .line 279
    check-cast v7, Landroid/widget/TextView;

    .line 280
    .line 281
    const v8, 0x7f0b0527

    .line 282
    .line 283
    .line 284
    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 285
    .line 286
    .line 287
    move-result-object v8

    .line 288
    check-cast v8, Landroid/widget/TextView;

    .line 289
    .line 290
    const v9, 0x7f0b057e

    .line 291
    .line 292
    .line 293
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 294
    .line 295
    .line 296
    move-result-object v9

    .line 297
    check-cast v9, Landroid/widget/TextView;

    .line 298
    .line 299
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    .line 307
    .line 308
    const v3, 0x7f0b014f

    .line 309
    .line 310
    .line 311
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 312
    .line 313
    .line 314
    move-result-object v3

    .line 315
    check-cast v3, Landroid/widget/Button;

    .line 316
    .line 317
    new-instance v4, Lb7/r;

    .line 318
    .line 319
    const/4 v5, 0x3

    .line 320
    invoke-direct {v4, v0, v6, v5}, Lb7/r;-><init>(Lpe/hf/black20/CategoriesActivity;Landroid/app/AlertDialog;I)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    .line 325
    .line 326
    const v4, 0x7f0b014b

    .line 327
    .line 328
    .line 329
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    check-cast v1, Landroid/widget/Button;

    .line 334
    .line 335
    new-instance v4, Lb7/r;

    .line 336
    .line 337
    const/4 v5, 0x4

    .line 338
    invoke-direct {v4, v0, v6, v5}, Lb7/r;-><init>(Lpe/hf/black20/CategoriesActivity;Landroid/app/AlertDialog;I)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v3, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 348
    .line 349
    .line 350
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 351
    .line 352
    .line 353
    :cond_3
    :goto_0
    return-void

    .line 354
    :pswitch_2
    const/4 v0, 0x0

    .line 355
    :cond_4
    :try_start_0
    iget-object v1, p0, Lp6/m;->H:Ljava/lang/Object;

    .line 356
    .line 357
    check-cast v1, Ljava/lang/Runnable;

    .line 358
    .line 359
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    .line 361
    .line 362
    goto :goto_1

    .line 363
    :catchall_0
    move-exception v1

    .line 364
    sget-object v3, Lx6/k;->G:Lx6/k;

    .line 365
    .line 366
    invoke-static {v3, v1}, Lz4/q0;->w(Lx6/j;Ljava/lang/Throwable;)V

    .line 367
    .line 368
    .line 369
    :goto_1
    iget-object v1, p0, Lp6/m;->I:Ljava/lang/Object;

    .line 370
    .line 371
    check-cast v1, LN6/h;

    .line 372
    .line 373
    sget-object v3, LN6/h;->N:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 374
    .line 375
    invoke-virtual {v1}, LN6/h;->d0()Ljava/lang/Runnable;

    .line 376
    .line 377
    .line 378
    move-result-object v3

    .line 379
    if-nez v3, :cond_5

    .line 380
    .line 381
    goto :goto_2

    .line 382
    :cond_5
    iput-object v3, p0, Lp6/m;->H:Ljava/lang/Object;

    .line 383
    .line 384
    add-int/2addr v0, v2

    .line 385
    const/16 v3, 0x10

    .line 386
    .line 387
    if-lt v0, v3, :cond_4

    .line 388
    .line 389
    iget-object v3, v1, LN6/h;->I:LJ6/m;

    .line 390
    .line 391
    invoke-virtual {v3, v1}, LJ6/m;->b0(Lx6/j;)Z

    .line 392
    .line 393
    .line 394
    move-result v3

    .line 395
    if-eqz v3, :cond_4

    .line 396
    .line 397
    iget-object v0, v1, LN6/h;->I:LJ6/m;

    .line 398
    .line 399
    invoke-virtual {v0, v1, p0}, LJ6/m;->a0(Lx6/j;Ljava/lang/Runnable;)V

    .line 400
    .line 401
    .line 402
    :goto_2
    return-void

    .line 403
    :pswitch_3
    iget-object v0, p0, Lp6/m;->H:Ljava/lang/Object;

    .line 404
    .line 405
    check-cast v0, Lp6/l;

    .line 406
    .line 407
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 408
    .line 409
    .line 410
    iget-object v0, p0, Lp6/m;->I:Ljava/lang/Object;

    .line 411
    .line 412
    check-cast v0, Lp6/n;

    .line 413
    .line 414
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 415
    .line 416
    .line 417
    const/4 v0, 0x0

    .line 418
    throw v0

    .line 419
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
