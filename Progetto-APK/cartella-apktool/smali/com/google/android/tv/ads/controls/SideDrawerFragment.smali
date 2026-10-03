.class public final Lcom/google/android/tv/ads/controls/SideDrawerFragment;
.super LY/s;
.source "SourceFile"


# static fields
.field public static final synthetic J0:I


# instance fields
.field public C0:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public D0:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public E0:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public F0:Landroid/widget/ImageView;

.field public G0:Landroid/widget/Button;

.field public H0:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public I0:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LY/s;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0e0086

    .line 5
    .line 6
    .line 7
    iput v0, p0, LY/s;->y0:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public getBackgroundAlpha()F
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/tv/ads/controls/SideDrawerFragment;->C0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getDrawerTranslationX()F
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/tv/ads/controls/SideDrawerFragment;->D0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/google/android/tv/ads/controls/SideDrawerFragment;->D0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    int-to-float v1, v1

    .line 14
    div-float/2addr v0, v1

    .line 15
    return v0
.end method

.method public setBackgroundAlpha(F)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/tv/ads/controls/SideDrawerFragment;->C0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/android/tv/ads/controls/SideDrawerFragment;->C0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setDrawerTranslationX(F)V
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/tv/ads/controls/SideDrawerFragment;->D0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    int-to-float v1, v1

    .line 8
    mul-float v1, v1, p1

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/google/android/tv/ads/controls/SideDrawerFragment;->D0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final y(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0e0086

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const p2, 0x7f0b045b

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    iput-object p2, p0, Lcom/google/android/tv/ads/controls/SideDrawerFragment;->C0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 25
    .line 26
    const p2, 0x7f0b045c

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 34
    .line 35
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    iput-object p2, p0, Lcom/google/android/tv/ads/controls/SideDrawerFragment;->D0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 39
    .line 40
    const p2, 0x7f0b05b2

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 48
    .line 49
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    iput-object p2, p0, Lcom/google/android/tv/ads/controls/SideDrawerFragment;->E0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 53
    .line 54
    const p2, 0x7f0b01de

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 62
    .line 63
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    iput-object p2, p0, Lcom/google/android/tv/ads/controls/SideDrawerFragment;->H0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 67
    .line 68
    const p2, 0x7f0b05b9

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    check-cast p2, Landroid/widget/ImageView;

    .line 76
    .line 77
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    iput-object p2, p0, Lcom/google/android/tv/ads/controls/SideDrawerFragment;->F0:Landroid/widget/ImageView;

    .line 81
    .line 82
    const p2, 0x7f0b05b1

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    check-cast p2, Landroid/widget/Button;

    .line 90
    .line 91
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    .line 93
    .line 94
    iput-object p2, p0, Lcom/google/android/tv/ads/controls/SideDrawerFragment;->G0:Landroid/widget/Button;

    .line 95
    .line 96
    const p2, 0x7f0b01db

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    check-cast p2, Landroid/widget/Button;

    .line 104
    .line 105
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    iput-object p2, p0, Lcom/google/android/tv/ads/controls/SideDrawerFragment;->I0:Landroid/widget/Button;

    .line 109
    .line 110
    invoke-virtual {p0}, LY/s;->L()Landroid/os/Bundle;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    const-string v0, "render_error_message"

    .line 115
    .line 116
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 117
    .line 118
    .line 119
    move-result p2

    .line 120
    invoke-virtual {p0}, LY/s;->L()Landroid/os/Bundle;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    const-string v2, "wta_uri"

    .line 125
    .line 126
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {p0}, LY/s;->M()Landroid/content/Context;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    const/high16 v4, 0x7f020000

    .line 135
    .line 136
    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    check-cast v3, Landroid/animation/AnimatorSet;

    .line 141
    .line 142
    invoke-virtual {v3, p0}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, LY/s;->M()Landroid/content/Context;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    const v4, 0x7f020001

    .line 153
    .line 154
    .line 155
    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    check-cast v3, Landroid/animation/AnimatorSet;

    .line 160
    .line 161
    invoke-virtual {v3, p0}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    new-instance v4, Ll/d;

    .line 165
    .line 166
    const/4 v5, 0x6

    .line 167
    invoke-direct {v4, p0, v5}, Ll/d;-><init>(Ljava/lang/Object;I)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 171
    .line 172
    .line 173
    iget-object v4, p0, Lcom/google/android/tv/ads/controls/SideDrawerFragment;->G0:Landroid/widget/Button;

    .line 174
    .line 175
    new-instance v5, Lu4/a;

    .line 176
    .line 177
    invoke-direct {v5, v3, v1}, Lu4/a;-><init>(Landroid/animation/AnimatorSet;I)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    .line 182
    .line 183
    iget-object v4, p0, Lcom/google/android/tv/ads/controls/SideDrawerFragment;->I0:Landroid/widget/Button;

    .line 184
    .line 185
    new-instance v5, Lu4/a;

    .line 186
    .line 187
    const/4 v6, 0x1

    .line 188
    invoke-direct {v5, v3, v6}, Lu4/a;-><init>(Landroid/animation/AnimatorSet;I)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    .line 193
    .line 194
    new-instance v4, LY/D;

    .line 195
    .line 196
    invoke-direct {v4, v3}, LY/D;-><init>(Landroid/animation/AnimatorSet;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p0}, LY/s;->K()LY/v;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    iget-object v3, v3, La/m;->M:La/x;

    .line 204
    .line 205
    invoke-virtual {v3, p0, v4}, La/x;->a(Le0/m;LY/D;)V

    .line 206
    .line 207
    .line 208
    const/16 v3, 0x8

    .line 209
    .line 210
    if-nez p2, :cond_16

    .line 211
    .line 212
    if-nez v0, :cond_0

    .line 213
    .line 214
    goto/16 :goto_a

    .line 215
    .line 216
    :cond_0
    iget-object p2, p0, Lcom/google/android/tv/ads/controls/SideDrawerFragment;->E0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 217
    .line 218
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 219
    .line 220
    .line 221
    iget-object p2, p0, Lcom/google/android/tv/ads/controls/SideDrawerFragment;->G0:Landroid/widget/Button;

    .line 222
    .line 223
    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0}, LY/s;->L()Landroid/os/Bundle;

    .line 227
    .line 228
    .line 229
    move-result-object p2

    .line 230
    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p2

    .line 234
    sget v0, Lcom/google/android/gms/internal/atv_ads_framework/g;->a:I

    .line 235
    .line 236
    if-nez p2, :cond_1

    .line 237
    .line 238
    const-string p2, ""

    .line 239
    .line 240
    :cond_1
    invoke-virtual {p0}, LY/s;->L()Landroid/os/Bundle;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    const-string v2, "wta_alt_text"

    .line 245
    .line 246
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 251
    .line 252
    .line 253
    move-result v2

    .line 254
    if-nez v2, :cond_2

    .line 255
    .line 256
    iget-object v2, p0, Lcom/google/android/tv/ads/controls/SideDrawerFragment;->F0:Landroid/widget/ImageView;

    .line 257
    .line 258
    invoke-virtual {v2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 259
    .line 260
    .line 261
    :cond_2
    invoke-virtual {p0}, LY/s;->o()Landroid/content/res/Resources;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-virtual {p0}, LY/s;->M()Landroid/content/Context;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    const v4, 0x7f08091b

    .line 274
    .line 275
    .line 276
    invoke-virtual {v0, v4, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    invoke-virtual {p0}, LY/s;->l()Landroid/content/Context;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    const-string v4, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed)."

    .line 285
    .line 286
    invoke-static {v2, v4}, Ln0/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    invoke-static {v2}, Lcom/bumptech/glide/b;->a(Landroid/content/Context;)Lcom/bumptech/glide/b;

    .line 290
    .line 291
    .line 292
    move-result-object v2

    .line 293
    iget-object v2, v2, Lcom/bumptech/glide/b;->K:LJ2/n;

    .line 294
    .line 295
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 296
    .line 297
    .line 298
    invoke-virtual {p0}, LY/s;->l()Landroid/content/Context;

    .line 299
    .line 300
    .line 301
    move-result-object v4

    .line 302
    const-string v5, "You cannot start a load on a fragment before it is attached or after it is destroyed"

    .line 303
    .line 304
    invoke-static {v4, v5}, Ln0/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    sget-object v4, LP2/o;->a:[C

    .line 308
    .line 309
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 310
    .line 311
    .line 312
    move-result-object v4

    .line 313
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 314
    .line 315
    .line 316
    move-result-object v5

    .line 317
    if-ne v4, v5, :cond_3

    .line 318
    .line 319
    const/4 v4, 0x1

    .line 320
    goto :goto_0

    .line 321
    :cond_3
    const/4 v4, 0x0

    .line 322
    :goto_0
    xor-int/2addr v4, v6

    .line 323
    if-eqz v4, :cond_4

    .line 324
    .line 325
    invoke-virtual {p0}, LY/s;->l()Landroid/content/Context;

    .line 326
    .line 327
    .line 328
    move-result-object v4

    .line 329
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 330
    .line 331
    .line 332
    move-result-object v4

    .line 333
    invoke-virtual {v2, v4}, LJ2/n;->b(Landroid/content/Context;)Lcom/bumptech/glide/n;

    .line 334
    .line 335
    .line 336
    move-result-object v2

    .line 337
    goto :goto_2

    .line 338
    :cond_4
    invoke-virtual {p0}, LY/s;->j()LY/v;

    .line 339
    .line 340
    .line 341
    move-result-object v4

    .line 342
    if-eqz v4, :cond_5

    .line 343
    .line 344
    iget-object v4, v2, LJ2/n;->I:LJ2/g;

    .line 345
    .line 346
    invoke-virtual {p0}, LY/s;->j()LY/v;

    .line 347
    .line 348
    .line 349
    move-result-object v5

    .line 350
    invoke-interface {v4, v5}, LJ2/g;->c(Landroid/app/Activity;)V

    .line 351
    .line 352
    .line 353
    :cond_5
    invoke-virtual {p0}, LY/s;->k()LY/K;

    .line 354
    .line 355
    .line 356
    move-result-object v11

    .line 357
    invoke-virtual {p0}, LY/s;->l()Landroid/content/Context;

    .line 358
    .line 359
    .line 360
    move-result-object v8

    .line 361
    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 362
    .line 363
    .line 364
    move-result-object v4

    .line 365
    invoke-static {v4}, Lcom/bumptech/glide/b;->a(Landroid/content/Context;)Lcom/bumptech/glide/b;

    .line 366
    .line 367
    .line 368
    move-result-object v9

    .line 369
    iget-object v10, p0, LY/s;->u0:Le0/o;

    .line 370
    .line 371
    invoke-virtual {p0}, LY/s;->r()Z

    .line 372
    .line 373
    .line 374
    move-result v4

    .line 375
    if-eqz v4, :cond_6

    .line 376
    .line 377
    invoke-virtual {p0}, LY/s;->s()Z

    .line 378
    .line 379
    .line 380
    move-result v4

    .line 381
    if-nez v4, :cond_6

    .line 382
    .line 383
    iget-object v4, p0, LY/s;->m0:Landroid/view/View;

    .line 384
    .line 385
    if-eqz v4, :cond_6

    .line 386
    .line 387
    invoke-virtual {v4}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 388
    .line 389
    .line 390
    move-result-object v4

    .line 391
    if-eqz v4, :cond_6

    .line 392
    .line 393
    iget-object v4, p0, LY/s;->m0:Landroid/view/View;

    .line 394
    .line 395
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 396
    .line 397
    .line 398
    move-result v4

    .line 399
    if-nez v4, :cond_6

    .line 400
    .line 401
    const/4 v12, 0x1

    .line 402
    goto :goto_1

    .line 403
    :cond_6
    const/4 v12, 0x0

    .line 404
    :goto_1
    iget-object v7, v2, LJ2/n;->J:LJ2/l;

    .line 405
    .line 406
    invoke-virtual/range {v7 .. v12}, LJ2/l;->a(Landroid/content/Context;Lcom/bumptech/glide/b;Le0/o;LY/K;Z)Lcom/bumptech/glide/n;

    .line 407
    .line 408
    .line 409
    move-result-object v2

    .line 410
    :goto_2
    sget-object v4, Lcom/google/android/gms/internal/atv_ads_framework/C;->c:Lcom/google/android/gms/internal/atv_ads_framework/z;

    .line 411
    .line 412
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/Cw;->P(Ljava/lang/String;)Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v5

    .line 416
    sget-object v6, Lcom/google/android/gms/internal/atv_ads_framework/C;->a:Lcom/google/android/gms/internal/atv_ads_framework/r;

    .line 417
    .line 418
    invoke-virtual {v6}, Lcom/google/android/gms/internal/atv_ads_framework/r;->p()Lcom/google/android/gms/internal/ads/gB;

    .line 419
    .line 420
    .line 421
    move-result-object v6

    .line 422
    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 423
    .line 424
    .line 425
    move-result v7

    .line 426
    const-string v8, ":"

    .line 427
    .line 428
    if-eqz v7, :cond_8

    .line 429
    .line 430
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    move-result-object v7

    .line 434
    check-cast v7, Ljava/lang/String;

    .line 435
    .line 436
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v7

    .line 440
    invoke-virtual {v7, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v7

    .line 444
    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 445
    .line 446
    .line 447
    move-result v7

    .line 448
    if-eqz v7, :cond_7

    .line 449
    .line 450
    goto/16 :goto_9

    .line 451
    .line 452
    :cond_8
    const-string v6, "data:"

    .line 453
    .line 454
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 455
    .line 456
    .line 457
    move-result v7

    .line 458
    const/16 v9, 0x2f

    .line 459
    .line 460
    if-eqz v7, :cond_11

    .line 461
    .line 462
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/Cw;->P(Ljava/lang/String;)Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object v1

    .line 466
    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 467
    .line 468
    .line 469
    move-result v4

    .line 470
    if-nez v4, :cond_9

    .line 471
    .line 472
    goto/16 :goto_8

    .line 473
    .line 474
    :cond_9
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 475
    .line 476
    .line 477
    move-result v4

    .line 478
    const/4 v5, 0x5

    .line 479
    if-le v4, v5, :cond_14

    .line 480
    .line 481
    const/4 v4, 0x5

    .line 482
    :goto_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 483
    .line 484
    .line 485
    move-result v6

    .line 486
    if-ge v4, v6, :cond_b

    .line 487
    .line 488
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 489
    .line 490
    .line 491
    move-result v6

    .line 492
    const/16 v7, 0x3b

    .line 493
    .line 494
    if-eq v6, v7, :cond_b

    .line 495
    .line 496
    const/16 v7, 0x2c

    .line 497
    .line 498
    if-ne v6, v7, :cond_a

    .line 499
    .line 500
    goto :goto_4

    .line 501
    :cond_a
    add-int/lit8 v4, v4, 0x1

    .line 502
    .line 503
    goto :goto_3

    .line 504
    :cond_b
    :goto_4
    sget-object v6, Lcom/google/android/gms/internal/atv_ads_framework/C;->b:Lcom/google/android/gms/internal/atv_ads_framework/r;

    .line 505
    .line 506
    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 507
    .line 508
    .line 509
    move-result-object v5

    .line 510
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/atv_ads_framework/l;->contains(Ljava/lang/Object;)Z

    .line 511
    .line 512
    .line 513
    move-result v5

    .line 514
    if-eqz v5, :cond_14

    .line 515
    .line 516
    const-string v5, ";base64,"

    .line 517
    .line 518
    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 519
    .line 520
    .line 521
    move-result v5

    .line 522
    if-eqz v5, :cond_14

    .line 523
    .line 524
    add-int/2addr v4, v3

    .line 525
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 526
    .line 527
    .line 528
    move-result v3

    .line 529
    if-ge v4, v3, :cond_14

    .line 530
    .line 531
    :goto_5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 532
    .line 533
    .line 534
    move-result v3

    .line 535
    const/16 v5, 0x3d

    .line 536
    .line 537
    if-ge v4, v3, :cond_10

    .line 538
    .line 539
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 540
    .line 541
    .line 542
    move-result v3

    .line 543
    if-ne v3, v5, :cond_c

    .line 544
    .line 545
    goto :goto_6

    .line 546
    :cond_c
    const/16 v5, 0x61

    .line 547
    .line 548
    if-lt v3, v5, :cond_d

    .line 549
    .line 550
    const/16 v5, 0x7a

    .line 551
    .line 552
    if-le v3, v5, :cond_f

    .line 553
    .line 554
    :cond_d
    const/16 v5, 0x30

    .line 555
    .line 556
    if-lt v3, v5, :cond_e

    .line 557
    .line 558
    const/16 v5, 0x39

    .line 559
    .line 560
    if-le v3, v5, :cond_f

    .line 561
    .line 562
    :cond_e
    const/16 v5, 0x2b

    .line 563
    .line 564
    if-eq v3, v5, :cond_f

    .line 565
    .line 566
    if-ne v3, v9, :cond_14

    .line 567
    .line 568
    :cond_f
    add-int/lit8 v4, v4, 0x1

    .line 569
    .line 570
    goto :goto_5

    .line 571
    :cond_10
    :goto_6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 572
    .line 573
    .line 574
    move-result v3

    .line 575
    if-ge v4, v3, :cond_15

    .line 576
    .line 577
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    .line 578
    .line 579
    .line 580
    move-result v3

    .line 581
    if-ne v3, v5, :cond_14

    .line 582
    .line 583
    add-int/lit8 v4, v4, 0x1

    .line 584
    .line 585
    goto :goto_6

    .line 586
    :cond_11
    invoke-virtual {v4}, Lcom/google/android/gms/internal/atv_ads_framework/z;->iterator()Ljava/util/Iterator;

    .line 587
    .line 588
    .line 589
    move-result-object v3

    .line 590
    :cond_12
    move-object v4, v3

    .line 591
    check-cast v4, Lcom/google/android/gms/internal/atv_ads_framework/k;

    .line 592
    .line 593
    invoke-virtual {v4}, Lcom/google/android/gms/internal/atv_ads_framework/k;->hasNext()Z

    .line 594
    .line 595
    .line 596
    move-result v6

    .line 597
    if-eqz v6, :cond_13

    .line 598
    .line 599
    invoke-virtual {v4}, Lcom/google/android/gms/internal/atv_ads_framework/k;->next()Ljava/lang/Object;

    .line 600
    .line 601
    .line 602
    move-result-object v4

    .line 603
    check-cast v4, Lcom/google/android/gms/internal/atv_ads_framework/B;

    .line 604
    .line 605
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 606
    .line 607
    .line 608
    move-result-object v4

    .line 609
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/Cw;->P(Ljava/lang/String;)Ljava/lang/String;

    .line 610
    .line 611
    .line 612
    move-result-object v4

    .line 613
    const/16 v6, 0x5f

    .line 614
    .line 615
    const/16 v7, 0x2d

    .line 616
    .line 617
    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object v4

    .line 621
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 622
    .line 623
    .line 624
    move-result-object v4

    .line 625
    invoke-virtual {v4, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 626
    .line 627
    .line 628
    move-result-object v4

    .line 629
    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 630
    .line 631
    .line 632
    move-result v4

    .line 633
    if-eqz v4, :cond_12

    .line 634
    .line 635
    goto :goto_9

    .line 636
    :cond_13
    :goto_7
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 637
    .line 638
    .line 639
    move-result v3

    .line 640
    if-ge v1, v3, :cond_15

    .line 641
    .line 642
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    .line 643
    .line 644
    .line 645
    move-result v3

    .line 646
    const/16 v4, 0x23

    .line 647
    .line 648
    if-eq v3, v4, :cond_15

    .line 649
    .line 650
    if-eq v3, v9, :cond_15

    .line 651
    .line 652
    const/16 v4, 0x3a

    .line 653
    .line 654
    if-eq v3, v4, :cond_14

    .line 655
    .line 656
    const/16 v4, 0x3f

    .line 657
    .line 658
    if-eq v3, v4, :cond_15

    .line 659
    .line 660
    add-int/lit8 v1, v1, 0x1

    .line 661
    .line 662
    goto :goto_7

    .line 663
    :cond_14
    :goto_8
    const-string p2, "about:invalid#zTvAdsFrameworkz"

    .line 664
    .line 665
    :cond_15
    :goto_9
    invoke-virtual {v2, p2}, Lcom/bumptech/glide/n;->n(Ljava/lang/String;)Lcom/bumptech/glide/l;

    .line 666
    .line 667
    .line 668
    move-result-object p2

    .line 669
    invoke-virtual {p2, v0}, LL2/a;->n(Landroid/graphics/drawable/Drawable;)LL2/a;

    .line 670
    .line 671
    .line 672
    move-result-object p2

    .line 673
    check-cast p2, Lcom/bumptech/glide/l;

    .line 674
    .line 675
    invoke-virtual {p2}, LL2/a;->g()LL2/a;

    .line 676
    .line 677
    .line 678
    move-result-object p2

    .line 679
    check-cast p2, Lcom/bumptech/glide/l;

    .line 680
    .line 681
    new-instance v0, Lu4/b;

    .line 682
    .line 683
    iget-object v1, p0, Lcom/google/android/tv/ads/controls/SideDrawerFragment;->F0:Landroid/widget/ImageView;

    .line 684
    .line 685
    invoke-direct {v0, p0, v1}, Lu4/b;-><init>(Lcom/google/android/tv/ads/controls/SideDrawerFragment;Landroid/widget/ImageView;)V

    .line 686
    .line 687
    .line 688
    invoke-virtual {p2, v0, p2}, Lcom/bumptech/glide/l;->E(LM2/i;LL2/a;)V

    .line 689
    .line 690
    .line 691
    goto :goto_b

    .line 692
    :cond_16
    :goto_a
    iget-object p2, p0, Lcom/google/android/tv/ads/controls/SideDrawerFragment;->E0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 693
    .line 694
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 695
    .line 696
    .line 697
    iget-object p2, p0, Lcom/google/android/tv/ads/controls/SideDrawerFragment;->H0:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 698
    .line 699
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 700
    .line 701
    .line 702
    iget-object p2, p0, Lcom/google/android/tv/ads/controls/SideDrawerFragment;->I0:Landroid/widget/Button;

    .line 703
    .line 704
    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    .line 705
    .line 706
    .line 707
    :goto_b
    return-object p1
.end method
