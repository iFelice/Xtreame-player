.class public Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;
.super La5/a;
.source "SourceFile"


# instance fields
.field public K:Landroid/view/View;

.field public L:Landroid/view/View;

.field public M:Landroid/view/View;

.field public N:Landroid/view/View;

.field public O:I

.field public P:I

.field public Q:I

.field public R:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, La5/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onLayout(ZIIII)V
    .locals 4

    .line 1
    invoke-super/range {p0 .. p5}, La5/a;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 13
    .line 14
    .line 15
    move-result p3

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 17
    .line 18
    .line 19
    move-result p4

    .line 20
    sub-int/2addr p3, p4

    .line 21
    iget p4, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->Q:I

    .line 22
    .line 23
    iget p5, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->R:I

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    if-ge p4, p5, :cond_0

    .line 27
    .line 28
    sub-int/2addr p5, p4

    .line 29
    div-int/lit8 p5, p5, 0x2

    .line 30
    .line 31
    const/4 p4, 0x0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    sub-int/2addr p4, p5

    .line 34
    div-int/lit8 p4, p4, 0x2

    .line 35
    .line 36
    const/4 p5, 0x0

    .line 37
    :goto_0
    const-string v1, "Layout image"

    .line 38
    .line 39
    invoke-static {v1}, Ly4/k;->S(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    add-int/2addr p5, p2

    .line 43
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->K:Landroid/view/View;

    .line 44
    .line 45
    invoke-static {v1}, La5/a;->e(Landroid/view/View;)I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    add-int/2addr v1, p1

    .line 50
    iget-object v2, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->K:Landroid/view/View;

    .line 51
    .line 52
    invoke-static {v2}, La5/a;->d(Landroid/view/View;)I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    add-int/2addr v2, p5

    .line 57
    iget-object v3, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->K:Landroid/view/View;

    .line 58
    .line 59
    invoke-static {v3, p1, p5, v1, v2}, La5/a;->f(Landroid/view/View;IIII)V

    .line 60
    .line 61
    .line 62
    iget p1, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->O:I

    .line 63
    .line 64
    add-int/2addr v1, p1

    .line 65
    const-string p1, "Layout getTitle"

    .line 66
    .line 67
    invoke-static {p1}, Ly4/k;->S(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    add-int/2addr p2, p4

    .line 71
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->L:Landroid/view/View;

    .line 72
    .line 73
    invoke-static {p1}, La5/a;->d(Landroid/view/View;)I

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    add-int/2addr p1, p2

    .line 78
    iget-object p4, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->L:Landroid/view/View;

    .line 79
    .line 80
    invoke-static {p4, v1, p2, p3, p1}, La5/a;->f(Landroid/view/View;IIII)V

    .line 81
    .line 82
    .line 83
    const-string p2, "Layout getBody"

    .line 84
    .line 85
    invoke-static {p2}, Ly4/k;->S(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-object p2, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->L:Landroid/view/View;

    .line 89
    .line 90
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    const/16 p4, 0x8

    .line 95
    .line 96
    if-ne p2, p4, :cond_1

    .line 97
    .line 98
    const/4 p2, 0x0

    .line 99
    goto :goto_1

    .line 100
    :cond_1
    iget p2, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->P:I

    .line 101
    .line 102
    :goto_1
    add-int/2addr p1, p2

    .line 103
    iget-object p2, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->M:Landroid/view/View;

    .line 104
    .line 105
    invoke-static {p2}, La5/a;->d(Landroid/view/View;)I

    .line 106
    .line 107
    .line 108
    move-result p2

    .line 109
    add-int/2addr p2, p1

    .line 110
    iget-object p5, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->M:Landroid/view/View;

    .line 111
    .line 112
    invoke-static {p5, v1, p1, p3, p2}, La5/a;->f(Landroid/view/View;IIII)V

    .line 113
    .line 114
    .line 115
    const-string p1, "Layout button"

    .line 116
    .line 117
    invoke-static {p1}, Ly4/k;->S(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->M:Landroid/view/View;

    .line 121
    .line 122
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-ne p1, p4, :cond_2

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_2
    iget v0, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->P:I

    .line 130
    .line 131
    :goto_2
    add-int/2addr p2, v0

    .line 132
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->N:Landroid/view/View;

    .line 133
    .line 134
    invoke-static {p1}, La5/a;->e(Landroid/view/View;)I

    .line 135
    .line 136
    .line 137
    move-result p3

    .line 138
    add-int/2addr p3, v1

    .line 139
    invoke-static {p1}, La5/a;->d(Landroid/view/View;)I

    .line 140
    .line 141
    .line 142
    move-result p4

    .line 143
    add-int/2addr p4, p2

    .line 144
    invoke-static {p1, v1, p2, p3, p4}, La5/a;->f(Landroid/view/View;IIII)V

    .line 145
    .line 146
    .line 147
    return-void
.end method

.method public final onMeasure(II)V
    .locals 11

    .line 1
    iget-object v0, p0, La5/a;->I:Landroid/util/DisplayMetrics;

    .line 2
    .line 3
    invoke-super {p0, p1, p2}, La5/a;->onMeasure(II)V

    .line 4
    .line 5
    .line 6
    const v1, 0x7f0b0287

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v1}, La5/a;->c(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->K:Landroid/view/View;

    .line 14
    .line 15
    const v1, 0x7f0b0357

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v1}, La5/a;->c(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iput-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->L:Landroid/view/View;

    .line 23
    .line 24
    const v1, 0x7f0b0083

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v1}, La5/a;->c(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iput-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->M:Landroid/view/View;

    .line 32
    .line 33
    const v1, 0x7f0b0143

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v1}, La5/a;->c(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iput-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->N:Landroid/view/View;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->K:Landroid/view/View;

    .line 43
    .line 44
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    const/16 v2, 0x18

    .line 49
    .line 50
    const/4 v3, 0x1

    .line 51
    const/4 v4, 0x0

    .line 52
    const/16 v5, 0x8

    .line 53
    .line 54
    if-ne v1, v5, :cond_0

    .line 55
    .line 56
    const/4 v1, 0x0

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    int-to-float v1, v2

    .line 59
    invoke-static {v3, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    float-to-double v6, v1

    .line 64
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    .line 65
    .line 66
    .line 67
    move-result-wide v6

    .line 68
    double-to-int v1, v6

    .line 69
    :goto_0
    iput v1, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->O:I

    .line 70
    .line 71
    int-to-float v1, v2

    .line 72
    invoke-static {v3, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    float-to-double v0, v0

    .line 77
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    .line 78
    .line 79
    .line 80
    move-result-wide v0

    .line 81
    double-to-int v0, v0

    .line 82
    iput v0, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->P:I

    .line 83
    .line 84
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->L:Landroid/view/View;

    .line 85
    .line 86
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->M:Landroid/view/View;

    .line 87
    .line 88
    iget-object v2, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->N:Landroid/view/View;

    .line 89
    .line 90
    const/4 v6, 0x3

    .line 91
    new-array v6, v6, [Landroid/view/View;

    .line 92
    .line 93
    aput-object v0, v6, v4

    .line 94
    .line 95
    aput-object v1, v6, v3

    .line 96
    .line 97
    const/4 v0, 0x2

    .line 98
    aput-object v2, v6, v0

    .line 99
    .line 100
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    add-int/2addr v2, v1

    .line 113
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 118
    .line 119
    .line 120
    move-result v6

    .line 121
    add-int/2addr v6, v1

    .line 122
    invoke-virtual {p0, p1}, La5/a;->b(I)I

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    invoke-virtual {p0, p2}, La5/a;->a(I)I

    .line 127
    .line 128
    .line 129
    move-result p2

    .line 130
    sub-int/2addr p2, v6

    .line 131
    sub-int/2addr p1, v2

    .line 132
    const-string v1, "Measuring image"

    .line 133
    .line 134
    invoke-static {v1}, Ly4/k;->S(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->K:Landroid/view/View;

    .line 138
    .line 139
    int-to-float v7, p1

    .line 140
    const v8, 0x3ecccccd    # 0.4f

    .line 141
    .line 142
    .line 143
    mul-float v7, v7, v8

    .line 144
    .line 145
    float-to-int v7, v7

    .line 146
    invoke-static {v1, v7, p2}, LS3/e;->k(Landroid/view/View;II)V

    .line 147
    .line 148
    .line 149
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->K:Landroid/view/View;

    .line 150
    .line 151
    invoke-static {v1}, La5/a;->e(Landroid/view/View;)I

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    iget v7, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->O:I

    .line 156
    .line 157
    add-int/2addr v7, v1

    .line 158
    sub-int/2addr p1, v7

    .line 159
    int-to-float v7, v1

    .line 160
    int-to-float v8, p1

    .line 161
    const-string v9, "Max col widths (l, r)"

    .line 162
    .line 163
    invoke-static {v9, v7, v8}, Ly4/k;->U(Ljava/lang/String;FF)V

    .line 164
    .line 165
    .line 166
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 167
    .line 168
    .line 169
    move-result-object v8

    .line 170
    const/4 v9, 0x0

    .line 171
    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 172
    .line 173
    .line 174
    move-result v10

    .line 175
    if-eqz v10, :cond_2

    .line 176
    .line 177
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v10

    .line 181
    check-cast v10, Landroid/view/View;

    .line 182
    .line 183
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    .line 184
    .line 185
    .line 186
    move-result v10

    .line 187
    if-eq v10, v5, :cond_1

    .line 188
    .line 189
    add-int/2addr v9, v3

    .line 190
    goto :goto_1

    .line 191
    :cond_2
    sub-int/2addr v9, v3

    .line 192
    iget v3, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->P:I

    .line 193
    .line 194
    mul-int v9, v9, v3

    .line 195
    .line 196
    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    sub-int/2addr p2, v3

    .line 201
    const-string v5, "Measuring getTitle"

    .line 202
    .line 203
    invoke-static {v5}, Ly4/k;->S(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    iget-object v5, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->L:Landroid/view/View;

    .line 207
    .line 208
    invoke-static {v5, p1, p2}, LS3/e;->k(Landroid/view/View;II)V

    .line 209
    .line 210
    .line 211
    const-string v5, "Measuring button"

    .line 212
    .line 213
    invoke-static {v5}, Ly4/k;->S(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    iget-object v5, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->N:Landroid/view/View;

    .line 217
    .line 218
    invoke-static {v5, p1, p2}, LS3/e;->k(Landroid/view/View;II)V

    .line 219
    .line 220
    .line 221
    const-string v5, "Measuring scroll view"

    .line 222
    .line 223
    invoke-static {v5}, Ly4/k;->S(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    iget-object v5, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->L:Landroid/view/View;

    .line 227
    .line 228
    invoke-static {v5}, La5/a;->d(Landroid/view/View;)I

    .line 229
    .line 230
    .line 231
    move-result v5

    .line 232
    sub-int/2addr p2, v5

    .line 233
    iget-object v5, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->N:Landroid/view/View;

    .line 234
    .line 235
    invoke-static {v5}, La5/a;->d(Landroid/view/View;)I

    .line 236
    .line 237
    .line 238
    move-result v5

    .line 239
    sub-int/2addr p2, v5

    .line 240
    iget-object v5, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->M:Landroid/view/View;

    .line 241
    .line 242
    invoke-static {v5, p1, p2}, LS3/e;->k(Landroid/view/View;II)V

    .line 243
    .line 244
    .line 245
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->K:Landroid/view/View;

    .line 246
    .line 247
    invoke-static {p1}, La5/a;->d(Landroid/view/View;)I

    .line 248
    .line 249
    .line 250
    move-result p1

    .line 251
    iput p1, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->Q:I

    .line 252
    .line 253
    iput v3, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->R:I

    .line 254
    .line 255
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 260
    .line 261
    .line 262
    move-result p2

    .line 263
    if-eqz p2, :cond_3

    .line 264
    .line 265
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object p2

    .line 269
    check-cast p2, Landroid/view/View;

    .line 270
    .line 271
    iget v3, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->R:I

    .line 272
    .line 273
    invoke-static {p2}, La5/a;->d(Landroid/view/View;)I

    .line 274
    .line 275
    .line 276
    move-result p2

    .line 277
    add-int/2addr p2, v3

    .line 278
    iput p2, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->R:I

    .line 279
    .line 280
    goto :goto_2

    .line 281
    :cond_3
    iget p1, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->Q:I

    .line 282
    .line 283
    add-int/2addr p1, v6

    .line 284
    iget p2, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->R:I

    .line 285
    .line 286
    add-int/2addr p2, v6

    .line 287
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 288
    .line 289
    .line 290
    move-result p1

    .line 291
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 292
    .line 293
    .line 294
    move-result-object p2

    .line 295
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 296
    .line 297
    .line 298
    move-result v0

    .line 299
    if-eqz v0, :cond_4

    .line 300
    .line 301
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    check-cast v0, Landroid/view/View;

    .line 306
    .line 307
    invoke-static {v0}, La5/a;->e(Landroid/view/View;)I

    .line 308
    .line 309
    .line 310
    move-result v0

    .line 311
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    .line 312
    .line 313
    .line 314
    move-result v4

    .line 315
    goto :goto_3

    .line 316
    :cond_4
    const-string p2, "Measured columns (l, r)"

    .line 317
    .line 318
    int-to-float v0, v4

    .line 319
    invoke-static {p2, v7, v0}, Ly4/k;->U(Ljava/lang/String;FF)V

    .line 320
    .line 321
    .line 322
    add-int/2addr v1, v4

    .line 323
    iget p2, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/ModalLayoutLandscape;->O:I

    .line 324
    .line 325
    add-int/2addr v1, p2

    .line 326
    add-int/2addr v1, v2

    .line 327
    int-to-float p2, v1

    .line 328
    int-to-float v0, p1

    .line 329
    const-string v2, "Measured dims"

    .line 330
    .line 331
    invoke-static {v2, p2, v0}, Ly4/k;->U(Ljava/lang/String;FF)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {p0, v1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 335
    .line 336
    .line 337
    return-void
.end method
