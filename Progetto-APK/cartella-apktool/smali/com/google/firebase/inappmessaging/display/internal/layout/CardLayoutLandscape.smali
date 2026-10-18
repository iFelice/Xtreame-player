.class public Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;
.super La5/a;
.source "SourceFile"


# instance fields
.field public K:Landroid/view/View;

.field public L:Landroid/view/View;

.field public M:Landroid/view/View;

.field public N:Landroid/view/View;


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
    .locals 1

    .line 1
    invoke-super/range {p0 .. p5}, La5/a;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    const-string p3, "Layout image"

    .line 13
    .line 14
    invoke-static {p3}, Ly4/k;->S(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object p3, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->K:Landroid/view/View;

    .line 18
    .line 19
    invoke-static {p3}, La5/a;->e(Landroid/view/View;)I

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    iget-object p4, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->K:Landroid/view/View;

    .line 24
    .line 25
    invoke-static {p4}, La5/a;->d(Landroid/view/View;)I

    .line 26
    .line 27
    .line 28
    move-result p4

    .line 29
    iget-object p5, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->K:Landroid/view/View;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-static {p5, v0, v0, p3, p4}, La5/a;->f(Landroid/view/View;IIII)V

    .line 33
    .line 34
    .line 35
    const-string p4, "Layout title"

    .line 36
    .line 37
    invoke-static {p4}, Ly4/k;->S(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object p4, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->L:Landroid/view/View;

    .line 41
    .line 42
    invoke-static {p4}, La5/a;->d(Landroid/view/View;)I

    .line 43
    .line 44
    .line 45
    move-result p4

    .line 46
    iget-object p5, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->L:Landroid/view/View;

    .line 47
    .line 48
    invoke-static {p5, p3, v0, p1, p4}, La5/a;->f(Landroid/view/View;IIII)V

    .line 49
    .line 50
    .line 51
    const-string p5, "Layout scroll"

    .line 52
    .line 53
    invoke-static {p5}, Ly4/k;->S(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object p5, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->M:Landroid/view/View;

    .line 57
    .line 58
    invoke-static {p5}, La5/a;->d(Landroid/view/View;)I

    .line 59
    .line 60
    .line 61
    move-result p5

    .line 62
    add-int/2addr p5, p4

    .line 63
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->M:Landroid/view/View;

    .line 64
    .line 65
    invoke-static {v0, p3, p4, p1, p5}, La5/a;->f(Landroid/view/View;IIII)V

    .line 66
    .line 67
    .line 68
    const-string p4, "Layout action bar"

    .line 69
    .line 70
    invoke-static {p4}, Ly4/k;->S(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-object p4, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->N:Landroid/view/View;

    .line 74
    .line 75
    invoke-static {p4}, La5/a;->d(Landroid/view/View;)I

    .line 76
    .line 77
    .line 78
    move-result p4

    .line 79
    sub-int p4, p2, p4

    .line 80
    .line 81
    iget-object p5, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->N:Landroid/view/View;

    .line 82
    .line 83
    invoke-static {p5, p3, p4, p1, p2}, La5/a;->f(Landroid/view/View;IIII)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public final onMeasure(II)V
    .locals 8

    .line 1
    invoke-super {p0, p1, p2}, La5/a;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    const v0, 0x7f0b0287

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0, v0}, La5/a;->c(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->K:Landroid/view/View;

    .line 12
    .line 13
    const v0, 0x7f0b0357

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, La5/a;->c(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->L:Landroid/view/View;

    .line 21
    .line 22
    const v0, 0x7f0b0083

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v0}, La5/a;->c(I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->M:Landroid/view/View;

    .line 30
    .line 31
    const v0, 0x7f0b0038

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v0}, La5/a;->c(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->N:Landroid/view/View;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->L:Landroid/view/View;

    .line 41
    .line 42
    iget-object v2, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->M:Landroid/view/View;

    .line 43
    .line 44
    const/4 v3, 0x3

    .line 45
    new-array v3, v3, [Landroid/view/View;

    .line 46
    .line 47
    const/4 v4, 0x0

    .line 48
    aput-object v1, v3, v4

    .line 49
    .line 50
    const/4 v1, 0x1

    .line 51
    aput-object v2, v3, v1

    .line 52
    .line 53
    const/4 v1, 0x2

    .line 54
    aput-object v0, v3, v1

    .line 55
    .line 56
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {p0, p1}, La5/a;->b(I)I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    invoke-virtual {p0, p2}, La5/a;->a(I)I

    .line 65
    .line 66
    .line 67
    move-result p2

    .line 68
    const-wide v1, 0x3fe3333333333333L    # 0.6

    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    int-to-double v5, p1

    .line 74
    mul-double v1, v1, v5

    .line 75
    .line 76
    double-to-int v1, v1

    .line 77
    int-to-float v1, v1

    .line 78
    const/4 v2, 0x4

    .line 79
    int-to-float v3, v2

    .line 80
    div-float/2addr v1, v3

    .line 81
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    mul-int/lit8 v1, v1, 0x4

    .line 86
    .line 87
    const-string v2, "Measuring image"

    .line 88
    .line 89
    invoke-static {v2}, Ly4/k;->S(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget-object v2, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->K:Landroid/view/View;

    .line 93
    .line 94
    const/high16 v3, -0x80000000

    .line 95
    .line 96
    const/high16 v5, 0x40000000    # 2.0f

    .line 97
    .line 98
    invoke-static {v2, p1, p2, v3, v5}, LS3/e;->j(Landroid/view/View;IIII)V

    .line 99
    .line 100
    .line 101
    iget-object v2, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->K:Landroid/view/View;

    .line 102
    .line 103
    invoke-static {v2}, La5/a;->e(Landroid/view/View;)I

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    if-le v2, v1, :cond_0

    .line 108
    .line 109
    const-string v2, "Image exceeded maximum width, remeasuring image"

    .line 110
    .line 111
    invoke-static {v2}, Ly4/k;->S(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iget-object v2, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->K:Landroid/view/View;

    .line 115
    .line 116
    invoke-static {v2, v1, p2, v5, v3}, LS3/e;->j(Landroid/view/View;IIII)V

    .line 117
    .line 118
    .line 119
    :cond_0
    iget-object p2, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->K:Landroid/view/View;

    .line 120
    .line 121
    invoke-static {p2}, La5/a;->d(Landroid/view/View;)I

    .line 122
    .line 123
    .line 124
    move-result p2

    .line 125
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->K:Landroid/view/View;

    .line 126
    .line 127
    invoke-static {v1}, La5/a;->e(Landroid/view/View;)I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    sub-int/2addr p1, v1

    .line 132
    int-to-float v2, v1

    .line 133
    int-to-float v6, p1

    .line 134
    const-string v7, "Max col widths (l, r)"

    .line 135
    .line 136
    invoke-static {v7, v2, v6}, Ly4/k;->U(Ljava/lang/String;FF)V

    .line 137
    .line 138
    .line 139
    const-string v6, "Measuring title"

    .line 140
    .line 141
    invoke-static {v6}, Ly4/k;->S(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    iget-object v6, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->L:Landroid/view/View;

    .line 145
    .line 146
    invoke-static {v6, p1, p2}, LS3/e;->k(Landroid/view/View;II)V

    .line 147
    .line 148
    .line 149
    const-string v6, "Measuring action bar"

    .line 150
    .line 151
    invoke-static {v6}, Ly4/k;->S(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    iget-object v6, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->N:Landroid/view/View;

    .line 155
    .line 156
    invoke-static {v6, p1, p2}, LS3/e;->k(Landroid/view/View;II)V

    .line 157
    .line 158
    .line 159
    const-string v6, "Measuring scroll view"

    .line 160
    .line 161
    invoke-static {v6}, Ly4/k;->S(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    iget-object v6, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->L:Landroid/view/View;

    .line 165
    .line 166
    invoke-static {v6}, La5/a;->d(Landroid/view/View;)I

    .line 167
    .line 168
    .line 169
    move-result v6

    .line 170
    sub-int v6, p2, v6

    .line 171
    .line 172
    iget-object v7, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->N:Landroid/view/View;

    .line 173
    .line 174
    invoke-static {v7}, La5/a;->d(Landroid/view/View;)I

    .line 175
    .line 176
    .line 177
    move-result v7

    .line 178
    sub-int/2addr v6, v7

    .line 179
    iget-object v7, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutLandscape;->M:Landroid/view/View;

    .line 180
    .line 181
    invoke-static {v7, p1, v6, v3, v5}, LS3/e;->j(Landroid/view/View;IIII)V

    .line 182
    .line 183
    .line 184
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    if-eqz v0, :cond_1

    .line 193
    .line 194
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    check-cast v0, Landroid/view/View;

    .line 199
    .line 200
    invoke-static {v0}, La5/a;->e(Landroid/view/View;)I

    .line 201
    .line 202
    .line 203
    move-result v0

    .line 204
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    .line 205
    .line 206
    .line 207
    move-result v4

    .line 208
    goto :goto_0

    .line 209
    :cond_1
    const-string p1, "Measured columns (l, r)"

    .line 210
    .line 211
    int-to-float v0, v4

    .line 212
    invoke-static {p1, v2, v0}, Ly4/k;->U(Ljava/lang/String;FF)V

    .line 213
    .line 214
    .line 215
    add-int/2addr v1, v4

    .line 216
    int-to-float p1, v1

    .line 217
    int-to-float v0, p2

    .line 218
    const-string v2, "Measured dims"

    .line 219
    .line 220
    invoke-static {v2, p1, v0}, Ly4/k;->U(Ljava/lang/String;FF)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0, v1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 224
    .line 225
    .line 226
    return-void
.end method
