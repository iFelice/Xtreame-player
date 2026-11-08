.class public Lpe/hf/black20/PlayerSettingsActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field public A0:Ljava/lang/String;

.field public B0:Ljava/lang/String;

.field public C0:Ljava/lang/String;

.field public D0:Ljava/lang/String;

.field public E0:Ljava/lang/String;

.field public F0:Ljava/lang/String;

.field public final G:Lpe/hf/black20/PlayerSettingsActivity;

.field public G0:Ljava/lang/String;

.field public H:Landroid/content/SharedPreferences;

.field public H0:Ljava/lang/String;

.field public I:Landroid/widget/RadioButton;

.field public I0:Landroid/widget/LinearLayout;

.field public J:Landroid/widget/RadioButton;

.field public J0:Landroid/widget/LinearLayout;

.field public K:Landroid/widget/RadioButton;

.field public L:Landroid/widget/RadioButton;

.field public M:Landroid/widget/RadioButton;

.field public N:Landroid/widget/RadioButton;

.field public O:Landroid/widget/RadioButton;

.field public P:Landroid/widget/RadioButton;

.field public Q:Landroid/widget/RadioButton;

.field public R:Landroid/widget/RadioButton;

.field public S:Landroid/widget/RadioButton;

.field public T:Landroid/widget/RadioButton;

.field public U:Landroid/widget/RadioButton;

.field public V:Landroid/widget/RadioButton;

.field public W:Landroid/widget/RadioButton;

.field public X:Landroid/widget/RadioButton;

.field public Y:Landroid/widget/RadioButton;

.field public Z:Landroid/widget/RadioButton;

.field public a0:Landroid/widget/RadioButton;

.field public b0:Landroid/widget/RadioButton;

.field public c0:Landroid/widget/RadioButton;

.field public d0:Landroid/widget/RadioButton;

.field public e0:Landroid/widget/RadioButton;

.field public f0:Landroid/widget/RadioButton;

.field public g0:Landroid/widget/RadioButton;

.field public h0:Landroid/widget/RadioButton;

.field public i0:Landroid/widget/RadioButton;

.field public j0:Landroid/widget/RadioButton;

.field public k0:Landroid/widget/RadioButton;

.field public l0:Landroid/widget/RadioButton;

.field public m0:Landroid/widget/RadioButton;

.field public n0:Landroid/widget/RadioButton;

.field public o0:Landroid/widget/RadioButton;

.field public p0:Landroid/widget/RadioButton;

.field public q0:Landroid/widget/RadioButton;

.field public r0:Landroid/widget/RadioButton;

.field public s0:Landroid/widget/RadioButton;

.field public t0:Landroid/widget/Button;

.field public u0:Landroid/widget/Button;

.field public v0:Landroid/widget/Button;

.field public w0:Landroid/widget/Button;

.field public x0:Landroid/widget/Button;

.field public y0:Landroid/widget/Button;

