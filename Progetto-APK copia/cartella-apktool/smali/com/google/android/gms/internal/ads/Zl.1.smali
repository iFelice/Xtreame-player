.class public final synthetic Lcom/google/android/gms/internal/ads/Zl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/N9;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Lcom/google/android/gms/internal/ads/bm;

.field public final synthetic I:Landroid/view/View;

.field public final synthetic J:Landroid/view/WindowManager;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/bm;Landroid/view/WindowManager;Landroid/widget/FrameLayout;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/Zl;->G:I

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Zl;->H:Lcom/google/android/gms/internal/ads/bm;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Zl;->J:Landroid/view/WindowManager;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Zl;->I:Landroid/view/View;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/bm;Landroid/widget/FrameLayout;Landroid/view/WindowManager;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/Zl;->G:I

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Zl;->H:Lcom/google/android/gms/internal/ads/bm;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Zl;->I:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/Zl;->J:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public final f(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 11

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/Zl;->G:I

    .line 2
    .line 3
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/Zl;->J:Landroid/view/WindowManager;

    .line 4
    .line 5
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/Zl;->I:Landroid/view/View;

    .line 6
    .line 7
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/Zl;->H:Lcom/google/android/gms/internal/ads/bm;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p1, Lcom/google/android/gms/internal/ads/Ef;

    .line 13
    .line 14
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Ef;->zzN()Lcom/google/android/gms/internal/ads/Xf;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Lcom/google/android/gms/internal/ads/x;

    .line 22
    .line 23
    const/16 v2, 0x1c

    .line 24
    .line 25
    invoke-direct {v1, v2, v9, p2}, Lcom/google/android/gms/internal/ads/x;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/Xf;->M:Lcom/google/android/gms/internal/ads/cg;

    .line 29
    .line 30
    if-nez p2, :cond_0

    .line 31
    .line 32
    goto/16 :goto_5

    .line 33
    .line 34
    :cond_0
    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v1, "validator_width"

    .line 39
    .line 40
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Ljava/lang/String;

    .line 45
    .line 46
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->s7:Lcom/google/android/gms/internal/ads/J7;

    .line 47
    .line 48
    sget-object v3, Ll3/q;->d:Ll3/q;

    .line 49
    .line 50
    iget-object v4, v3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 51
    .line 52
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    check-cast v2, Ljava/lang/Integer;

    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/ads/bm;->b(ILandroid/content/Context;Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    const-string v2, "validator_height"

    .line 67
    .line 68
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Ljava/lang/String;

    .line 73
    .line 74
    sget-object v4, Lcom/google/android/gms/internal/ads/Q7;->t7:Lcom/google/android/gms/internal/ads/J7;

    .line 75
    .line 76
    iget-object v3, v3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 77
    .line 78
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    check-cast v4, Ljava/lang/Integer;

    .line 83
    .line 84
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    invoke-static {v4, v0, v2}, Lcom/google/android/gms/internal/ads/bm;->b(ILandroid/content/Context;Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    const-string v4, "validator_x"

    .line 93
    .line 94
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    check-cast v4, Ljava/lang/String;

    .line 99
    .line 100
    const/4 v5, 0x0

    .line 101
    invoke-static {v5, v0, v4}, Lcom/google/android/gms/internal/ads/bm;->b(ILandroid/content/Context;Ljava/lang/String;)I

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    const-string v6, "validator_y"

    .line 106
    .line 107
    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    check-cast v6, Ljava/lang/String;

    .line 112
    .line 113
    invoke-static {v5, v0, v6}, Lcom/google/android/gms/internal/ads/bm;->b(ILandroid/content/Context;Ljava/lang/String;)I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    new-instance v5, LA2/i;

    .line 118
    .line 119
    const/4 v6, 0x1

    .line 120
    const/4 v10, 0x5

    .line 121
    invoke-direct {v5, v6, v1, v2, v10}, LA2/i;-><init>(IIII)V

    .line 122
    .line 123
    .line 124
    invoke-interface {p1, v5}, Lcom/google/android/gms/internal/ads/Ef;->n0(LA2/i;)V

    .line 125
    .line 126
    .line 127
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Ef;->h0()Landroid/webkit/WebView;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->u7:Lcom/google/android/gms/internal/ads/J7;

    .line 136
    .line 137
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    check-cast v2, Ljava/lang/Boolean;

    .line 142
    .line 143
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 148
    .line 149
    .line 150
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Ef;->h0()Landroid/webkit/WebView;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->v7:Lcom/google/android/gms/internal/ads/J7;

    .line 159
    .line 160
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    check-cast v2, Ljava/lang/Boolean;

    .line 165
    .line 166
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .line 172
    .line 173
    goto :goto_0

    .line 174
    :catch_0
    nop

    .line 175
    :goto_0
    invoke-static {}, LS3/e;->y()Landroid/view/WindowManager$LayoutParams;

    .line 176
    .line 177
    .line 178
    move-result-object v5

    .line 179
    iput v4, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 180
    .line 181
    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 182
    .line 183
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Ef;->j()Landroid/view/View;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    invoke-interface {v7, v1, v5}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    .line 189
    .line 190
    const-string v1, "orientation"

    .line 191
    .line 192
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    move-object v4, v1

    .line 197
    check-cast v4, Ljava/lang/String;

    .line 198
    .line 199
    new-instance v1, Landroid/graphics/Rect;

    .line 200
    .line 201
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v8, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    if-nez v2, :cond_1

    .line 209
    .line 210
    goto :goto_4

    .line 211
    :cond_1
    const-string v2, "1"

    .line 212
    .line 213
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v2

    .line 217
    if-nez v2, :cond_3

    .line 218
    .line 219
    const-string v2, "2"

    .line 220
    .line 221
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    if-eqz v2, :cond_2

    .line 226
    .line 227
    goto :goto_2

    .line 228
    :cond_2
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 229
    .line 230
    :goto_1
    sub-int/2addr v1, v0

    .line 231
    move v6, v1

    .line 232
    goto :goto_3

    .line 233
    :cond_3
    :goto_2
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 234
    .line 235
    goto :goto_1

    .line 236
    :goto_3
    new-instance v0, Lcom/google/android/gms/internal/ads/am;

    .line 237
    .line 238
    move-object v1, v0

    .line 239
    move-object v2, v8

    .line 240
    move-object v3, p1

    .line 241
    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/am;-><init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/Ef;Ljava/lang/String;Landroid/view/WindowManager$LayoutParams;ILandroid/view/WindowManager;)V

    .line 242
    .line 243
    .line 244
    iput-object v0, v9, Lcom/google/android/gms/internal/ads/bm;->c:Lcom/google/android/gms/internal/ads/am;

    .line 245
    .line 246
    invoke-virtual {v8}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    if-eqz v0, :cond_4

    .line 251
    .line 252
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 253
    .line 254
    .line 255
    move-result v1

    .line 256
    if-eqz v1, :cond_4

    .line 257
    .line 258
    iget-object v1, v9, Lcom/google/android/gms/internal/ads/bm;->c:Lcom/google/android/gms/internal/ads/am;

    .line 259
    .line 260
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 261
    .line 262
    .line 263
    :cond_4
    :goto_4
    const-string v0, "overlay_url"

    .line 264
    .line 265
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object p2

    .line 269
    check-cast p2, Ljava/lang/String;

    .line 270
    .line 271
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 272
    .line 273
    .line 274
    move-result v0

    .line 275
    if-nez v0, :cond_5

    .line 276
    .line 277
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/Ef;->loadUrl(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    :cond_5
    :goto_5
    return-void

    .line 281
    :pswitch_0
    check-cast p1, Lcom/google/android/gms/internal/ads/Ef;

    .line 282
    .line 283
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 284
    .line 285
    .line 286
    const-string p2, "Hide native ad policy validator overlay."

    .line 287
    .line 288
    invoke-static {p2}, Lp3/h;->b(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Ef;->j()Landroid/view/View;

    .line 292
    .line 293
    .line 294
    move-result-object p2

    .line 295
    const/16 v0, 0x8

    .line 296
    .line 297
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 298
    .line 299
    .line 300
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Ef;->j()Landroid/view/View;

    .line 301
    .line 302
    .line 303
    move-result-object p2

    .line 304
    invoke-virtual {p2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 305
    .line 306
    .line 307
    move-result-object p2

    .line 308
    if-eqz p2, :cond_6

    .line 309
    .line 310
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Ef;->j()Landroid/view/View;

    .line 311
    .line 312
    .line 313
    move-result-object p2

    .line 314
    invoke-interface {v7, p2}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 315
    .line 316
    .line 317
    :cond_6
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Ef;->destroy()V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v8}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 321
    .line 322
    .line 323
    move-result-object p1

    .line 324
    iget-object p2, v9, Lcom/google/android/gms/internal/ads/bm;->c:Lcom/google/android/gms/internal/ads/am;

    .line 325
    .line 326
    if-eqz p2, :cond_7

    .line 327
    .line 328
    if-eqz p1, :cond_7

    .line 329
    .line 330
    invoke-virtual {p1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 331
    .line 332
    .line 333
    move-result p2

    .line 334
    if-eqz p2, :cond_7

    .line 335
    .line 336
    iget-object p2, v9, Lcom/google/android/gms/internal/ads/bm;->c:Lcom/google/android/gms/internal/ads/am;

    .line 337
    .line 338
    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 339
    .line 340
    .line 341
    :cond_7
    return-void

    .line 342
    nop

    .line 343
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
