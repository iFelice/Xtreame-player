.class public Lcom/journeyapps/barcodescanner/ViewfinderView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field public static final R:[I


# instance fields
.field public final G:Landroid/graphics/Paint;

.field public H:I

.field public final I:I

.field public final J:I

.field public K:Z

.field public L:I

.field public M:Ljava/util/List;

.field public N:Ljava/util/List;

.field public O:LO5/g;

.field public P:Landroid/graphics/Rect;

.field public Q:LO5/t;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/journeyapps/barcodescanner/ViewfinderView;->R:[I

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 4
        0x0
        0x40
        0x80
        0xc0
        0xff
        0xc0
        0x80
        0x40
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/graphics/Paint;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->G:Landroid/graphics/Paint;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    sget-object v2, Lu5/h;->b:[I

    .line 21
    .line 22
    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    const v1, 0x7f060132

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const/4 v2, 0x4

    .line 34
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    iput v1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->H:I

    .line 39
    .line 40
    const v1, 0x7f06012e

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 48
    .line 49
    .line 50
    const v1, 0x7f060131

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    const/4 v2, 0x2

    .line 58
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    iput v1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->I:I

    .line 63
    .line 64
    const v1, 0x7f06012d

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    const/4 v1, 0x0

    .line 72
    invoke-virtual {p2, v1, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    iput p1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->J:I

    .line 77
    .line 78
    const/4 p1, 0x3

    .line 79
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    iput-boolean p1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->K:Z

    .line 84
    .line 85
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    .line 87
    .line 88
    iput v1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->L:I

    .line 89
    .line 90
    new-instance p1, Ljava/util/ArrayList;

    .line 91
    .line 92
    const/16 p2, 0x14

    .line 93
    .line 94
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 95
    .line 96
    .line 97
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->M:Ljava/util/List;

    .line 98
    .line 99
    new-instance p1, Ljava/util/ArrayList;

    .line 100
    .line 101
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 102
    .line 103
    .line 104
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->N:Ljava/util/List;

    .line 105
    .line 106
    return-void
.end method


# virtual methods
.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->O:LO5/g;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, LO5/g;->getFramingRect()Landroid/graphics/Rect;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->O:LO5/g;

    .line 11
    .line 12
    invoke-virtual {v1}, LO5/g;->getPreviewSize()LO5/t;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    iput-object v0, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->P:Landroid/graphics/Rect;

    .line 21
    .line 22
    iput-object v1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->Q:LO5/t;

    .line 23
    .line 24
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->P:Landroid/graphics/Rect;

    .line 25
    .line 26
    if-eqz v0, :cond_8

    .line 27
    .line 28
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->Q:LO5/t;

    .line 29
    .line 30
    if-nez v1, :cond_2

    .line 31
    .line 32
    goto/16 :goto_3

    .line 33
    .line 34
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    iget-object v10, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->G:Landroid/graphics/Paint;

    .line 43
    .line 44
    iget v4, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->H:I

    .line 45
    .line 46
    invoke-virtual {v10, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    .line 48
    .line 49
    int-to-float v2, v2

    .line 50
    iget v4, v0, Landroid/graphics/Rect;->top:I

    .line 51
    .line 52
    int-to-float v8, v4

    .line 53
    const/4 v5, 0x0

    .line 54
    const/4 v6, 0x0

    .line 55
    move-object v4, p1

    .line 56
    move v7, v2

    .line 57
    move-object v9, v10

    .line 58
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 59
    .line 60
    .line 61
    iget v4, v0, Landroid/graphics/Rect;->top:I

    .line 62
    .line 63
    int-to-float v6, v4

    .line 64
    iget v4, v0, Landroid/graphics/Rect;->left:I

    .line 65
    .line 66
    int-to-float v7, v4

    .line 67
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 68
    .line 69
    add-int/lit8 v4, v4, 0x1

    .line 70
    .line 71
    int-to-float v8, v4

    .line 72
    move-object v4, p1

    .line 73
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 74
    .line 75
    .line 76
    iget v4, v0, Landroid/graphics/Rect;->right:I

    .line 77
    .line 78
    add-int/lit8 v4, v4, 0x1

    .line 79
    .line 80
    int-to-float v5, v4

    .line 81
    iget v4, v0, Landroid/graphics/Rect;->top:I

    .line 82
    .line 83
    int-to-float v6, v4

    .line 84
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 85
    .line 86
    add-int/lit8 v4, v4, 0x1

    .line 87
    .line 88
    int-to-float v8, v4

    .line 89
    move-object v4, p1

    .line 90
    move v7, v2

    .line 91
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 92
    .line 93
    .line 94
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 95
    .line 96
    add-int/lit8 v4, v4, 0x1

    .line 97
    .line 98
    int-to-float v6, v4

    .line 99
    int-to-float v8, v3

    .line 100
    const/4 v5, 0x0

    .line 101
    move-object v4, p1

    .line 102
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 103
    .line 104
    .line 105
    iget-boolean v2, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->K:Z

    .line 106
    .line 107
    if-eqz v2, :cond_3

    .line 108
    .line 109
    iget v2, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->I:I

    .line 110
    .line 111
    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    .line 113
    .line 114
    sget-object v2, Lcom/journeyapps/barcodescanner/ViewfinderView;->R:[I

    .line 115
    .line 116
    iget v3, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->L:I

    .line 117
    .line 118
    aget v2, v2, v3

    .line 119
    .line 120
    invoke-virtual {v10, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 121
    .line 122
    .line 123
    iget v2, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->L:I

    .line 124
    .line 125
    add-int/lit8 v2, v2, 0x1

    .line 126
    .line 127
    rem-int/lit8 v2, v2, 0x8

    .line 128
    .line 129
    iput v2, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->L:I

    .line 130
    .line 131
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    div-int/lit8 v2, v2, 0x2

    .line 136
    .line 137
    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 138
    .line 139
    add-int/2addr v2, v3

    .line 140
    iget v3, v0, Landroid/graphics/Rect;->left:I

    .line 141
    .line 142
    add-int/lit8 v3, v3, 0x2

    .line 143
    .line 144
    int-to-float v5, v3

    .line 145
    add-int/lit8 v3, v2, -0x1

    .line 146
    .line 147
    int-to-float v6, v3

    .line 148
    iget v3, v0, Landroid/graphics/Rect;->right:I

    .line 149
    .line 150
    add-int/lit8 v3, v3, -0x1

    .line 151
    .line 152
    int-to-float v7, v3

    .line 153
    add-int/lit8 v2, v2, 0x2

    .line 154
    .line 155
    int-to-float v8, v2

    .line 156
    move-object v4, p1

    .line 157
    move-object v9, v10

    .line 158
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 159
    .line 160
    .line 161
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    int-to-float v2, v2

    .line 166
    iget v3, v1, LO5/t;->G:I

    .line 167
    .line 168
    int-to-float v3, v3

    .line 169
    div-float/2addr v2, v3

    .line 170
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 171
    .line 172
    .line 173
    move-result v3

    .line 174
    int-to-float v3, v3

    .line 175
    iget v1, v1, LO5/t;->H:I

    .line 176
    .line 177
    int-to-float v1, v1

    .line 178
    div-float/2addr v3, v1

    .line 179
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->N:Ljava/util/List;

    .line 180
    .line 181
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    iget v4, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->J:I

    .line 186
    .line 187
    if-nez v1, :cond_5

    .line 188
    .line 189
    const/16 v1, 0x50

    .line 190
    .line 191
    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v10, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 195
    .line 196
    .line 197
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->N:Ljava/util/List;

    .line 198
    .line 199
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 204
    .line 205
    .line 206
    move-result v5

    .line 207
    if-eqz v5, :cond_4

    .line 208
    .line 209
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v5

    .line 213
    check-cast v5, Lq5/o;

    .line 214
    .line 215
    iget v6, v5, Lq5/o;->a:F

    .line 216
    .line 217
    mul-float v6, v6, v2

    .line 218
    .line 219
    float-to-int v6, v6

    .line 220
    int-to-float v6, v6

    .line 221
    iget v5, v5, Lq5/o;->b:F

    .line 222
    .line 223
    mul-float v5, v5, v3

    .line 224
    .line 225
    float-to-int v5, v5

    .line 226
    int-to-float v5, v5

    .line 227
    const/high16 v7, 0x40400000    # 3.0f

    .line 228
    .line 229
    invoke-virtual {p1, v6, v5, v7, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 230
    .line 231
    .line 232
    goto :goto_1

    .line 233
    :cond_4
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->N:Ljava/util/List;

    .line 234
    .line 235
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 236
    .line 237
    .line 238
    :cond_5
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->M:Ljava/util/List;

    .line 239
    .line 240
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    if-nez v1, :cond_7

    .line 245
    .line 246
    const/16 v1, 0xa0

    .line 247
    .line 248
    invoke-virtual {v10, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v10, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 252
    .line 253
    .line 254
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->M:Ljava/util/List;

    .line 255
    .line 256
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 261
    .line 262
    .line 263
    move-result v4

    .line 264
    if-eqz v4, :cond_6

    .line 265
    .line 266
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v4

    .line 270
    check-cast v4, Lq5/o;

    .line 271
    .line 272
    iget v5, v4, Lq5/o;->a:F

    .line 273
    .line 274
    mul-float v5, v5, v2

    .line 275
    .line 276
    float-to-int v5, v5

    .line 277
    int-to-float v5, v5

    .line 278
    iget v4, v4, Lq5/o;->b:F

    .line 279
    .line 280
    mul-float v4, v4, v3

    .line 281
    .line 282
    float-to-int v4, v4

    .line 283
    int-to-float v4, v4

    .line 284
    const/high16 v6, 0x40c00000    # 6.0f

    .line 285
    .line 286
    invoke-virtual {p1, v5, v4, v6, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 287
    .line 288
    .line 289
    goto :goto_2

    .line 290
    :cond_6
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->M:Ljava/util/List;

    .line 291
    .line 292
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->N:Ljava/util/List;

    .line 293
    .line 294
    iput-object v1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->M:Ljava/util/List;

    .line 295
    .line 296
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->N:Ljava/util/List;

    .line 297
    .line 298
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 299
    .line 300
    .line 301
    :cond_7
    iget p1, v0, Landroid/graphics/Rect;->left:I

    .line 302
    .line 303
    add-int/lit8 v4, p1, -0x6

    .line 304
    .line 305
    iget p1, v0, Landroid/graphics/Rect;->top:I

    .line 306
    .line 307
    add-int/lit8 v5, p1, -0x6

    .line 308
    .line 309
    iget p1, v0, Landroid/graphics/Rect;->right:I

    .line 310
    .line 311
    add-int/lit8 v6, p1, 0x6

    .line 312
    .line 313
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    .line 314
    .line 315
    add-int/lit8 v7, p1, 0x6

    .line 316
    .line 317
    const-wide/16 v2, 0x50

    .line 318
    .line 319
    move-object v1, p0

    .line 320
    invoke-virtual/range {v1 .. v7}, Landroid/view/View;->postInvalidateDelayed(JIIII)V

    .line 321
    .line 322
    .line 323
    :cond_8
    :goto_3
    return-void
.end method

.method public setCameraPreview(LO5/g;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->O:LO5/g;

    .line 2
    .line 3
    new-instance v0, LO5/e;

    .line 4
    .line 5
    const/4 v1, 0x2

    .line 6
    invoke-direct {v0, p0, v1}, LO5/e;-><init>(Ljava/lang/Object;I)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p1, LO5/g;->P:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setLaserVisibility(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->K:Z

    .line 2
    .line 3
    return-void
.end method

.method public setMaskColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/journeyapps/barcodescanner/ViewfinderView;->H:I

    .line 2
    .line 3
    return-void
.end method
