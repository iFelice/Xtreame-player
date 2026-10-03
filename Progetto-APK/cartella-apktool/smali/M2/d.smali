.class public final LM2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic G:I

.field public final H:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LM2/e;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, LM2/d;->G:I

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, LM2/d;->H:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LM2/j;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 5
    iput v0, p0, LM2/d;->G:I

    .line 6
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, LM2/d;->H:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 8
    iput v0, p0, LM2/d;->G:I

    .line 9
    iput-object p1, p0, LM2/d;->H:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/high16 v1, -0x80000000

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    iget v3, p0, LM2/d;->G:I

    .line 6
    .line 7
    const-string v4, "OnGlobalLayoutListener called attachStateListener="

    .line 8
    .line 9
    const/4 v5, 0x2

    .line 10
    const/4 v6, 0x1

    .line 11
    iget-object v7, p0, LM2/d;->H:Ljava/lang/Object;

    .line 12
    .line 13
    packed-switch v3, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    check-cast v7, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 17
    .line 18
    invoke-virtual {v7, v2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->p(I)V

    .line 19
    .line 20
    .line 21
    return v6

    .line 22
    :pswitch_0
    const-string v3, "ViewTarget"

    .line 23
    .line 24
    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    if-eqz v5, :cond_0

    .line 29
    .line 30
    new-instance v5, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    :cond_0
    check-cast v7, Ljava/lang/ref/WeakReference;

    .line 46
    .line 47
    invoke-virtual {v7}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, LM2/j;

    .line 52
    .line 53
    if-eqz v3, :cond_8

    .line 54
    .line 55
    iget-object v4, v3, LM2/j;->b:Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-eqz v5, :cond_1

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_1
    iget-object v5, v3, LM2/j;->a:Landroid/view/View;

    .line 65
    .line 66
    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    .line 71
    .line 72
    .line 73
    move-result v8

    .line 74
    add-int/2addr v8, v7

    .line 75
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    if-eqz v7, :cond_2

    .line 80
    .line 81
    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    const/4 v7, 0x0

    .line 85
    :goto_0
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 86
    .line 87
    .line 88
    move-result v9

    .line 89
    invoke-virtual {v3, v9, v7, v8}, LM2/j;->a(III)I

    .line 90
    .line 91
    .line 92
    move-result v7

    .line 93
    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    .line 94
    .line 95
    .line 96
    move-result v8

    .line 97
    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    .line 98
    .line 99
    .line 100
    move-result v9

    .line 101
    add-int/2addr v9, v8

    .line 102
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    if-eqz v8, :cond_3

    .line 107
    .line 108
    iget v2, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 109
    .line 110
    :cond_3
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 111
    .line 112
    .line 113
    move-result v8

    .line 114
    invoke-virtual {v3, v8, v2, v9}, LM2/j;->a(III)I

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-gtz v7, :cond_4

    .line 119
    .line 120
    if-ne v7, v1, :cond_8

    .line 121
    .line 122
    :cond_4
    if-gtz v2, :cond_5

    .line 123
    .line 124
    if-ne v2, v1, :cond_8

    .line 125
    .line 126
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 136
    .line 137
    .line 138
    move-result v8

    .line 139
    if-eqz v8, :cond_6

    .line 140
    .line 141
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v8

    .line 145
    check-cast v8, LM2/h;

    .line 146
    .line 147
    check-cast v8, LL2/h;

    .line 148
    .line 149
    invoke-virtual {v8, v7, v2}, LL2/h;->l(II)V

    .line 150
    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_6
    invoke-virtual {v5}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    if-eqz v2, :cond_7

    .line 162
    .line 163
    iget-object v2, v3, LM2/j;->c:LM2/d;

    .line 164
    .line 165
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 166
    .line 167
    .line 168
    :cond_7
    iput-object v0, v3, LM2/j;->c:LM2/d;

    .line 169
    .line 170
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 171
    .line 172
    .line 173
    :cond_8
    :goto_2
    return v6

    .line 174
    :pswitch_1
    const-string v3, "CustomViewTarget"

    .line 175
    .line 176
    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 177
    .line 178
    .line 179
    move-result v5

    .line 180
    if-eqz v5, :cond_9

    .line 181
    .line 182
    new-instance v5, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .line 196
    .line 197
    :cond_9
    check-cast v7, Ljava/lang/ref/WeakReference;

    .line 198
    .line 199
    invoke-virtual {v7}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v3

    .line 203
    check-cast v3, LM2/e;

    .line 204
    .line 205
    if-eqz v3, :cond_11

    .line 206
    .line 207
    iget-object v4, v3, LM2/e;->b:Ljava/util/ArrayList;

    .line 208
    .line 209
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 210
    .line 211
    .line 212
    move-result v5

    .line 213
    if-eqz v5, :cond_a

    .line 214
    .line 215
    goto :goto_5

    .line 216
    :cond_a
    iget-object v5, v3, LM2/e;->a:Landroid/view/View;

    .line 217
    .line 218
    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    .line 219
    .line 220
    .line 221
    move-result v7

    .line 222
    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    .line 223
    .line 224
    .line 225
    move-result v8

    .line 226
    add-int/2addr v8, v7

    .line 227
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 228
    .line 229
    .line 230
    move-result-object v7

    .line 231
    if-eqz v7, :cond_b

    .line 232
    .line 233
    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 234
    .line 235
    goto :goto_3

    .line 236
    :cond_b
    const/4 v7, 0x0

    .line 237
    :goto_3
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 238
    .line 239
    .line 240
    move-result v9

    .line 241
    invoke-virtual {v3, v9, v7, v8}, LM2/e;->a(III)I

    .line 242
    .line 243
    .line 244
    move-result v7

    .line 245
    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    .line 246
    .line 247
    .line 248
    move-result v8

    .line 249
    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    .line 250
    .line 251
    .line 252
    move-result v9

    .line 253
    add-int/2addr v9, v8

    .line 254
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 255
    .line 256
    .line 257
    move-result-object v8

    .line 258
    if-eqz v8, :cond_c

    .line 259
    .line 260
    iget v2, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 261
    .line 262
    :cond_c
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    .line 263
    .line 264
    .line 265
    move-result v8

    .line 266
    invoke-virtual {v3, v8, v2, v9}, LM2/e;->a(III)I

    .line 267
    .line 268
    .line 269
    move-result v2

    .line 270
    if-gtz v7, :cond_d

    .line 271
    .line 272
    if-ne v7, v1, :cond_11

    .line 273
    .line 274
    :cond_d
    if-gtz v2, :cond_e

    .line 275
    .line 276
    if-ne v2, v1, :cond_11

    .line 277
    .line 278
    :cond_e
    new-instance v1, Ljava/util/ArrayList;

    .line 279
    .line 280
    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 288
    .line 289
    .line 290
    move-result v8

    .line 291
    if-eqz v8, :cond_f

    .line 292
    .line 293
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    move-result-object v8

    .line 297
    check-cast v8, LM2/h;

    .line 298
    .line 299
    check-cast v8, LL2/h;

    .line 300
    .line 301
    invoke-virtual {v8, v7, v2}, LL2/h;->l(II)V

    .line 302
    .line 303
    .line 304
    goto :goto_4

    .line 305
    :cond_f
    invoke-virtual {v5}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 310
    .line 311
    .line 312
    move-result v2

    .line 313
    if-eqz v2, :cond_10

    .line 314
    .line 315
    iget-object v2, v3, LM2/e;->c:LM2/d;

    .line 316
    .line 317
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 318
    .line 319
    .line 320
    :cond_10
    iput-object v0, v3, LM2/e;->c:LM2/d;

    .line 321
    .line 322
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 323
    .line 324
    .line 325
    :cond_11
    :goto_5
    return v6

    .line 326
    nop

    .line 327
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
