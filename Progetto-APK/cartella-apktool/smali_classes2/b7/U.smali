.class public final Lb7/U;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lpe/hf/black20/MultiScreenActivityEXO;


# direct methods
.method public synthetic constructor <init>(Lpe/hf/black20/MultiScreenActivityEXO;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, Lb7/U;->a:I

    .line 5
    .line 6
    iput-object p1, p0, Lb7/U;->b:Lpe/hf/black20/MultiScreenActivityEXO;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 5

    .line 1
    iget p1, p0, Lb7/U;->a:I

    .line 2
    .line 3
    const-wide/high16 v0, 0x400c000000000000L    # 3.5

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/16 v3, 0x8

    .line 7
    .line 8
    iget-object v4, p0, Lb7/U;->b:Lpe/hf/black20/MultiScreenActivityEXO;

    .line 9
    .line 10
    packed-switch p1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    iget-object p1, v4, Lpe/hf/black20/MultiScreenActivityEXO;->u0:Landroid/widget/ImageButton;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 22
    .line 23
    iget p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->z1:I

    .line 24
    .line 25
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 26
    .line 27
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 28
    .line 29
    iget-object p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->u0:Landroid/widget/ImageButton;

    .line 30
    .line 31
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object p1, v4, Lpe/hf/black20/MultiScreenActivityEXO;->u0:Landroid/widget/ImageButton;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 42
    .line 43
    iget p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->A1:I

    .line 44
    .line 45
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 46
    .line 47
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 48
    .line 49
    iget-object p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->u0:Landroid/widget/ImageButton;

    .line 50
    .line 51
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    return-void

    .line 55
    :pswitch_0
    if-eqz p2, :cond_1

    .line 56
    .line 57
    iget-object p1, v4, Lpe/hf/black20/MultiScreenActivityEXO;->t0:Landroid/widget/ImageButton;

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 64
    .line 65
    iget p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->z1:I

    .line 66
    .line 67
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 68
    .line 69
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 70
    .line 71
    iget-object p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->t0:Landroid/widget/ImageButton;

    .line 72
    .line 73
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    iget-object p1, v4, Lpe/hf/black20/MultiScreenActivityEXO;->t0:Landroid/widget/ImageButton;

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 84
    .line 85
    iget p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->A1:I

    .line 86
    .line 87
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 88
    .line 89
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 90
    .line 91
    iget-object p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->t0:Landroid/widget/ImageButton;

    .line 92
    .line 93
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    .line 95
    .line 96
    :goto_1
    return-void

    .line 97
    :pswitch_1
    if-eqz p2, :cond_2

    .line 98
    .line 99
    iget-object p1, v4, Lpe/hf/black20/MultiScreenActivityEXO;->D0:Landroid/widget/ImageButton;

    .line 100
    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 106
    .line 107
    iget p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->z1:I

    .line 108
    .line 109
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 110
    .line 111
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 112
    .line 113
    iget-object p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->D0:Landroid/widget/ImageButton;

    .line 114
    .line 115
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_2
    iget-object p1, v4, Lpe/hf/black20/MultiScreenActivityEXO;->D0:Landroid/widget/ImageButton;

    .line 120
    .line 121
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 126
    .line 127
    iget p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->A1:I

    .line 128
    .line 129
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 130
    .line 131
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 132
    .line 133
    iget-object p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->D0:Landroid/widget/ImageButton;

    .line 134
    .line 135
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    .line 137
    .line 138
    :goto_2
    return-void

    .line 139
    :pswitch_2
    if-eqz p2, :cond_3

    .line 140
    .line 141
    iget-object p1, v4, Lpe/hf/black20/MultiScreenActivityEXO;->C0:Landroid/widget/ImageButton;

    .line 142
    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 148
    .line 149
    iget p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->z1:I

    .line 150
    .line 151
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 152
    .line 153
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 154
    .line 155
    iget-object p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->C0:Landroid/widget/ImageButton;

    .line 156
    .line 157
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    .line 159
    .line 160
    goto :goto_3

    .line 161
    :cond_3
    iget-object p1, v4, Lpe/hf/black20/MultiScreenActivityEXO;->C0:Landroid/widget/ImageButton;

    .line 162
    .line 163
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 168
    .line 169
    iget p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->A1:I

    .line 170
    .line 171
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 172
    .line 173
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 174
    .line 175
    iget-object p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->C0:Landroid/widget/ImageButton;

    .line 176
    .line 177
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    .line 179
    .line 180
    :goto_3
    return-void

    .line 181
    :pswitch_3
    if-eqz p2, :cond_4

    .line 182
    .line 183
    iget-object p1, v4, Lpe/hf/black20/MultiScreenActivityEXO;->B0:Landroid/widget/ImageButton;

    .line 184
    .line 185
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 190
    .line 191
    iget p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->z1:I

    .line 192
    .line 193
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 194
    .line 195
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 196
    .line 197
    iget-object p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->B0:Landroid/widget/ImageButton;

    .line 198
    .line 199
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    .line 201
    .line 202
    goto :goto_4

    .line 203
    :cond_4
    iget-object p1, v4, Lpe/hf/black20/MultiScreenActivityEXO;->B0:Landroid/widget/ImageButton;

    .line 204
    .line 205
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 210
    .line 211
    iget p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->A1:I

    .line 212
    .line 213
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 214
    .line 215
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 216
    .line 217
    iget-object p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->B0:Landroid/widget/ImageButton;

    .line 218
    .line 219
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    .line 221
    .line 222
    :goto_4
    return-void

    .line 223
    :pswitch_4
    if-eqz p2, :cond_5

    .line 224
    .line 225
    iget-object p1, v4, Lpe/hf/black20/MultiScreenActivityEXO;->A0:Landroid/widget/ImageButton;

    .line 226
    .line 227
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 232
    .line 233
    iget p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->z1:I

    .line 234
    .line 235
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 236
    .line 237
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 238
    .line 239
    iget-object p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->A0:Landroid/widget/ImageButton;

    .line 240
    .line 241
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    .line 243
    .line 244
    goto :goto_5

    .line 245
    :cond_5
    iget-object p1, v4, Lpe/hf/black20/MultiScreenActivityEXO;->A0:Landroid/widget/ImageButton;

    .line 246
    .line 247
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 248
    .line 249
    .line 250
    move-result-object p1

    .line 251
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 252
    .line 253
    iget p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->A1:I

    .line 254
    .line 255
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 256
    .line 257
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 258
    .line 259
    iget-object p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->A0:Landroid/widget/ImageButton;

    .line 260
    .line 261
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    .line 263
    .line 264
    :goto_5
    return-void

    .line 265
    :pswitch_5
    if-eqz p2, :cond_6

    .line 266
    .line 267
    iget-object p1, v4, Lpe/hf/black20/MultiScreenActivityEXO;->E0:Landroid/widget/ImageButton;

    .line 268
    .line 269
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 274
    .line 275
    iget p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->L0:I

    .line 276
    .line 277
    mul-int/lit8 p2, p2, 0x64

    .line 278
    .line 279
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 280
    .line 281
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 282
    .line 283
    iget-object p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->E0:Landroid/widget/ImageButton;

    .line 284
    .line 285
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 286
    .line 287
    .line 288
    goto :goto_6

    .line 289
    :cond_6
    iget-object p1, v4, Lpe/hf/black20/MultiScreenActivityEXO;->E0:Landroid/widget/ImageButton;

    .line 290
    .line 291
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 296
    .line 297
    iget p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->L0:I

    .line 298
    .line 299
    mul-int/lit8 p2, p2, 0x50

    .line 300
    .line 301
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 302
    .line 303
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 304
    .line 305
    iget-object p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->E0:Landroid/widget/ImageButton;

    .line 306
    .line 307
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 308
    .line 309
    .line 310
    :goto_6
    return-void

    .line 311
    :pswitch_6
    if-eqz p2, :cond_7

    .line 312
    .line 313
    iget-object p1, v4, Lpe/hf/black20/MultiScreenActivityEXO;->k0:Landroid/widget/ImageButton;

    .line 314
    .line 315
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 316
    .line 317
    .line 318
    move-result-object p1

    .line 319
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 320
    .line 321
    iget p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->z1:I

    .line 322
    .line 323
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 324
    .line 325
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 326
    .line 327
    iget-object p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->k0:Landroid/widget/ImageButton;

    .line 328
    .line 329
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    .line 331
    .line 332
    goto :goto_7

    .line 333
    :cond_7
    iget-object p1, v4, Lpe/hf/black20/MultiScreenActivityEXO;->k0:Landroid/widget/ImageButton;

    .line 334
    .line 335
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 336
    .line 337
    .line 338
    move-result-object p1

    .line 339
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 340
    .line 341
    iget p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->A1:I

    .line 342
    .line 343
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 344
    .line 345
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 346
    .line 347
    iget-object p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->k0:Landroid/widget/ImageButton;

    .line 348
    .line 349
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 350
    .line 351
    .line 352
    :goto_7
    return-void

    .line 353
    :pswitch_7
    if-eqz p2, :cond_8

    .line 354
    .line 355
    iget-object p1, v4, Lpe/hf/black20/MultiScreenActivityEXO;->k0:Landroid/widget/ImageButton;

    .line 356
    .line 357
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 358
    .line 359
    .line 360
    iget-object p1, v4, Lpe/hf/black20/MultiScreenActivityEXO;->b0:Landroid/widget/FrameLayout;

    .line 361
    .line 362
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 363
    .line 364
    .line 365
    iget-object p1, v4, Lpe/hf/black20/MultiScreenActivityEXO;->c0:Landroid/widget/FrameLayout;

    .line 366
    .line 367
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 368
    .line 369
    .line 370
    iget-object p1, v4, Lpe/hf/black20/MultiScreenActivityEXO;->d0:Landroid/widget/FrameLayout;

    .line 371
    .line 372
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 373
    .line 374
    .line 375
    iget-object p1, v4, Lpe/hf/black20/MultiScreenActivityEXO;->e0:Landroid/widget/FrameLayout;

    .line 376
    .line 377
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 378
    .line 379
    .line 380
    :cond_8
    return-void

    .line 381
    :pswitch_8
    if-eqz p2, :cond_9

    .line 382
    .line 383
    iget-object p1, v4, Lpe/hf/black20/MultiScreenActivityEXO;->j0:Landroid/widget/ImageButton;

    .line 384
    .line 385
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 386
    .line 387
    .line 388
    iget-object p1, v4, Lpe/hf/black20/MultiScreenActivityEXO;->b0:Landroid/widget/FrameLayout;

    .line 389
    .line 390
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 391
    .line 392
    .line 393
    iget-object p1, v4, Lpe/hf/black20/MultiScreenActivityEXO;->c0:Landroid/widget/FrameLayout;

    .line 394
    .line 395
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 396
    .line 397
    .line 398
    iget-object p1, v4, Lpe/hf/black20/MultiScreenActivityEXO;->d0:Landroid/widget/FrameLayout;

    .line 399
    .line 400
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 401
    .line 402
    .line 403
    iget-object p1, v4, Lpe/hf/black20/MultiScreenActivityEXO;->e0:Landroid/widget/FrameLayout;

    .line 404
    .line 405
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 406
    .line 407
    .line 408
    :cond_9
    return-void

    .line 409
    :pswitch_9
    if-eqz p2, :cond_a

    .line 410
    .line 411
    iget-object p1, v4, Lpe/hf/black20/MultiScreenActivityEXO;->i0:Landroid/widget/ImageButton;

    .line 412
    .line 413
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 414
    .line 415
    .line 416
    iget-object p1, v4, Lpe/hf/black20/MultiScreenActivityEXO;->b0:Landroid/widget/FrameLayout;

    .line 417
    .line 418
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 419
    .line 420
    .line 421
    iget-object p1, v4, Lpe/hf/black20/MultiScreenActivityEXO;->c0:Landroid/widget/FrameLayout;

    .line 422
    .line 423
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 424
    .line 425
    .line 426
    iget-object p1, v4, Lpe/hf/black20/MultiScreenActivityEXO;->d0:Landroid/widget/FrameLayout;

    .line 427
    .line 428
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 429
    .line 430
    .line 431
    iget-object p1, v4, Lpe/hf/black20/MultiScreenActivityEXO;->e0:Landroid/widget/FrameLayout;

    .line 432
    .line 433
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 434
    .line 435
    .line 436
    :cond_a
    return-void

    .line 437
    :pswitch_a
    if-eqz p2, :cond_b

    .line 438
    .line 439
    iget-object p1, v4, Lpe/hf/black20/MultiScreenActivityEXO;->h0:Landroid/widget/ImageButton;

    .line 440
    .line 441
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 442
    .line 443
    .line 444
    iget-object p1, v4, Lpe/hf/black20/MultiScreenActivityEXO;->b0:Landroid/widget/FrameLayout;

    .line 445
    .line 446
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 447
    .line 448
    .line 449
    iget-object p1, v4, Lpe/hf/black20/MultiScreenActivityEXO;->c0:Landroid/widget/FrameLayout;

    .line 450
    .line 451
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 452
    .line 453
    .line 454
    iget-object p1, v4, Lpe/hf/black20/MultiScreenActivityEXO;->d0:Landroid/widget/FrameLayout;

    .line 455
    .line 456
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 457
    .line 458
    .line 459
    iget-object p1, v4, Lpe/hf/black20/MultiScreenActivityEXO;->e0:Landroid/widget/FrameLayout;

    .line 460
    .line 461
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 462
    .line 463
    .line 464
    :cond_b
    return-void

    .line 465
    :pswitch_b
    if-eqz p2, :cond_c

    .line 466
    .line 467
    iget-object p1, v4, Lpe/hf/black20/MultiScreenActivityEXO;->z0:Landroid/widget/ImageButton;

    .line 468
    .line 469
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 470
    .line 471
    .line 472
    move-result-object p1

    .line 473
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 474
    .line 475
    iget p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->x1:I

    .line 476
    .line 477
    div-int/lit8 p2, p2, 0x3

    .line 478
    .line 479
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 480
    .line 481
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 482
    .line 483
    iget-object p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->z0:Landroid/widget/ImageButton;

    .line 484
    .line 485
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 486
    .line 487
    .line 488
    goto :goto_8

    .line 489
    :cond_c
    iget-object p1, v4, Lpe/hf/black20/MultiScreenActivityEXO;->z0:Landroid/widget/ImageButton;

    .line 490
    .line 491
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 492
    .line 493
    .line 494
    move-result-object p1

    .line 495
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 496
    .line 497
    iget p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->x1:I

    .line 498
    .line 499
    int-to-double v2, p2

    .line 500
    div-double/2addr v2, v0

    .line 501
    double-to-int p2, v2

    .line 502
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 503
    .line 504
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 505
    .line 506
    iget-object p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->z0:Landroid/widget/ImageButton;

    .line 507
    .line 508
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 509
    .line 510
    .line 511
    :goto_8
    return-void

    .line 512
    :pswitch_c
    if-eqz p2, :cond_d

    .line 513
    .line 514
    iget-object p1, v4, Lpe/hf/black20/MultiScreenActivityEXO;->j0:Landroid/widget/ImageButton;

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
    iget p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->z1:I

    .line 523
    .line 524
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 525
    .line 526
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 527
    .line 528
    iget-object p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->j0:Landroid/widget/ImageButton;

    .line 529
    .line 530
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 531
    .line 532
    .line 533
    goto :goto_9

    .line 534
    :cond_d
    iget-object p1, v4, Lpe/hf/black20/MultiScreenActivityEXO;->j0:Landroid/widget/ImageButton;

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
    iget p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->A1:I

    .line 543
    .line 544
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 545
    .line 546
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 547
    .line 548
    iget-object p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->j0:Landroid/widget/ImageButton;

    .line 549
    .line 550
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 551
    .line 552
    .line 553
    :goto_9
    return-void

    .line 554
    :pswitch_d
    if-eqz p2, :cond_e

    .line 555
    .line 556
    iget-object p1, v4, Lpe/hf/black20/MultiScreenActivityEXO;->y0:Landroid/widget/ImageButton;

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
    iget p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->x1:I

    .line 565
    .line 566
    div-int/lit8 p2, p2, 0x3

    .line 567
    .line 568
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 569
    .line 570
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 571
    .line 572
    iget-object p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->y0:Landroid/widget/ImageButton;

    .line 573
    .line 574
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 575
    .line 576
    .line 577
    goto :goto_a

    .line 578
    :cond_e
    iget-object p1, v4, Lpe/hf/black20/MultiScreenActivityEXO;->y0:Landroid/widget/ImageButton;

    .line 579
    .line 580
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 581
    .line 582
    .line 583
    move-result-object p1

    .line 584
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 585
    .line 586
    iget p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->x1:I

    .line 587
    .line 588
    int-to-double v2, p2

    .line 589
    div-double/2addr v2, v0

    .line 590
    double-to-int p2, v2

    .line 591
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 592
    .line 593
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 594
    .line 595
    iget-object p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->y0:Landroid/widget/ImageButton;

    .line 596
    .line 597
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 598
    .line 599
    .line 600
    :goto_a
    return-void

    .line 601
    :pswitch_e
    if-eqz p2, :cond_f

    .line 602
    .line 603
    iget-object p1, v4, Lpe/hf/black20/MultiScreenActivityEXO;->x0:Landroid/widget/ImageButton;

    .line 604
    .line 605
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 606
    .line 607
    .line 608
    move-result-object p1

    .line 609
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 610
    .line 611
    iget p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->x1:I

    .line 612
    .line 613
    div-int/lit8 p2, p2, 0x3

    .line 614
    .line 615
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 616
    .line 617
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 618
    .line 619
    iget-object p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->x0:Landroid/widget/ImageButton;

    .line 620
    .line 621
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 622
    .line 623
    .line 624
    goto :goto_b

    .line 625
    :cond_f
    iget-object p1, v4, Lpe/hf/black20/MultiScreenActivityEXO;->x0:Landroid/widget/ImageButton;

    .line 626
    .line 627
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 628
    .line 629
    .line 630
    move-result-object p1

    .line 631
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 632
    .line 633
    iget p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->x1:I

    .line 634
    .line 635
    int-to-double v2, p2

    .line 636
    div-double/2addr v2, v0

    .line 637
    double-to-int p2, v2

    .line 638
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 639
    .line 640
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 641
    .line 642
    iget-object p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->x0:Landroid/widget/ImageButton;

    .line 643
    .line 644
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 645
    .line 646
    .line 647
    :goto_b
    return-void

    .line 648
    :pswitch_f
    if-eqz p2, :cond_10

    .line 649
    .line 650
    iget-object p1, v4, Lpe/hf/black20/MultiScreenActivityEXO;->s0:Landroid/widget/ImageButton;

    .line 651
    .line 652
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 653
    .line 654
    .line 655
    move-result-object p1

    .line 656
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 657
    .line 658
    iget p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->z1:I

    .line 659
    .line 660
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 661
    .line 662
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 663
    .line 664
    iget-object p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->s0:Landroid/widget/ImageButton;

    .line 665
    .line 666
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 667
    .line 668
    .line 669
    goto :goto_c

    .line 670
    :cond_10
    iget-object p1, v4, Lpe/hf/black20/MultiScreenActivityEXO;->s0:Landroid/widget/ImageButton;

    .line 671
    .line 672
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 673
    .line 674
    .line 675
    move-result-object p1

    .line 676
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 677
    .line 678
    iget p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->A1:I

    .line 679
    .line 680
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 681
    .line 682
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 683
    .line 684
    iget-object p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->s0:Landroid/widget/ImageButton;

    .line 685
    .line 686
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 687
    .line 688
    .line 689
    :goto_c
    return-void

    .line 690
    :pswitch_10
    if-eqz p2, :cond_11

    .line 691
    .line 692
    iget-object p1, v4, Lpe/hf/black20/MultiScreenActivityEXO;->r0:Landroid/widget/ImageButton;

    .line 693
    .line 694
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 695
    .line 696
    .line 697
    move-result-object p1

    .line 698
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 699
    .line 700
    iget p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->z1:I

    .line 701
    .line 702
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 703
    .line 704
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 705
    .line 706
    iget-object p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->r0:Landroid/widget/ImageButton;

    .line 707
    .line 708
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 709
    .line 710
    .line 711
    goto :goto_d

    .line 712
    :cond_11
    iget-object p1, v4, Lpe/hf/black20/MultiScreenActivityEXO;->r0:Landroid/widget/ImageButton;

    .line 713
    .line 714
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 715
    .line 716
    .line 717
    move-result-object p1

    .line 718
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 719
    .line 720
    iget p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->A1:I

    .line 721
    .line 722
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 723
    .line 724
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 725
    .line 726
    iget-object p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->r0:Landroid/widget/ImageButton;

    .line 727
    .line 728
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 729
    .line 730
    .line 731
    :goto_d
    return-void

    .line 732
    :pswitch_11
    if-eqz p2, :cond_12

    .line 733
    .line 734
    iget-object p1, v4, Lpe/hf/black20/MultiScreenActivityEXO;->q0:Landroid/widget/ImageButton;

    .line 735
    .line 736
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 737
    .line 738
    .line 739
    move-result-object p1

    .line 740
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 741
    .line 742
    iget p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->z1:I

    .line 743
    .line 744
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 745
    .line 746
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 747
    .line 748
    iget-object p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->q0:Landroid/widget/ImageButton;

    .line 749
    .line 750
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 751
    .line 752
    .line 753
    goto :goto_e

    .line 754
    :cond_12
    iget-object p1, v4, Lpe/hf/black20/MultiScreenActivityEXO;->q0:Landroid/widget/ImageButton;

    .line 755
    .line 756
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 757
    .line 758
    .line 759
    move-result-object p1

    .line 760
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 761
    .line 762
    iget p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->A1:I

    .line 763
    .line 764
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 765
    .line 766
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 767
    .line 768
    iget-object p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->q0:Landroid/widget/ImageButton;

    .line 769
    .line 770
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 771
    .line 772
    .line 773
    :goto_e
    return-void

    .line 774
    :pswitch_12
    if-eqz p2, :cond_13

    .line 775
    .line 776
    iget-object p1, v4, Lpe/hf/black20/MultiScreenActivityEXO;->p0:Landroid/widget/ImageButton;

    .line 777
    .line 778
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 779
    .line 780
    .line 781
    move-result-object p1

    .line 782
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 783
    .line 784
    iget p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->z1:I

    .line 785
    .line 786
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 787
    .line 788
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 789
    .line 790
    iget-object p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->p0:Landroid/widget/ImageButton;

    .line 791
    .line 792
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 793
    .line 794
    .line 795
    goto :goto_f

    .line 796
    :cond_13
    iget-object p1, v4, Lpe/hf/black20/MultiScreenActivityEXO;->p0:Landroid/widget/ImageButton;

    .line 797
    .line 798
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 799
    .line 800
    .line 801
    move-result-object p1

    .line 802
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 803
    .line 804
    iget p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->A1:I

    .line 805
    .line 806
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 807
    .line 808
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 809
    .line 810
    iget-object p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->p0:Landroid/widget/ImageButton;

    .line 811
    .line 812
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 813
    .line 814
    .line 815
    :goto_f
    return-void

    .line 816
    :pswitch_13
    if-eqz p2, :cond_14

    .line 817
    .line 818
    iget-object p1, v4, Lpe/hf/black20/MultiScreenActivityEXO;->i0:Landroid/widget/ImageButton;

    .line 819
    .line 820
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 821
    .line 822
    .line 823
    move-result-object p1

    .line 824
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 825
    .line 826
    iget p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->z1:I

    .line 827
    .line 828
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 829
    .line 830
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 831
    .line 832
    iget-object p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->i0:Landroid/widget/ImageButton;

    .line 833
    .line 834
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 835
    .line 836
    .line 837
    goto :goto_10

    .line 838
    :cond_14
    iget-object p1, v4, Lpe/hf/black20/MultiScreenActivityEXO;->i0:Landroid/widget/ImageButton;

    .line 839
    .line 840
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 841
    .line 842
    .line 843
    move-result-object p1

    .line 844
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 845
    .line 846
    iget p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->A1:I

    .line 847
    .line 848
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 849
    .line 850
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 851
    .line 852
    iget-object p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->i0:Landroid/widget/ImageButton;

    .line 853
    .line 854
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 855
    .line 856
    .line 857
    :goto_10
    return-void

    .line 858
    :pswitch_14
    if-eqz p2, :cond_15

    .line 859
    .line 860
    iget-object p1, v4, Lpe/hf/black20/MultiScreenActivityEXO;->o0:Landroid/widget/ImageButton;

    .line 861
    .line 862
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 863
    .line 864
    .line 865
    move-result-object p1

    .line 866
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 867
    .line 868
    iget p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->z1:I

    .line 869
    .line 870
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 871
    .line 872
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 873
    .line 874
    iget-object p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->o0:Landroid/widget/ImageButton;

    .line 875
    .line 876
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 877
    .line 878
    .line 879
    goto :goto_11

    .line 880
    :cond_15
    iget-object p1, v4, Lpe/hf/black20/MultiScreenActivityEXO;->o0:Landroid/widget/ImageButton;

    .line 881
    .line 882
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 883
    .line 884
    .line 885
    move-result-object p1

    .line 886
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 887
    .line 888
    iget p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->A1:I

    .line 889
    .line 890
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 891
    .line 892
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 893
    .line 894
    iget-object p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->o0:Landroid/widget/ImageButton;

    .line 895
    .line 896
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 897
    .line 898
    .line 899
    :goto_11
    return-void

    .line 900
    :pswitch_15
    if-eqz p2, :cond_16

    .line 901
    .line 902
    iget-object p1, v4, Lpe/hf/black20/MultiScreenActivityEXO;->n0:Landroid/widget/ImageButton;

    .line 903
    .line 904
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 905
    .line 906
    .line 907
    move-result-object p1

    .line 908
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 909
    .line 910
    iget p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->z1:I

    .line 911
    .line 912
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 913
    .line 914
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 915
    .line 916
    iget-object p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->n0:Landroid/widget/ImageButton;

    .line 917
    .line 918
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 919
    .line 920
    .line 921
    goto :goto_12

    .line 922
    :cond_16
    iget-object p1, v4, Lpe/hf/black20/MultiScreenActivityEXO;->n0:Landroid/widget/ImageButton;

    .line 923
    .line 924
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 925
    .line 926
    .line 927
    move-result-object p1

    .line 928
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 929
    .line 930
    iget p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->A1:I

    .line 931
    .line 932
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 933
    .line 934
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 935
    .line 936
    iget-object p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->n0:Landroid/widget/ImageButton;

    .line 937
    .line 938
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 939
    .line 940
    .line 941
    :goto_12
    return-void

    .line 942
    :pswitch_16
    if-eqz p2, :cond_17

    .line 943
    .line 944
    iget-object p1, v4, Lpe/hf/black20/MultiScreenActivityEXO;->m0:Landroid/widget/ImageButton;

    .line 945
    .line 946
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 947
    .line 948
    .line 949
    move-result-object p1

    .line 950
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 951
    .line 952
    iget p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->z1:I

    .line 953
    .line 954
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 955
    .line 956
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 957
    .line 958
    iget-object p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->m0:Landroid/widget/ImageButton;

    .line 959
    .line 960
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 961
    .line 962
    .line 963
    goto :goto_13

    .line 964
    :cond_17
    iget-object p1, v4, Lpe/hf/black20/MultiScreenActivityEXO;->m0:Landroid/widget/ImageButton;

    .line 965
    .line 966
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 967
    .line 968
    .line 969
    move-result-object p1

    .line 970
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 971
    .line 972
    iget p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->A1:I

    .line 973
    .line 974
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 975
    .line 976
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 977
    .line 978
    iget-object p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->m0:Landroid/widget/ImageButton;

    .line 979
    .line 980
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 981
    .line 982
    .line 983
    :goto_13
    return-void

    .line 984
    :pswitch_17
    if-eqz p2, :cond_18

    .line 985
    .line 986
    iget-object p1, v4, Lpe/hf/black20/MultiScreenActivityEXO;->l0:Landroid/widget/ImageButton;

    .line 987
    .line 988
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 989
    .line 990
    .line 991
    move-result-object p1

    .line 992
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 993
    .line 994
    iget p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->z1:I

    .line 995
    .line 996
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 997
    .line 998
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 999
    .line 1000
    iget-object p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->l0:Landroid/widget/ImageButton;

    .line 1001
    .line 1002
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1003
    .line 1004
    .line 1005
    goto :goto_14

    .line 1006
    :cond_18
    iget-object p1, v4, Lpe/hf/black20/MultiScreenActivityEXO;->l0:Landroid/widget/ImageButton;

    .line 1007
    .line 1008
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1009
    .line 1010
    .line 1011
    move-result-object p1

    .line 1012
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1013
    .line 1014
    iget p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->A1:I

    .line 1015
    .line 1016
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1017
    .line 1018
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1019
    .line 1020
    iget-object p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->l0:Landroid/widget/ImageButton;

    .line 1021
    .line 1022
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1023
    .line 1024
    .line 1025
    :goto_14
    return-void

    .line 1026
    :pswitch_18
    if-eqz p2, :cond_19

    .line 1027
    .line 1028
    iget-object p1, v4, Lpe/hf/black20/MultiScreenActivityEXO;->w0:Landroid/widget/ImageButton;

    .line 1029
    .line 1030
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1031
    .line 1032
    .line 1033
    move-result-object p1

    .line 1034
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1035
    .line 1036
    iget p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->z1:I

    .line 1037
    .line 1038
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1039
    .line 1040
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1041
    .line 1042
    iget-object p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->w0:Landroid/widget/ImageButton;

    .line 1043
    .line 1044
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1045
    .line 1046
    .line 1047
    goto :goto_15

    .line 1048
    :cond_19
    iget-object p1, v4, Lpe/hf/black20/MultiScreenActivityEXO;->w0:Landroid/widget/ImageButton;

    .line 1049
    .line 1050
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1051
    .line 1052
    .line 1053
    move-result-object p1

    .line 1054
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1055
    .line 1056
    iget p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->A1:I

    .line 1057
    .line 1058
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1059
    .line 1060
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1061
    .line 1062
    iget-object p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->w0:Landroid/widget/ImageButton;

    .line 1063
    .line 1064
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1065
    .line 1066
    .line 1067
    :goto_15
    return-void

    .line 1068
    :pswitch_19
    if-eqz p2, :cond_1a

    .line 1069
    .line 1070
    iget-object p1, v4, Lpe/hf/black20/MultiScreenActivityEXO;->v0:Landroid/widget/ImageButton;

    .line 1071
    .line 1072
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1073
    .line 1074
    .line 1075
    move-result-object p1

    .line 1076
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1077
    .line 1078
    iget p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->z1:I

    .line 1079
    .line 1080
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1081
    .line 1082
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1083
    .line 1084
    iget-object p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->v0:Landroid/widget/ImageButton;

    .line 1085
    .line 1086
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1087
    .line 1088
    .line 1089
    goto :goto_16

    .line 1090
    :cond_1a
    iget-object p1, v4, Lpe/hf/black20/MultiScreenActivityEXO;->v0:Landroid/widget/ImageButton;

    .line 1091
    .line 1092
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1093
    .line 1094
    .line 1095
    move-result-object p1

    .line 1096
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1097
    .line 1098
    iget p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->A1:I

    .line 1099
    .line 1100
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1101
    .line 1102
    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1103
    .line 1104
    iget-object p2, v4, Lpe/hf/black20/MultiScreenActivityEXO;->v0:Landroid/widget/ImageButton;

    .line 1105
    .line 1106
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1107
    .line 1108
    .line 1109
    :goto_16
    return-void

    .line 1110
    nop

    .line 1111
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
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
