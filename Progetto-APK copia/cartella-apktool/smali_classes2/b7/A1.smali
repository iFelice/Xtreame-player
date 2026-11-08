.class public Lb7/A1;
.super LY/s;
.source "SourceFile"


# static fields
.field public static final synthetic a1:I


# instance fields
.field public C0:Landroid/content/SharedPreferences;

.field public D0:Landroidx/recyclerview/widget/RecyclerView;

.field public E0:Landroid/widget/FrameLayout;

.field public F0:Landroid/widget/Button;

.field public G0:Landroid/widget/Button;

.field public H0:Landroid/widget/Button;

.field public I0:Landroid/widget/EditText;

.field public J0:Landroid/widget/ImageButton;

.field public K0:Landroid/widget/ListView;

.field public L0:Ljava/util/ArrayList;

.field public M0:Ljava/util/ArrayList;

.field public N0:Ljava/util/ArrayList;

.field public O0:Ljava/util/ArrayList;

.field public P0:Ljava/util/ArrayList;

.field public Q0:Ljava/util/ArrayList;

.field public R0:I

.field public S0:I

.field public T0:I

.field public U0:I

.field public V0:I

.field public W0:Lpe/hf/black20/ORPlayerSpeedyLinearLayoutManager;

.field public X0:Ljava/lang/String;

.field public Y0:Landroid/widget/LinearLayout;

.field public Z0:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LY/s;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lb7/A1;->M0:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lb7/A1;->N0:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lb7/A1;->O0:Ljava/util/ArrayList;

    .line 24
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lb7/A1;->P0:Ljava/util/ArrayList;

    .line 31
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lb7/A1;->Q0:Ljava/util/ArrayList;

    .line 38
    .line 39
    const-string v0, ""

    .line 40
    .line 41
    iput-object v0, p0, Lb7/A1;->X0:Ljava/lang/String;

    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public final E()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, LY/s;->k0:Z

    .line 3
    .line 4
    return-void
.end method

