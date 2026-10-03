.class public final Lcom/google/android/gms/internal/ads/Sf;
.super Landroid/webkit/WebView;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/DownloadListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Lcom/google/android/gms/internal/ads/Ef;


# static fields
.field public static final synthetic H0:I


# instance fields
.field public A0:I

.field public B0:I

.field public C0:I

.field public D0:Ljava/util/HashMap;

.field public final E0:Landroid/view/WindowManager;

.field public final F0:Lcom/google/android/gms/internal/ads/w6;

.field public final G:Lcom/google/android/gms/internal/ads/eg;

.field public G0:Z

.field public final H:Lcom/google/android/gms/internal/ads/H4;

.field public final I:Lcom/google/android/gms/internal/ads/Zv;

.field public final J:Lcom/google/android/gms/internal/ads/e8;

.field public final K:Lp3/a;

.field public L:Lk3/h;

.field public final M:Lk3/a;

.field public final N:Landroid/util/DisplayMetrics;

.field public final O:F

.field public P:Lcom/google/android/gms/internal/ads/Ov;

.field public Q:Lcom/google/android/gms/internal/ads/Qv;

.field public R:Z

.field public S:Z

.field public T:Lcom/google/android/gms/internal/ads/Xf;

.field public U:Ln3/k;

.field public V:Lcom/google/android/gms/internal/ads/mq;

.field public W:Lcom/google/android/gms/internal/ads/lq;

.field public a0:LA2/i;

.field public final b0:Ljava/lang/String;

.field public c0:Z

.field public d0:Z

.field public e0:Z

.field public f0:Z

.field public g0:Ljava/lang/Boolean;

.field public h0:Z

.field public final i0:Ljava/lang/String;

.field public j0:Lcom/google/android/gms/internal/ads/Uf;

.field public k0:Z

.field public l0:Z

.field public m0:Lcom/google/android/gms/internal/ads/L8;

.field public n0:Lcom/google/android/gms/internal/ads/J8;

.field public o0:Lcom/google/android/gms/internal/ads/X5;

.field public p0:I

.field public q0:I

.field public r0:Lcom/google/android/gms/internal/ads/U7;

.field public final s0:Lcom/google/android/gms/internal/ads/U7;

.field public t0:Lcom/google/android/gms/internal/ads/U7;

.field public final u0:Lcom/google/android/gms/internal/ads/x;

.field public v0:I

.field public w0:Ln3/k;

.field public x0:Z

.field public final y0:Ll/w;