.field public z0:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p0, p0, Lpe/hf/black20/PlayerSettingsActivity;->G:Lpe/hf/black20/PlayerSettingsActivity;

    .line 5
    .line 6
    const-string v0, "90"

    .line 7
    .line 8
    iput-object v0, p0, Lpe/hf/black20/PlayerSettingsActivity;->z0:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lpe/hf/black20/PlayerSettingsActivity;->A0:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "10000"

    .line 13
    .line 14
    iput-object v0, p0, Lpe/hf/black20/PlayerSettingsActivity;->B0:Ljava/lang/String;

    .line 15
    .line 16
    const-string v0, "yes"

    .line 17
    .line 18
    iput-object v0, p0, Lpe/hf/black20/PlayerSettingsActivity;->C0:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v0, p0, Lpe/hf/black20/PlayerSettingsActivity;->D0:Ljava/lang/String;

    .line 21
    .line 22
    const-string v1, ""

    .line 23
    .line 24
    iput-object v1, p0, Lpe/hf/black20/PlayerSettingsActivity;->E0:Ljava/lang/String;

    .line 25
    .line 26
    iput-object v1, p0, Lpe/hf/black20/PlayerSettingsActivity;->F0:Ljava/lang/String;

    .line 27
    .line 28
    const-string v1, "1500"

    .line 29
    .line 30
    iput-object v1, p0, Lpe/hf/black20/PlayerSettingsActivity;->G0:Ljava/lang/String;

    .line 31
    .line 32
    iput-object v0, p0, Lpe/hf/black20/PlayerSettingsActivity;->H0:Ljava/lang/String;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 13

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const p1, 0x7f0e0042

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->G:Lpe/hf/black20/PlayerSettingsActivity;

    .line 11
    .line 12
    const-string v0, "pe.hf.black20"

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->H:Landroid/content/SharedPreferences;

    .line 20
    .line 21
    const p1, 0x7f0b03ee

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Landroid/widget/RadioGroup;

    .line 29
    .line 30
    const p1, 0x7f0b03f5

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Landroid/widget/RadioGroup;

    .line 38
    .line 39
    const p1, 0x7f0b03f1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Landroid/widget/RadioGroup;

    .line 47
    .line 48
    const p1, 0x7f0b03f3

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Landroid/widget/RadioGroup;

    .line 56
    .line 57
    const p1, 0x7f0b03ef

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Landroid/widget/RadioGroup;

    .line 65
    .line 66
    const p1, 0x7f0b03f6

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Landroid/widget/RadioGroup;

    .line 74
    .line 75
    const p1, 0x7f0b03f2

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Landroid/widget/RadioGroup;

    .line 83
    .line 84
    const p1, 0x7f0b03f4

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    check-cast p1, Landroid/widget/RadioGroup;

    .line 92
    .line 93
    const p1, 0x7f0b03f0

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    check-cast p1, Landroid/widget/RadioGroup;

    .line 101
    .line 102
    const p1, 0x7f0b03e1

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    check-cast p1, Landroid/widget/RadioButton;

    .line 110
    .line 111
    iput-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->I:Landroid/widget/RadioButton;

    .line 112
    .line 113
    const p1, 0x7f0b03e2

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    check-cast p1, Landroid/widget/RadioButton;

    .line 121
    .line 122
    iput-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->J:Landroid/widget/RadioButton;

    .line 123
    .line 124
    const p1, 0x7f0b03e5

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    check-cast p1, Landroid/widget/RadioButton;

    .line 132
    .line 133
    iput-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->K:Landroid/widget/RadioButton;

    .line 134
    .line 135
    const p1, 0x7f0b03e7

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    check-cast p1, Landroid/widget/RadioButton;

    .line 143
    .line 144
    iput-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->L:Landroid/widget/RadioButton;

    .line 145
    .line 146
    const p1, 0x7f0b03e9

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    check-cast p1, Landroid/widget/RadioButton;

    .line 154
    .line 155
    iput-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->M:Landroid/widget/RadioButton;

    .line 156
    .line 157
    const p1, 0x7f0b03ea

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    check-cast p1, Landroid/widget/RadioButton;

    .line 165
    .line 166
    iput-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->N:Landroid/widget/RadioButton;

    .line 167
    .line 168
    const p1, 0x7f0b0411

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    check-cast p1, Landroid/widget/RadioButton;

    .line 176
    .line 177
    iput-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->O:Landroid/widget/RadioButton;

    .line 178
    .line 179
    const p1, 0x7f0b0415

    .line 180
    .line 181
    .line 182
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    check-cast p1, Landroid/widget/RadioButton;

    .line 187
    .line 188
    iput-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->P:Landroid/widget/RadioButton;

    .line 189
    .line 190
    const p1, 0x7f0b0416

    .line 191
    .line 192
    .line 193
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    check-cast p1, Landroid/widget/RadioButton;

    .line 198
    .line 199
    iput-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->Q:Landroid/widget/RadioButton;

    .line 200
    .line 201
    const p1, 0x7f0b0413

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    check-cast p1, Landroid/widget/RadioButton;

    .line 209
    .line 210
    iput-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->R:Landroid/widget/RadioButton;

    .line 211
    .line 212
    const p1, 0x7f0b0418

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    check-cast p1, Landroid/widget/RadioButton;

    .line 220
    .line 221
    iput-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->S:Landroid/widget/RadioButton;

    .line 222
    .line 223
    const p1, 0x7f0b03ff

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    check-cast p1, Landroid/widget/RadioButton;

    .line 231
    .line 232
    iput-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->T:Landroid/widget/RadioButton;

    .line 233
    .line 234
    const p1, 0x7f0b03fd

    .line 235
    .line 236
    .line 237
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    check-cast p1, Landroid/widget/RadioButton;

    .line 242
    .line 243
    iput-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->U:Landroid/widget/RadioButton;

    .line 244
    .line 245
    const p1, 0x7f0b0407

    .line 246
    .line 247
    .line 248
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    check-cast p1, Landroid/widget/RadioButton;

    .line 253
    .line 254
    iput-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->V:Landroid/widget/RadioButton;

    .line 255
    .line 256
    const p1, 0x7f0b0409

    .line 257
    .line 258
    .line 259
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    check-cast p1, Landroid/widget/RadioButton;

    .line 264
    .line 265
    iput-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->W:Landroid/widget/RadioButton;

    .line 266
    .line 267
    const p1, 0x7f0b040b

    .line 268
    .line 269
    .line 270
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    check-cast p1, Landroid/widget/RadioButton;

    .line 275
    .line 276
    iput-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->X:Landroid/widget/RadioButton;

    .line 277
    .line 278
    const p1, 0x7f0b040d

    .line 279
    .line 280
    .line 281
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    check-cast p1, Landroid/widget/RadioButton;

    .line 286
    .line 287
    iput-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->Y:Landroid/widget/RadioButton;

    .line 288
    .line 289
    const p1, 0x7f0b0405

    .line 290
    .line 291
    .line 292
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    check-cast p1, Landroid/widget/RadioButton;

    .line 297
    .line 298
    iput-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->Z:Landroid/widget/RadioButton;

    .line 299
    .line 300
    const p1, 0x7f0b03e4

    .line 301
    .line 302
    .line 303
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 304
    .line 305
    .line 306
    move-result-object p1

    .line 307
    check-cast p1, Landroid/widget/RadioButton;

    .line 308
    .line 309
    iput-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->a0:Landroid/widget/RadioButton;

    .line 310
    .line 311
    const p1, 0x7f0b03e3

    .line 312
    .line 313
    .line 314
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 315
    .line 316
    .line 317
    move-result-object p1

    .line 318
    check-cast p1, Landroid/widget/RadioButton;

    .line 319
    .line 320
    iput-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->b0:Landroid/widget/RadioButton;

    .line 321
    .line 322
    const p1, 0x7f0b03e6

    .line 323
    .line 324
    .line 325
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 326
    .line 327
    .line 328
    move-result-object p1

    .line 329
    check-cast p1, Landroid/widget/RadioButton;

    .line 330
    .line 331
    iput-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->c0:Landroid/widget/RadioButton;

    .line 332
    .line 333
    const p1, 0x7f0b03e8

    .line 334
    .line 335
    .line 336
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 337
    .line 338
    .line 339
    move-result-object p1

    .line 340
    check-cast p1, Landroid/widget/RadioButton;

    .line 341
    .line 342
    iput-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->d0:Landroid/widget/RadioButton;

    .line 343
    .line 344
    const p1, 0x7f0b03eb

    .line 345
    .line 346
    .line 347
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 348
    .line 349
    .line 350
    move-result-object p1

    .line 351
    check-cast p1, Landroid/widget/RadioButton;

    .line 352
    .line 353
    iput-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->e0:Landroid/widget/RadioButton;

    .line 354
    .line 355
    const p1, 0x7f0b0412

    .line 356
    .line 357
    .line 358
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 359
    .line 360
    .line 361
    move-result-object p1

    .line 362
    check-cast p1, Landroid/widget/RadioButton;

    .line 363
    .line 364
    iput-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->f0:Landroid/widget/RadioButton;

    .line 365
    .line 366
    const p1, 0x7f0b040f

    .line 367
    .line 368
    .line 369
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 370
    .line 371
    .line 372
    move-result-object p1

    .line 373
    check-cast p1, Landroid/widget/RadioButton;

    .line 374
    .line 375
    iput-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->g0:Landroid/widget/RadioButton;

    .line 376
    .line 377
    const p1, 0x7f0b0410

    .line 378
    .line 379
    .line 380
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 381
    .line 382
    .line 383
    move-result-object p1

    .line 384
    check-cast p1, Landroid/widget/RadioButton;

    .line 385
    .line 386
    iput-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->h0:Landroid/widget/RadioButton;

    .line 387
    .line 388
    const p1, 0x7f0b0417

    .line 389
    .line 390
    .line 391
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 392
    .line 393
    .line 394
    move-result-object p1

    .line 395
    check-cast p1, Landroid/widget/RadioButton;

    .line 396
    .line 397
    iput-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->i0:Landroid/widget/RadioButton;

    .line 398
    .line 399
    const p1, 0x7f0b0414

    .line 400
    .line 401
    .line 402
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 403
    .line 404
    .line 405
    move-result-object p1

    .line 406
    check-cast p1, Landroid/widget/RadioButton;

    .line 407
    .line 408
    iput-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->j0:Landroid/widget/RadioButton;

    .line 409
    .line 410
    const p1, 0x7f0b0400

    .line 411
    .line 412
    .line 413
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 414
    .line 415
    .line 416
    move-result-object p1

    .line 417
    check-cast p1, Landroid/widget/RadioButton;

    .line 418
    .line 419
    iput-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->k0:Landroid/widget/RadioButton;

    .line 420
    .line 421
    const p1, 0x7f0b03fe

    .line 422
    .line 423
    .line 424
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 425
    .line 426
    .line 427
    move-result-object p1

    .line 428
    check-cast p1, Landroid/widget/RadioButton;

    .line 429
    .line 430
    iput-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->l0:Landroid/widget/RadioButton;

    .line 431
    .line 432
    const p1, 0x7f0b0408

    .line 433
    .line 434
    .line 435
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 436
    .line 437
    .line 438
    move-result-object p1

    .line 439
    check-cast p1, Landroid/widget/RadioButton;

    .line 440
    .line 441
    iput-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->m0:Landroid/widget/RadioButton;

    .line 442
    .line 443
    const p1, 0x7f0b040a

    .line 444
    .line 445
    .line 446
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 447
    .line 448
    .line 449
    move-result-object p1

    .line 450
    check-cast p1, Landroid/widget/RadioButton;

    .line 451
    .line 452
    iput-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->n0:Landroid/widget/RadioButton;

    .line 453
    .line 454
    const p1, 0x7f0b040c

    .line 455
    .line 456
    .line 457
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 458
    .line 459
    .line 460
    move-result-object p1

    .line 461
    check-cast p1, Landroid/widget/RadioButton;

    .line 462
    .line 463
    iput-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->o0:Landroid/widget/RadioButton;

    .line 464
    .line 465
    const p1, 0x7f0b040e

    .line 466
    .line 467
    .line 468
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 469
    .line 470
    .line 471
    move-result-object p1

    .line 472
    check-cast p1, Landroid/widget/RadioButton;

    .line 473
    .line 474
    iput-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->p0:Landroid/widget/RadioButton;

    .line 475
    .line 476
    const p1, 0x7f0b0406

    .line 477
    .line 478
    .line 479
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 480
    .line 481
    .line 482
    move-result-object p1

    .line 483
    check-cast p1, Landroid/widget/RadioButton;

    .line 484
    .line 485
    iput-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->q0:Landroid/widget/RadioButton;

    .line 486
    .line 487
    const p1, 0x7f0b03f8

    .line 488
    .line 489
    .line 490
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 491
    .line 492
    .line 493
    move-result-object p1

    .line 494
    check-cast p1, Landroid/widget/RadioButton;

    .line 495
    .line 496
    iput-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->r0:Landroid/widget/RadioButton;

    .line 497
    .line 498
    const p1, 0x7f0b03f7

    .line 499
    .line 500
    .line 501
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 502
    .line 503
    .line 504
    move-result-object p1

    .line 505
    check-cast p1, Landroid/widget/RadioButton;

    .line 506
    .line 507
    iput-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->s0:Landroid/widget/RadioButton;

    .line 508
    .line 509
    const p1, 0x7f0b0134

    .line 510
    .line 511
    .line 512
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 513
    .line 514
    .line 515
    move-result-object p1

    .line 516
    check-cast p1, Landroid/widget/Button;

    .line 517
    .line 518
    iput-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->t0:Landroid/widget/Button;

    .line 519
    .line 520
    const p1, 0x7f0b0135

    .line 521
    .line 522
    .line 523
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 524
    .line 525
    .line 526
    move-result-object p1

    .line 527
    check-cast p1, Landroid/widget/Button;

    .line 528
    .line 529
    iput-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->u0:Landroid/widget/Button;

    .line 530
    .line 531
    const p1, 0x7f0b0138

    .line 532
    .line 533
    .line 534
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 535
    .line 536
    .line 537
    move-result-object p1

    .line 538
    check-cast p1, Landroid/widget/Button;

    .line 539
    .line 540
    iput-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->v0:Landroid/widget/Button;

    .line 541
    .line 542
    const p1, 0x7f0b00cd

    .line 543
    .line 544
    .line 545
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 546
    .line 547
    .line 548
    move-result-object p1

    .line 549
    check-cast p1, Landroid/widget/Button;

    .line 550
    .line 551
    iput-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->w0:Landroid/widget/Button;

    .line 552
    .line 553
    const p1, 0x7f0b00cc

    .line 554
    .line 555
    .line 556
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 557
    .line 558
    .line 559
    move-result-object p1

    .line 560
    check-cast p1, Landroid/widget/Button;

    .line 561
    .line 562
    iput-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->x0:Landroid/widget/Button;

    .line 563
    .line 564
    const p1, 0x7f0b0137

    .line 565
    .line 566
    .line 567
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 568
    .line 569
    .line 570
    move-result-object p1

    .line 571
    check-cast p1, Landroid/widget/Button;

    .line 572
    .line 573
    iput-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->y0:Landroid/widget/Button;

    .line 574
    .line 575
    const p1, 0x7f0b02d5

    .line 576
    .line 577
    .line 578
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 579
    .line 580
    .line 581
    move-result-object p1

    .line 582
    check-cast p1, Landroid/widget/LinearLayout;

    .line 583
    .line 584
    iput-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->I0:Landroid/widget/LinearLayout;

    .line 585
    .line 586
    const p1, 0x7f0b02fd

    .line 587
    .line 588
    .line 589
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 590
    .line 591
    .line 592
    move-result-object p1

    .line 593
    check-cast p1, Landroid/widget/LinearLayout;

    .line 594
    .line 595
    iput-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->J0:Landroid/widget/LinearLayout;

    .line 596
    .line 597
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 598
    .line 599
    .line 600
    move-result-object p1

    .line 601
    const-string v0, "whichPlayer"

    .line 602
    .line 603
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object p1

    .line 607
    const-string v0, "EXO"

    .line 608
    .line 609
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 610
    .line 611
    .line 612
    move-result p1

    .line 613
    if-eqz p1, :cond_0

    .line 614
    .line 615
    iget-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->I0:Landroid/widget/LinearLayout;

    .line 616
    .line 617
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 618
    .line 619
    .line 620
    goto :goto_0

    .line 621
    :cond_0
    iget-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->J0:Landroid/widget/LinearLayout;

    .line 622
    .line 623
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 624
    .line 625
    .line 626
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 627
    .line 628
    const-string v0, "--------------------plyer_exo_buffer ----"

    .line 629
    .line 630
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 631
    .line 632
    .line 633
    iget-object v0, p0, Lpe/hf/black20/PlayerSettingsActivity;->H:Landroid/content/SharedPreferences;

    .line 634
    .line 635
    const-string v2, "plyer_exo_buffer"

    .line 636
    .line 637
    const/4 v3, 0x0

    .line 638
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 639
    .line 640
    .line 641
    move-result-object v0

    .line 642
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    .line 644
    .line 645
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 646
    .line 647
    .line 648
    move-result-object p1

    .line 649
    const-string v0, "XCIPTV_TAG"

    .line 650
    .line 651
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    .line 653
    .line 654
    iget-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->H:Landroid/content/SharedPreferences;

    .line 655
    .line 656
    invoke-interface {p1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 657
    .line 658
    .line 659
    move-result p1

    .line 660
    const/4 v0, 0x5

    .line 661
    const-string v4, "0"

    .line 662
    .line 663
    const/4 v5, -0x1

    .line 664
    const/4 v6, 0x1

    .line 665
    const/4 v7, 0x2

    .line 666
    const/4 v8, 0x3

    .line 667
    const/4 v9, 0x4

    .line 668
    if-eqz p1, :cond_7

    .line 669
    .line 670
    iget-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->H:Landroid/content/SharedPreferences;

    .line 671
    .line 672
    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 673
    .line 674
    .line 675
    move-result-object p1

    .line 676
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 677
    .line 678
    .line 679
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 680
    .line 681
    .line 682
    move-result v2

    .line 683
    sparse-switch v2, :sswitch_data_0

    .line 684
    .line 685
    .line 686
    :goto_1
    const/4 p1, -0x1

    .line 687
    goto :goto_2

    .line 688
    :sswitch_0
    const-string v2, "50000"

    .line 689
    .line 690
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 691
    .line 692
    .line 693
    move-result p1

    .line 694
    if-nez p1, :cond_1

    .line 695
    .line 696
    goto :goto_1

    .line 697
    :cond_1
    const/4 p1, 0x5

    .line 698
    goto :goto_2

    .line 699
    :sswitch_1
    const-string v2, "40000"

    .line 700
    .line 701
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 702
    .line 703
    .line 704
    move-result p1

    .line 705
    if-nez p1, :cond_2

    .line 706
    .line 707
    goto :goto_1

    .line 708
    :cond_2
    const/4 p1, 0x4

    .line 709
    goto :goto_2

    .line 710
    :sswitch_2
    const-string v2, "30000"

    .line 711
    .line 712
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 713
    .line 714
    .line 715
    move-result p1

    .line 716
    if-nez p1, :cond_3

    .line 717
    .line 718
    goto :goto_1

    .line 719
    :cond_3
    const/4 p1, 0x3

    .line 720
    goto :goto_2

    .line 721
    :sswitch_3
    const-string v2, "20000"

    .line 722
    .line 723
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 724
    .line 725
    .line 726
    move-result p1

    .line 727
    if-nez p1, :cond_4

    .line 728
    .line 729
    goto :goto_1

    .line 730
    :cond_4
    const/4 p1, 0x2

    .line 731
    goto :goto_2

    .line 732
    :sswitch_4
    const-string v2, "10000"

    .line 733
    .line 734
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 735
    .line 736
    .line 737
    move-result p1

    .line 738
    if-nez p1, :cond_5

    .line 739
    .line 740
    goto :goto_1

    .line 741
    :cond_5
    const/4 p1, 0x1

    .line 742
    goto :goto_2

    .line 743
    :sswitch_5
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 744
    .line 745
    .line 746
    move-result p1

    .line 747
    if-nez p1, :cond_6

    .line 748
    .line 749
    goto :goto_1

    .line 750
    :cond_6
    const/4 p1, 0x0

    .line 751
    :goto_2
    packed-switch p1, :pswitch_data_0

    .line 752
    .line 753
    .line 754
    iget-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->N:Landroid/widget/RadioButton;

    .line 755
    .line 756
    invoke-virtual {p1, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 757
    .line 758
    .line 759
    goto :goto_3

    .line 760
    :pswitch_0
    iget-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->N:Landroid/widget/RadioButton;

    .line 761
    .line 762
    invoke-virtual {p1, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 763
    .line 764
    .line 765
    goto :goto_3

    .line 766
    :pswitch_1
    iget-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->M:Landroid/widget/RadioButton;

    .line 767
    .line 768
    invoke-virtual {p1, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 769
    .line 770
    .line 771
    goto :goto_3

    .line 772
    :pswitch_2
    iget-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->L:Landroid/widget/RadioButton;

    .line 773
    .line 774
    invoke-virtual {p1, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 775
    .line 776
    .line 777
    goto :goto_3

    .line 778
    :pswitch_3
    iget-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->K:Landroid/widget/RadioButton;

    .line 779
    .line 780
    invoke-virtual {p1, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 781
    .line 782
    .line 783
    goto :goto_3

    .line 784
    :pswitch_4
    iget-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->J:Landroid/widget/RadioButton;

    .line 785
    .line 786
    invoke-virtual {p1, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 787
    .line 788
    .line 789
    goto :goto_3

    .line 790
    :pswitch_5
    iget-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->I:Landroid/widget/RadioButton;

    .line 791
    .line 792
    invoke-virtual {p1, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 793
    .line 794
    .line 795
    :cond_7
    :goto_3
    iget-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->H:Landroid/content/SharedPreferences;

    .line 796
    .line 797
    const-string v2, "plyer_vlc_buffer"

    .line 798
    .line 799
    invoke-interface {p1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 800
    .line 801
    .line 802
    move-result p1

    .line 803
    if-eqz p1, :cond_d

    .line 804
    .line 805
    iget-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->H:Landroid/content/SharedPreferences;

    .line 806
    .line 807
    const-string v3, "1500"

    .line 808
    .line 809
    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 810
    .line 811
    .line 812
    move-result-object p1

    .line 813
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 814
    .line 815
    .line 816
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 817
    .line 818
    .line 819
    move-result v2

    .line 820
    sparse-switch v2, :sswitch_data_1

    .line 821
    .line 822
    .line 823
    :goto_4
    const/4 p1, -0x1

    .line 824
    goto :goto_5

    .line 825
    :sswitch_6
    const-string v2, "5000"

    .line 826
    .line 827
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 828
    .line 829
    .line 830
    move-result p1

    .line 831
    if-nez p1, :cond_8

    .line 832
    .line 833
    goto :goto_4

    .line 834
    :cond_8
    const/4 p1, 0x4

    .line 835
    goto :goto_5

    .line 836
    :sswitch_7
    const-string v2, "3000"

    .line 837
    .line 838
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 839
    .line 840
    .line 841
    move-result p1

    .line 842
    if-nez p1, :cond_9

    .line 843
    .line 844
    goto :goto_4

    .line 845
    :cond_9
    const/4 p1, 0x3

    .line 846
    goto :goto_5

    .line 847
    :sswitch_8
    const-string v2, "2000"

    .line 848
    .line 849
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 850
    .line 851
    .line 852
    move-result p1

    .line 853
    if-nez p1, :cond_a

    .line 854
    .line 855
    goto :goto_4

    .line 856
    :cond_a
    const/4 p1, 0x2

    .line 857
    goto :goto_5

    .line 858
    :sswitch_9
    const-string v2, "1000"

    .line 859
    .line 860
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 861
    .line 862
    .line 863
    move-result p1

    .line 864
    if-nez p1, :cond_b

    .line 865
    .line 866
    goto :goto_4

    .line 867
    :cond_b
    const/4 p1, 0x1

    .line 868
    goto :goto_5

    .line 869
    :sswitch_a
    const-string v2, "300"

    .line 870
    .line 871
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 872
    .line 873
    .line 874
    move-result p1

    .line 875
    if-nez p1, :cond_c

    .line 876
    .line 877
    goto :goto_4

    .line 878
    :cond_c
    const/4 p1, 0x0

    .line 879
    :goto_5
    packed-switch p1, :pswitch_data_1

    .line 880
    .line 881
    .line 882
    goto :goto_6

    .line 883
    :pswitch_6
    iget-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->e0:Landroid/widget/RadioButton;

    .line 884
    .line 885
    invoke-virtual {p1, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 886
    .line 887
    .line 888
    goto :goto_6

    .line 889
    :pswitch_7
    iget-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->d0:Landroid/widget/RadioButton;

    .line 890
    .line 891
    invoke-virtual {p1, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 892
    .line 893
    .line 894
    goto :goto_6

    .line 895
    :pswitch_8
    iget-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->c0:Landroid/widget/RadioButton;

    .line 896
    .line 897
    invoke-virtual {p1, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 898
    .line 899
    .line 900
    goto :goto_6

    .line 901
    :pswitch_9
    iget-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->b0:Landroid/widget/RadioButton;

    .line 902
    .line 903
    invoke-virtual {p1, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 904
    .line 905
    .line 906
    goto :goto_6

    .line 907
    :pswitch_a
    iget-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->a0:Landroid/widget/RadioButton;

    .line 908
    .line 909
    invoke-virtual {p1, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 910
    .line 911
    .line 912
    :cond_d
    :goto_6
    iget-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->H:Landroid/content/SharedPreferences;

    .line 913
    .line 914
    const-string v2, "video_resize_exo"

    .line 915
    .line 916
    invoke-interface {p1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 917
    .line 918
    .line 919
    move-result p1

    .line 920
    const-string v3, "4"

    .line 921
    .line 922
    const-string v10, "2"

    .line 923
    .line 924
    const-string v11, "1"

    .line 925
    .line 926
    const-string v12, "3"

    .line 927
    .line 928
    if-eqz p1, :cond_13

    .line 929
    .line 930
    iget-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->H:Landroid/content/SharedPreferences;

    .line 931
    .line 932
    invoke-interface {p1, v2, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 933
    .line 934
    .line 935
    move-result-object p1

    .line 936
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 937
    .line 938
    .line 939
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 940
    .line 941
    .line 942
    move-result v2

    .line 943
    packed-switch v2, :pswitch_data_2

    .line 944
    .line 945
    .line 946
    :goto_7
    const/4 p1, -0x1

    .line 947
    goto :goto_8

    .line 948
    :pswitch_b
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 949
    .line 950
    .line 951
    move-result p1

    .line 952
    if-nez p1, :cond_e

    .line 953
    .line 954
    goto :goto_7

    .line 955
    :cond_e
    const/4 p1, 0x4

    .line 956
    goto :goto_8

    .line 957
    :pswitch_c
    invoke-virtual {p1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 958
    .line 959
    .line 960
    move-result p1

    .line 961
    if-nez p1, :cond_f

    .line 962
    .line 963
    goto :goto_7

    .line 964
    :cond_f
    const/4 p1, 0x3

    .line 965
    goto :goto_8

    .line 966
    :pswitch_d
    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 967
    .line 968
    .line 969
    move-result p1

    .line 970
    if-nez p1, :cond_10

    .line 971
    .line 972
    goto :goto_7

    .line 973
    :cond_10
    const/4 p1, 0x2

    .line 974
    goto :goto_8

    .line 975
    :pswitch_e
    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 976
    .line 977
    .line 978
    move-result p1

    .line 979
    if-nez p1, :cond_11

    .line 980
    .line 981
    goto :goto_7

    .line 982
    :cond_11
    const/4 p1, 0x1

    .line 983
    goto :goto_8

    .line 984
    :pswitch_f
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 985
    .line 986
    .line 987
    move-result p1

    .line 988
    if-nez p1, :cond_12

    .line 989
    .line 990
    goto :goto_7

    .line 991
    :cond_12
    const/4 p1, 0x0

    .line 992
    :goto_8
    packed-switch p1, :pswitch_data_3

    .line 993
    .line 994
    .line 995
    goto :goto_9

    .line 996
    :pswitch_10
    iget-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->S:Landroid/widget/RadioButton;

    .line 997
    .line 998
    invoke-virtual {p1, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 999
    .line 1000
    .line 1001
    goto :goto_9

    .line 1002
    :pswitch_11
    iget-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->R:Landroid/widget/RadioButton;

    .line 1003
    .line 1004
    invoke-virtual {p1, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1005
    .line 1006
    .line 1007
    goto :goto_9

    .line 1008
    :pswitch_12
    iget-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->P:Landroid/widget/RadioButton;

    .line 1009
    .line 1010
    invoke-virtual {p1, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1011
    .line 1012
    .line 1013
    goto :goto_9

    .line 1014
    :pswitch_13
    iget-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->Q:Landroid/widget/RadioButton;

    .line 1015
    .line 1016
    invoke-virtual {p1, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1017
    .line 1018
    .line 1019
    goto :goto_9

    .line 1020
    :pswitch_14
    iget-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->O:Landroid/widget/RadioButton;

    .line 1021
    .line 1022
    invoke-virtual {p1, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1023
    .line 1024
    .line 1025
    :cond_13
    :goto_9
    iget-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->H:Landroid/content/SharedPreferences;

    .line 1026
    .line 1027
    const-string v2, "video_resize_vlc"

    .line 1028
    .line 1029
    invoke-interface {p1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 1030
    .line 1031
    .line 1032
    move-result p1

    .line 1033
    if-eqz p1, :cond_19

    .line 1034
    .line 1035
    iget-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->H:Landroid/content/SharedPreferences;

    .line 1036
    .line 1037
    invoke-interface {p1, v2, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1038
    .line 1039
    .line 1040
    move-result-object p1

    .line 1041
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1042
    .line 1043
    .line 1044
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 1045
    .line 1046
    .line 1047
    move-result v2

    .line 1048
    packed-switch v2, :pswitch_data_4

    .line 1049
    .line 1050
    .line 1051
    :goto_a
    const/4 p1, -0x1

    .line 1052
    goto :goto_b

    .line 1053
    :pswitch_15
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1054
    .line 1055
    .line 1056
    move-result p1

    .line 1057
    if-nez p1, :cond_14

    .line 1058
    .line 1059
    goto :goto_a

    .line 1060
    :cond_14
    const/4 p1, 0x4

    .line 1061
    goto :goto_b

    .line 1062
    :pswitch_16
    invoke-virtual {p1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1063
    .line 1064
    .line 1065
    move-result p1

    .line 1066
    if-nez p1, :cond_15

    .line 1067
    .line 1068
    goto :goto_a

    .line 1069
    :cond_15
    const/4 p1, 0x3

    .line 1070
    goto :goto_b

    .line 1071
    :pswitch_17
    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1072
    .line 1073
    .line 1074
    move-result p1

    .line 1075
    if-nez p1, :cond_16

    .line 1076
    .line 1077
    goto :goto_a

    .line 1078
    :cond_16
    const/4 p1, 0x2

    .line 1079
    goto :goto_b

    .line 1080
    :pswitch_18
    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1081
    .line 1082
    .line 1083
    move-result p1

    .line 1084
    if-nez p1, :cond_17

    .line 1085
    .line 1086
    goto :goto_a

    .line 1087
    :cond_17
    const/4 p1, 0x1

    .line 1088
    goto :goto_b

    .line 1089
    :pswitch_19
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1090
    .line 1091
    .line 1092
    move-result p1

    .line 1093
    if-nez p1, :cond_18

    .line 1094
    .line 1095
    goto :goto_a

    .line 1096
    :cond_18
    const/4 p1, 0x0

    .line 1097
    :goto_b
    packed-switch p1, :pswitch_data_5

    .line 1098
    .line 1099
    .line 1100
    goto :goto_c

    .line 1101
    :pswitch_1a
    iget-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->j0:Landroid/widget/RadioButton;

    .line 1102
    .line 1103
    invoke-virtual {p1, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1104
    .line 1105
    .line 1106
    goto :goto_c

    .line 1107
    :pswitch_1b
    iget-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->i0:Landroid/widget/RadioButton;

    .line 1108
    .line 1109
    invoke-virtual {p1, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1110
    .line 1111
    .line 1112
    goto :goto_c

    .line 1113
    :pswitch_1c
    iget-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->h0:Landroid/widget/RadioButton;

    .line 1114
    .line 1115
    invoke-virtual {p1, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1116
    .line 1117
    .line 1118
    goto :goto_c

    .line 1119
    :pswitch_1d
    iget-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->g0:Landroid/widget/RadioButton;

    .line 1120
    .line 1121
    invoke-virtual {p1, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1122
    .line 1123
    .line 1124
    goto :goto_c

    .line 1125
    :pswitch_1e
    iget-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->f0:Landroid/widget/RadioButton;

    .line 1126
    .line 1127
    invoke-virtual {p1, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1128
    .line 1129
    .line 1130
    :cond_19
    :goto_c
    iget-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->H:Landroid/content/SharedPreferences;

    .line 1131
    .line 1132
    const-string v2, "video_subtiltes_exo"

    .line 1133
    .line 1134
    invoke-interface {p1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 1135
    .line 1136
    .line 1137
    move-result p1

    .line 1138
    const-string v3, "no"

    .line 1139
    .line 1140
    const-string v4, "yes"

    .line 1141
    .line 1142
    if-eqz p1, :cond_1b

    .line 1143
    .line 1144
    iget-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->H:Landroid/content/SharedPreferences;

    .line 1145
    .line 1146
    invoke-interface {p1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1147
    .line 1148
    .line 1149
    move-result-object p1

    .line 1150
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1151
    .line 1152
    .line 1153
    move-result p1

    .line 1154
    if-eqz p1, :cond_1a

    .line 1155
    .line 1156
    iget-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->T:Landroid/widget/RadioButton;

    .line 1157
    .line 1158
    invoke-virtual {p1, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1159
    .line 1160
    .line 1161
    goto :goto_d

    .line 1162
    :cond_1a
    iget-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->H:Landroid/content/SharedPreferences;

    .line 1163
    .line 1164
    invoke-interface {p1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1165
    .line 1166
    .line 1167
    move-result-object p1

    .line 1168
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1169
    .line 1170
    .line 1171
    move-result p1

    .line 1172
    if-eqz p1, :cond_1b

    .line 1173
    .line 1174
    iget-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->U:Landroid/widget/RadioButton;

    .line 1175
    .line 1176
    invoke-virtual {p1, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1177
    .line 1178
    .line 1179
    :cond_1b
    :goto_d
    iget-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->H:Landroid/content/SharedPreferences;

    .line 1180
    .line 1181
    const-string v2, "video_subtiltes_vlc"

    .line 1182
    .line 1183
    invoke-interface {p1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 1184
    .line 1185
    .line 1186
    move-result p1

    .line 1187
    if-eqz p1, :cond_1e

    .line 1188
    .line 1189
    iget-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->H:Landroid/content/SharedPreferences;

    .line 1190
    .line 1191
    invoke-interface {p1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1192
    .line 1193
    .line 1194
    move-result-object p1

    .line 1195
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1196
    .line 1197
    .line 1198
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1199
    .line 1200
    .line 1201
    move-result v2

    .line 1202
    if-nez v2, :cond_1d

    .line 1203
    .line 1204
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1205
    .line 1206
    .line 1207
    move-result p1

    .line 1208
    if-nez p1, :cond_1c

    .line 1209
    .line 1210
    goto :goto_e

    .line 1211
    :cond_1c
    iget-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->k0:Landroid/widget/RadioButton;

    .line 1212
    .line 1213
    invoke-virtual {p1, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1214
    .line 1215
    .line 1216
    goto :goto_e

    .line 1217
    :cond_1d
    iget-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->l0:Landroid/widget/RadioButton;

    .line 1218
    .line 1219
    invoke-virtual {p1, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1220
    .line 1221
    .line 1222
    :cond_1e
    :goto_e
    iget-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->H:Landroid/content/SharedPreferences;

    .line 1223
    .line 1224
    const-string v2, "last_volume"

    .line 1225
    .line 1226
    invoke-interface {p1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 1227
    .line 1228
    .line 1229
    move-result p1

    .line 1230
    if-eqz p1, :cond_24

    .line 1231
    .line 1232
    iget-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->H:Landroid/content/SharedPreferences;

    .line 1233
    .line 1234
    const-string v10, "90"

    .line 1235
    .line 1236
    invoke-interface {p1, v2, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1237
    .line 1238
    .line 1239
    move-result-object p1

    .line 1240
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1241
    .line 1242
    .line 1243
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 1244
    .line 1245
    .line 1246
    move-result v2

    .line 1247
    sparse-switch v2, :sswitch_data_2

    .line 1248
    .line 1249
    .line 1250
    goto :goto_f

    .line 1251
    :sswitch_b
    const-string v2, "100"

    .line 1252
    .line 1253
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1254
    .line 1255
    .line 1256
    move-result p1

    .line 1257
    if-nez p1, :cond_1f

    .line 1258
    .line 1259
    goto :goto_f

    .line 1260
    :cond_1f
    const/4 v5, 0x4

    .line 1261
    goto :goto_f

    .line 1262
    :sswitch_c
    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1263
    .line 1264
    .line 1265
    move-result p1

    .line 1266
    if-nez p1, :cond_20

    .line 1267
    .line 1268
    goto :goto_f

    .line 1269
    :cond_20
    const/4 v5, 0x3

    .line 1270
    goto :goto_f

    .line 1271
    :sswitch_d
    const-string v2, "80"

    .line 1272
    .line 1273
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1274
    .line 1275
    .line 1276
    move-result p1

    .line 1277
    if-nez p1, :cond_21

    .line 1278
    .line 1279
    goto :goto_f

    .line 1280
    :cond_21
    const/4 v5, 0x2

    .line 1281
    goto :goto_f

    .line 1282
    :sswitch_e
    const-string v2, "70"

    .line 1283
    .line 1284
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1285
    .line 1286
    .line 1287
    move-result p1

    .line 1288
    if-nez p1, :cond_22

    .line 1289
    .line 1290
    goto :goto_f

    .line 1291
    :cond_22
    const/4 v5, 0x1

    .line 1292
    goto :goto_f

    .line 1293
    :sswitch_f
    const-string v2, "60"

    .line 1294
    .line 1295
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1296
    .line 1297
    .line 1298
    move-result p1

    .line 1299
    if-nez p1, :cond_23

    .line 1300
    .line 1301
    goto :goto_f

    .line 1302
    :cond_23
    const/4 v5, 0x0

    .line 1303
    :goto_f
    packed-switch v5, :pswitch_data_6

    .line 1304
    .line 1305
    .line 1306
    goto :goto_10

    .line 1307
    :pswitch_1f
    iget-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->Z:Landroid/widget/RadioButton;

    .line 1308
    .line 1309
    invoke-virtual {p1, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1310
    .line 1311
    .line 1312
    iget-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->q0:Landroid/widget/RadioButton;

    .line 1313
    .line 1314
    invoke-virtual {p1, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1315
    .line 1316
    .line 1317
    goto :goto_10

    .line 1318
    :pswitch_20
    iget-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->Y:Landroid/widget/RadioButton;

    .line 1319
    .line 1320
    invoke-virtual {p1, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1321
    .line 1322
    .line 1323
    iget-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->p0:Landroid/widget/RadioButton;

    .line 1324
    .line 1325
    invoke-virtual {p1, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1326
    .line 1327
    .line 1328
    goto :goto_10

    .line 1329
    :pswitch_21
    iget-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->X:Landroid/widget/RadioButton;

    .line 1330
    .line 1331
    invoke-virtual {p1, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1332
    .line 1333
    .line 1334
    iget-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->o0:Landroid/widget/RadioButton;

    .line 1335
    .line 1336
    invoke-virtual {p1, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1337
    .line 1338
    .line 1339
    goto :goto_10

    .line 1340
    :pswitch_22
    iget-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->W:Landroid/widget/RadioButton;

    .line 1341
    .line 1342
    invoke-virtual {p1, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1343
    .line 1344
    .line 1345
    iget-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->n0:Landroid/widget/RadioButton;

    .line 1346
    .line 1347
    invoke-virtual {p1, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1348
    .line 1349
    .line 1350
    goto :goto_10

    .line 1351
    :pswitch_23
    iget-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->V:Landroid/widget/RadioButton;

    .line 1352
    .line 1353
    invoke-virtual {p1, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1354
    .line 1355
    .line 1356
    iget-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->m0:Landroid/widget/RadioButton;

    .line 1357
    .line 1358
    invoke-virtual {p1, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1359
    .line 1360
    .line 1361
    :cond_24
    :goto_10
    iget-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->H:Landroid/content/SharedPreferences;

    .line 1362
    .line 1363
    const-string v2, "vlc_hw"

    .line 1364
    .line 1365
    invoke-interface {p1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 1366
    .line 1367
    .line 1368
    move-result p1

    .line 1369
    if-eqz p1, :cond_26

    .line 1370
    .line 1371
    iget-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->H:Landroid/content/SharedPreferences;

    .line 1372
    .line 1373
    invoke-interface {p1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1374
    .line 1375
    .line 1376
    move-result-object p1

    .line 1377
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1378
    .line 1379
    .line 1380
    move-result p1

    .line 1381
    if-eqz p1, :cond_25

    .line 1382
    .line 1383
    iget-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->r0:Landroid/widget/RadioButton;

    .line 1384
    .line 1385
    invoke-virtual {p1, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1386
    .line 1387
    .line 1388
    goto :goto_11

    .line 1389
    :cond_25
    iget-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->H:Landroid/content/SharedPreferences;

    .line 1390
    .line 1391
    invoke-interface {p1, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1392
    .line 1393
    .line 1394
    move-result-object p1

    .line 1395
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1396
    .line 1397
    .line 1398
    move-result p1

    .line 1399
    if-eqz p1, :cond_26

    .line 1400
    .line 1401
    iget-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->s0:Landroid/widget/RadioButton;

    .line 1402
    .line 1403
    invoke-virtual {p1, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1404
    .line 1405
    .line 1406
    :cond_26
    :goto_11
    iget-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->t0:Landroid/widget/Button;

    .line 1407
    .line 1408
    new-instance v2, Lb7/j1;

    .line 1409
    .line 1410
    invoke-direct {v2, p0, v1}, Lb7/j1;-><init>(Lpe/hf/black20/PlayerSettingsActivity;I)V

    .line 1411
    .line 1412
    .line 1413
    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1414
    .line 1415
    .line 1416
    iget-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->u0:Landroid/widget/Button;

    .line 1417
    .line 1418
    new-instance v1, Lb7/j1;

    .line 1419
    .line 1420
    invoke-direct {v1, p0, v6}, Lb7/j1;-><init>(Lpe/hf/black20/PlayerSettingsActivity;I)V

    .line 1421
    .line 1422
    .line 1423
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1424
    .line 1425
    .line 1426
    iget-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->x0:Landroid/widget/Button;

    .line 1427
    .line 1428
    new-instance v1, Lb7/j1;

    .line 1429
    .line 1430
    invoke-direct {v1, p0, v7}, Lb7/j1;-><init>(Lpe/hf/black20/PlayerSettingsActivity;I)V

    .line 1431
    .line 1432
    .line 1433
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1434
    .line 1435
    .line 1436
    iget-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->y0:Landroid/widget/Button;

    .line 1437
    .line 1438
    new-instance v1, Lb7/j1;

    .line 1439
    .line 1440
    invoke-direct {v1, p0, v8}, Lb7/j1;-><init>(Lpe/hf/black20/PlayerSettingsActivity;I)V

    .line 1441
    .line 1442
    .line 1443
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1444
    .line 1445
    .line 1446
    iget-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->w0:Landroid/widget/Button;

    .line 1447
    .line 1448
    new-instance v1, Lb7/j1;

    .line 1449
    .line 1450
    invoke-direct {v1, p0, v9}, Lb7/j1;-><init>(Lpe/hf/black20/PlayerSettingsActivity;I)V

    .line 1451
    .line 1452
    .line 1453
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1454
    .line 1455
    .line 1456
    iget-object p1, p0, Lpe/hf/black20/PlayerSettingsActivity;->v0:Landroid/widget/Button;

    .line 1457
    .line 1458
    new-instance v1, Lb7/j1;

    .line 1459
    .line 1460
    invoke-direct {v1, p0, v0}, Lb7/j1;-><init>(Lpe/hf/black20/PlayerSettingsActivity;I)V

    .line 1461
    .line 1462
    .line 1463
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1464
    .line 1465
    .line 1466
    return-void

    .line 1467
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_5
        0x2c90bb1 -> :sswitch_4
        0x2d72332 -> :sswitch_3
        0x2e53ab3 -> :sswitch_2
        0x2f35234 -> :sswitch_1
        0x30169b5 -> :sswitch_0
    .end sparse-switch

    .line 1468
    .line 1469
    .line 1470
    .line 1471
    .line 1472
    .line 1473
    .line 1474
    .line 1475
    .line 1476
    .line 1477
    .line 1478
    .line 1479
    .line 1480
    .line 1481
    .line 1482
    .line 1483
    .line 1484
    .line 1485
    .line 1486
    .line 1487
    .line 1488
    .line 1489
    .line 1490
    .line 1491
    .line 1492
    .line 1493
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1494
    .line 1495
    .line 1496
    .line 1497
    .line 1498
    .line 1499
    .line 1500
    .line 1501
    .line 1502
    .line 1503
    .line 1504
    .line 1505
    .line 1506
    .line 1507
    .line 1508
    .line 1509
    :sswitch_data_1
    .sparse-switch
        0xc573 -> :sswitch_a
        0x17005f -> :sswitch_9
        0x1774be -> :sswitch_8
        0x17e91d -> :sswitch_7
        0x18d1db -> :sswitch_6
    .end sparse-switch

    .line 1510
    .line 1511
    .line 1512
    .line 1513
    .line 1514
    .line 1515
    .line 1516
    .line 1517
    .line 1518
    .line 1519
    .line 1520
    .line 1521
    .line 1522
    .line 1523
    .line 1524
    .line 1525
    .line 1526
    .line 1527
    .line 1528
    .line 1529
    .line 1530
    .line 1531
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    .line 1532
    .line 1533
    .line 1534
    .line 1535
    .line 1536
    .line 1537
    .line 1538
    .line 1539
    .line 1540
    .line 1541
    .line 1542
    .line 1543
    .line 1544
    .line 1545
    :pswitch_data_2
    .packed-switch 0x30
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    .line 1546
    .line 1547
    .line 1548
    .line 1549
    .line 1550
    .line 1551
    .line 1552
    .line 1553
    .line 1554
    .line 1555
    .line 1556
    .line 1557
    .line 1558
    .line 1559
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    .line 1560
    .line 1561
    .line 1562
    .line 1563
    .line 1564
    .line 1565
    .line 1566
    .line 1567
    .line 1568
    .line 1569
    .line 1570
    .line 1571
    .line 1572
    .line 1573
    :pswitch_data_4
    .packed-switch 0x30
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    .line 1574
    .line 1575
    .line 1576
    .line 1577
    .line 1578
    .line 1579
    .line 1580
    .line 1581
    .line 1582
    .line 1583
    .line 1584
    .line 1585
    .line 1586
    .line 1587
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch

    .line 1588
    .line 1589
    .line 1590
    .line 1591
    .line 1592
    .line 1593
    .line 1594
    .line 1595
    .line 1596
    .line 1597
    .line 1598
    .line 1599
    .line 1600
    .line 1601
    :sswitch_data_2
    .sparse-switch
        0x6ba -> :sswitch_f
        0x6d9 -> :sswitch_e
        0x6f8 -> :sswitch_d
        0x717 -> :sswitch_c
        0xbdf1 -> :sswitch_b
    .end sparse-switch

    .line 1602
    .line 1603
    .line 1604
    .line 1605
    .line 1606
    .line 1607
    .line 1608
    .line 1609
    .line 1610
    .line 1611
    .line 1612
    .line 1613
    .line 1614
    .line 1615
    .line 1616
    .line 1617
    .line 1618
    .line 1619
    .line 1620
    .line 1621
    .line 1622
    .line 1623
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
    .end packed-switch
.end method