.method public final y(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .line 1
    const v0, 0x7f0e0084

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const p2, 0x7f0b0422

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    .line 17
    .line 18
    iput-object p2, p0, Lb7/A1;->D0:Landroidx/recyclerview/widget/RecyclerView;

    .line 19
    .line 20
    new-instance p2, Lpe/hf/black20/ORPlayerSpeedyLinearLayoutManager;

    .line 21
    .line 22
    invoke-virtual {p0}, LY/s;->l()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    invoke-direct {p2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 27
    .line 28
    .line 29
    iput-object p2, p0, Lb7/A1;->W0:Lpe/hf/black20/ORPlayerSpeedyLinearLayoutManager;

    .line 30
    .line 31
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->r1(Z)V

    .line 32
    .line 33
    .line 34
    iget-object p2, p0, Lb7/A1;->D0:Landroidx/recyclerview/widget/RecyclerView;

    .line 35
    .line 36
    iget-object v2, p0, Lb7/A1;->W0:Lpe/hf/black20/ORPlayerSpeedyLinearLayoutManager;

    .line 37
    .line 38
    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(LO1/L;)V

    .line 39
    .line 40
    .line 41
    iget-object p2, p0, Lb7/A1;->D0:Landroidx/recyclerview/widget/RecyclerView;

    .line 42
    .line 43
    invoke-virtual {p2, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 44
    .line 45
    .line 46
    iget-object p2, p0, Lb7/A1;->D0:Landroidx/recyclerview/widget/RecyclerView;

    .line 47
    .line 48
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 49
    .line 50
    .line 51
    iget-object p2, p0, Lb7/A1;->D0:Landroidx/recyclerview/widget/RecyclerView;

    .line 52
    .line 53
    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setClipToPadding(Z)V

    .line 54
    .line 55
    .line 56
    iget-object p2, p0, Lb7/A1;->D0:Landroidx/recyclerview/widget/RecyclerView;

    .line 57
    .line 58
    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 59
    .line 60
    .line 61
    const p2, 0x7f0b02f2

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    check-cast p2, Landroid/widget/FrameLayout;

    .line 69
    .line 70
    iput-object p2, p0, Lb7/A1;->E0:Landroid/widget/FrameLayout;

    .line 71
    .line 72
    const p2, 0x7f0b011f

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    check-cast p2, Landroid/widget/Button;

    .line 80
    .line 81
    iput-object p2, p0, Lb7/A1;->F0:Landroid/widget/Button;

    .line 82
    .line 83
    const p2, 0x7f0b011c

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    check-cast p2, Landroid/widget/Button;

    .line 91
    .line 92
    iput-object p2, p0, Lb7/A1;->G0:Landroid/widget/Button;

    .line 93
    .line 94
    const p2, 0x7f0b00b0

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    check-cast p2, Landroid/widget/Button;

    .line 102
    .line 103
    iput-object p2, p0, Lb7/A1;->H0:Landroid/widget/Button;

    .line 104
    .line 105
    const p2, 0x7f0b01cc

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    check-cast p2, Landroid/widget/EditText;

    .line 113
    .line 114
    iput-object p2, p0, Lb7/A1;->I0:Landroid/widget/EditText;

    .line 115
    .line 116
    const p2, 0x7f0b011d

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    check-cast p2, Landroid/widget/ImageButton;

    .line 124
    .line 125
    iput-object p2, p0, Lb7/A1;->J0:Landroid/widget/ImageButton;

    .line 126
    .line 127
    const p2, 0x7f0b0329

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    check-cast p2, Landroid/widget/ListView;

    .line 135
    .line 136
    iput-object p2, p0, Lb7/A1;->K0:Landroid/widget/ListView;

    .line 137
    .line 138
    const p2, 0x7f0b02f3

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    check-cast p2, Landroid/widget/LinearLayout;

    .line 146
    .line 147
    iput-object p2, p0, Lb7/A1;->Y0:Landroid/widget/LinearLayout;

    .line 148
    .line 149
    const p2, 0x7f0b02ef

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    check-cast p2, Landroid/widget/LinearLayout;

    .line 157
    .line 158
    iput-object p2, p0, Lb7/A1;->Z0:Landroid/widget/LinearLayout;

    .line 159
    .line 160
    const p2, 0x7f0b056d

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 164
    .line 165
    .line 166
    move-result-object p2

    .line 167
    check-cast p2, Landroid/widget/TextView;

    .line 168
    .line 169
    const v2, 0x7f0b056c

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    check-cast v2, Landroid/widget/TextView;

    .line 177
    .line 178
    invoke-virtual {p0}, LY/s;->l()Landroid/content/Context;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    const-string v4, "pe.hf.black20"

    .line 183
    .line 184
    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    iput-object v3, p0, Lb7/A1;->C0:Landroid/content/SharedPreferences;

    .line 189
    .line 190
    new-instance v3, Lc7/d;

    .line 191
    .line 192
    invoke-virtual {p0}, LY/s;->l()Landroid/content/Context;

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    invoke-direct {v3, v4}, Lc7/d;-><init>(Landroid/content/Context;)V

    .line 197
    .line 198
    .line 199
    invoke-static {}, Lpe/hf/black20/util/Methods;->O()Z

    .line 200
    .line 201
    .line 202
    move-result v3

    .line 203
    const/16 v4, 0x8

    .line 204
    .line 205
    if-eqz v3, :cond_1

    .line 206
    .line 207
    new-instance v3, Ljava/io/File;

    .line 208
    .line 209
    invoke-virtual {p0}, LY/s;->j()LY/v;

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 214
    .line 215
    .line 216
    move-result-object v5

    .line 217
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    const-string v6, "/epg.xml"

    .line 222
    .line 223
    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v5

    .line 227
    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v3}, Ljava/io/File;->length()J

    .line 231
    .line 232
    .line 233
    move-result-wide v5

    .line 234
    const-wide/32 v7, 0x100000

    .line 235
    .line 236
    .line 237
    div-long/2addr v5, v7

    .line 238
    const-wide/16 v7, 0x13

    .line 239
    .line 240
    cmp-long v3, v5, v7

    .line 241
    .line 242
    if-lez v3, :cond_0

    .line 243
    .line 244
    goto :goto_0

    .line 245
    :cond_0
    const-wide/16 v7, 0x0

    .line 246
    .line 247
    cmp-long v3, v5, v7

    .line 248
    .line 249
    if-nez v3, :cond_1

    .line 250
    .line 251
    :goto_0
    iget-object v3, p0, Lb7/A1;->G0:Landroid/widget/Button;

    .line 252
    .line 253
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 260
    .line 261
    .line 262
    :cond_1
    iget-object p2, p0, Lb7/A1;->Y0:Landroid/widget/LinearLayout;

    .line 263
    .line 264
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 265
    .line 266
    .line 267
    iget-object p2, p0, Lb7/A1;->Z0:Landroid/widget/LinearLayout;

    .line 268
    .line 269
    invoke-virtual {p2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 270
    .line 271
    .line 272
    new-instance p2, Landroid/util/DisplayMetrics;

    .line 273
    .line 274
    invoke-direct {p2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 275
    .line 276
    .line 277
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 278
    .line 279
    const/16 v3, 0x1e

    .line 280
    .line 281
    if-lt v2, v3, :cond_2

    .line 282
    .line 283
    invoke-virtual {p0}, LY/s;->j()LY/v;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    invoke-static {v2}, Lb7/Z;->g(LY/v;)Landroid/view/Display;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    invoke-virtual {v2, p2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 292
    .line 293
    .line 294
    goto :goto_1

    .line 295
    :cond_2
    invoke-virtual {p0}, LY/s;->j()LY/v;

    .line 296
    .line 297
    .line 298
    move-result-object v2

    .line 299
    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 300
    .line 301
    .line 302
    move-result-object v2

    .line 303
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 304
    .line 305
    .line 306
    move-result-object v2

    .line 307
    invoke-virtual {v2, p2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {p0}, LY/s;->j()LY/v;

    .line 311
    .line 312
    .line 313
    move-result-object v2

    .line 314
    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 319
    .line 320
    .line 321
    move-result-object v2

    .line 322
    invoke-virtual {v2, p2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 323
    .line 324
    .line 325
    :goto_1
    iget v2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 326
    .line 327
    iput v2, p0, Lb7/A1;->R0:I

    .line 328
    .line 329
    iget v2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 330
    .line 331
    iput v2, p0, Lb7/A1;->S0:I

    .line 332
    .line 333
    iget p2, p2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 334
    .line 335
    div-int/lit16 p2, p2, 0xa0

    .line 336
    .line 337
    iput p2, p0, Lb7/A1;->T0:I

    .line 338
    .line 339
    invoke-static {}, Lpe/hf/black20/util/Methods;->P()Z

    .line 340
    .line 341
    .line 342
    move-result p2

    .line 343
    const/4 v2, 0x3

    .line 344
    const-wide/high16 v5, 0x3ff8000000000000L    # 1.5

    .line 345
    .line 346
    if-nez p2, :cond_4

    .line 347
    .line 348
    invoke-virtual {p0}, LY/s;->l()Landroid/content/Context;

    .line 349
    .line 350
    .line 351
    move-result-object p2

    .line 352
    invoke-static {p2}, Lpe/hf/black20/util/Methods;->T(Landroid/content/Context;)Z

    .line 353
    .line 354
    .line 355
    move-result p2

    .line 356
    if-eqz p2, :cond_3

    .line 357
    .line 358
    goto :goto_2

    .line 359
    :cond_3
    iget p2, p0, Lb7/A1;->R0:I

    .line 360
    .line 361
    div-int/2addr p2, v2

    .line 362
    iget v3, p0, Lb7/A1;->T0:I

    .line 363
    .line 364
    mul-int/lit8 v3, v3, 0xa

    .line 365
    .line 366
    sub-int/2addr p2, v3

    .line 367
    int-to-double v3, p2

    .line 368
    mul-double v3, v3, v5

    .line 369
    .line 370
    double-to-int v3, v3

    .line 371
    iput v3, p0, Lb7/A1;->V0:I

    .line 372
    .line 373
    iput p2, p0, Lb7/A1;->U0:I

    .line 374
    .line 375
    goto :goto_3

    .line 376
    :cond_4
    :goto_2
    iget p2, p0, Lb7/A1;->S0:I

    .line 377
    .line 378
    div-int/2addr p2, v4

    .line 379
    iget v3, p0, Lb7/A1;->T0:I

    .line 380
    .line 381
    mul-int/lit8 v3, v3, 0xa

    .line 382
    .line 383
    sub-int/2addr p2, v3

    .line 384
    int-to-double v3, p2

    .line 385
    mul-double v3, v3, v5

    .line 386
    .line 387
    double-to-int v3, v3

    .line 388
    iput v3, p0, Lb7/A1;->V0:I

    .line 389
    .line 390
    iput p2, p0, Lb7/A1;->U0:I

    .line 391
    .line 392
    :goto_3
    iget-object p2, p0, Lb7/A1;->F0:Landroid/widget/Button;

    .line 393
    .line 394
    new-instance v3, Lb7/r1;

    .line 395
    .line 396
    invoke-direct {v3, p0, v1}, Lb7/r1;-><init>(Lb7/A1;I)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    .line 401
    .line 402
    iget-object p2, p0, Lb7/A1;->G0:Landroid/widget/Button;

    .line 403
    .line 404
    new-instance v1, Lb7/r1;

    .line 405
    .line 406
    invoke-direct {v1, p0, v0}, Lb7/r1;-><init>(Lb7/A1;I)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    .line 411
    .line 412
    iget-object p2, p0, Lb7/A1;->J0:Landroid/widget/ImageButton;

    .line 413
    .line 414
    new-instance v0, Lb7/r1;

    .line 415
    .line 416
    const/4 v1, 0x2

    .line 417
    invoke-direct {v0, p0, v1}, Lb7/r1;-><init>(Lb7/A1;I)V

    .line 418
    .line 419
    .line 420
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 421
    .line 422
    .line 423
    iget-object p2, p0, Lb7/A1;->J0:Landroid/widget/ImageButton;

    .line 424
    .line 425
    new-instance v0, Lb7/x0;

    .line 426
    .line 427
    invoke-direct {v0, p0, v1}, Lb7/x0;-><init>(Ljava/lang/Object;I)V

    .line 428
    .line 429
    .line 430
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 431
    .line 432
    .line 433
    iget-object p2, p0, Lb7/A1;->H0:Landroid/widget/Button;

    .line 434
    .line 435
    new-instance v0, Lb7/r1;

    .line 436
    .line 437
    invoke-direct {v0, p0, v2}, Lb7/r1;-><init>(Lb7/A1;I)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 441
    .line 442
    .line 443
    return-object p1
.end method
