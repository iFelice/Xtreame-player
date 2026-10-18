.class public Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;
.super Ll/E;
.source "SourceFile"


# instance fields
.field public final J:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Ll/E;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 14
    .line 15
    const/high16 p2, 0x43200000    # 160.0f

    .line 16
    .line 17
    mul-float p1, p1, p2

    .line 18
    .line 19
    float-to-int p1, p1

    .line 20
    iput p1, p0, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;->J:I

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final c(II)LN/r;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMaxWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/widget/ImageView;->getMaxHeight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-le p1, v0, :cond_0

    .line 10
    .line 11
    const-string v2, "Image: capping width"

    .line 12
    .line 13
    int-to-float v3, v0

    .line 14
    invoke-static {v2, v3}, Ly4/k;->T(Ljava/lang/String;F)V

    .line 15
    .line 16
    .line 17
    mul-int p2, p2, v0

    .line 18
    .line 19
    div-int/2addr p2, p1

    .line 20
    move p1, v0

    .line 21
    :cond_0
    if-le p2, v1, :cond_1

    .line 22
    .line 23
    const-string v0, "Image: capping height"

    .line 24
    .line 25
    int-to-float v2, v1

    .line 26
    invoke-static {v0, v2}, Ly4/k;->T(Ljava/lang/String;F)V

    .line 27
    .line 28
    .line 29
    mul-int p1, p1, v1

    .line 30
    .line 31
    div-int/2addr p1, p2

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move v1, p2

    .line 34
    :goto_0
    new-instance p2, LN/r;

    .line 35
    .line 36
    invoke-direct {p2, p1, v1}, LN/r;-><init>(II)V

    .line 37
    .line 38
    .line 39
    return-object p2
.end method

.method public final onMeasure(II)V
    .locals 8

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p0}, Landroid/widget/ImageView;->getAdjustViewBounds()Z

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    if-eqz p1, :cond_3

    .line 13
    .line 14
    if-eqz p2, :cond_3

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    int-to-float v0, p2

    .line 25
    int-to-float v1, p1

    .line 26
    const-string v2, "Image: intrinsic width, height"

    .line 27
    .line 28
    invoke-static {v2, v0, v1}, Ly4/k;->U(Ljava/lang/String;FF)V

    .line 29
    .line 30
    .line 31
    iget v0, p0, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;->J:I

    .line 32
    .line 33
    mul-int p2, p2, v0

    .line 34
    .line 35
    div-int/lit16 p2, p2, 0xa0

    .line 36
    .line 37
    int-to-double v0, p2

    .line 38
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 39
    .line 40
    .line 41
    move-result-wide v0

    .line 42
    double-to-int p2, v0

    .line 43
    iget v0, p0, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;->J:I

    .line 44
    .line 45
    mul-int p1, p1, v0

    .line 46
    .line 47
    div-int/lit16 p1, p1, 0xa0

    .line 48
    .line 49
    int-to-double v0, p1

    .line 50
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 51
    .line 52
    .line 53
    move-result-wide v0

    .line 54
    double-to-int p1, v0

    .line 55
    invoke-virtual {p0, p2, p1}, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;->c(II)LN/r;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iget p2, p1, LN/r;->H:I

    .line 60
    .line 61
    int-to-float p2, p2

    .line 62
    iget v0, p1, LN/r;->I:I

    .line 63
    .line 64
    int-to-float v0, v0

    .line 65
    const-string v1, "Image: new target dimensions"

    .line 66
    .line 67
    invoke-static {v1, p2, v0}, Ly4/k;->U(Ljava/lang/String;FF)V

    .line 68
    .line 69
    .line 70
    iget p2, p1, LN/r;->H:I

    .line 71
    .line 72
    iget p1, p1, LN/r;->I:I

    .line 73
    .line 74
    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/view/View;->getMinimumWidth()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    invoke-virtual {p0}, Landroid/view/View;->getMinimumHeight()I

    .line 90
    .line 91
    .line 92
    move-result p2

    .line 93
    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    .line 98
    .line 99
    .line 100
    move-result p2

    .line 101
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    int-to-float v2, p1

    .line 110
    int-to-float v3, p2

    .line 111
    const-string v4, "Image: min width, height"

    .line 112
    .line 113
    invoke-static {v4, v2, v3}, Ly4/k;->U(Ljava/lang/String;FF)V

    .line 114
    .line 115
    .line 116
    int-to-float v4, v0

    .line 117
    int-to-float v5, v1

    .line 118
    const-string v6, "Image: actual width, height"

    .line 119
    .line 120
    invoke-static {v6, v4, v5}, Ly4/k;->U(Ljava/lang/String;FF)V

    .line 121
    .line 122
    .line 123
    const/high16 v6, 0x3f800000    # 1.0f

    .line 124
    .line 125
    if-ge v0, p1, :cond_0

    .line 126
    .line 127
    div-float/2addr v2, v4

    .line 128
    goto :goto_0

    .line 129
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 130
    .line 131
    :goto_0
    if-ge v1, p2, :cond_1

    .line 132
    .line 133
    div-float v6, v3, v5

    .line 134
    .line 135
    :cond_1
    cmpl-float p1, v2, v6

    .line 136
    .line 137
    if-lez p1, :cond_2

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_2
    move v2, v6

    .line 141
    :goto_1
    float-to-double p1, v2

    .line 142
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 143
    .line 144
    cmpl-double v3, p1, v6

    .line 145
    .line 146
    if-lez v3, :cond_3

    .line 147
    .line 148
    mul-float v4, v4, v2

    .line 149
    .line 150
    float-to-double p1, v4

    .line 151
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    .line 152
    .line 153
    .line 154
    move-result-wide p1

    .line 155
    double-to-int p1, p1

    .line 156
    mul-float v5, v5, v2

    .line 157
    .line 158
    float-to-double v2, v5

    .line 159
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 160
    .line 161
    .line 162
    move-result-wide v2

    .line 163
    double-to-int p2, v2

    .line 164
    const-string v2, "Measured dimension ("

    .line 165
    .line 166
    const-string v3, "x"

    .line 167
    .line 168
    const-string v4, ") too small.  Resizing to "

    .line 169
    .line 170
    invoke-static {v2, v0, v3, v1, v4}, LA0/O;->D(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-static {v0}, Ly4/k;->S(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/inappmessaging/display/internal/ResizableImageView;->c(II)LN/r;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    iget p2, p1, LN/r;->H:I

    .line 195
    .line 196
    iget p1, p1, LN/r;->I:I

    .line 197
    .line 198
    invoke-virtual {p0, p2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 199
    .line 200
    .line 201
    :cond_3
    return-void
.end method
