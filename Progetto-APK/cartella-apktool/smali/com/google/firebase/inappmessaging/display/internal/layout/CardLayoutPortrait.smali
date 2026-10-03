.class public Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutPortrait;
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
    .locals 5

    .line 1
    invoke-super/range {p0 .. p5}, La5/a;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, La5/a;->getVisibleChildren()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/4 p2, 0x0

    .line 13
    const/4 p3, 0x0

    .line 14
    const/4 p4, 0x0

    .line 15
    :goto_0
    if-ge p3, p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, La5/a;->getVisibleChildren()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p5

    .line 21
    invoke-interface {p5, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p5

    .line 25
    check-cast p5, Landroid/view/View;

    .line 26
    .line 27
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    add-int/2addr v0, p4

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v3, "Layout child "

    .line 39
    .line 40
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-static {v2}, Ly4/k;->S(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    int-to-float v2, p4

    .line 54
    int-to-float v3, v0

    .line 55
    const-string v4, "\t(top, bottom)"

    .line 56
    .line 57
    invoke-static {v4, v2, v3}, Ly4/k;->U(Ljava/lang/String;FF)V

    .line 58
    .line 59
    .line 60
    int-to-float v2, p2

    .line 61
    int-to-float v3, v1

    .line 62
    const-string v4, "\t(left, right)"

    .line 63
    .line 64
    invoke-static {v4, v2, v3}, Ly4/k;->U(Ljava/lang/String;FF)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p5, p2, p4, v1, v0}, Landroid/view/View;->layout(IIII)V

    .line 68
    .line 69
    .line 70
    const-string v0, "Child "

    .line 71
    .line 72
    const-string v1, " wants to be "

    .line 73
    .line 74
    invoke-static {v0, p3, v1}, LA0/O;->y(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    int-to-float v1, v1

    .line 83
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    int-to-float v2, v2

    .line 88
    invoke-static {v0, v1, v2}, Ly4/k;->U(Ljava/lang/String;FF)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    .line 92
    .line 93
    .line 94
    move-result p5

    .line 95
    add-int/2addr p4, p5

    .line 96
    add-int/lit8 p3, p3, 0x1

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_0
    return-void
.end method

.method public final onMeasure(II)V
    .locals 4

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
    iput-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutPortrait;->K:Landroid/view/View;

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
    iput-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutPortrait;->L:Landroid/view/View;

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
    iput-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutPortrait;->M:Landroid/view/View;

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
    iput-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutPortrait;->N:Landroid/view/View;

    .line 39
    .line 40
    invoke-virtual {p0, p1}, La5/a;->b(I)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    invoke-virtual {p0, p2}, La5/a;->a(I)I

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    const-wide v0, 0x3fe999999999999aL    # 0.8

    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    int-to-double v2, p2

    .line 54
    mul-double v0, v0, v2

    .line 55
    .line 56
    double-to-int v0, v0

    .line 57
    int-to-float v0, v0

    .line 58
    const/4 v1, 0x4

    .line 59
    int-to-float v2, v1

    .line 60
    div-float/2addr v0, v2

    .line 61
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    mul-int/lit8 v0, v0, 0x4

    .line 66
    .line 67
    const-string v1, "Measuring image"

    .line 68
    .line 69
    invoke-static {v1}, Ly4/k;->S(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutPortrait;->K:Landroid/view/View;

    .line 73
    .line 74
    const/high16 v2, 0x40000000    # 2.0f

    .line 75
    .line 76
    const/high16 v3, -0x80000000

    .line 77
    .line 78
    invoke-static {v1, p1, p2, v2, v3}, LS3/e;->j(Landroid/view/View;IIII)V

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutPortrait;->K:Landroid/view/View;

    .line 82
    .line 83
    invoke-static {v1}, La5/a;->d(Landroid/view/View;)I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-le v1, v0, :cond_0

    .line 88
    .line 89
    const-string v1, "Image exceeded maximum height, remeasuring image"

    .line 90
    .line 91
    invoke-static {v1}, Ly4/k;->S(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object v1, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutPortrait;->K:Landroid/view/View;

    .line 95
    .line 96
    invoke-static {v1, p1, v0, v3, v2}, LS3/e;->j(Landroid/view/View;IIII)V

    .line 97
    .line 98
    .line 99
    :cond_0
    iget-object p1, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutPortrait;->K:Landroid/view/View;

    .line 100
    .line 101
    invoke-static {p1}, La5/a;->e(Landroid/view/View;)I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    const-string v0, "Measuring title"

    .line 106
    .line 107
    invoke-static {v0}, Ly4/k;->S(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutPortrait;->L:Landroid/view/View;

    .line 111
    .line 112
    invoke-static {v0, p1, p2, v2, v3}, LS3/e;->j(Landroid/view/View;IIII)V

    .line 113
    .line 114
    .line 115
    const-string v0, "Measuring action bar"

    .line 116
    .line 117
    invoke-static {v0}, Ly4/k;->S(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutPortrait;->N:Landroid/view/View;

    .line 121
    .line 122
    invoke-static {v0, p1, p2, v2, v3}, LS3/e;->j(Landroid/view/View;IIII)V

    .line 123
    .line 124
    .line 125
    const-string v0, "Measuring scroll view"

    .line 126
    .line 127
    invoke-static {v0}, Ly4/k;->S(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutPortrait;->K:Landroid/view/View;

    .line 131
    .line 132
    invoke-static {v0}, La5/a;->d(Landroid/view/View;)I

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    sub-int/2addr p2, v0

    .line 137
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutPortrait;->L:Landroid/view/View;

    .line 138
    .line 139
    invoke-static {v0}, La5/a;->d(Landroid/view/View;)I

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    sub-int/2addr p2, v0

    .line 144
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutPortrait;->N:Landroid/view/View;

    .line 145
    .line 146
    invoke-static {v0}, La5/a;->d(Landroid/view/View;)I

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    sub-int/2addr p2, v0

    .line 151
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/display/internal/layout/CardLayoutPortrait;->M:Landroid/view/View;

    .line 152
    .line 153
    invoke-static {v0, p1, p2, v2, v3}, LS3/e;->j(Landroid/view/View;IIII)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0}, La5/a;->getVisibleChildren()Ljava/util/List;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 161
    .line 162
    .line 163
    move-result p2

    .line 164
    const/4 v0, 0x0

    .line 165
    const/4 v1, 0x0

    .line 166
    :goto_0
    if-ge v0, p2, :cond_1

    .line 167
    .line 168
    invoke-virtual {p0}, La5/a;->getVisibleChildren()Ljava/util/List;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    check-cast v2, Landroid/view/View;

    .line 177
    .line 178
    invoke-static {v2}, La5/a;->d(Landroid/view/View;)I

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    add-int/2addr v1, v2

    .line 183
    add-int/lit8 v0, v0, 0x1

    .line 184
    .line 185
    goto :goto_0

    .line 186
    :cond_1
    invoke-virtual {p0, p1, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 187
    .line 188
    .line 189
    return-void
.end method