.field public z0:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/eg;LA2/i;Ljava/lang/String;ZLcom/google/android/gms/internal/ads/H4;Lcom/google/android/gms/internal/ads/e8;Lp3/a;Lk3/h;Lk3/a;Lcom/google/android/gms/internal/ads/w6;Lcom/google/android/gms/internal/ads/Ov;Lcom/google/android/gms/internal/ads/Qv;Lcom/google/android/gms/internal/ads/Zv;)V
    .locals 9

    .line 1
    move-object v1, p0

    .line 2
    move-object v2, p1

    .line 3
    move-object/from16 v3, p7

    .line 4
    .line 5
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    iput-boolean v4, v1, Lcom/google/android/gms/internal/ads/Sf;->R:Z

    .line 10
    .line 11
    iput-boolean v4, v1, Lcom/google/android/gms/internal/ads/Sf;->S:Z

    .line 12
    .line 13
    const/4 v5, 0x1

    .line 14
    iput-boolean v5, v1, Lcom/google/android/gms/internal/ads/Sf;->h0:Z

    .line 15
    .line 16
    const-string v0, ""

    .line 17
    .line 18
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/Sf;->i0:Ljava/lang/String;

    .line 19
    .line 20
    const/4 v0, -0x1

    .line 21
    iput v0, v1, Lcom/google/android/gms/internal/ads/Sf;->z0:I

    .line 22
    .line 23
    iput v0, v1, Lcom/google/android/gms/internal/ads/Sf;->A0:I

    .line 24
    .line 25
    iput v0, v1, Lcom/google/android/gms/internal/ads/Sf;->B0:I

    .line 26
    .line 27
    iput v0, v1, Lcom/google/android/gms/internal/ads/Sf;->C0:I

    .line 28
    .line 29
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/Sf;->G:Lcom/google/android/gms/internal/ads/eg;

    .line 30
    .line 31
    move-object v0, p2

    .line 32
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/Sf;->a0:LA2/i;

    .line 33
    .line 34
    move-object v0, p3

    .line 35
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/Sf;->b0:Ljava/lang/String;

    .line 36
    .line 37
    move v0, p4

    .line 38
    iput-boolean v0, v1, Lcom/google/android/gms/internal/ads/Sf;->e0:Z

    .line 39
    .line 40
    move-object v0, p5

    .line 41
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/Sf;->H:Lcom/google/android/gms/internal/ads/H4;

    .line 42
    .line 43
    move-object/from16 v0, p13

    .line 44
    .line 45
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/Sf;->I:Lcom/google/android/gms/internal/ads/Zv;

    .line 46
    .line 47
    move-object v0, p6

    .line 48
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/Sf;->J:Lcom/google/android/gms/internal/ads/e8;

    .line 49
    .line 50
    iput-object v3, v1, Lcom/google/android/gms/internal/ads/Sf;->K:Lp3/a;

    .line 51
    .line 52
    move-object/from16 v0, p8

    .line 53
    .line 54
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/Sf;->L:Lk3/h;

    .line 55
    .line 56
    move-object/from16 v0, p9

    .line 57
    .line 58
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/Sf;->M:Lk3/a;

    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const-string v6, "window"

    .line 65
    .line 66
    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Landroid/view/WindowManager;

    .line 71
    .line 72
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/Sf;->E0:Landroid/view/WindowManager;

    .line 73
    .line 74
    sget-object v6, Lk3/l;->A:Lk3/l;

    .line 75
    .line 76
    iget-object v6, v6, Lk3/l;->c:Lo3/O;

    .line 77
    .line 78
    new-instance v6, Landroid/util/DisplayMetrics;

    .line 79
    .line 80
    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 88
    .line 89
    .line 90
    iput-object v6, v1, Lcom/google/android/gms/internal/ads/Sf;->N:Landroid/util/DisplayMetrics;

    .line 91
    .line 92
    iget v0, v6, Landroid/util/DisplayMetrics;->density:F

    .line 93
    .line 94
    iput v0, v1, Lcom/google/android/gms/internal/ads/Sf;->O:F

    .line 95
    .line 96
    move-object/from16 v0, p10

    .line 97
    .line 98
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/Sf;->F0:Lcom/google/android/gms/internal/ads/w6;

    .line 99
    .line 100
    move-object/from16 v0, p11

    .line 101
    .line 102
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/Sf;->P:Lcom/google/android/gms/internal/ads/Ov;

    .line 103
    .line 104
    move-object/from16 v0, p12

    .line 105
    .line 106
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/Sf;->Q:Lcom/google/android/gms/internal/ads/Qv;

    .line 107
    .line 108
    new-instance v0, Ll/w;

    .line 109
    .line 110
    iget-object v6, v2, Lcom/google/android/gms/internal/ads/eg;->a:Landroid/app/Activity;

    .line 111
    .line 112
    invoke-direct {v0, v6, p0, p0}, Ll/w;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 113
    .line 114
    .line 115
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/Sf;->y0:Ll/w;

    .line 116
    .line 117
    iput-boolean v4, v1, Lcom/google/android/gms/internal/ads/Sf;->G0:Z

    .line 118
    .line 119
    invoke-virtual {p0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 123
    .line 124
    .line 125
    move-result-object v6

    .line 126
    invoke-virtual {v6, v4}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 127
    .line 128
    .line 129
    :try_start_0
    invoke-virtual {v6, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    move-object v7, v0

    .line 135
    const-string v0, "Unable to enable Javascript."

    .line 136
    .line 137
    invoke-static {v0, v7}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    .line 139
    .line 140
    :goto_0
    invoke-virtual {v6, v4}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v6, v5}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v6, v5}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 147
    .line 148
    .line 149
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->Ua:Lcom/google/android/gms/internal/ads/J7;

    .line 150
    .line 151
    sget-object v7, Ll3/q;->d:Ll3/q;

    .line 152
    .line 153
    iget-object v8, v7, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 154
    .line 155
    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    check-cast v0, Ljava/lang/Boolean;

    .line 160
    .line 161
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-eqz v0, :cond_0

    .line 166
    .line 167
    invoke-virtual {v6, v5}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 168
    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_0
    const/4 v0, 0x2

    .line 172
    invoke-virtual {v6, v0}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 173
    .line 174
    .line 175
    :goto_1
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 176
    .line 177
    iget-object v8, v0, Lk3/l;->c:Lo3/O;

    .line 178
    .line 179
    iget-object v3, v3, Lp3/a;->G:Ljava/lang/String;

    .line 180
    .line 181
    invoke-virtual {v8, p1, v3}, Lo3/O;->w(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    invoke-virtual {v6, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    new-instance v8, Lo3/F;

    .line 193
    .line 194
    invoke-direct {v8, v6, v3, v5}, Lo3/F;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 195
    .line 196
    .line 197
    invoke-static {v3, v8}, Lo3/r;->l(Landroid/content/Context;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v6, v4}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v6, v4}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v6, v4}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p0, p0}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Sf;->R0()V

    .line 213
    .line 214
    .line 215
    new-instance v3, Lcom/google/android/gms/internal/ads/Vf;

    .line 216
    .line 217
    new-instance v5, Lcom/google/android/gms/internal/ads/L9;

    .line 218
    .line 219
    invoke-direct {v5, p0}, Lcom/google/android/gms/internal/ads/L9;-><init>(Lcom/google/android/gms/internal/ads/Ef;)V

    .line 220
    .line 221
    .line 222
    invoke-direct {v3, p0, v5}, Lcom/google/android/gms/internal/ads/Vf;-><init>(Lcom/google/android/gms/internal/ads/Wf;Lcom/google/android/gms/internal/ads/L9;)V

    .line 223
    .line 224
    .line 225
    const-string v5, "googleAdsJsInterface"

    .line 226
    .line 227
    invoke-virtual {p0, v3, v5}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    const-string v3, "accessibility"

    .line 231
    .line 232
    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    const-string v3, "accessibilityTraversal"

    .line 236
    .line 237
    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/Sf;->u0:Lcom/google/android/gms/internal/ads/x;

    .line 241
    .line 242
    if-nez v3, :cond_1

    .line 243
    .line 244
    goto :goto_2

    .line 245
    :cond_1
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/x;->I:Ljava/lang/Object;

    .line 246
    .line 247
    check-cast v3, Lcom/google/android/gms/internal/ads/W7;

    .line 248
    .line 249
    iget-object v5, v0, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 250
    .line 251
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/le;->c()Lcom/google/android/gms/internal/ads/Nd;

    .line 252
    .line 253
    .line 254
    move-result-object v5

    .line 255
    if-eqz v5, :cond_2

    .line 256
    .line 257
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/Nd;->a:Ljava/lang/Object;

    .line 258
    .line 259
    check-cast v5, Ljava/util/concurrent/BlockingQueue;

    .line 260
    .line 261
    invoke-interface {v5, v3}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    :cond_2
    :goto_2
    new-instance v3, Lcom/google/android/gms/internal/ads/x;

    .line 265
    .line 266
    new-instance v5, Lcom/google/android/gms/internal/ads/W7;

    .line 267
    .line 268
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/Sf;->b0:Ljava/lang/String;

    .line 269
    .line 270
    invoke-direct {v5, v6}, Lcom/google/android/gms/internal/ads/W7;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    invoke-direct {v3, v5}, Lcom/google/android/gms/internal/ads/x;-><init>(Lcom/google/android/gms/internal/ads/W7;)V

    .line 274
    .line 275
    .line 276
    iput-object v3, v1, Lcom/google/android/gms/internal/ads/Sf;->u0:Lcom/google/android/gms/internal/ads/x;

    .line 277
    .line 278
    iget-object v5, v3, Lcom/google/android/gms/internal/ads/x;->I:Ljava/lang/Object;

    .line 279
    .line 280
    check-cast v5, Lcom/google/android/gms/internal/ads/W7;

    .line 281
    .line 282
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/W7;->c:Ljava/lang/Object;

    .line 283
    .line 284
    monitor-enter v5

    .line 285
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 286
    sget-object v5, Lcom/google/android/gms/internal/ads/Q7;->I1:Lcom/google/android/gms/internal/ads/J7;

    .line 287
    .line 288
    iget-object v6, v7, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 289
    .line 290
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v5

    .line 294
    check-cast v5, Ljava/lang/Boolean;

    .line 295
    .line 296
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 297
    .line 298
    .line 299
    move-result v5

    .line 300
    if-eqz v5, :cond_3

    .line 301
    .line 302
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/Sf;->Q:Lcom/google/android/gms/internal/ads/Qv;

    .line 303
    .line 304
    if-eqz v5, :cond_3

    .line 305
    .line 306
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/Qv;->b:Ljava/lang/String;

    .line 307
    .line 308
    if-eqz v5, :cond_3

    .line 309
    .line 310
    iget-object v6, v3, Lcom/google/android/gms/internal/ads/x;->I:Ljava/lang/Object;

    .line 311
    .line 312
    check-cast v6, Lcom/google/android/gms/internal/ads/W7;

    .line 313
    .line 314
    const-string v7, "gqi"

    .line 315
    .line 316
    invoke-virtual {v6, v7, v5}, Lcom/google/android/gms/internal/ads/W7;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/W7;->d()Lcom/google/android/gms/internal/ads/U7;

    .line 320
    .line 321
    .line 322
    move-result-object v5

    .line 323
    iput-object v5, v1, Lcom/google/android/gms/internal/ads/Sf;->s0:Lcom/google/android/gms/internal/ads/U7;

    .line 324
    .line 325
    const-string v6, "native:view_create"

    .line 326
    .line 327
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/x;->H:Ljava/lang/Object;

    .line 328
    .line 329
    check-cast v3, Ljava/util/Map;

    .line 330
    .line 331
    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    const/4 v3, 0x0

    .line 335
    iput-object v3, v1, Lcom/google/android/gms/internal/ads/Sf;->t0:Lcom/google/android/gms/internal/ads/U7;

    .line 336
    .line 337
    iput-object v3, v1, Lcom/google/android/gms/internal/ads/Sf;->r0:Lcom/google/android/gms/internal/ads/U7;

    .line 338
    .line 339
    sget-object v3, LT1/a;->H:LT1/a;

    .line 340
    .line 341
    if-nez v3, :cond_4

    .line 342
    .line 343
    new-instance v3, LT1/a;

    .line 344
    .line 345
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 346
    .line 347
    .line 348
    sput-object v3, LT1/a;->H:LT1/a;

    .line 349
    .line 350
    :cond_4
    sget-object v3, LT1/a;->H:LT1/a;

    .line 351
    .line 352
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 353
    .line 354
    .line 355
    const-string v5, "Updating user agent."

    .line 356
    .line 357
    invoke-static {v5}, Lo3/I;->k(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    invoke-static {p1}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v5

    .line 364
    iget-object v6, v3, LT1/a;->G:Ljava/lang/String;

    .line 365
    .line 366
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 367
    .line 368
    .line 369
    move-result v6

    .line 370
    if-nez v6, :cond_6

    .line 371
    .line 372
    invoke-static {p1}, LJ3/j;->a(Landroid/content/Context;)Landroid/content/Context;

    .line 373
    .line 374
    .line 375
    move-result-object v6

    .line 376
    if-nez v6, :cond_5

    .line 377
    .line 378
    invoke-static {p1}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v6

    .line 382
    const-string v7, "admob_user_agent"

    .line 383
    .line 384
    invoke-virtual {p1, v7, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 385
    .line 386
    .line 387
    move-result-object v2

    .line 388
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 389
    .line 390
    .line 391
    move-result-object v2

    .line 392
    const-string v4, "user_agent"

    .line 393
    .line 394
    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 395
    .line 396
    .line 397
    move-result-object v2

    .line 398
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 399
    .line 400
    .line 401
    :cond_5
    iput-object v5, v3, LT1/a;->G:Ljava/lang/String;

    .line 402
    .line 403
    :cond_6
    const-string v2, "User agent is updated."

    .line 404
    .line 405
    invoke-static {v2}, Lo3/I;->k(Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    iget-object v0, v0, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 409
    .line 410
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/le;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 411
    .line 412
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 413
    .line 414
    .line 415
    return-void

    .line 416
    :catchall_0
    move-exception v0

    .line 417
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 418
    throw v0
.end method

.method public static synthetic G(Lcom/google/android/gms/internal/ads/Sf;)V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final declared-synchronized A()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "Destroying WebView!"

    .line 3
    .line 4
    invoke-static {v0}, Lo3/I;->k(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Sf;->S0()V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lo3/O;->l:Lo3/J;

    .line 11
    .line 12
    new-instance v1, Lcom/google/android/gms/internal/ads/Pf;

    .line 13
    .line 14
    const/16 v2, 0x12

    .line 15
    .line 16
    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/ads/Pf;-><init>(Ljava/lang/Object;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    monitor-exit p0

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    monitor-exit p0

    .line 26
    throw v0
.end method

.method public final A0()Lcom/google/android/gms/internal/ads/Zv;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->I:Lcom/google/android/gms/internal/ads/Zv;

    return-object v0
.end method

.method public final declared-synchronized B()Ln3/k;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->U:Ln3/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public final B0()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final C0(IZ)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Sf;->destroy()V

    .line 2
    .line 3
    .line 4
    new-instance v0, LG/c;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-boolean p2, v0, LG/c;->H:Z

    .line 10
    .line 11
    iput p1, v0, LG/c;->G:I

    .line 12
    .line 13
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Sf;->F0:Lcom/google/android/gms/internal/ads/w6;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/w6;->a(Lcom/google/android/gms/internal/ads/v6;)V

    .line 16
    .line 17
    .line 18
    const/16 p2, 0x2713

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/w6;->b(I)V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    return p1
.end method

.method public final D()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->G:Lcom/google/android/gms/internal/ads/eg;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/eg;->c:Landroid/content/Context;

    .line 4
    .line 5
    return-object v0
.end method

.method public final D0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/N9;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->T:Lcom/google/android/gms/internal/ads/Xf;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Xf;->J:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Xf;->I:Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Ljava/util/List;

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    monitor-exit v1

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    monitor-exit v1

    .line 26
    :goto_0
    return-void

    .line 27
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p1

    .line 29
    :cond_1
    return-void
.end method

.method public final declared-synchronized E()Ljava/lang/Boolean;
    .locals 1

    .line 1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->g0:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized E0()Z
    .locals 1

    .line 1
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Sf;->c0:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final F(Lcom/google/android/gms/internal/ads/F5;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/F5;->j:Z

    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/Sf;->k0:Z

    .line 5
    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Sf;->U0(Z)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    throw p1
.end method

.method public final F0()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Sf;->y0:Ll/w;

    .line 3
    .line 4
    iput-boolean v0, v1, Ll/w;->f:Z

    .line 5
    .line 6
    iget-boolean v0, v1, Ll/w;->e:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1}, Ll/w;->d()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final declared-synchronized G0(Z)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Sf;->e0:Z

    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/Sf;->e0:Z

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Sf;->R0()V

    .line 7
    .line 8
    .line 9
    if-eq p1, v0, :cond_2

    .line 10
    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->N:Lcom/google/android/gms/internal/ads/J7;

    .line 12
    .line 13
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 14
    .line 15
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/lang/Boolean;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->a0:LA2/i;

    .line 30
    .line 31
    invoke-virtual {v0}, LA2/i;->b()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    goto :goto_3

    .line 40
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 41
    if-eq v0, p1, :cond_1

    .line 42
    .line 43
    const-string p1, "default"

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const-string p1, "expanded"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .line 48
    :goto_1
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    .line 49
    .line 50
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v1, "state"

    .line 54
    .line 55
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const-string v0, "onStateChanged"

    .line 60
    .line 61
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Sf;->b(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :catch_0
    move-exception p1

    .line 66
    :try_start_2
    const-string v0, "Error occurred while dispatching state change."

    .line 67
    .line 68
    invoke-static {v0, p1}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69
    .line 70
    .line 71
    :goto_2
    monitor-exit p0

    .line 72
    return-void

    .line 73
    :cond_2
    monitor-exit p0

    .line 74
    return-void

    .line 75
    :goto_3
    monitor-exit p0

    .line 76
    throw p1
.end method

.method public final declared-synchronized H(Ljava/lang/String;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Sf;->a0()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Sf;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    :try_start_1
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    .line 17
    .line 18
    invoke-static {p1}, Lp3/h;->g(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :goto_0
    monitor-exit p0

    .line 24
    throw p1
.end method

.method public final declared-synchronized H0(Lcom/google/android/gms/internal/ads/lq;)V
    .locals 0

    .line 1
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Sf;->W:Lcom/google/android/gms/internal/ads/lq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized I()Lcom/google/android/gms/internal/ads/L8;
    .locals 1

    .line 1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->m0:Lcom/google/android/gms/internal/ads/L8;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized I0(Lcom/google/android/gms/internal/ads/Gm;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Sf;->n0:Lcom/google/android/gms/internal/ads/J8;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0

    .line 8
    throw p1
.end method

.method public final J(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Sf;->E()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 9
    .line 10
    iget-object v0, v0, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/le;->f()Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->g0:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    :try_start_1
    const-string v0, "(function(){})()"

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/Sf;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 24
    .line 25
    .line 26
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/Sf;->v0(Ljava/lang/Boolean;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    .line 30
    .line 31
    :cond_0
    monitor-exit p0

    .line 32
    goto :goto_1

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_0

    .line 35
    :catch_0
    :try_start_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/Sf;->v0(Ljava/lang/Boolean;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    .line 39
    .line 40
    monitor-exit p0

    .line 41
    goto :goto_1

    .line 42
    :goto_0
    monitor-exit p0

    .line 43
    throw p1

    .line 44
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Sf;->E()Ljava/lang/Boolean;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Sf;->H(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_2
    const-string v0, "javascript:"

    .line 59
    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Sf;->Y(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public final J0()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic K(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final declared-synchronized K0(Z)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/Sf;->p0:I

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    if-eq v1, p1, :cond_0

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    :cond_0
    add-int/2addr v0, v1

    .line 9
    iput v0, p0, Lcom/google/android/gms/internal/ads/Sf;->p0:I

    .line 10
    .line 11
    if-gtz v0, :cond_1

    .line 12
    .line 13
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Sf;->U:Ln3/k;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Ln3/k;->A0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    monitor-exit p0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :goto_0
    monitor-exit p0

    .line 27
    throw p1
.end method

.method public final L()LD4/b;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Sf;->J:Lcom/google/android/gms/internal/ads/e8;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Cw;->N1(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/fC;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/aC;->r(LD4/b;)Lcom/google/android/gms/internal/ads/aC;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget-object v2, Lcom/google/android/gms/internal/ads/q8;->c:Lcom/google/android/gms/internal/ads/f8;

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/f8;->l()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Ljava/lang/Long;

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 28
    .line 29
    .line 30
    move-result-wide v2

    .line 31
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 32
    .line 33
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/e8;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 34
    .line 35
    invoke-static {v0, v2, v3, v4, v1}, Lcom/google/android/gms/internal/ads/Cw;->e2(LD4/b;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)LD4/b;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/google/android/gms/internal/ads/aC;

    .line 40
    .line 41
    return-object v0
.end method

.method public final L0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/N9;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->T:Lcom/google/android/gms/internal/ads/Xf;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/Xf;->m(Ljava/lang/String;Lcom/google/android/gms/internal/ads/N9;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final synthetic M(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final declared-synchronized M0(Lcom/google/android/gms/internal/ads/x;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Sf;->m0:Lcom/google/android/gms/internal/ads/L8;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0

    .line 8
    throw p1
.end method

.method public final declared-synchronized N()Lcom/google/android/gms/internal/ads/lq;
    .locals 1

    .line 1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->W:Lcom/google/android/gms/internal/ads/lq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final N0()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sget-object v2, Lk3/l;->A:Lk3/l;

    .line 8
    .line 9
    iget-object v3, v2, Lk3/l;->h:Lo3/a;

    .line 10
    .line 11
    invoke-virtual {v3}, Lo3/a;->d()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const-string v4, "app_muted"

    .line 20
    .line 21
    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    iget-object v2, v2, Lk3/l;->h:Lo3/a;

    .line 25
    .line 26
    invoke-virtual {v2}, Lo3/a;->a()F

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const-string v3, "app_volume"

    .line 35
    .line 36
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    const-string v3, "audio"

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, Landroid/media/AudioManager;

    .line 50
    .line 51
    if-nez v2, :cond_0

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v3, :cond_1

    .line 63
    .line 64
    int-to-float v1, v1

    .line 65
    int-to-float v2, v3

    .line 66
    div-float/2addr v1, v2

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 69
    :goto_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    const-string v2, "device_volume"

    .line 74
    .line 75
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    const-string v1, "volume"

    .line 79
    .line 80
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/Sf;->w(Ljava/lang/String;Ljava/util/Map;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public final synthetic O()V
    .locals 1

    .line 1
    const-string v0, "about:blank"

    .line 2
    .line 3
    invoke-super {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final declared-synchronized O0(Z)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->U:Ln3/k;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Sf;->T:Lcom/google/android/gms/internal/ads/Xf;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Xf;->v()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0, v1, p1}, Ln3/k;->F3(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/Sf;->c0:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :goto_0
    monitor-exit p0

    .line 24
    throw p1
.end method

.method public final P()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->r0:Lcom/google/android/gms/internal/ads/U7;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->u0:Lcom/google/android/gms/internal/ads/x;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/x;->I:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Lcom/google/android/gms/internal/ads/W7;

    .line 10
    .line 11
    const-string v2, "aes2"

    .line 12
    .line 13
    filled-new-array {v2}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Sf;->s0:Lcom/google/android/gms/internal/ads/U7;

    .line 18
    .line 19
    invoke-static {v1, v3, v2}, LS3/e;->v(Lcom/google/android/gms/internal/ads/W7;Lcom/google/android/gms/internal/ads/U7;[Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/ads/W7;->d()Lcom/google/android/gms/internal/ads/U7;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Sf;->r0:Lcom/google/android/gms/internal/ads/U7;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/x;->H:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, Ljava/util/Map;

    .line 31
    .line 32
    const-string v2, "native:view_show"

    .line 33
    .line 34
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .line 38
    .line 39
    const/4 v1, 0x1

    .line 40
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Sf;->K:Lp3/a;

    .line 44
    .line 45
    iget-object v1, v1, Lp3/a;->G:Ljava/lang/String;

    .line 46
    .line 47
    const-string v2, "version"

    .line 48
    .line 49
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    const-string v1, "onshow"

    .line 53
    .line 54
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/Sf;->w(Ljava/lang/String;Ljava/util/Map;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final declared-synchronized P0()Z
    .locals 1

    .line 1
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Sf;->h0:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final Q()Landroid/webkit/WebViewClient;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->T:Lcom/google/android/gms/internal/ads/Xf;

    return-object v0
.end method

.method public final Q0()Z
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->T:Lcom/google/android/gms/internal/ads/Xf;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Xf;->v()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->T:Lcom/google/android/gms/internal/ads/Xf;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Xf;->w()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    :cond_0
    sget-object v0, Ll3/p;->f:Ll3/p;

    .line 19
    .line 20
    iget-object v0, v0, Ll3/p;->a:Lp3/d;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->N:Landroid/util/DisplayMetrics;

    .line 23
    .line 24
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 25
    .line 26
    int-to-float v2, v2

    .line 27
    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    .line 28
    .line 29
    div-float/2addr v2, v3

    .line 30
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 35
    .line 36
    int-to-float v2, v2

    .line 37
    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    .line 38
    .line 39
    div-float/2addr v2, v3

    .line 40
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Sf;->G:Lcom/google/android/gms/internal/ads/eg;

    .line 45
    .line 46
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/eg;->a:Landroid/app/Activity;

    .line 47
    .line 48
    const/4 v3, 0x1

    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    if-nez v6, :cond_1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    sget-object v6, Lk3/l;->A:Lk3/l;

    .line 59
    .line 60
    iget-object v6, v6, Lk3/l;->c:Lo3/O;

    .line 61
    .line 62
    invoke-static {v2}, Lo3/O;->m(Landroid/app/Activity;)[I

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    aget v6, v2, v1

    .line 67
    .line 68
    int-to-float v6, v6

    .line 69
    iget v7, v0, Landroid/util/DisplayMetrics;->density:F

    .line 70
    .line 71
    div-float/2addr v6, v7

    .line 72
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    aget v2, v2, v3

    .line 77
    .line 78
    int-to-float v2, v2

    .line 79
    iget v7, v0, Landroid/util/DisplayMetrics;->density:F

    .line 80
    .line 81
    div-float/2addr v2, v7

    .line 82
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    move v7, v2

    .line 87
    goto :goto_1

    .line 88
    :cond_2
    :goto_0
    move v6, v4

    .line 89
    move v7, v5

    .line 90
    :goto_1
    iget v2, p0, Lcom/google/android/gms/internal/ads/Sf;->A0:I

    .line 91
    .line 92
    if-ne v2, v4, :cond_4

    .line 93
    .line 94
    iget v8, p0, Lcom/google/android/gms/internal/ads/Sf;->z0:I

    .line 95
    .line 96
    if-ne v8, v5, :cond_4

    .line 97
    .line 98
    iget v8, p0, Lcom/google/android/gms/internal/ads/Sf;->B0:I

    .line 99
    .line 100
    if-ne v8, v6, :cond_4

    .line 101
    .line 102
    iget v8, p0, Lcom/google/android/gms/internal/ads/Sf;->C0:I

    .line 103
    .line 104
    if-eq v8, v7, :cond_3

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_3
    return v1

    .line 108
    :cond_4
    :goto_2
    if-ne v2, v4, :cond_5

    .line 109
    .line 110
    iget v2, p0, Lcom/google/android/gms/internal/ads/Sf;->z0:I

    .line 111
    .line 112
    if-eq v2, v5, :cond_6

    .line 113
    .line 114
    :cond_5
    const/4 v1, 0x1

    .line 115
    :cond_6
    iput v4, p0, Lcom/google/android/gms/internal/ads/Sf;->A0:I

    .line 116
    .line 117
    iput v5, p0, Lcom/google/android/gms/internal/ads/Sf;->z0:I

    .line 118
    .line 119
    iput v6, p0, Lcom/google/android/gms/internal/ads/Sf;->B0:I

    .line 120
    .line 121
    iput v7, p0, Lcom/google/android/gms/internal/ads/Sf;->C0:I

    .line 122
    .line 123
    new-instance v3, Lcom/google/android/gms/internal/ads/x;

    .line 124
    .line 125
    const/16 v2, 0xe

    .line 126
    .line 127
    const-string v8, ""

    .line 128
    .line 129
    invoke-direct {v3, v2, p0, v8}, Lcom/google/android/gms/internal/ads/x;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    iget v8, v0, Landroid/util/DisplayMetrics;->density:F

    .line 133
    .line 134
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->E0:Landroid/view/WindowManager;

    .line 135
    .line 136
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    .line 141
    .line 142
    .line 143
    move-result v9

    .line 144
    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/x;->m(IIIIFI)V

    .line 145
    .line 146
    .line 147
    return v1
.end method

.method public final R()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->u0:Lcom/google/android/gms/internal/ads/x;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/x;->I:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Lcom/google/android/gms/internal/ads/W7;

    .line 6
    .line 7
    const-string v1, "aeh2"

    .line 8
    .line 9
    filled-new-array {v1}, [Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Sf;->s0:Lcom/google/android/gms/internal/ads/U7;

    .line 14
    .line 15
    invoke-static {v0, v2, v1}, LS3/e;->v(Lcom/google/android/gms/internal/ads/W7;Lcom/google/android/gms/internal/ads/U7;[Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Sf;->K:Lp3/a;

    .line 25
    .line 26
    iget-object v1, v1, Lp3/a;->G:Ljava/lang/String;

    .line 27
    .line 28
    const-string v2, "version"

    .line 29
    .line 30
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    const-string v1, "onhide"

    .line 34
    .line 35
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/Sf;->w(Ljava/lang/String;Ljava/util/Map;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final declared-synchronized R0()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->P:Lcom/google/android/gms/internal/ads/Ov;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/Ov;->m0:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-string v0, "Disabling hardware acceleration on an overlay."

    .line 12
    .line 13
    invoke-static {v0}, Lp3/h;->b(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Sf;->T0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_2

    .line 23
    :cond_1
    :goto_0
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Sf;->e0:Z

    .line 24
    .line 25
    if-nez v0, :cond_3

    .line 26
    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->a0:LA2/i;

    .line 28
    .line 29
    invoke-virtual {v0}, LA2/i;->b()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    const-string v0, "Enabling hardware acceleration on an AdView."

    .line 37
    .line 38
    invoke-static {v0}, Lp3/h;->b(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Sf;->V0()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    .line 43
    .line 44
    monitor-exit p0

    .line 45
    return-void

    .line 46
    :cond_3
    :goto_1
    :try_start_2
    const-string v0, "Enabling hardware acceleration on an overlay."

    .line 47
    .line 48
    invoke-static {v0}, Lp3/h;->b(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Sf;->V0()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 52
    .line 53
    .line 54
    monitor-exit p0

    .line 55
    return-void

    .line 56
    :goto_2
    monitor-exit p0

    .line 57
    throw v0
.end method

.method public final declared-synchronized S()Lcom/google/android/gms/internal/ads/mq;
    .locals 1

    .line 1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->V:Lcom/google/android/gms/internal/ads/mq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized S0()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Sf;->x0:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Sf;->x0:Z

    .line 8
    .line 9
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 10
    .line 11
    iget-object v0, v0, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/le;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    monitor-exit p0

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    monitor-exit p0

    .line 23
    return-void

    .line 24
    :goto_0
    monitor-exit p0

    .line 25
    throw v0
.end method

.method public final T()Lcom/google/android/gms/internal/ads/H4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->H:Lcom/google/android/gms/internal/ads/H4;

    return-object v0
.end method

.method public final declared-synchronized T0()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Sf;->f0:Z

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    :goto_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/Sf;->f0:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :goto_1
    monitor-exit p0

    .line 19
    throw v0
.end method

.method public final U()Lcom/google/android/gms/internal/ads/Qv;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->Q:Lcom/google/android/gms/internal/ads/Qv;

    return-object v0
.end method

.method public final U0(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-eq v1, p1, :cond_0

    .line 8
    .line 9
    const-string p1, "0"

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string p1, "1"

    .line 13
    .line 14
    :goto_0
    const-string v1, "isVisible"

    .line 15
    .line 16
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    const-string p1, "onAdVisibilityChanged"

    .line 20
    .line 21
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Sf;->w(Ljava/lang/String;Ljava/util/Map;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final V(Ljava/lang/String;Lcom/google/android/gms/internal/ads/K4;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->T:Lcom/google/android/gms/internal/ads/Xf;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Xf;->J:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Xf;->I:Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Ljava/util/List;

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    monitor-exit v1

    .line 19
    goto :goto_1

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    goto :goto_2

    .line 22
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_2

    .line 36
    .line 37
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Lcom/google/android/gms/internal/ads/N9;

    .line 42
    .line 43
    instance-of v4, v3, Lcom/google/android/gms/internal/ads/wa;

    .line 44
    .line 45
    if-eqz v4, :cond_1

    .line 46
    .line 47
    iget-object v4, p2, Lcom/google/android/gms/internal/ads/K4;->H:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v4, Lcom/google/android/gms/internal/ads/N9;

    .line 50
    .line 51
    move-object v5, v3

    .line 52
    check-cast v5, Lcom/google/android/gms/internal/ads/wa;

    .line 53
    .line 54
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/wa;->G:Lcom/google/android/gms/internal/ads/N9;

    .line 55
    .line 56
    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_1

    .line 61
    .line 62
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 67
    .line 68
    .line 69
    monitor-exit v1

    .line 70
    :goto_1
    return-void

    .line 71
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    throw p1

    .line 73
    :cond_3
    return-void
.end method

.method public final declared-synchronized V0()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Sf;->f0:Z

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    :goto_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/Sf;->f0:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :goto_1
    monitor-exit p0

    .line 19
    throw v0
.end method

.method public final declared-synchronized W(Z)V
    .locals 0

    .line 1
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/Sf;->h0:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized W0()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "about:blank"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    .line 4
    :try_start_1
    sget-object v1, Lo3/O;->l:Lo3/J;

    .line 5
    .line 6
    new-instance v2, Lcom/google/android/gms/internal/ads/Rf;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-direct {v2, p0, v0, v3}, Lcom/google/android/gms/internal/ads/Rf;-><init>(Lcom/google/android/gms/internal/ads/Sf;Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    :try_start_2
    const-string v1, "AdWebViewImpl.loadUrlUnsafe"

    .line 19
    .line 20
    sget-object v2, Lk3/l;->A:Lk3/l;

    .line 21
    .line 22
    iget-object v2, v2, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 23
    .line 24
    invoke-virtual {v2, v1, v0}, Lcom/google/android/gms/internal/ads/le;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    const-string v1, "Could not call loadUrl in destroy(). "

    .line 28
    .line 29
    invoke-static {v1, v0}, Lp3/h;->h(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 30
    .line 31
    .line 32
    monitor-exit p0

    .line 33
    return-void

    .line 34
    :catchall_1
    move-exception v0

    .line 35
    monitor-exit p0

    .line 36
    throw v0
.end method

.method public final X(IZZ)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->T:Lcom/google/android/gms/internal/ads/Xf;

    .line 2
    .line 3
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/Xf;->G:Lcom/google/android/gms/internal/ads/Ef;

    .line 4
    .line 5
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Ef;->j0()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v1, v5}, Lcom/google/android/gms/internal/ads/Xf;->G(ZLcom/google/android/gms/internal/ads/Ef;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    if-nez p3, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v2, 0x0

    .line 20
    :cond_1
    :goto_0
    new-instance p3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    move-object v4, v3

    .line 26
    goto :goto_1

    .line 27
    :cond_2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Xf;->K:Ll3/a;

    .line 28
    .line 29
    move-object v4, v1

    .line 30
    :goto_1
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/Xf;->L:Ln3/m;

    .line 31
    .line 32
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/Xf;->Z:Ln3/c;

    .line 33
    .line 34
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Ef;->zzn()Lp3/a;

    .line 35
    .line 36
    .line 37
    move-result-object v8

    .line 38
    if-eqz v2, :cond_3

    .line 39
    .line 40
    move-object v9, v3

    .line 41
    goto :goto_2

    .line 42
    :cond_3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Xf;->Q:Lcom/google/android/gms/internal/ads/Ok;

    .line 43
    .line 44
    move-object v9, v1

    .line 45
    :goto_2
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Ef;->f()Lcom/google/android/gms/internal/ads/Ov;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-eqz v1, :cond_4

    .line 50
    .line 51
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/Ef;->f()Lcom/google/android/gms/internal/ads/Ov;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/Ov;->i0:Z

    .line 56
    .line 57
    if-eqz v1, :cond_4

    .line 58
    .line 59
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Xf;->j0:Lcom/google/android/gms/internal/ads/hq;

    .line 60
    .line 61
    move-object v10, v1

    .line 62
    goto :goto_3

    .line 63
    :cond_4
    move-object v10, v3

    .line 64
    :goto_3
    move-object v1, p3

    .line 65
    move-object v2, v4

    .line 66
    move-object v3, v6

    .line 67
    move-object v4, v7

    .line 68
    move v6, p2

    .line 69
    move v7, p1

    .line 70
    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Ll3/a;Ln3/m;Ln3/c;Lcom/google/android/gms/internal/ads/Ef;ZILp3/a;Lcom/google/android/gms/internal/ads/Ok;Lcom/google/android/gms/internal/ads/hq;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/Xf;->S0(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public final declared-synchronized X0()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->D0:Ljava/util/HashMap;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/google/android/gms/internal/ads/jf;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/jf;->j()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->D0:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    monitor-exit p0

    .line 36
    return-void

    .line 37
    :goto_1
    monitor-exit p0

    .line 38
    throw v0
.end method

.method public final declared-synchronized Y(Ljava/lang/String;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Sf;->a0()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Sf;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    :try_start_1
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    .line 16
    .line 17
    invoke-static {p1}, Lp3/h;->g(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    .line 19
    .line 20
    monitor-exit p0

    .line 21
    return-void

    .line 22
    :goto_0
    monitor-exit p0

    .line 23
    throw p1
.end method

.method public final declared-synchronized Z(I)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->U:Ln3/k;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ln3/k;->z3(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :goto_0
    monitor-exit p0

    .line 16
    throw p1
.end method

.method public final declared-synchronized a()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->L:Lk3/h;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0}, Lk3/h;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :goto_0
    monitor-exit p0

    .line 16
    throw v0
.end method

.method public final declared-synchronized a0()Z
    .locals 1

    .line 1
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Sf;->d0:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string v0, "(window.AFMA_ReceiveMessage || function() {})(\'"

    .line 13
    .line 14
    const-string v1, "\',"

    .line 15
    .line 16
    const-string v2, ");"

    .line 17
    .line 18
    invoke-static {v0, p2, v1, p1, v2}, Lcom/google/protobuf/U2;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    const-string v0, "Dispatching AFMA event: "

    .line 27
    .line 28
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-static {p2}, Lp3/h;->b(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Sf;->J(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final b0(Ln3/f;ZZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->T:Lcom/google/android/gms/internal/ads/Xf;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/Xf;->R0(Ln3/f;ZZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Sf;->J(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final c0(ZILjava/lang/String;ZZ)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Sf;->T:Lcom/google/android/gms/internal/ads/Xf;

    .line 4
    .line 5
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/Xf;->G:Lcom/google/android/gms/internal/ads/Ef;

    .line 6
    .line 7
    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/Ef;->j0()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-static {v2, v8}, Lcom/google/android/gms/internal/ads/Xf;->G(ZLcom/google/android/gms/internal/ads/Ef;)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const/4 v4, 0x1

    .line 16
    if-nez v3, :cond_1

    .line 17
    .line 18
    if-nez p4, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v4, 0x0

    .line 22
    :cond_1
    :goto_0
    new-instance v15, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    if-eqz v3, :cond_2

    .line 26
    .line 27
    move-object v3, v5

    .line 28
    goto :goto_1

    .line 29
    :cond_2
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/Xf;->K:Ll3/a;

    .line 30
    .line 31
    :goto_1
    if-eqz v2, :cond_3

    .line 32
    .line 33
    move-object v6, v5

    .line 34
    goto :goto_2

    .line 35
    :cond_3
    new-instance v2, Lcom/google/android/gms/internal/ads/Gf;

    .line 36
    .line 37
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/Xf;->L:Ln3/m;

    .line 38
    .line 39
    invoke-direct {v2, v8, v6}, Lcom/google/android/gms/internal/ads/Gf;-><init>(Lcom/google/android/gms/internal/ads/Ef;Ln3/m;)V

    .line 40
    .line 41
    .line 42
    move-object v6, v2

    .line 43
    :goto_2
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/Xf;->O:Lcom/google/android/gms/internal/ads/F9;

    .line 44
    .line 45
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/Xf;->P:Lcom/google/android/gms/internal/ads/G9;

    .line 46
    .line 47
    iget-object v10, v1, Lcom/google/android/gms/internal/ads/Xf;->Z:Ln3/c;

    .line 48
    .line 49
    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/Ef;->zzn()Lp3/a;

    .line 50
    .line 51
    .line 52
    move-result-object v12

    .line 53
    if-eqz v4, :cond_4

    .line 54
    .line 55
    move-object v13, v5

    .line 56
    goto :goto_3

    .line 57
    :cond_4
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/Xf;->Q:Lcom/google/android/gms/internal/ads/Ok;

    .line 58
    .line 59
    move-object v13, v2

    .line 60
    :goto_3
    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/Ef;->f()Lcom/google/android/gms/internal/ads/Ov;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    if-eqz v2, :cond_5

    .line 65
    .line 66
    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/Ef;->f()Lcom/google/android/gms/internal/ads/Ov;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/Ov;->i0:Z

    .line 71
    .line 72
    if-eqz v2, :cond_5

    .line 73
    .line 74
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/Xf;->j0:Lcom/google/android/gms/internal/ads/hq;

    .line 75
    .line 76
    move-object v14, v2

    .line 77
    goto :goto_4

    .line 78
    :cond_5
    move-object v14, v5

    .line 79
    :goto_4
    move-object v2, v15

    .line 80
    move-object v4, v6

    .line 81
    move-object v5, v7

    .line 82
    move-object v6, v9

    .line 83
    move-object v7, v10

    .line 84
    move/from16 v9, p1

    .line 85
    .line 86
    move/from16 v10, p2

    .line 87
    .line 88
    move-object/from16 v11, p3

    .line 89
    .line 90
    move-object v0, v15

    .line 91
    move/from16 v15, p5

    .line 92
    .line 93
    invoke-direct/range {v2 .. v15}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Ll3/a;Lcom/google/android/gms/internal/ads/Gf;Lcom/google/android/gms/internal/ads/F9;Lcom/google/android/gms/internal/ads/G9;Ln3/c;Lcom/google/android/gms/internal/ads/Ef;ZILjava/lang/String;Lp3/a;Lcom/google/android/gms/internal/ads/Ok;Lcom/google/android/gms/internal/ads/hq;Z)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/Xf;->S0(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p1, "("

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string p1, ");"

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/Sf;->J(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final d0(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->T:Lcom/google/android/gms/internal/ads/Xf;

    .line 2
    .line 3
    iput-boolean p1, v0, Lcom/google/android/gms/internal/ads/Xf;->h0:Z

    .line 4
    .line 5
    return-void
.end method

.method public final declared-synchronized destroy()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->u0:Lcom/google/android/gms/internal/ads/x;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/x;->I:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lcom/google/android/gms/internal/ads/W7;

    .line 10
    .line 11
    sget-object v1, Lk3/l;->A:Lk3/l;

    .line 12
    .line 13
    iget-object v1, v1, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/le;->c()Lcom/google/android/gms/internal/ads/Nd;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/Nd;->a:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v1, Ljava/util/concurrent/BlockingQueue;

    .line 24
    .line 25
    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->y0:Ll/w;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    iput-boolean v1, v0, Ll/w;->f:Z

    .line 32
    .line 33
    iget-object v2, v0, Ll/w;->b:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v2, Landroid/app/Activity;

    .line 36
    .line 37
    const/4 v3, 0x0

    .line 38
    if-nez v2, :cond_2

    .line 39
    .line 40
    goto :goto_3

    .line 41
    :cond_2
    iget-boolean v4, v0, Ll/w;->d:Z

    .line 42
    .line 43
    if-eqz v4, :cond_6

    .line 44
    .line 45
    iget-object v4, v0, Ll/w;->c:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v4, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 48
    .line 49
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    if-nez v2, :cond_3

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    if-eqz v2, :cond_4

    .line 61
    .line 62
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    goto :goto_2

    .line 67
    :cond_4
    :goto_1
    move-object v2, v3

    .line 68
    :goto_2
    if-eqz v2, :cond_5

    .line 69
    .line 70
    invoke-virtual {v2, v4}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 71
    .line 72
    .line 73
    :cond_5
    iput-boolean v1, v0, Ll/w;->d:Z

    .line 74
    .line 75
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->U:Ln3/k;

    .line 76
    .line 77
    if-eqz v0, :cond_7

    .line 78
    .line 79
    invoke-virtual {v0}, Ln3/k;->zzb()V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->U:Ln3/k;

    .line 83
    .line 84
    invoke-virtual {v0}, Ln3/k;->zzm()V

    .line 85
    .line 86
    .line 87
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/Sf;->U:Ln3/k;

    .line 88
    .line 89
    goto :goto_4

    .line 90
    :catchall_0
    move-exception v0

    .line 91
    goto :goto_5

    .line 92
    :cond_7
    :goto_4
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/Sf;->V:Lcom/google/android/gms/internal/ads/mq;

    .line 93
    .line 94
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/Sf;->W:Lcom/google/android/gms/internal/ads/lq;

    .line 95
    .line 96
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->T:Lcom/google/android/gms/internal/ads/Xf;

    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Xf;->O()V

    .line 99
    .line 100
    .line 101
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/Sf;->o0:Lcom/google/android/gms/internal/ads/X5;

    .line 102
    .line 103
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/Sf;->L:Lk3/h;

    .line 104
    .line 105
    invoke-virtual {p0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 109
    .line 110
    .line 111
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Sf;->d0:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    .line 113
    if-eqz v0, :cond_8

    .line 114
    .line 115
    monitor-exit p0

    .line 116
    return-void

    .line 117
    :cond_8
    :try_start_1
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 118
    .line 119
    iget-object v0, v0, Lk3/l;->y:Lcom/google/android/gms/internal/ads/cf;

    .line 120
    .line 121
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/cf;->b(Lcom/google/android/gms/internal/ads/Oe;)Z

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Sf;->X0()V

    .line 125
    .line 126
    .line 127
    const/4 v0, 0x1

    .line 128
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Sf;->d0:Z

    .line 129
    .line 130
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->ba:Lcom/google/android/gms/internal/ads/J7;

    .line 131
    .line 132
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 133
    .line 134
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 135
    .line 136
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    check-cast v0, Ljava/lang/Boolean;

    .line 141
    .line 142
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_9

    .line 147
    .line 148
    const-string v0, "Initiating WebView self destruct sequence in 3..."

    .line 149
    .line 150
    invoke-static {v0}, Lo3/I;->k(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    const-string v0, "Loading blank page in WebView, 2..."

    .line 154
    .line 155
    invoke-static {v0}, Lo3/I;->k(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Sf;->W0()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    .line 160
    .line 161
    monitor-exit p0

    .line 162
    return-void

    .line 163
    :cond_9
    :try_start_2
    const-string v0, "Destroying the WebView immediately..."

    .line 164
    .line 165
    invoke-static {v0}, Lo3/I;->k(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Sf;->A()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 169
    .line 170
    .line 171
    monitor-exit p0

    .line 172
    return-void

    .line 173
    :goto_5
    monitor-exit p0

    .line 174
    throw v0
.end method

.method public final declared-synchronized e(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/jf;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->D0:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/google/android/gms/internal/ads/jf;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    .line 15
    monitor-exit p0

    .line 16
    return-object p1

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    monitor-exit p0

    .line 19
    throw p1
.end method

.method public final declared-synchronized e0(Lcom/google/android/gms/internal/ads/mq;)V
    .locals 0

    .line 1
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Sf;->V:Lcom/google/android/gms/internal/ads/mq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 8

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Sf;->a0()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-static {p1, v0}, Lp3/h;->i(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 12
    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    invoke-interface {p2, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :cond_1
    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->ca:Lcom/google/android/gms/internal/ads/J7;

    .line 26
    .line 27
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 28
    .line 29
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Ljava/lang/Boolean;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    if-eq v0, v1, :cond_2

    .line 56
    .line 57
    sget-object v0, Lcom/google/android/gms/internal/ads/se;->e:Lcom/google/android/gms/internal/ads/re;

    .line 58
    .line 59
    new-instance v7, LK/a;

    .line 60
    .line 61
    const/16 v5, 0x14

    .line 62
    .line 63
    const/4 v6, 0x0

    .line 64
    move-object v1, v7

    .line 65
    move-object v2, p0

    .line 66
    move-object v3, p1

    .line 67
    move-object v4, p2

    .line 68
    invoke-direct/range {v1 .. v6}, LK/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/IB;->a(Ljava/lang/Runnable;)LD4/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    .line 73
    .line 74
    monitor-exit p0

    .line 75
    return-void

    .line 76
    :cond_2
    :try_start_2
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    .line 78
    .line 79
    monitor-exit p0

    .line 80
    return-void

    .line 81
    :goto_0
    monitor-exit p0

    .line 82
    throw p1
.end method

.method public final f()Lcom/google/android/gms/internal/ads/Ov;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->P:Lcom/google/android/gms/internal/ads/Ov;

    return-object v0
.end method

.method public final f0(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->G:Lcom/google/android/gms/internal/ads/eg;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/eg;->setBaseContext(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/eg;->a:Landroid/app/Activity;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->y0:Ll/w;

    .line 9
    .line 10
    iput-object p1, v0, Ll/w;->b:Ljava/lang/Object;

    .line 11
    .line 12
    return-void
.end method

.method public final finalize()V
    .locals 1

    .line 1
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Sf;->d0:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->T:Lcom/google/android/gms/internal/ads/Xf;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Xf;->O()V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 12
    .line 13
    iget-object v0, v0, Lk3/l;->y:Lcom/google/android/gms/internal/ads/cf;

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/cf;->b(Lcom/google/android/gms/internal/ads/Oe;)Z

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Sf;->X0()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Sf;->S0()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 28
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 34
    :catchall_1
    move-exception v0

    .line 35
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 36
    .line 37
    .line 38
    throw v0
.end method

.method public final g(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/ads/Sf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final declared-synchronized g0(Ln3/k;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Sf;->w0:Ln3/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0

    .line 8
    throw p1
.end method

.method public final declared-synchronized h(Ljava/lang/String;Lcom/google/android/gms/internal/ads/jf;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->D0:Ljava/util/HashMap;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->D0:Ljava/util/HashMap;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->D0:Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :goto_1
    monitor-exit p0

    .line 24
    throw p1
.end method

.method public final h0()Landroid/webkit/WebView;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final declared-synchronized i()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->L:Lk3/h;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0}, Lk3/h;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :goto_0
    monitor-exit p0

    .line 16
    throw v0
.end method

.method public final declared-synchronized i0(Lcom/google/android/gms/internal/ads/dv;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Sf;->o0:Lcom/google/android/gms/internal/ads/X5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0

    .line 8
    throw p1
.end method

.method public final j()Landroid/view/View;
    .locals 0

    .line 1
    return-object p0
.end method

.method public final declared-synchronized j0()Z
    .locals 1

    .line 1
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Sf;->e0:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized k(Lcom/google/android/gms/internal/ads/Uf;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->j0:Lcom/google/android/gms/internal/ads/Uf;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const-string p1, "Attempt to create multiple AdWebViewVideoControllers."

    .line 7
    .line 8
    invoke-static {p1}, Lp3/h;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Sf;->j0:Lcom/google/android/gms/internal/ads/Uf;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-void

    .line 19
    :goto_0
    monitor-exit p0

    .line 20
    throw p1
.end method

.method public final k0()V
    .locals 1

    .line 1
    const-string v0, "Cannot add text view to inner AdWebView"

    .line 2
    .line 3
    invoke-static {v0}, Lo3/I;->k(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final declared-synchronized l()LA2/i;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->a0:LA2/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public final l0(Lcom/google/android/gms/internal/ads/Ov;Lcom/google/android/gms/internal/ads/Qv;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Sf;->P:Lcom/google/android/gms/internal/ads/Ov;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Sf;->Q:Lcom/google/android/gms/internal/ads/Qv;

    return-void
.end method

.method public final declared-synchronized loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Sf;->a0()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    :try_start_1
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    .line 16
    .line 17
    invoke-static {p1}, Lp3/h;->g(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    .line 19
    .line 20
    monitor-exit p0

    .line 21
    return-void

    .line 22
    :goto_0
    monitor-exit p0

    .line 23
    throw p1
.end method

.method public final declared-synchronized loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Sf;->a0()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    :try_start_1
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    .line 16
    .line 17
    invoke-static {p1}, Lp3/h;->g(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    .line 19
    .line 20
    monitor-exit p0

    .line 21
    return-void

    .line 22
    :goto_0
    monitor-exit p0

    .line 23
    throw p1
.end method

.method public final declared-synchronized loadUrl(Ljava/lang/String;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Sf;->a0()Z

    .line 3
    .line 4
    .line 5
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    :try_start_1
    sget-object v0, Lo3/O;->l:Lo3/J;

    .line 9
    .line 10
    new-instance v1, Lcom/google/android/gms/internal/ads/Rf;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-direct {v1, p0, p1, v2}, Lcom/google/android/gms/internal/ads/Rf;-><init>(Lcom/google/android/gms/internal/ads/Sf;Ljava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    :try_start_2
    const-string v0, "AdWebViewImpl.loadUrl"

    .line 23
    .line 24
    sget-object v1, Lk3/l;->A:Lk3/l;

    .line 25
    .line 26
    iget-object v1, v1, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 27
    .line 28
    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/ads/le;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "Could not call loadUrl. "

    .line 32
    .line 33
    invoke-static {v0, p1}, Lp3/h;->h(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 34
    .line 35
    .line 36
    monitor-exit p0

    .line 37
    return-void

    .line 38
    :catchall_1
    move-exception p1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    :try_start_3
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    .line 41
    .line 42
    invoke-static {p1}, Lp3/h;->g(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 43
    .line 44
    .line 45
    monitor-exit p0

    .line 46
    return-void

    .line 47
    :goto_0
    monitor-exit p0

    .line 48
    throw p1
.end method

.method public final m(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final m0(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->u0:Lcom/google/android/gms/internal/ads/x;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Sf;->s0:Lcom/google/android/gms/internal/ads/U7;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/x;->I:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Lcom/google/android/gms/internal/ads/W7;

    .line 10
    .line 11
    const-string v3, "aebb2"

    .line 12
    .line 13
    filled-new-array {v3}, [Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-static {v2, v1, v3}, LS3/e;->v(Lcom/google/android/gms/internal/ads/W7;Lcom/google/android/gms/internal/ads/U7;[Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/x;->I:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v2, Lcom/google/android/gms/internal/ads/W7;

    .line 23
    .line 24
    const-string v3, "aeh2"

    .line 25
    .line 26
    filled-new-array {v3}, [Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-static {v2, v1, v3}, LS3/e;->v(Lcom/google/android/gms/internal/ads/W7;Lcom/google/android/gms/internal/ads/U7;[Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/x;->I:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v0, Lcom/google/android/gms/internal/ads/W7;

    .line 39
    .line 40
    const-string v1, "close_type"

    .line 41
    .line 42
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/W7;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    new-instance v0, Ljava/util/HashMap;

    .line 50
    .line 51
    const/4 v1, 0x2

    .line 52
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 53
    .line 54
    .line 55
    const-string v1, "closetype"

    .line 56
    .line 57
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Sf;->K:Lp3/a;

    .line 65
    .line 66
    iget-object p1, p1, Lp3/a;->G:Ljava/lang/String;

    .line 67
    .line 68
    const-string v1, "version"

    .line 69
    .line 70
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    const-string p1, "onhide"

    .line 74
    .line 75
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Sf;->w(Ljava/lang/String;Ljava/util/Map;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public final n()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Sf;->B()Ln3/k;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, v0, Ln3/k;->R:Ln3/i;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, v0, Ln3/i;->H:Z

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final declared-synchronized n0(LA2/i;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Sf;->a0:LA2/i;

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    monitor-exit p0

    .line 11
    throw p1
.end method

.method public final o()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->T:Lcom/google/android/gms/internal/ads/Xf;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/Xf;->R:Z

    .line 5
    .line 6
    return-void
.end method

.method public final declared-synchronized o0()Z
    .locals 1

    .line 1
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/Sf;->p0:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onAttachedToWindow()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Sf;->a0()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->y0:Ll/w;

    .line 13
    .line 14
    iput-boolean v1, v0, Ll/w;->e:Z

    .line 15
    .line 16
    iget-boolean v2, v0, Ll/w;->f:Z

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Ll/w;->d()V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Sf;->G0:Z

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Sf;->onResume()V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Sf;->G0:Z

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception v0

    .line 35
    goto :goto_2

    .line 36
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Sf;->k0:Z

    .line 37
    .line 38
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Sf;->T:Lcom/google/android/gms/internal/ads/Xf;

    .line 39
    .line 40
    if-eqz v2, :cond_3

    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Xf;->w()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_3

    .line 47
    .line 48
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Sf;->l0:Z

    .line 49
    .line 50
    if-nez v0, :cond_2

    .line 51
    .line 52
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->T:Lcom/google/android/gms/internal/ads/Xf;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Xf;->H()V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->T:Lcom/google/android/gms/internal/ads/Xf;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Xf;->J()V

    .line 60
    .line 61
    .line 62
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/Sf;->l0:Z

    .line 63
    .line 64
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Sf;->Q0()Z

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    move v1, v0

    .line 69
    :goto_1
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/Sf;->U0(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    .line 72
    monitor-exit p0

    .line 73
    return-void

    .line 74
    :goto_2
    monitor-exit p0

    .line 75
    throw v0
.end method

.method public final onDetachedFromWindow()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Sf;->a0()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_4

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->y0:Ll/w;

    .line 10
    .line 11
    iput-boolean v1, v0, Ll/w;->e:Z

    .line 12
    .line 13
    iget-object v2, v0, Ll/w;->b:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v2, Landroid/app/Activity;

    .line 16
    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    goto :goto_2

    .line 20
    :cond_0
    iget-boolean v3, v0, Ll/w;->d:Z

    .line 21
    .line 22
    if-eqz v3, :cond_4

    .line 23
    .line 24
    iget-object v3, v0, Ll/w;->c:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v3, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 27
    .line 28
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    :goto_0
    const/4 v2, 0x0

    .line 47
    :goto_1
    if-eqz v2, :cond_3

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 50
    .line 51
    .line 52
    :cond_3
    iput-boolean v1, v0, Ll/w;->d:Z

    .line 53
    .line 54
    :cond_4
    :goto_2
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    .line 55
    .line 56
    .line 57
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Sf;->l0:Z

    .line 58
    .line 59
    if-eqz v0, :cond_5

    .line 60
    .line 61
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->T:Lcom/google/android/gms/internal/ads/Xf;

    .line 62
    .line 63
    if-eqz v0, :cond_5

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Xf;->w()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_5

    .line 70
    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    if-eqz v0, :cond_5

    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_5

    .line 86
    .line 87
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->T:Lcom/google/android/gms/internal/ads/Xf;

    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Xf;->H()V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->T:Lcom/google/android/gms/internal/ads/Xf;

    .line 93
    .line 94
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Xf;->J()V

    .line 95
    .line 96
    .line 97
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/Sf;->l0:Z

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :catchall_0
    move-exception v0

    .line 101
    goto :goto_4

    .line 102
    :cond_5
    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/Sf;->U0(Z)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :goto_4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    throw v0
.end method

.method public final onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 1
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    .line 2
    .line 3
    const-string p3, "android.intent.action.VIEW"

    .line 4
    .line 5
    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 9
    .line 10
    .line 11
    move-result-object p3

    .line 12
    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    sget-object p3, Lcom/google/android/gms/internal/ads/Q7;->qa:Lcom/google/android/gms/internal/ads/J7;

    .line 16
    .line 17
    sget-object p5, Ll3/q;->d:Ll3/q;

    .line 18
    .line 19
    iget-object p5, p5, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 20
    .line 21
    invoke-virtual {p5, p3}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    check-cast p3, Ljava/lang/Boolean;

    .line 26
    .line 27
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 28
    .line 29
    .line 30
    move-result p3

    .line 31
    if-eqz p3, :cond_0

    .line 32
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    if-eqz p3, :cond_0

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception p2

    .line 52
    goto :goto_1

    .line 53
    :cond_0
    :goto_0
    sget-object p3, Lk3/l;->A:Lk3/l;

    .line 54
    .line 55
    iget-object p3, p3, Lk3/l;->c:Lo3/O;

    .line 56
    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object p3

    .line 61
    invoke-static {p3, p2}, Lo3/O;->p(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string p5, "Couldn\'t find an Activity to view url/mimetype: "

    .line 68
    .line 69
    invoke-direct {p3, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string p5, " / "

    .line 76
    .line 77
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p3

    .line 87
    invoke-static {p3}, Lp3/h;->b(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    const-string p3, "AdWebViewImpl.onDownloadStart: "

    .line 95
    .line 96
    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    sget-object p3, Lk3/l;->A:Lk3/l;

    .line 101
    .line 102
    iget-object p3, p3, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 103
    .line 104
    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/ads/le;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Sf;->a0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    const/16 v1, 0x15

    .line 11
    .line 12
    if-ne v0, v1, :cond_2

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    return-void

    .line 28
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0xa

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/16 v3, 0x8

    .line 18
    .line 19
    if-ne v2, v3, :cond_4

    .line 20
    .line 21
    const/4 v2, -0x1

    .line 22
    const/4 v3, 0x0

    .line 23
    cmpl-float v4, v0, v3

    .line 24
    .line 25
    if-lez v4, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0, v2}, Landroid/view/View;->canScrollVertically(I)Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_3

    .line 32
    .line 33
    :cond_0
    const/4 v4, 0x1

    .line 34
    cmpg-float v0, v0, v3

    .line 35
    .line 36
    if-gez v0, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0, v4}, Landroid/view/View;->canScrollVertically(I)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    :cond_1
    cmpl-float v0, v1, v3

    .line 45
    .line 46
    if-lez v0, :cond_2

    .line 47
    .line 48
    invoke-virtual {p0, v2}, Landroid/view/View;->canScrollHorizontally(I)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    :cond_2
    cmpg-float v0, v1, v3

    .line 55
    .line 56
    if-gez v0, :cond_4

    .line 57
    .line 58
    invoke-virtual {p0, v4}, Landroid/view/View;->canScrollHorizontally(I)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_4

    .line 63
    .line 64
    :cond_3
    const/4 p1, 0x0

    .line 65
    return p1

    .line 66
    :cond_4
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    return p1
.end method

.method public final onGlobalLayout()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Sf;->Q0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Sf;->B()Ln3/k;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-boolean v0, v1, Ln3/k;->S:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, v1, Ln3/k;->S:Z

    .line 19
    .line 20
    invoke-virtual {v1}, Ln3/k;->b()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final declared-synchronized onMeasure(II)V
    .locals 10

    .line 1
    const-string v0, "Not enough space to show ad. Needs "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Sf;->a0()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, v2, v2}, Landroid/view/View;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto/16 :goto_9

    .line 18
    .line 19
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_1c

    .line 24
    .line 25
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/Sf;->e0:Z

    .line 26
    .line 27
    if-nez v1, :cond_1c

    .line 28
    .line 29
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Sf;->a0:LA2/i;

    .line 30
    .line 31
    iget v3, v1, LA2/i;->a:I

    .line 32
    .line 33
    if-nez v3, :cond_1

    .line 34
    .line 35
    goto/16 :goto_8

    .line 36
    .line 37
    :cond_1
    const/4 v4, 0x5

    .line 38
    if-ne v3, v4, :cond_2

    .line 39
    .line 40
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    .line 42
    .line 43
    monitor-exit p0

    .line 44
    return-void

    .line 45
    :cond_2
    const/4 v4, 0x4

    .line 46
    if-ne v3, v4, :cond_a

    .line 47
    .line 48
    :try_start_2
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->C3:Lcom/google/android/gms/internal/ads/J7;

    .line 49
    .line 50
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 51
    .line 52
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 53
    .line 54
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Ljava/lang/Boolean;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    .line 68
    .line 69
    monitor-exit p0

    .line 70
    return-void

    .line 71
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Sf;->zzq()Lcom/google/android/gms/internal/ads/Uf;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    const/4 v1, 0x0

    .line 76
    if-eqz v0, :cond_4

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Uf;->zze()F

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    goto :goto_0

    .line 83
    :cond_4
    const/4 v0, 0x0

    .line 84
    :goto_0
    cmpl-float v1, v0, v1

    .line 85
    .line 86
    if-nez v1, :cond_5

    .line 87
    .line 88
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 89
    .line 90
    .line 91
    monitor-exit p0

    .line 92
    return-void

    .line 93
    :cond_5
    :try_start_4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 98
    .line 99
    .line 100
    move-result p2

    .line 101
    int-to-float v1, p2

    .line 102
    mul-float v1, v1, v0

    .line 103
    .line 104
    int-to-float v3, p1

    .line 105
    div-float/2addr v3, v0

    .line 106
    float-to-int v3, v3

    .line 107
    if-nez p2, :cond_7

    .line 108
    .line 109
    if-eqz v3, :cond_6

    .line 110
    .line 111
    int-to-float p2, v3

    .line 112
    mul-float p2, p2, v0

    .line 113
    .line 114
    float-to-int p2, p2

    .line 115
    move v2, p1

    .line 116
    move p1, v3

    .line 117
    goto :goto_2

    .line 118
    :cond_6
    const/4 p2, 0x0

    .line 119
    :cond_7
    float-to-int v1, v1

    .line 120
    if-nez p1, :cond_9

    .line 121
    .line 122
    if-eqz v1, :cond_8

    .line 123
    .line 124
    int-to-float p1, v1

    .line 125
    div-float/2addr p1, v0

    .line 126
    float-to-int v3, p1

    .line 127
    move p1, p2

    .line 128
    move p2, v1

    .line 129
    move v2, p2

    .line 130
    goto :goto_2

    .line 131
    :cond_8
    :goto_1
    move p1, p2

    .line 132
    move p2, v1

    .line 133
    goto :goto_2

    .line 134
    :cond_9
    move v2, p1

    .line 135
    goto :goto_1

    .line 136
    :goto_2
    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    .line 137
    .line 138
    .line 139
    move-result p2

    .line 140
    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 145
    .line 146
    .line 147
    monitor-exit p0

    .line 148
    return-void

    .line 149
    :cond_a
    const/4 v5, 0x2

    .line 150
    if-ne v3, v5, :cond_d

    .line 151
    .line 152
    :try_start_5
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->H3:Lcom/google/android/gms/internal/ads/J7;

    .line 153
    .line 154
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 155
    .line 156
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 157
    .line 158
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    check-cast v0, Ljava/lang/Boolean;

    .line 163
    .line 164
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    if-eqz v0, :cond_b

    .line 169
    .line 170
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 171
    .line 172
    .line 173
    monitor-exit p0

    .line 174
    return-void

    .line 175
    :cond_b
    :try_start_6
    new-instance v0, Lcom/google/android/gms/internal/ads/E9;

    .line 176
    .line 177
    const/4 v1, 0x7

    .line 178
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/E9;-><init>(Ljava/lang/Object;I)V

    .line 179
    .line 180
    .line 181
    const-string v1, "/contentHeight"

    .line 182
    .line 183
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/Sf;->L0(Ljava/lang/String;Lcom/google/android/gms/internal/ads/N9;)V

    .line 184
    .line 185
    .line 186
    const-string v0, "(function() {  var height = -1;  if (document.body) {    height = document.body.offsetHeight;  } else if (document.documentElement) {    height = document.documentElement.offsetHeight;  }  var url = \'gmsg://mobileads.google.com/contentHeight?\';  url += \'height=\' + height;  try {    window.googleAdsJsInterface.notify(url);  } catch (e) {    var frame = document.getElementById(\'afma-notify-fluid\');    if (!frame) {      frame = document.createElement(\'IFRAME\');      frame.id = \'afma-notify-fluid\';      frame.style.display = \'none\';      var body = document.body || document.documentElement;      body.appendChild(frame);    }    frame.src = url;  }})();"

    .line 187
    .line 188
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/Sf;->J(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->N:Landroid/util/DisplayMetrics;

    .line 192
    .line 193
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 194
    .line 195
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 196
    .line 197
    .line 198
    move-result p1

    .line 199
    iget v1, p0, Lcom/google/android/gms/internal/ads/Sf;->q0:I

    .line 200
    .line 201
    const/4 v2, -0x1

    .line 202
    if-eq v1, v2, :cond_c

    .line 203
    .line 204
    int-to-float p2, v1

    .line 205
    mul-float p2, p2, v0

    .line 206
    .line 207
    float-to-int p2, p2

    .line 208
    goto :goto_3

    .line 209
    :cond_c
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 210
    .line 211
    .line 212
    move-result p2

    .line 213
    :goto_3
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 214
    .line 215
    .line 216
    monitor-exit p0

    .line 217
    return-void

    .line 218
    :cond_d
    :try_start_7
    invoke-virtual {v1}, LA2/i;->b()Z

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    if-eqz v1, :cond_e

    .line 223
    .line 224
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Sf;->N:Landroid/util/DisplayMetrics;

    .line 225
    .line 226
    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 227
    .line 228
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 229
    .line 230
    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 231
    .line 232
    .line 233
    monitor-exit p0

    .line 234
    return-void

    .line 235
    :cond_e
    :try_start_8
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 240
    .line 241
    .line 242
    move-result p1

    .line 243
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 244
    .line 245
    .line 246
    move-result v3

    .line 247
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 248
    .line 249
    .line 250
    move-result p2

    .line 251
    const v5, 0x7fffffff

    .line 252
    .line 253
    .line 254
    const/high16 v6, 0x40000000    # 2.0f

    .line 255
    .line 256
    const/high16 v7, -0x80000000

    .line 257
    .line 258
    if-eq v1, v7, :cond_10

    .line 259
    .line 260
    if-ne v1, v6, :cond_f

    .line 261
    .line 262
    goto :goto_4

    .line 263
    :cond_f
    const v1, 0x7fffffff

    .line 264
    .line 265
    .line 266
    goto :goto_5

    .line 267
    :cond_10
    :goto_4
    move v1, p1

    .line 268
    :goto_5
    if-eq v3, v7, :cond_11

    .line 269
    .line 270
    if-ne v3, v6, :cond_12

    .line 271
    .line 272
    :cond_11
    move v5, p2

    .line 273
    :cond_12
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Sf;->a0:LA2/i;

    .line 274
    .line 275
    iget v6, v3, LA2/i;->c:I

    .line 276
    .line 277
    const/4 v7, 0x1

    .line 278
    if-gt v6, v1, :cond_13

    .line 279
    .line 280
    iget v3, v3, LA2/i;->b:I

    .line 281
    .line 282
    if-le v3, v5, :cond_14

    .line 283
    .line 284
    :cond_13
    const/4 v3, 0x1

    .line 285
    goto :goto_6

    .line 286
    :cond_14
    const/4 v3, 0x0

    .line 287
    :goto_6
    sget-object v6, Lcom/google/android/gms/internal/ads/Q7;->W4:Lcom/google/android/gms/internal/ads/J7;

    .line 288
    .line 289
    sget-object v8, Ll3/q;->d:Ll3/q;

    .line 290
    .line 291
    iget-object v8, v8, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 292
    .line 293
    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v6

    .line 297
    check-cast v6, Ljava/lang/Boolean;

    .line 298
    .line 299
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 300
    .line 301
    .line 302
    move-result v6

    .line 303
    if-eqz v6, :cond_16

    .line 304
    .line 305
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/Sf;->a0:LA2/i;

    .line 306
    .line 307
    iget v8, v6, LA2/i;->c:I

    .line 308
    .line 309
    int-to-float v8, v8

    .line 310
    iget v9, p0, Lcom/google/android/gms/internal/ads/Sf;->O:F

    .line 311
    .line 312
    int-to-float v1, v1

    .line 313
    div-float/2addr v8, v9

    .line 314
    div-float/2addr v1, v9

    .line 315
    cmpl-float v1, v8, v1

    .line 316
    .line 317
    if-gtz v1, :cond_15

    .line 318
    .line 319
    iget v1, v6, LA2/i;->b:I

    .line 320
    .line 321
    int-to-float v1, v1

    .line 322
    div-float/2addr v1, v9

    .line 323
    int-to-float v5, v5

    .line 324
    div-float/2addr v5, v9

    .line 325
    cmpl-float v1, v1, v5

    .line 326
    .line 327
    if-gtz v1, :cond_15

    .line 328
    .line 329
    const/4 v1, 0x1

    .line 330
    goto :goto_7

    .line 331
    :cond_15
    const/4 v1, 0x0

    .line 332
    :goto_7
    and-int/2addr v3, v1

    .line 333
    :cond_16
    const/16 v1, 0x8

    .line 334
    .line 335
    if-eqz v3, :cond_19

    .line 336
    .line 337
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Sf;->a0:LA2/i;

    .line 338
    .line 339
    iget v5, v3, LA2/i;->c:I

    .line 340
    .line 341
    int-to-float v5, v5

    .line 342
    iget v6, p0, Lcom/google/android/gms/internal/ads/Sf;->O:F

    .line 343
    .line 344
    iget v3, v3, LA2/i;->b:I

    .line 345
    .line 346
    int-to-float v3, v3

    .line 347
    int-to-float p1, p1

    .line 348
    int-to-float p2, p2

    .line 349
    new-instance v8, Ljava/lang/StringBuilder;

    .line 350
    .line 351
    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    div-float/2addr v5, v6

    .line 355
    float-to-int v0, v5

    .line 356
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    const-string v0, "x"

    .line 360
    .line 361
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    div-float/2addr v3, v6

    .line 365
    float-to-int v0, v3

    .line 366
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    const-string v0, " dp, but only has "

    .line 370
    .line 371
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    div-float/2addr p1, v6

    .line 375
    float-to-int p1, p1

    .line 376
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    const-string p1, "x"

    .line 380
    .line 381
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    .line 383
    .line 384
    div-float/2addr p2, v6

    .line 385
    float-to-int p1, p2

    .line 386
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    const-string p1, " dp."

    .line 390
    .line 391
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object p1

    .line 398
    invoke-static {p1}, Lp3/h;->g(Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 402
    .line 403
    .line 404
    move-result p1

    .line 405
    if-eq p1, v1, :cond_17

    .line 406
    .line 407
    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 408
    .line 409
    .line 410
    :cond_17
    invoke-virtual {p0, v2, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 411
    .line 412
    .line 413
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/Sf;->R:Z

    .line 414
    .line 415
    if-nez p1, :cond_18

    .line 416
    .line 417
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Sf;->F0:Lcom/google/android/gms/internal/ads/w6;

    .line 418
    .line 419
    const/16 p2, 0x2711

    .line 420
    .line 421
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/w6;->b(I)V

    .line 422
    .line 423
    .line 424
    iput-boolean v7, p0, Lcom/google/android/gms/internal/ads/Sf;->R:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 425
    .line 426
    monitor-exit p0

    .line 427
    return-void

    .line 428
    :cond_18
    monitor-exit p0

    .line 429
    return-void

    .line 430
    :cond_19
    :try_start_9
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 431
    .line 432
    .line 433
    move-result p1

    .line 434
    if-eq p1, v1, :cond_1a

    .line 435
    .line 436
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 437
    .line 438
    .line 439
    :cond_1a
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/Sf;->S:Z

    .line 440
    .line 441
    if-nez p1, :cond_1b

    .line 442
    .line 443
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Sf;->F0:Lcom/google/android/gms/internal/ads/w6;

    .line 444
    .line 445
    const/16 p2, 0x2712

    .line 446
    .line 447
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/w6;->b(I)V

    .line 448
    .line 449
    .line 450
    iput-boolean v7, p0, Lcom/google/android/gms/internal/ads/Sf;->S:Z

    .line 451
    .line 452
    :cond_1b
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Sf;->a0:LA2/i;

    .line 453
    .line 454
    iget p2, p1, LA2/i;->c:I

    .line 455
    .line 456
    iget p1, p1, LA2/i;->b:I

    .line 457
    .line 458
    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 459
    .line 460
    .line 461
    monitor-exit p0

    .line 462
    return-void

    .line 463
    :cond_1c
    :goto_8
    :try_start_a
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 464
    .line 465
    .line 466
    monitor-exit p0

    .line 467
    return-void

    .line 468
    :goto_9
    monitor-exit p0

    .line 469
    throw p1
.end method

.method public final onPause()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Sf;->a0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->onPause()V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->Pb:Lcom/google/android/gms/internal/ads/J7;

    .line 12
    .line 13
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 14
    .line 15
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/lang/Boolean;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    const-string v0, "MUTE_AUDIO"

    .line 30
    .line 31
    invoke-static {v0}, Lcom/bumptech/glide/c;->o(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    const-string v0, "Muting webview"

    .line 38
    .line 39
    invoke-static {v0}, Lp3/h;->b(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    sget v0, Lb2/e;->a:I

    .line 43
    .line 44
    sget-object v0, Lc2/n;->e:Lc2/b;

    .line 45
    .line 46
    invoke-virtual {v0}, Lc2/c;->b()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    invoke-static {p0}, Lb2/e;->c(Landroid/webkit/WebView;)LD0/U;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget-object v0, v0, LD0/U;->H:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v0, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    .line 59
    .line 60
    const/4 v1, 0x1

    .line 61
    invoke-interface {v0, v1}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->setAudioMuted(Z)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 66
    .line 67
    const-string v1, "This method is not supported by the current version of the framework and the current WebView APK"

    .line 68
    .line 69
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    const-string v1, "Could not pause webview."

    .line 75
    .line 76
    invoke-static {v1, v0}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    .line 78
    .line 79
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->Sb:Lcom/google/android/gms/internal/ads/J7;

    .line 80
    .line 81
    sget-object v2, Ll3/q;->d:Ll3/q;

    .line 82
    .line 83
    iget-object v2, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 84
    .line 85
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    check-cast v1, Ljava/lang/Boolean;

    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_2

    .line 96
    .line 97
    sget-object v1, Lk3/l;->A:Lk3/l;

    .line 98
    .line 99
    iget-object v1, v1, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 100
    .line 101
    const-string v2, "AdWebViewImpl.onPause"

    .line 102
    .line 103
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/le;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    .line 105
    .line 106
    :cond_2
    :goto_0
    return-void
.end method

.method public final onResume()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Sf;->a0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->onResume()V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->Pb:Lcom/google/android/gms/internal/ads/J7;

    .line 12
    .line 13
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 14
    .line 15
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/lang/Boolean;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    const-string v0, "MUTE_AUDIO"

    .line 30
    .line 31
    invoke-static {v0}, Lcom/bumptech/glide/c;->o(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    const-string v0, "Unmuting webview"

    .line 38
    .line 39
    invoke-static {v0}, Lp3/h;->b(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    sget v0, Lb2/e;->a:I

    .line 43
    .line 44
    sget-object v0, Lc2/n;->e:Lc2/b;

    .line 45
    .line 46
    invoke-virtual {v0}, Lc2/c;->b()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    invoke-static {p0}, Lb2/e;->c(Landroid/webkit/WebView;)LD0/U;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iget-object v0, v0, LD0/U;->H:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v0, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    .line 59
    .line 60
    const/4 v1, 0x0

    .line 61
    invoke-interface {v0, v1}, Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;->setAudioMuted(Z)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 66
    .line 67
    const-string v1, "This method is not supported by the current version of the framework and the current WebView APK"

    .line 68
    .line 69
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    const-string v1, "Could not resume webview."

    .line 75
    .line 76
    invoke-static {v1, v0}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    .line 78
    .line 79
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->Sb:Lcom/google/android/gms/internal/ads/J7;

    .line 80
    .line 81
    sget-object v2, Ll3/q;->d:Ll3/q;

    .line 82
    .line 83
    iget-object v2, v2, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 84
    .line 85
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    check-cast v1, Ljava/lang/Boolean;

    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_2

    .line 96
    .line 97
    sget-object v1, Lk3/l;->A:Lk3/l;

    .line 98
    .line 99
    iget-object v1, v1, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 100
    .line 101
    const-string v2, "AdWebViewImpl.onResume"

    .line 102
    .line 103
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/ads/le;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    .line 105
    .line 106
    :cond_2
    :goto_0
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->T:Lcom/google/android/gms/internal/ads/Xf;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Xf;->w()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->T:Lcom/google/android/gms/internal/ads/Xf;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Xf;->t()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    monitor-enter p0

    .line 18
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->m0:Lcom/google/android/gms/internal/ads/L8;

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    check-cast v0, Lcom/google/android/gms/internal/ads/x;

    .line 23
    .line 24
    iget v1, v0, Lcom/google/android/gms/internal/ads/x;->G:I

    .line 25
    .line 26
    packed-switch v1, :pswitch_data_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :pswitch_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/x;->H:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Lcom/google/android/gms/internal/ads/dm;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-interface {v0, v1, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 36
    .line 37
    .line 38
    :cond_0
    :goto_0
    monitor-exit p0

    .line 39
    goto :goto_2

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw p1

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->H:Lcom/google/android/gms/internal/ads/H4;

    .line 44
    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/H4;->b:Lcom/google/android/gms/internal/ads/E4;

    .line 48
    .line 49
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/E4;->zzk(Landroid/view/MotionEvent;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->J:Lcom/google/android/gms/internal/ads/e8;

    .line 53
    .line 54
    if-eqz v0, :cond_5

    .line 55
    .line 56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    const/4 v2, 0x1

    .line 61
    if-ne v1, v2, :cond_4

    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 64
    .line 65
    .line 66
    move-result-wide v1

    .line 67
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/e8;->a:Landroid/view/MotionEvent;

    .line 68
    .line 69
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getEventTime()J

    .line 70
    .line 71
    .line 72
    move-result-wide v3

    .line 73
    cmp-long v5, v1, v3

    .line 74
    .line 75
    if-gtz v5, :cond_3

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/e8;->a:Landroid/view/MotionEvent;

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_4
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-nez v1, :cond_5

    .line 90
    .line 91
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 92
    .line 93
    .line 94
    move-result-wide v1

    .line 95
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/e8;->b:Landroid/view/MotionEvent;

    .line 96
    .line 97
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getEventTime()J

    .line 98
    .line 99
    .line 100
    move-result-wide v3

    .line 101
    cmp-long v5, v1, v3

    .line 102
    .line 103
    if-lez v5, :cond_5

    .line 104
    .line 105
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/e8;->b:Landroid/view/MotionEvent;

    .line 110
    .line 111
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Sf;->a0()Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_6

    .line 116
    .line 117
    const/4 p1, 0x0

    .line 118
    return p1

    .line 119
    :cond_6
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    return p1

    .line 124
    nop

    .line 125
    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized p()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->n0:Lcom/google/android/gms/internal/ads/J8;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sget-object v1, Lo3/O;->l:Lo3/J;

    .line 7
    .line 8
    new-instance v2, Lcom/google/android/gms/internal/ads/Pf;

    .line 9
    .line 10
    check-cast v0, Lcom/google/android/gms/internal/ads/Gm;

    .line 11
    .line 12
    const/16 v3, 0x1d

    .line 13
    .line 14
    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/ads/Pf;-><init>(Ljava/lang/Object;I)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    monitor-exit p0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    monitor-exit p0

    .line 25
    return-void

    .line 26
    :goto_0
    monitor-exit p0

    .line 27
    throw v0
.end method

.method public final p0()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Sf;->G0:Z

    .line 3
    .line 4
    return-void
.end method

.method public final q()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->T:Lcom/google/android/gms/internal/ads/Xf;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Xf;->q()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final declared-synchronized q0()Ljava/lang/String;
    .locals 1

    .line 1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->b0:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized r()Ln3/k;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->w0:Ln3/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public final r0(ILjava/lang/String;Ljava/lang/String;ZZ)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Sf;->T:Lcom/google/android/gms/internal/ads/Xf;

    .line 4
    .line 5
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/Xf;->G:Lcom/google/android/gms/internal/ads/Ef;

    .line 6
    .line 7
    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/Ef;->j0()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-static {v2, v8}, Lcom/google/android/gms/internal/ads/Xf;->G(ZLcom/google/android/gms/internal/ads/Ef;)Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const/4 v4, 0x1

    .line 16
    if-nez v3, :cond_1

    .line 17
    .line 18
    if-nez p5, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v4, 0x0

    .line 22
    :cond_1
    :goto_0
    new-instance v15, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    if-eqz v3, :cond_2

    .line 26
    .line 27
    move-object v3, v5

    .line 28
    goto :goto_1

    .line 29
    :cond_2
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/Xf;->K:Ll3/a;

    .line 30
    .line 31
    :goto_1
    if-eqz v2, :cond_3

    .line 32
    .line 33
    move-object v6, v5

    .line 34
    goto :goto_2

    .line 35
    :cond_3
    new-instance v2, Lcom/google/android/gms/internal/ads/Gf;

    .line 36
    .line 37
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/Xf;->L:Ln3/m;

    .line 38
    .line 39
    invoke-direct {v2, v8, v6}, Lcom/google/android/gms/internal/ads/Gf;-><init>(Lcom/google/android/gms/internal/ads/Ef;Ln3/m;)V

    .line 40
    .line 41
    .line 42
    move-object v6, v2

    .line 43
    :goto_2
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/Xf;->O:Lcom/google/android/gms/internal/ads/F9;

    .line 44
    .line 45
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/Xf;->P:Lcom/google/android/gms/internal/ads/G9;

    .line 46
    .line 47
    iget-object v10, v1, Lcom/google/android/gms/internal/ads/Xf;->Z:Ln3/c;

    .line 48
    .line 49
    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/Ef;->zzn()Lp3/a;

    .line 50
    .line 51
    .line 52
    move-result-object v13

    .line 53
    if-eqz v4, :cond_4

    .line 54
    .line 55
    move-object v14, v5

    .line 56
    goto :goto_3

    .line 57
    :cond_4
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/Xf;->Q:Lcom/google/android/gms/internal/ads/Ok;

    .line 58
    .line 59
    move-object v14, v2

    .line 60
    :goto_3
    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/Ef;->f()Lcom/google/android/gms/internal/ads/Ov;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    if-eqz v2, :cond_5

    .line 65
    .line 66
    invoke-interface {v8}, Lcom/google/android/gms/internal/ads/Ef;->f()Lcom/google/android/gms/internal/ads/Ov;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/Ov;->i0:Z

    .line 71
    .line 72
    if-eqz v2, :cond_5

    .line 73
    .line 74
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/Xf;->j0:Lcom/google/android/gms/internal/ads/hq;

    .line 75
    .line 76
    move-object/from16 v16, v2

    .line 77
    .line 78
    goto :goto_4

    .line 79
    :cond_5
    move-object/from16 v16, v5

    .line 80
    .line 81
    :goto_4
    move-object v2, v15

    .line 82
    move-object v4, v6

    .line 83
    move-object v5, v7

    .line 84
    move-object v6, v9

    .line 85
    move-object v7, v10

    .line 86
    move/from16 v9, p4

    .line 87
    .line 88
    move/from16 v10, p1

    .line 89
    .line 90
    move-object/from16 v11, p2

    .line 91
    .line 92
    move-object/from16 v12, p3

    .line 93
    .line 94
    move-object v0, v15

    .line 95
    move-object/from16 v15, v16

    .line 96
    .line 97
    invoke-direct/range {v2 .. v15}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Ll3/a;Lcom/google/android/gms/internal/ads/Gf;Lcom/google/android/gms/internal/ads/F9;Lcom/google/android/gms/internal/ads/G9;Ln3/c;Lcom/google/android/gms/internal/ads/Ef;ZILjava/lang/String;Ljava/lang/String;Lp3/a;Lcom/google/android/gms/internal/ads/Ok;Lcom/google/android/gms/internal/ads/hq;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/Xf;->S0(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    .line 101
    .line 102
    .line 103
    return-void
.end method

.method public final declared-synchronized s()Ljava/lang/String;
    .locals 1

    .line 1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->i0:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final s0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->T:Lcom/google/android/gms/internal/ads/Xf;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v7, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 7
    .line 8
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/Xf;->G:Lcom/google/android/gms/internal/ads/Ef;

    .line 9
    .line 10
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/Ef;->zzn()Lp3/a;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/Xf;->j0:Lcom/google/android/gms/internal/ads/hq;

    .line 15
    .line 16
    move-object v1, v7

    .line 17
    move-object v4, p1

    .line 18
    move-object v5, p2

    .line 19
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/ads/Ef;Lp3/a;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/hq;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/Xf;->S0(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 2
    .line 3
    .line 4
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/Xf;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast p1, Lcom/google/android/gms/internal/ads/Xf;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Sf;->T:Lcom/google/android/gms/internal/ads/Xf;

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final stopLoading()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Sf;->a0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->stopLoading()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catch_0
    move-exception v0

    .line 13
    const-string v1, "Could not stop loading webview."

    .line 14
    .line 15
    invoke-static {v1, v0}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final t()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final t0()Ljava/util/ArrayList;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final u()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->T:Lcom/google/android/gms/internal/ads/Xf;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Xf;->u()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final u0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->t0:Lcom/google/android/gms/internal/ads/U7;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->u0:Lcom/google/android/gms/internal/ads/x;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/W7;->d()Lcom/google/android/gms/internal/ads/U7;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Sf;->t0:Lcom/google/android/gms/internal/ads/U7;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/x;->H:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Ljava/util/Map;

    .line 19
    .line 20
    const-string v2, "native:view_load"

    .line 21
    .line 22
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final declared-synchronized v(I)V
    .locals 0

    .line 1
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/Sf;->v0:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final v0(Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Sf;->g0:Ljava/lang/Boolean;

    .line 3
    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    sget-object v0, Lk3/l;->A:Lk3/l;

    .line 6
    .line 7
    iget-object v0, v0, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/le;->k(Ljava/lang/Boolean;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    throw p1
.end method

.method public final w(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Ll3/p;->f:Ll3/p;

    .line 2
    .line 3
    iget-object v0, v0, Ll3/p;->a:Lp3/d;

    .line 4
    .line 5
    invoke-virtual {v0, p2}, Lp3/d;->i(Ljava/util/Map;)Lorg/json/JSONObject;

    .line 6
    .line 7
    .line 8
    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/ads/Sf;->b(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catch_0
    const-string p1, "Could not convert parameters to JSON."

    .line 14
    .line 15
    invoke-static {p1}, Lp3/h;->g(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final declared-synchronized w0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    const-string v0, "<script>Object.defineProperty(window,\'MRAID_ENV\',{get:function(){return "

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Sf;->a0()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    new-array v1, v1, [Ljava/lang/String;

    .line 12
    .line 13
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->M:Lcom/google/android/gms/internal/ads/J7;

    .line 14
    .line 15
    sget-object v3, Ll3/q;->d:Ll3/q;

    .line 16
    .line 17
    iget-object v3, v3, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 18
    .line 19
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Ljava/lang/String;

    .line 24
    .line 25
    new-instance v3, Lorg/json/JSONObject;

    .line 26
    .line 27
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v4, "12.4.51-000"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    :try_start_1
    const-string v5, "version"

    .line 33
    .line 34
    invoke-virtual {v3, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    .line 36
    .line 37
    const-string v2, "sdk"

    .line 38
    .line 39
    const-string v5, "Google Mobile Ads"

    .line 40
    .line 41
    invoke-virtual {v3, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    .line 43
    .line 44
    const-string v2, "sdkVersion"

    .line 45
    .line 46
    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    .line 48
    .line 49
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    const-string v0, "}});</script>"

    .line 62
    .line 63
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    goto :goto_0

    .line 71
    :catchall_0
    move-exception p1

    .line 72
    goto :goto_1

    .line 73
    :catch_0
    move-exception v0

    .line 74
    const-string v2, "Unable to build MRAID_ENV"

    .line 75
    .line 76
    invoke-static {v2, v0}, Lp3/h;->h(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    .line 78
    .line 79
    const/4 v0, 0x0

    .line 80
    :goto_0
    const/4 v2, 0x0

    .line 81
    aput-object v0, v1, v2

    .line 82
    .line 83
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/ads/Zf;->b(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    const-string v6, "text/html"

    .line 88
    .line 89
    const-string v7, "UTF-8"

    .line 90
    .line 91
    const/4 v8, 0x0

    .line 92
    move-object v3, p0

    .line 93
    move-object v4, p1

    .line 94
    invoke-super/range {v3 .. v8}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    .line 96
    .line 97
    monitor-exit p0

    .line 98
    return-void

    .line 99
    :cond_0
    :try_start_3
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    .line 100
    .line 101
    invoke-static {p1}, Lp3/h;->g(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 102
    .line 103
    .line 104
    monitor-exit p0

    .line 105
    return-void

    .line 106
    :goto_1
    monitor-exit p0

    .line 107
    throw p1
.end method

.method public final x()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->T:Lcom/google/android/gms/internal/ads/Xf;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Xf;->x()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final declared-synchronized x0(Z)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    goto :goto_2

    .line 11
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Sf;->U:Ln3/k;

    .line 12
    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget-object p1, v1, Ln3/k;->R:Ln3/i;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    iget-object p1, v1, Ln3/k;->R:Ln3/i;

    .line 24
    .line 25
    const/high16 v0, -0x1000000

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    :goto_1
    monitor-exit p0

    .line 31
    return-void

    .line 32
    :cond_2
    monitor-exit p0

    .line 33
    return-void

    .line 34
    :goto_2
    monitor-exit p0

    .line 35
    throw p1
.end method

.method public final y(JZ)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v1, p3, :cond_0

    .line 9
    .line 10
    const-string p3, "0"

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string p3, "1"

    .line 14
    .line 15
    :goto_0
    const-string v1, "success"

    .line 16
    .line 17
    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    const-string p3, "duration"

    .line 21
    .line 22
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v0, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    const-string p1, "onCacheAccessComplete"

    .line 30
    .line 31
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/Sf;->w(Ljava/lang/String;Ljava/util/Map;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final declared-synchronized y0()Lcom/google/android/gms/internal/ads/X5;
    .locals 1

    .line 1
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->o0:Lcom/google/android/gms/internal/ads/X5;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized z0(Ln3/k;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Sf;->U:Ln3/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0

    .line 8
    throw p1
.end method

.method public final synthetic zzN()Lcom/google/android/gms/internal/ads/Xf;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->T:Lcom/google/android/gms/internal/ads/Xf;

    .line 2
    .line 3
    return-object v0
.end method

.method public final declared-synchronized zzf()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/Sf;->v0:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final zzh()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final zzi()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->G:Lcom/google/android/gms/internal/ads/eg;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/eg;->a:Landroid/app/Activity;

    .line 4
    .line 5
    return-object v0
.end method

.method public final zzj()Lk3/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->M:Lk3/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzk()Lcom/google/android/gms/internal/ads/U7;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->s0:Lcom/google/android/gms/internal/ads/U7;

    return-object v0
.end method

.method public final zzm()Lcom/google/android/gms/internal/ads/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->u0:Lcom/google/android/gms/internal/ads/x;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzn()Lp3/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->K:Lp3/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzo()Lcom/google/android/gms/internal/ads/xc;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final declared-synchronized zzq()Lcom/google/android/gms/internal/ads/Uf;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->j0:Lcom/google/android/gms/internal/ads/Uf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized zzr()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Sf;->Q:Lcom/google/android/gms/internal/ads/Qv;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Qv;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :goto_0
    monitor-exit p0

    throw v0
.end method
