.class public final Lb7/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lpe/hf/black20/CategoriesActivity;


# direct methods
.method public synthetic constructor <init>(Lpe/hf/black20/CategoriesActivity;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lb7/o;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lb7/o;->b:Lpe/hf/black20/CategoriesActivity;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 5

    .line 1
    iget p1, p0, Lb7/o;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Lb7/o;->b:Lpe/hf/black20/CategoriesActivity;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    iget-object p1, v0, Lpe/hf/black20/CategoriesActivity;->g0:Landroid/widget/ImageButton;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 17
    .line 18
    iget p2, v0, Lpe/hf/black20/CategoriesActivity;->S:I

    .line 19
    .line 20
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 21
    .line 22
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 23
    .line 24
    iget-object p2, v0, Lpe/hf/black20/CategoriesActivity;->g0:Landroid/widget/ImageButton;

    .line 25
    .line 26
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object p1, v0, Lpe/hf/black20/CategoriesActivity;->g0:Landroid/widget/ImageButton;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 37
    .line 38
    iget p2, v0, Lpe/hf/black20/CategoriesActivity;->P:I

    .line 39
    .line 40
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 41
    .line 42
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 43
    .line 44
    iget-object p2, v0, Lpe/hf/black20/CategoriesActivity;->g0:Landroid/widget/ImageButton;

    .line 45
    .line 46
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    .line 48
    .line 49
    :goto_0
    return-void

    .line 50
    :pswitch_0
    if-eqz p2, :cond_1

    .line 51
    .line 52
    iget-object p1, v0, Lpe/hf/black20/CategoriesActivity;->b0:Landroid/widget/ImageButton;

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 59
    .line 60
    iget p2, v0, Lpe/hf/black20/CategoriesActivity;->S:I

    .line 61
    .line 62
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 63
    .line 64
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 65
    .line 66
    iget-object p2, v0, Lpe/hf/black20/CategoriesActivity;->b0:Landroid/widget/ImageButton;

    .line 67
    .line 68
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    iget-object p1, v0, Lpe/hf/black20/CategoriesActivity;->b0:Landroid/widget/ImageButton;

    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 79
    .line 80
    iget p2, v0, Lpe/hf/black20/CategoriesActivity;->P:I

    .line 81
    .line 82
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 83
    .line 84
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 85
    .line 86
    iget-object p2, v0, Lpe/hf/black20/CategoriesActivity;->b0:Landroid/widget/ImageButton;

    .line 87
    .line 88
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    .line 90
    .line 91
    :goto_1
    return-void

    .line 92
    :pswitch_1
    if-eqz p2, :cond_2

    .line 93
    .line 94
    iget-object p1, v0, Lpe/hf/black20/CategoriesActivity;->f0:Landroid/widget/ImageButton;

    .line 95
    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 101
    .line 102
    iget p2, v0, Lpe/hf/black20/CategoriesActivity;->W:I

    .line 103
    .line 104
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 105
    .line 106
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 107
    .line 108
    iget-object p2, v0, Lpe/hf/black20/CategoriesActivity;->f0:Landroid/widget/ImageButton;

    .line 109
    .line 110
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_2
    iget-object p1, v0, Lpe/hf/black20/CategoriesActivity;->f0:Landroid/widget/ImageButton;

    .line 115
    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 121
    .line 122
    iget p2, v0, Lpe/hf/black20/CategoriesActivity;->V:I

    .line 123
    .line 124
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 125
    .line 126
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 127
    .line 128
    iget-object p2, v0, Lpe/hf/black20/CategoriesActivity;->f0:Landroid/widget/ImageButton;

    .line 129
    .line 130
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    .line 132
    .line 133
    :goto_2
    return-void

    .line 134
    :pswitch_2
    if-eqz p2, :cond_3

    .line 135
    .line 136
    iget-object p1, v0, Lpe/hf/black20/CategoriesActivity;->p0:Landroid/widget/ImageButton;

    .line 137
    .line 138
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 143
    .line 144
    iget p2, v0, Lpe/hf/black20/CategoriesActivity;->O:I

    .line 145
    .line 146
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 147
    .line 148
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 149
    .line 150
    iget-object p2, v0, Lpe/hf/black20/CategoriesActivity;->p0:Landroid/widget/ImageButton;

    .line 151
    .line 152
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    .line 154
    .line 155
    goto :goto_3

    .line 156
    :cond_3
    iget-object p1, v0, Lpe/hf/black20/CategoriesActivity;->p0:Landroid/widget/ImageButton;

    .line 157
    .line 158
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 163
    .line 164
    iget p2, v0, Lpe/hf/black20/CategoriesActivity;->N:I

    .line 165
    .line 166
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 167
    .line 168
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 169
    .line 170
    iget-object p2, v0, Lpe/hf/black20/CategoriesActivity;->p0:Landroid/widget/ImageButton;

    .line 171
    .line 172
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    .line 174
    .line 175
    :goto_3
    return-void

    .line 176
    :pswitch_3
    if-eqz p2, :cond_4

    .line 177
    .line 178
    iget-object p1, v0, Lpe/hf/black20/CategoriesActivity;->o0:Landroid/widget/ImageButton;

    .line 179
    .line 180
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 185
    .line 186
    iget p2, v0, Lpe/hf/black20/CategoriesActivity;->O:I

    .line 187
    .line 188
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 189
    .line 190
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 191
    .line 192
    iget-object p2, v0, Lpe/hf/black20/CategoriesActivity;->o0:Landroid/widget/ImageButton;

    .line 193
    .line 194
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    .line 196
    .line 197
    goto :goto_4

    .line 198
    :cond_4
    iget-object p1, v0, Lpe/hf/black20/CategoriesActivity;->o0:Landroid/widget/ImageButton;

    .line 199
    .line 200
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 205
    .line 206
    iget p2, v0, Lpe/hf/black20/CategoriesActivity;->N:I

    .line 207
    .line 208
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 209
    .line 210
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 211
    .line 212
    iget-object p2, v0, Lpe/hf/black20/CategoriesActivity;->o0:Landroid/widget/ImageButton;

    .line 213
    .line 214
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    .line 216
    .line 217
    :goto_4
    return-void

    .line 218
    :pswitch_4
    if-eqz p2, :cond_5

    .line 219
    .line 220
    iget-object p1, v0, Lpe/hf/black20/CategoriesActivity;->a0:Landroid/widget/ImageButton;

    .line 221
    .line 222
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 227
    .line 228
    iget p2, v0, Lpe/hf/black20/CategoriesActivity;->R:I

    .line 229
    .line 230
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 231
    .line 232
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 233
    .line 234
    iget-object p2, v0, Lpe/hf/black20/CategoriesActivity;->a0:Landroid/widget/ImageButton;

    .line 235
    .line 236
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 237
    .line 238
    .line 239
    goto :goto_5

    .line 240
    :cond_5
    iget-object p1, v0, Lpe/hf/black20/CategoriesActivity;->a0:Landroid/widget/ImageButton;

    .line 241
    .line 242
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 247
    .line 248
    iget p2, v0, Lpe/hf/black20/CategoriesActivity;->Q:I

    .line 249
    .line 250
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 251
    .line 252
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 253
    .line 254
    iget-object p2, v0, Lpe/hf/black20/CategoriesActivity;->a0:Landroid/widget/ImageButton;

    .line 255
    .line 256
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    .line 258
    .line 259
    :goto_5
    return-void

    .line 260
    :pswitch_5
    if-eqz p2, :cond_6

    .line 261
    .line 262
    iget-object p1, v0, Lpe/hf/black20/CategoriesActivity;->m0:Landroid/widget/ImageButton;

    .line 263
    .line 264
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 269
    .line 270
    iget p2, v0, Lpe/hf/black20/CategoriesActivity;->O:I

    .line 271
    .line 272
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 273
    .line 274
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 275
    .line 276
    iget-object p2, v0, Lpe/hf/black20/CategoriesActivity;->m0:Landroid/widget/ImageButton;

    .line 277
    .line 278
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    .line 280
    .line 281
    goto :goto_6

    .line 282
    :cond_6
    iget-object p1, v0, Lpe/hf/black20/CategoriesActivity;->m0:Landroid/widget/ImageButton;

    .line 283
    .line 284
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 285
    .line 286
    .line 287
    move-result-object p1

    .line 288
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 289
    .line 290
    iget p2, v0, Lpe/hf/black20/CategoriesActivity;->N:I

    .line 291
    .line 292
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 293
    .line 294
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 295
    .line 296
    iget-object p2, v0, Lpe/hf/black20/CategoriesActivity;->m0:Landroid/widget/ImageButton;

    .line 297
    .line 298
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    .line 300
    .line 301
    :goto_6
    return-void

    .line 302
    :pswitch_6
    if-eqz p2, :cond_7

    .line 303
    .line 304
    iget-object p1, v0, Lpe/hf/black20/CategoriesActivity;->l0:Landroid/widget/ImageButton;

    .line 305
    .line 306
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 307
    .line 308
    .line 309
    move-result-object p1

    .line 310
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 311
    .line 312
    iget p2, v0, Lpe/hf/black20/CategoriesActivity;->O:I

    .line 313
    .line 314
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 315
    .line 316
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 317
    .line 318
    iget-object p2, v0, Lpe/hf/black20/CategoriesActivity;->l0:Landroid/widget/ImageButton;

    .line 319
    .line 320
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 321
    .line 322
    .line 323
    goto :goto_7

    .line 324
    :cond_7
    iget-object p1, v0, Lpe/hf/black20/CategoriesActivity;->l0:Landroid/widget/ImageButton;

    .line 325
    .line 326
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 327
    .line 328
    .line 329
    move-result-object p1

    .line 330
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 331
    .line 332
    iget p2, v0, Lpe/hf/black20/CategoriesActivity;->N:I

    .line 333
    .line 334
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 335
    .line 336
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 337
    .line 338
    iget-object p2, v0, Lpe/hf/black20/CategoriesActivity;->l0:Landroid/widget/ImageButton;

    .line 339
    .line 340
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 341
    .line 342
    .line 343
    :goto_7
    return-void

    .line 344
    :pswitch_7
    if-eqz p2, :cond_8

    .line 345
    .line 346
    iget-object p1, v0, Lpe/hf/black20/CategoriesActivity;->k0:Landroid/widget/ImageButton;

    .line 347
    .line 348
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 349
    .line 350
    .line 351
    move-result-object p1

    .line 352
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 353
    .line 354
    iget p2, v0, Lpe/hf/black20/CategoriesActivity;->O:I

    .line 355
    .line 356
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 357
    .line 358
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 359
    .line 360
    iget-object p2, v0, Lpe/hf/black20/CategoriesActivity;->k0:Landroid/widget/ImageButton;

    .line 361
    .line 362
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 363
    .line 364
    .line 365
    goto :goto_8

    .line 366
    :cond_8
    iget-object p1, v0, Lpe/hf/black20/CategoriesActivity;->k0:Landroid/widget/ImageButton;

    .line 367
    .line 368
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 369
    .line 370
    .line 371
    move-result-object p1

    .line 372
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 373
    .line 374
    iget p2, v0, Lpe/hf/black20/CategoriesActivity;->N:I

    .line 375
    .line 376
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 377
    .line 378
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 379
    .line 380
    iget-object p2, v0, Lpe/hf/black20/CategoriesActivity;->k0:Landroid/widget/ImageButton;

    .line 381
    .line 382
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 383
    .line 384
    .line 385
    :goto_8
    return-void

    .line 386
    :pswitch_8
    if-eqz p2, :cond_9

    .line 387
    .line 388
    iget-object p1, v0, Lpe/hf/black20/CategoriesActivity;->j0:Landroid/widget/ImageButton;

    .line 389
    .line 390
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 391
    .line 392
    .line 393
    move-result-object p1

    .line 394
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 395
    .line 396
    iget p2, v0, Lpe/hf/black20/CategoriesActivity;->U:I

    .line 397
    .line 398
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 399
    .line 400
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 401
    .line 402
    iget-object p2, v0, Lpe/hf/black20/CategoriesActivity;->j0:Landroid/widget/ImageButton;

    .line 403
    .line 404
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 405
    .line 406
    .line 407
    goto :goto_9

    .line 408
    :cond_9
    iget-object p1, v0, Lpe/hf/black20/CategoriesActivity;->j0:Landroid/widget/ImageButton;

    .line 409
    .line 410
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 411
    .line 412
    .line 413
    move-result-object p1

    .line 414
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 415
    .line 416
    iget p2, v0, Lpe/hf/black20/CategoriesActivity;->T:I

    .line 417
    .line 418
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 419
    .line 420
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 421
    .line 422
    iget-object p2, v0, Lpe/hf/black20/CategoriesActivity;->j0:Landroid/widget/ImageButton;

    .line 423
    .line 424
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 425
    .line 426
    .line 427
    :goto_9
    return-void

    .line 428
    :pswitch_9
    if-eqz p2, :cond_a

    .line 429
    .line 430
    iget-object p1, v0, Lpe/hf/black20/CategoriesActivity;->i0:Landroid/widget/ImageButton;

    .line 431
    .line 432
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 433
    .line 434
    .line 435
    move-result-object p1

    .line 436
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 437
    .line 438
    iget p2, v0, Lpe/hf/black20/CategoriesActivity;->U:I

    .line 439
    .line 440
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 441
    .line 442
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 443
    .line 444
    iget-object p2, v0, Lpe/hf/black20/CategoriesActivity;->i0:Landroid/widget/ImageButton;

    .line 445
    .line 446
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 447
    .line 448
    .line 449
    goto :goto_a

    .line 450
    :cond_a
    iget-object p1, v0, Lpe/hf/black20/CategoriesActivity;->i0:Landroid/widget/ImageButton;

    .line 451
    .line 452
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 453
    .line 454
    .line 455
    move-result-object p1

    .line 456
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 457
    .line 458
    iget p2, v0, Lpe/hf/black20/CategoriesActivity;->T:I

    .line 459
    .line 460
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 461
    .line 462
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 463
    .line 464
    iget-object p2, v0, Lpe/hf/black20/CategoriesActivity;->i0:Landroid/widget/ImageButton;

    .line 465
    .line 466
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 467
    .line 468
    .line 469
    :goto_a
    return-void

    .line 470
    :pswitch_a
    if-eqz p2, :cond_b

    .line 471
    .line 472
    iget-object p1, v0, Lpe/hf/black20/CategoriesActivity;->h0:Landroid/widget/ImageButton;

    .line 473
    .line 474
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 475
    .line 476
    .line 477
    move-result-object p1

    .line 478
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 479
    .line 480
    iget p2, v0, Lpe/hf/black20/CategoriesActivity;->U:I

    .line 481
    .line 482
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 483
    .line 484
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 485
    .line 486
    iget-object p2, v0, Lpe/hf/black20/CategoriesActivity;->h0:Landroid/widget/ImageButton;

    .line 487
    .line 488
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 489
    .line 490
    .line 491
    goto :goto_b

    .line 492
    :cond_b
    iget-object p1, v0, Lpe/hf/black20/CategoriesActivity;->h0:Landroid/widget/ImageButton;

    .line 493
    .line 494
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 495
    .line 496
    .line 497
    move-result-object p1

    .line 498
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 499
    .line 500
    iget p2, v0, Lpe/hf/black20/CategoriesActivity;->T:I

    .line 501
    .line 502
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 503
    .line 504
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 505
    .line 506
    iget-object p2, v0, Lpe/hf/black20/CategoriesActivity;->h0:Landroid/widget/ImageButton;

    .line 507
    .line 508
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 509
    .line 510
    .line 511
    :goto_b
    return-void

    .line 512
    :pswitch_b
    if-eqz p2, :cond_c

    .line 513
    .line 514
    iget-object p1, v0, Lpe/hf/black20/CategoriesActivity;->e0:Landroid/widget/ImageButton;

    .line 515
    .line 516
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 517
    .line 518
    .line 519
    move-result-object p1

    .line 520
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 521
    .line 522
    iget p2, v0, Lpe/hf/black20/CategoriesActivity;->U:I

    .line 523
    .line 524
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 525
    .line 526
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 527
    .line 528
    iget-object p2, v0, Lpe/hf/black20/CategoriesActivity;->e0:Landroid/widget/ImageButton;

    .line 529
    .line 530
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 531
    .line 532
    .line 533
    goto :goto_c

    .line 534
    :cond_c
    iget-object p1, v0, Lpe/hf/black20/CategoriesActivity;->e0:Landroid/widget/ImageButton;

    .line 535
    .line 536
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 537
    .line 538
    .line 539
    move-result-object p1

    .line 540
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 541
    .line 542
    iget p2, v0, Lpe/hf/black20/CategoriesActivity;->T:I

    .line 543
    .line 544
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 545
    .line 546
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 547
    .line 548
    iget-object p2, v0, Lpe/hf/black20/CategoriesActivity;->e0:Landroid/widget/ImageButton;

    .line 549
    .line 550
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 551
    .line 552
    .line 553
    :goto_c
    return-void

    .line 554
    :pswitch_c
    if-eqz p2, :cond_d

    .line 555
    .line 556
    iget-object p1, v0, Lpe/hf/black20/CategoriesActivity;->d0:Landroid/widget/ImageButton;

    .line 557
    .line 558
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 559
    .line 560
    .line 561
    move-result-object p1

    .line 562
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 563
    .line 564
    iget p2, v0, Lpe/hf/black20/CategoriesActivity;->U:I

    .line 565
    .line 566
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 567
    .line 568
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 569
    .line 570
    iget-object p2, v0, Lpe/hf/black20/CategoriesActivity;->d0:Landroid/widget/ImageButton;

    .line 571
    .line 572
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 573
    .line 574
    .line 575
    goto :goto_d

    .line 576
    :cond_d
    iget-object p1, v0, Lpe/hf/black20/CategoriesActivity;->d0:Landroid/widget/ImageButton;

    .line 577
    .line 578
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 579
    .line 580
    .line 581
    move-result-object p1

    .line 582
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 583
    .line 584
    iget p2, v0, Lpe/hf/black20/CategoriesActivity;->T:I

    .line 585
    .line 586
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 587
    .line 588
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 589
    .line 590
    iget-object p2, v0, Lpe/hf/black20/CategoriesActivity;->d0:Landroid/widget/ImageButton;

    .line 591
    .line 592
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 593
    .line 594
    .line 595
    :goto_d
    return-void

    .line 596
    :pswitch_d
    const-wide/high16 v1, 0x3ff8000000000000L    # 1.5

    .line 597
    .line 598
    if-eqz p2, :cond_e

    .line 599
    .line 600
    iget-object p1, v0, Lpe/hf/black20/CategoriesActivity;->n0:Landroid/widget/ImageButton;

    .line 601
    .line 602
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 603
    .line 604
    .line 605
    move-result-object p1

    .line 606
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 607
    .line 608
    iget p2, v0, Lpe/hf/black20/CategoriesActivity;->S:I

    .line 609
    .line 610
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 611
    .line 612
    sget p2, Lpe/hf/black20/CategoriesActivity;->J0:I

    .line 613
    .line 614
    int-to-double v3, p2

    .line 615
    div-double/2addr v3, v1

    .line 616
    const-wide v1, 0x3ff2666666666666L    # 1.15

    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    mul-double v3, v3, v1

    .line 622
    .line 623
    double-to-int p2, v3

    .line 624
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 625
    .line 626
    iget-object p2, v0, Lpe/hf/black20/CategoriesActivity;->n0:Landroid/widget/ImageButton;

    .line 627
    .line 628
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 629
    .line 630
    .line 631
    goto :goto_e

    .line 632
    :cond_e
    iget-object p1, v0, Lpe/hf/black20/CategoriesActivity;->n0:Landroid/widget/ImageButton;

    .line 633
    .line 634
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 635
    .line 636
    .line 637
    move-result-object p1

    .line 638
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 639
    .line 640
    iget p2, v0, Lpe/hf/black20/CategoriesActivity;->P:I

    .line 641
    .line 642
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 643
    .line 644
    sget p2, Lpe/hf/black20/CategoriesActivity;->J0:I

    .line 645
    .line 646
    int-to-double v3, p2

    .line 647
    div-double/2addr v3, v1

    .line 648
    double-to-int p2, v3

    .line 649
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 650
    .line 651
    iget-object p2, v0, Lpe/hf/black20/CategoriesActivity;->n0:Landroid/widget/ImageButton;

    .line 652
    .line 653
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 654
    .line 655
    .line 656
    :goto_e
    return-void

    .line 657
    :pswitch_e
    if-eqz p2, :cond_f

    .line 658
    .line 659
    iget-object p1, v0, Lpe/hf/black20/CategoriesActivity;->c0:Landroid/widget/ImageButton;

    .line 660
    .line 661
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 662
    .line 663
    .line 664
    move-result-object p1

    .line 665
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 666
    .line 667
    iget p2, v0, Lpe/hf/black20/CategoriesActivity;->U:I

    .line 668
    .line 669
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 670
    .line 671
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 672
    .line 673
    iget-object p2, v0, Lpe/hf/black20/CategoriesActivity;->c0:Landroid/widget/ImageButton;

    .line 674
    .line 675
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 676
    .line 677
    .line 678
    goto :goto_f

    .line 679
    :cond_f
    iget-object p1, v0, Lpe/hf/black20/CategoriesActivity;->c0:Landroid/widget/ImageButton;

    .line 680
    .line 681
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 682
    .line 683
    .line 684
    move-result-object p1

    .line 685
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 686
    .line 687
    iget p2, v0, Lpe/hf/black20/CategoriesActivity;->T:I

    .line 688
    .line 689
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 690
    .line 691
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 692
    .line 693
    iget-object p2, v0, Lpe/hf/black20/CategoriesActivity;->c0:Landroid/widget/ImageButton;

    .line 694
    .line 695
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 696
    .line 697
    .line 698
    :goto_f
    return-void

    .line 699
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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
