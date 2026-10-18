.class public final Lb7/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lpe/hf/black20/ChannelPickerActivity;


# direct methods
.method public synthetic constructor <init>(Lpe/hf/black20/ChannelPickerActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lb7/H;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Lb7/H;->H:Lpe/hf/black20/ChannelPickerActivity;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 11

    .line 1
    iget p1, p0, Lb7/H;->G:I

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    const/4 v1, 0x1

    .line 5
    iget-object v8, p0, Lb7/H;->H:Lpe/hf/black20/ChannelPickerActivity;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget p1, v8, Lpe/hf/black20/ChannelPickerActivity;->D0:I

    .line 11
    .line 12
    if-lez p1, :cond_0

    .line 13
    .line 14
    const/16 v0, 0xc

    .line 15
    .line 16
    if-ge p1, v0, :cond_0

    .line 17
    .line 18
    add-int/lit8 v0, p1, 0x1

    .line 19
    .line 20
    iput v0, v8, Lpe/hf/black20/ChannelPickerActivity;->D0:I

    .line 21
    .line 22
    iget-object v0, v8, Lpe/hf/black20/ChannelPickerActivity;->y0:Landroid/widget/TextView;

    .line 23
    .line 24
    iget-object v1, v8, Lpe/hf/black20/ChannelPickerActivity;->C0:[Ljava/lang/String;

    .line 25
    .line 26
    aget-object p1, v1, p1

    .line 27
    .line 28
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    iget p1, v8, Lpe/hf/black20/ChannelPickerActivity;->D0:I

    .line 32
    .line 33
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    iput-object v4, v8, Lpe/hf/black20/ChannelPickerActivity;->h0:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v3, v8, Lpe/hf/black20/ChannelPickerActivity;->i0:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v5, v8, Lpe/hf/black20/ChannelPickerActivity;->g0:Ljava/lang/String;

    .line 42
    .line 43
    iget-object v6, v8, Lpe/hf/black20/ChannelPickerActivity;->j0:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v7, v8, Lpe/hf/black20/ChannelPickerActivity;->k0:Ljava/lang/String;

    .line 46
    .line 47
    move-object v2, v8

    .line 48
    invoke-virtual/range {v2 .. v7}, Lpe/hf/black20/ChannelPickerActivity;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    return-void

    .line 52
    :pswitch_0
    iget p1, v8, Lpe/hf/black20/ChannelPickerActivity;->D0:I

    .line 53
    .line 54
    if-le p1, v1, :cond_1

    .line 55
    .line 56
    const/16 v1, 0xd

    .line 57
    .line 58
    if-ge p1, v1, :cond_1

    .line 59
    .line 60
    add-int/lit8 v1, p1, -0x1

    .line 61
    .line 62
    iput v1, v8, Lpe/hf/black20/ChannelPickerActivity;->D0:I

    .line 63
    .line 64
    iget-object v1, v8, Lpe/hf/black20/ChannelPickerActivity;->y0:Landroid/widget/TextView;

    .line 65
    .line 66
    iget-object v2, v8, Lpe/hf/black20/ChannelPickerActivity;->C0:[Ljava/lang/String;

    .line 67
    .line 68
    sub-int/2addr p1, v0

    .line 69
    aget-object p1, v2, p1

    .line 70
    .line 71
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    .line 73
    .line 74
    iget p1, v8, Lpe/hf/black20/ChannelPickerActivity;->D0:I

    .line 75
    .line 76
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    iput-object v4, v8, Lpe/hf/black20/ChannelPickerActivity;->h0:Ljava/lang/String;

    .line 81
    .line 82
    iget-object v3, v8, Lpe/hf/black20/ChannelPickerActivity;->i0:Ljava/lang/String;

    .line 83
    .line 84
    iget-object v5, v8, Lpe/hf/black20/ChannelPickerActivity;->g0:Ljava/lang/String;

    .line 85
    .line 86
    iget-object v6, v8, Lpe/hf/black20/ChannelPickerActivity;->j0:Ljava/lang/String;

    .line 87
    .line 88
    iget-object v7, v8, Lpe/hf/black20/ChannelPickerActivity;->k0:Ljava/lang/String;

    .line 89
    .line 90
    move-object v2, v8

    .line 91
    invoke-virtual/range {v2 .. v7}, Lpe/hf/black20/ChannelPickerActivity;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :cond_1
    return-void

    .line 95
    :pswitch_1
    iget p1, v8, Lpe/hf/black20/ChannelPickerActivity;->V:I

    .line 96
    .line 97
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    iput-object v3, v8, Lpe/hf/black20/ChannelPickerActivity;->i0:Ljava/lang/String;

    .line 102
    .line 103
    iget-object v4, v8, Lpe/hf/black20/ChannelPickerActivity;->h0:Ljava/lang/String;

    .line 104
    .line 105
    iget-object v5, v8, Lpe/hf/black20/ChannelPickerActivity;->g0:Ljava/lang/String;

    .line 106
    .line 107
    iget-object v6, v8, Lpe/hf/black20/ChannelPickerActivity;->j0:Ljava/lang/String;

    .line 108
    .line 109
    iget-object v7, v8, Lpe/hf/black20/ChannelPickerActivity;->k0:Ljava/lang/String;

    .line 110
    .line 111
    move-object v2, v8

    .line 112
    invoke-virtual/range {v2 .. v7}, Lpe/hf/black20/ChannelPickerActivity;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :pswitch_2
    iget p1, v8, Lpe/hf/black20/ChannelPickerActivity;->U:I

    .line 117
    .line 118
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    iput-object v3, v8, Lpe/hf/black20/ChannelPickerActivity;->i0:Ljava/lang/String;

    .line 123
    .line 124
    iget-object v4, v8, Lpe/hf/black20/ChannelPickerActivity;->h0:Ljava/lang/String;

    .line 125
    .line 126
    iget-object v5, v8, Lpe/hf/black20/ChannelPickerActivity;->g0:Ljava/lang/String;

    .line 127
    .line 128
    iget-object v6, v8, Lpe/hf/black20/ChannelPickerActivity;->j0:Ljava/lang/String;

    .line 129
    .line 130
    iget-object v7, v8, Lpe/hf/black20/ChannelPickerActivity;->k0:Ljava/lang/String;

    .line 131
    .line 132
    move-object v2, v8

    .line 133
    invoke-virtual/range {v2 .. v7}, Lpe/hf/black20/ChannelPickerActivity;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :pswitch_3
    iget-object p1, v8, Lpe/hf/black20/ChannelPickerActivity;->K:Lpe/hf/black20/ChannelPickerActivity;

    .line 138
    .line 139
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    const v3, 0x7f0e0121

    .line 144
    .line 145
    .line 146
    const/4 v4, 0x0

    .line 147
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    new-instance v3, Landroid/app/AlertDialog$Builder;

    .line 152
    .line 153
    invoke-direct {v3, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    .line 165
    .line 166
    const-string v5, "#99000000"

    .line 167
    .line 168
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 169
    .line 170
    .line 171
    move-result v5

    .line 172
    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 173
    .line 174
    .line 175
    const v5, 0x7f0b00f2

    .line 176
    .line 177
    .line 178
    invoke-static {v3, v4, p1, v2, v5}, LA0/O;->w(Landroid/view/Window;Landroid/graphics/drawable/ColorDrawable;Landroid/app/AlertDialog;Landroid/view/View;I)Landroid/view/View;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    move-object v9, v3

    .line 183
    check-cast v9, Landroid/widget/Button;

    .line 184
    .line 185
    const v3, 0x7f0b00b0

    .line 186
    .line 187
    .line 188
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    move-object v10, v3

    .line 193
    check-cast v10, Landroid/widget/Button;

    .line 194
    .line 195
    const v3, 0x7f0b0526

    .line 196
    .line 197
    .line 198
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    check-cast v3, Landroid/widget/TextView;

    .line 203
    .line 204
    iput-object v3, v8, Lpe/hf/black20/ChannelPickerActivity;->H0:Landroid/widget/TextView;

    .line 205
    .line 206
    const v3, 0x7f0b013c

    .line 207
    .line 208
    .line 209
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    check-cast v3, Landroid/widget/Button;

    .line 214
    .line 215
    iput-object v3, v8, Lpe/hf/black20/ChannelPickerActivity;->o0:Landroid/widget/Button;

    .line 216
    .line 217
    const v3, 0x7f0b013d

    .line 218
    .line 219
    .line 220
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    check-cast v3, Landroid/widget/Button;

    .line 225
    .line 226
    iput-object v3, v8, Lpe/hf/black20/ChannelPickerActivity;->p0:Landroid/widget/Button;

    .line 227
    .line 228
    iget-object v3, v8, Lpe/hf/black20/ChannelPickerActivity;->o0:Landroid/widget/Button;

    .line 229
    .line 230
    iget v4, v8, Lpe/hf/black20/ChannelPickerActivity;->U:I

    .line 231
    .line 232
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v4

    .line 236
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    .line 238
    .line 239
    iget-object v3, v8, Lpe/hf/black20/ChannelPickerActivity;->p0:Landroid/widget/Button;

    .line 240
    .line 241
    iget v4, v8, Lpe/hf/black20/ChannelPickerActivity;->V:I

    .line 242
    .line 243
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v4

    .line 247
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    .line 249
    .line 250
    const v3, 0x7f0b00e7

    .line 251
    .line 252
    .line 253
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    check-cast v3, Landroid/widget/Button;

    .line 258
    .line 259
    iput-object v3, v8, Lpe/hf/black20/ChannelPickerActivity;->q0:Landroid/widget/Button;

    .line 260
    .line 261
    const v3, 0x7f0b00e6

    .line 262
    .line 263
    .line 264
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 265
    .line 266
    .line 267
    move-result-object v3

    .line 268
    check-cast v3, Landroid/widget/Button;

    .line 269
    .line 270
    iput-object v3, v8, Lpe/hf/black20/ChannelPickerActivity;->r0:Landroid/widget/Button;

    .line 271
    .line 272
    const v3, 0x7f0b00c5

    .line 273
    .line 274
    .line 275
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 276
    .line 277
    .line 278
    move-result-object v3

    .line 279
    check-cast v3, Landroid/widget/Button;

    .line 280
    .line 281
    iput-object v3, v8, Lpe/hf/black20/ChannelPickerActivity;->s0:Landroid/widget/Button;

    .line 282
    .line 283
    const v3, 0x7f0b00c4

    .line 284
    .line 285
    .line 286
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 287
    .line 288
    .line 289
    move-result-object v3

    .line 290
    check-cast v3, Landroid/widget/Button;

    .line 291
    .line 292
    iput-object v3, v8, Lpe/hf/black20/ChannelPickerActivity;->t0:Landroid/widget/Button;

    .line 293
    .line 294
    const v3, 0x7f0b00dc

    .line 295
    .line 296
    .line 297
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 298
    .line 299
    .line 300
    move-result-object v3

    .line 301
    check-cast v3, Landroid/widget/Button;

    .line 302
    .line 303
    iput-object v3, v8, Lpe/hf/black20/ChannelPickerActivity;->u0:Landroid/widget/Button;

    .line 304
    .line 305
    const v3, 0x7f0b00db

    .line 306
    .line 307
    .line 308
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    check-cast v3, Landroid/widget/Button;

    .line 313
    .line 314
    iput-object v3, v8, Lpe/hf/black20/ChannelPickerActivity;->v0:Landroid/widget/Button;

    .line 315
    .line 316
    const v3, 0x7f0b00ea

    .line 317
    .line 318
    .line 319
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 320
    .line 321
    .line 322
    move-result-object v3

    .line 323
    check-cast v3, Landroid/widget/Button;

    .line 324
    .line 325
    iput-object v3, v8, Lpe/hf/black20/ChannelPickerActivity;->w0:Landroid/widget/Button;

    .line 326
    .line 327
    const v3, 0x7f0b00e9

    .line 328
    .line 329
    .line 330
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 331
    .line 332
    .line 333
    move-result-object v3

    .line 334
    check-cast v3, Landroid/widget/Button;

    .line 335
    .line 336
    iput-object v3, v8, Lpe/hf/black20/ChannelPickerActivity;->x0:Landroid/widget/Button;

    .line 337
    .line 338
    const v3, 0x7f0b0548

    .line 339
    .line 340
    .line 341
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 342
    .line 343
    .line 344
    move-result-object v3

    .line 345
    check-cast v3, Landroid/widget/TextView;

    .line 346
    .line 347
    iput-object v3, v8, Lpe/hf/black20/ChannelPickerActivity;->y0:Landroid/widget/TextView;

    .line 348
    .line 349
    const v3, 0x7f0b0523

    .line 350
    .line 351
    .line 352
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 353
    .line 354
    .line 355
    move-result-object v3

    .line 356
    check-cast v3, Landroid/widget/TextView;

    .line 357
    .line 358
    iput-object v3, v8, Lpe/hf/black20/ChannelPickerActivity;->z0:Landroid/widget/TextView;

    .line 359
    .line 360
    const v3, 0x7f0b0540

    .line 361
    .line 362
    .line 363
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 364
    .line 365
    .line 366
    move-result-object v3

    .line 367
    check-cast v3, Landroid/widget/TextView;

    .line 368
    .line 369
    iput-object v3, v8, Lpe/hf/black20/ChannelPickerActivity;->A0:Landroid/widget/TextView;

    .line 370
    .line 371
    const v3, 0x7f0b0552

    .line 372
    .line 373
    .line 374
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 375
    .line 376
    .line 377
    move-result-object v2

    .line 378
    check-cast v2, Landroid/widget/TextView;

    .line 379
    .line 380
    iput-object v2, v8, Lpe/hf/black20/ChannelPickerActivity;->B0:Landroid/widget/TextView;

    .line 381
    .line 382
    iget v2, v8, Lpe/hf/black20/ChannelPickerActivity;->U:I

    .line 383
    .line 384
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v2

    .line 388
    iput-object v2, v8, Lpe/hf/black20/ChannelPickerActivity;->i0:Ljava/lang/String;

    .line 389
    .line 390
    iget v2, v8, Lpe/hf/black20/ChannelPickerActivity;->W:I

    .line 391
    .line 392
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v2

    .line 396
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 397
    .line 398
    .line 399
    move-result v2

    .line 400
    iput v2, v8, Lpe/hf/black20/ChannelPickerActivity;->D0:I

    .line 401
    .line 402
    iget v2, v8, Lpe/hf/black20/ChannelPickerActivity;->X:I

    .line 403
    .line 404
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v2

    .line 408
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 409
    .line 410
    .line 411
    move-result v2

    .line 412
    iput v2, v8, Lpe/hf/black20/ChannelPickerActivity;->E0:I

    .line 413
    .line 414
    iget v2, v8, Lpe/hf/black20/ChannelPickerActivity;->Y:I

    .line 415
    .line 416
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 417
    .line 418
    .line 419
    move-result-object v2

    .line 420
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 421
    .line 422
    .line 423
    move-result v2

    .line 424
    iput v2, v8, Lpe/hf/black20/ChannelPickerActivity;->F0:I

    .line 425
    .line 426
    iget v2, v8, Lpe/hf/black20/ChannelPickerActivity;->Z:I

    .line 427
    .line 428
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v2

    .line 432
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 433
    .line 434
    .line 435
    move-result v2

    .line 436
    iput v2, v8, Lpe/hf/black20/ChannelPickerActivity;->G0:I

    .line 437
    .line 438
    iget v2, v8, Lpe/hf/black20/ChannelPickerActivity;->W:I

    .line 439
    .line 440
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v2

    .line 444
    iput-object v2, v8, Lpe/hf/black20/ChannelPickerActivity;->h0:Ljava/lang/String;

    .line 445
    .line 446
    iget v2, v8, Lpe/hf/black20/ChannelPickerActivity;->X:I

    .line 447
    .line 448
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v2

    .line 452
    iput-object v2, v8, Lpe/hf/black20/ChannelPickerActivity;->g0:Ljava/lang/String;

    .line 453
    .line 454
    iget v2, v8, Lpe/hf/black20/ChannelPickerActivity;->Y:I

    .line 455
    .line 456
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v2

    .line 460
    iput-object v2, v8, Lpe/hf/black20/ChannelPickerActivity;->j0:Ljava/lang/String;

    .line 461
    .line 462
    iget v2, v8, Lpe/hf/black20/ChannelPickerActivity;->Z:I

    .line 463
    .line 464
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v7

    .line 468
    iput-object v7, v8, Lpe/hf/black20/ChannelPickerActivity;->k0:Ljava/lang/String;

    .line 469
    .line 470
    iget-object v3, v8, Lpe/hf/black20/ChannelPickerActivity;->i0:Ljava/lang/String;

    .line 471
    .line 472
    iget-object v4, v8, Lpe/hf/black20/ChannelPickerActivity;->h0:Ljava/lang/String;

    .line 473
    .line 474
    iget-object v5, v8, Lpe/hf/black20/ChannelPickerActivity;->g0:Ljava/lang/String;

    .line 475
    .line 476
    iget-object v6, v8, Lpe/hf/black20/ChannelPickerActivity;->j0:Ljava/lang/String;

    .line 477
    .line 478
    move-object v2, v8

    .line 479
    invoke-virtual/range {v2 .. v7}, Lpe/hf/black20/ChannelPickerActivity;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    iget-object v2, v8, Lpe/hf/black20/ChannelPickerActivity;->y0:Landroid/widget/TextView;

    .line 483
    .line 484
    iget v3, v8, Lpe/hf/black20/ChannelPickerActivity;->W:I

    .line 485
    .line 486
    sub-int/2addr v3, v1

    .line 487
    iget-object v4, v8, Lpe/hf/black20/ChannelPickerActivity;->C0:[Ljava/lang/String;

    .line 488
    .line 489
    aget-object v3, v4, v3

    .line 490
    .line 491
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 492
    .line 493
    .line 494
    iget-object v2, v8, Lpe/hf/black20/ChannelPickerActivity;->z0:Landroid/widget/TextView;

    .line 495
    .line 496
    iget v3, v8, Lpe/hf/black20/ChannelPickerActivity;->X:I

    .line 497
    .line 498
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v3

    .line 502
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    .line 504
    .line 505
    iget-object v2, v8, Lpe/hf/black20/ChannelPickerActivity;->A0:Landroid/widget/TextView;

    .line 506
    .line 507
    iget v3, v8, Lpe/hf/black20/ChannelPickerActivity;->Y:I

    .line 508
    .line 509
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 510
    .line 511
    .line 512
    move-result-object v3

    .line 513
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 514
    .line 515
    .line 516
    iget-object v2, v8, Lpe/hf/black20/ChannelPickerActivity;->B0:Landroid/widget/TextView;

    .line 517
    .line 518
    iget v3, v8, Lpe/hf/black20/ChannelPickerActivity;->Z:I

    .line 519
    .line 520
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v3

    .line 524
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    .line 526
    .line 527
    iget-object v2, v8, Lpe/hf/black20/ChannelPickerActivity;->o0:Landroid/widget/Button;

    .line 528
    .line 529
    new-instance v3, Lb7/H;

    .line 530
    .line 531
    const/4 v4, 0x7

    .line 532
    invoke-direct {v3, v8, v4}, Lb7/H;-><init>(Lpe/hf/black20/ChannelPickerActivity;I)V

    .line 533
    .line 534
    .line 535
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 536
    .line 537
    .line 538
    iget-object v2, v8, Lpe/hf/black20/ChannelPickerActivity;->p0:Landroid/widget/Button;

    .line 539
    .line 540
    new-instance v3, Lb7/H;

    .line 541
    .line 542
    const/16 v4, 0x8

    .line 543
    .line 544
    invoke-direct {v3, v8, v4}, Lb7/H;-><init>(Lpe/hf/black20/ChannelPickerActivity;I)V

    .line 545
    .line 546
    .line 547
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 548
    .line 549
    .line 550
    iget-object v2, v8, Lpe/hf/black20/ChannelPickerActivity;->q0:Landroid/widget/Button;

    .line 551
    .line 552
    new-instance v3, Lb7/H;

    .line 553
    .line 554
    const/16 v4, 0x9

    .line 555
    .line 556
    invoke-direct {v3, v8, v4}, Lb7/H;-><init>(Lpe/hf/black20/ChannelPickerActivity;I)V

    .line 557
    .line 558
    .line 559
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 560
    .line 561
    .line 562
    iget-object v2, v8, Lpe/hf/black20/ChannelPickerActivity;->r0:Landroid/widget/Button;

    .line 563
    .line 564
    new-instance v3, Lb7/H;

    .line 565
    .line 566
    const/16 v4, 0xa

    .line 567
    .line 568
    invoke-direct {v3, v8, v4}, Lb7/H;-><init>(Lpe/hf/black20/ChannelPickerActivity;I)V

    .line 569
    .line 570
    .line 571
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 572
    .line 573
    .line 574
    iget-object v2, v8, Lpe/hf/black20/ChannelPickerActivity;->s0:Landroid/widget/Button;

    .line 575
    .line 576
    new-instance v3, Lb7/H;

    .line 577
    .line 578
    const/4 v4, 0x0

    .line 579
    invoke-direct {v3, v8, v4}, Lb7/H;-><init>(Lpe/hf/black20/ChannelPickerActivity;I)V

    .line 580
    .line 581
    .line 582
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 583
    .line 584
    .line 585
    iget-object v2, v8, Lpe/hf/black20/ChannelPickerActivity;->t0:Landroid/widget/Button;

    .line 586
    .line 587
    new-instance v3, Lb7/H;

    .line 588
    .line 589
    invoke-direct {v3, v8, v1}, Lb7/H;-><init>(Lpe/hf/black20/ChannelPickerActivity;I)V

    .line 590
    .line 591
    .line 592
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 593
    .line 594
    .line 595
    iget-object v2, v8, Lpe/hf/black20/ChannelPickerActivity;->u0:Landroid/widget/Button;

    .line 596
    .line 597
    new-instance v3, Lb7/H;

    .line 598
    .line 599
    invoke-direct {v3, v8, v0}, Lb7/H;-><init>(Lpe/hf/black20/ChannelPickerActivity;I)V

    .line 600
    .line 601
    .line 602
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 603
    .line 604
    .line 605
    iget-object v0, v8, Lpe/hf/black20/ChannelPickerActivity;->v0:Landroid/widget/Button;

    .line 606
    .line 607
    new-instance v2, Lb7/H;

    .line 608
    .line 609
    const/4 v3, 0x3

    .line 610
    invoke-direct {v2, v8, v3}, Lb7/H;-><init>(Lpe/hf/black20/ChannelPickerActivity;I)V

    .line 611
    .line 612
    .line 613
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 614
    .line 615
    .line 616
    iget-object v0, v8, Lpe/hf/black20/ChannelPickerActivity;->w0:Landroid/widget/Button;

    .line 617
    .line 618
    new-instance v2, Lb7/H;

    .line 619
    .line 620
    const/4 v3, 0x4

    .line 621
    invoke-direct {v2, v8, v3}, Lb7/H;-><init>(Lpe/hf/black20/ChannelPickerActivity;I)V

    .line 622
    .line 623
    .line 624
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 625
    .line 626
    .line 627
    iget-object v0, v8, Lpe/hf/black20/ChannelPickerActivity;->x0:Landroid/widget/Button;

    .line 628
    .line 629
    new-instance v2, Lb7/H;

    .line 630
    .line 631
    const/4 v3, 0x5

    .line 632
    invoke-direct {v2, v8, v3}, Lb7/H;-><init>(Lpe/hf/black20/ChannelPickerActivity;I)V

    .line 633
    .line 634
    .line 635
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 636
    .line 637
    .line 638
    new-instance v0, Lb7/I;

    .line 639
    .line 640
    invoke-direct {v0, v8, p1, v4}, Lb7/I;-><init>(Lpe/hf/black20/ChannelPickerActivity;Landroid/app/AlertDialog;I)V

    .line 641
    .line 642
    .line 643
    invoke-virtual {v9, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 644
    .line 645
    .line 646
    new-instance v0, Lb7/I;

    .line 647
    .line 648
    invoke-direct {v0, v8, p1, v1}, Lb7/I;-><init>(Lpe/hf/black20/ChannelPickerActivity;Landroid/app/AlertDialog;I)V

    .line 649
    .line 650
    .line 651
    invoke-virtual {v10, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 652
    .line 653
    .line 654
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 655
    .line 656
    .line 657
    return-void

    .line 658
    :pswitch_4
    iget p1, v8, Lpe/hf/black20/ChannelPickerActivity;->G0:I

    .line 659
    .line 660
    const/16 v0, 0x3b

    .line 661
    .line 662
    if-ge p1, v0, :cond_2

    .line 663
    .line 664
    add-int/2addr p1, v1

    .line 665
    iput p1, v8, Lpe/hf/black20/ChannelPickerActivity;->G0:I

    .line 666
    .line 667
    iget-object v0, v8, Lpe/hf/black20/ChannelPickerActivity;->B0:Landroid/widget/TextView;

    .line 668
    .line 669
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object p1

    .line 673
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 674
    .line 675
    .line 676
    iget p1, v8, Lpe/hf/black20/ChannelPickerActivity;->G0:I

    .line 677
    .line 678
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 679
    .line 680
    .line 681
    move-result-object v7

    .line 682
    iput-object v7, v8, Lpe/hf/black20/ChannelPickerActivity;->k0:Ljava/lang/String;

    .line 683
    .line 684
    iget-object v3, v8, Lpe/hf/black20/ChannelPickerActivity;->i0:Ljava/lang/String;

    .line 685
    .line 686
    iget-object v4, v8, Lpe/hf/black20/ChannelPickerActivity;->h0:Ljava/lang/String;

    .line 687
    .line 688
    iget-object v5, v8, Lpe/hf/black20/ChannelPickerActivity;->g0:Ljava/lang/String;

    .line 689
    .line 690
    iget-object v6, v8, Lpe/hf/black20/ChannelPickerActivity;->j0:Ljava/lang/String;

    .line 691
    .line 692
    move-object v2, v8

    .line 693
    invoke-virtual/range {v2 .. v7}, Lpe/hf/black20/ChannelPickerActivity;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    .line 695
    .line 696
    :cond_2
    return-void

    .line 697
    :pswitch_5
    iget p1, v8, Lpe/hf/black20/ChannelPickerActivity;->G0:I

    .line 698
    .line 699
    if-lez p1, :cond_3

    .line 700
    .line 701
    const/16 v0, 0x3c

    .line 702
    .line 703
    if-ge p1, v0, :cond_3

    .line 704
    .line 705
    sub-int/2addr p1, v1

    .line 706
    iput p1, v8, Lpe/hf/black20/ChannelPickerActivity;->G0:I

    .line 707
    .line 708
    iget-object v0, v8, Lpe/hf/black20/ChannelPickerActivity;->B0:Landroid/widget/TextView;

    .line 709
    .line 710
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 711
    .line 712
    .line 713
    move-result-object p1

    .line 714
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 715
    .line 716
    .line 717
    iget p1, v8, Lpe/hf/black20/ChannelPickerActivity;->G0:I

    .line 718
    .line 719
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 720
    .line 721
    .line 722
    move-result-object v7

    .line 723
    iput-object v7, v8, Lpe/hf/black20/ChannelPickerActivity;->k0:Ljava/lang/String;

    .line 724
    .line 725
    iget-object v3, v8, Lpe/hf/black20/ChannelPickerActivity;->i0:Ljava/lang/String;

    .line 726
    .line 727
    iget-object v4, v8, Lpe/hf/black20/ChannelPickerActivity;->h0:Ljava/lang/String;

    .line 728
    .line 729
    iget-object v5, v8, Lpe/hf/black20/ChannelPickerActivity;->g0:Ljava/lang/String;

    .line 730
    .line 731
    iget-object v6, v8, Lpe/hf/black20/ChannelPickerActivity;->j0:Ljava/lang/String;

    .line 732
    .line 733
    move-object v2, v8

    .line 734
    invoke-virtual/range {v2 .. v7}, Lpe/hf/black20/ChannelPickerActivity;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    .line 736
    .line 737
    :cond_3
    return-void

    .line 738
    :pswitch_6
    iget p1, v8, Lpe/hf/black20/ChannelPickerActivity;->F0:I

    .line 739
    .line 740
    const/16 v0, 0x17

    .line 741
    .line 742
    if-ge p1, v0, :cond_4

    .line 743
    .line 744
    add-int/2addr p1, v1

    .line 745
    iput p1, v8, Lpe/hf/black20/ChannelPickerActivity;->F0:I

    .line 746
    .line 747
    iget-object v0, v8, Lpe/hf/black20/ChannelPickerActivity;->A0:Landroid/widget/TextView;

    .line 748
    .line 749
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 750
    .line 751
    .line 752
    move-result-object p1

    .line 753
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 754
    .line 755
    .line 756
    iget p1, v8, Lpe/hf/black20/ChannelPickerActivity;->F0:I

    .line 757
    .line 758
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 759
    .line 760
    .line 761
    move-result-object v6

    .line 762
    iput-object v6, v8, Lpe/hf/black20/ChannelPickerActivity;->j0:Ljava/lang/String;

    .line 763
    .line 764
    iget-object v3, v8, Lpe/hf/black20/ChannelPickerActivity;->i0:Ljava/lang/String;

    .line 765
    .line 766
    iget-object v4, v8, Lpe/hf/black20/ChannelPickerActivity;->h0:Ljava/lang/String;

    .line 767
    .line 768
    iget-object v5, v8, Lpe/hf/black20/ChannelPickerActivity;->g0:Ljava/lang/String;

    .line 769
    .line 770
    iget-object v7, v8, Lpe/hf/black20/ChannelPickerActivity;->k0:Ljava/lang/String;

    .line 771
    .line 772
    move-object v2, v8

    .line 773
    invoke-virtual/range {v2 .. v7}, Lpe/hf/black20/ChannelPickerActivity;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    .line 775
    .line 776
    :cond_4
    return-void

    .line 777
    :pswitch_7
    iget p1, v8, Lpe/hf/black20/ChannelPickerActivity;->F0:I

    .line 778
    .line 779
    if-lez p1, :cond_5

    .line 780
    .line 781
    const/16 v0, 0x18

    .line 782
    .line 783
    if-ge p1, v0, :cond_5

    .line 784
    .line 785
    sub-int/2addr p1, v1

    .line 786
    iput p1, v8, Lpe/hf/black20/ChannelPickerActivity;->F0:I

    .line 787
    .line 788
    iget-object v0, v8, Lpe/hf/black20/ChannelPickerActivity;->A0:Landroid/widget/TextView;

    .line 789
    .line 790
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 791
    .line 792
    .line 793
    move-result-object p1

    .line 794
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 795
    .line 796
    .line 797
    iget p1, v8, Lpe/hf/black20/ChannelPickerActivity;->F0:I

    .line 798
    .line 799
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 800
    .line 801
    .line 802
    move-result-object v6

    .line 803
    iput-object v6, v8, Lpe/hf/black20/ChannelPickerActivity;->j0:Ljava/lang/String;

    .line 804
    .line 805
    iget-object v3, v8, Lpe/hf/black20/ChannelPickerActivity;->i0:Ljava/lang/String;

    .line 806
    .line 807
    iget-object v4, v8, Lpe/hf/black20/ChannelPickerActivity;->h0:Ljava/lang/String;

    .line 808
    .line 809
    iget-object v5, v8, Lpe/hf/black20/ChannelPickerActivity;->g0:Ljava/lang/String;

    .line 810
    .line 811
    iget-object v7, v8, Lpe/hf/black20/ChannelPickerActivity;->k0:Ljava/lang/String;

    .line 812
    .line 813
    move-object v2, v8

    .line 814
    invoke-virtual/range {v2 .. v7}, Lpe/hf/black20/ChannelPickerActivity;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    .line 816
    .line 817
    :cond_5
    return-void

    .line 818
    :pswitch_8
    iget p1, v8, Lpe/hf/black20/ChannelPickerActivity;->E0:I

    .line 819
    .line 820
    const/16 v0, 0x1f

    .line 821
    .line 822
    if-ge p1, v0, :cond_6

    .line 823
    .line 824
    add-int/2addr p1, v1

    .line 825
    iput p1, v8, Lpe/hf/black20/ChannelPickerActivity;->E0:I

    .line 826
    .line 827
    iget-object v0, v8, Lpe/hf/black20/ChannelPickerActivity;->z0:Landroid/widget/TextView;

    .line 828
    .line 829
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 830
    .line 831
    .line 832
    move-result-object p1

    .line 833
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 834
    .line 835
    .line 836
    iget p1, v8, Lpe/hf/black20/ChannelPickerActivity;->E0:I

    .line 837
    .line 838
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 839
    .line 840
    .line 841
    move-result-object v5

    .line 842
    iput-object v5, v8, Lpe/hf/black20/ChannelPickerActivity;->g0:Ljava/lang/String;

    .line 843
    .line 844
    iget-object v3, v8, Lpe/hf/black20/ChannelPickerActivity;->i0:Ljava/lang/String;

    .line 845
    .line 846
    iget-object v4, v8, Lpe/hf/black20/ChannelPickerActivity;->h0:Ljava/lang/String;

    .line 847
    .line 848
    iget-object v6, v8, Lpe/hf/black20/ChannelPickerActivity;->j0:Ljava/lang/String;

    .line 849
    .line 850
    iget-object v7, v8, Lpe/hf/black20/ChannelPickerActivity;->k0:Ljava/lang/String;

    .line 851
    .line 852
    move-object v2, v8

    .line 853
    invoke-virtual/range {v2 .. v7}, Lpe/hf/black20/ChannelPickerActivity;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    .line 855
    .line 856
    :cond_6
    return-void

    .line 857
    :pswitch_9
    iget p1, v8, Lpe/hf/black20/ChannelPickerActivity;->E0:I

    .line 858
    .line 859
    if-le p1, v1, :cond_7

    .line 860
    .line 861
    const/16 v0, 0x20

    .line 862
    .line 863
    if-ge p1, v0, :cond_7

    .line 864
    .line 865
    sub-int/2addr p1, v1

    .line 866
    iput p1, v8, Lpe/hf/black20/ChannelPickerActivity;->E0:I

    .line 867
    .line 868
    iget-object v0, v8, Lpe/hf/black20/ChannelPickerActivity;->z0:Landroid/widget/TextView;

    .line 869
    .line 870
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 871
    .line 872
    .line 873
    move-result-object p1

    .line 874
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 875
    .line 876
    .line 877
    iget p1, v8, Lpe/hf/black20/ChannelPickerActivity;->E0:I

    .line 878
    .line 879
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 880
    .line 881
    .line 882
    move-result-object v5

    .line 883
    iput-object v5, v8, Lpe/hf/black20/ChannelPickerActivity;->g0:Ljava/lang/String;

    .line 884
    .line 885
    iget-object v3, v8, Lpe/hf/black20/ChannelPickerActivity;->i0:Ljava/lang/String;

    .line 886
    .line 887
    iget-object v4, v8, Lpe/hf/black20/ChannelPickerActivity;->h0:Ljava/lang/String;

    .line 888
    .line 889
    iget-object v6, v8, Lpe/hf/black20/ChannelPickerActivity;->j0:Ljava/lang/String;

    .line 890
    .line 891
    iget-object v7, v8, Lpe/hf/black20/ChannelPickerActivity;->k0:Ljava/lang/String;

    .line 892
    .line 893
    move-object v2, v8

    .line 894
    invoke-virtual/range {v2 .. v7}, Lpe/hf/black20/ChannelPickerActivity;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    .line 896
    .line 897
    :cond_7
    return-void

    .line 898
    nop

    .line 899
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
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
