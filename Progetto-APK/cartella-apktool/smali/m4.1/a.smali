.class public final Lm4/a;
.super LT/b;
.source "SourceFile"


# instance fields
.field public final synthetic H:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm4/a;->H:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, LT/b;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final e(Landroid/view/View;I)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final f(Landroid/view/View;I)I
    .locals 2

    .line 1
    iget-object p1, p0, Lm4/a;->H:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->t()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-boolean v1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->j:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget p1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:I

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget p1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:I

    .line 15
    .line 16
    :goto_0
    if-ge p2, v0, :cond_1

    .line 17
    .line 18
    move p2, v0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    if-le p2, p1, :cond_2

    .line 21
    .line 22
    move p2, p1

    .line 23
    :cond_2
    :goto_1
    return p2
.end method

.method public final h()I
    .locals 2

    .line 1
    iget-object v0, p0, Lm4/a;->H:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->j:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    iget v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:I

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    iget v0, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:I

    .line 11
    .line 12
    return v0
.end method

.method public final j(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lm4/a;->H:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->v(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public final k(Landroid/view/View;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lm4/a;->H:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->r:Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroid/view/View;

    .line 10
    .line 11
    return-void
.end method

.method public final l(Landroid/view/View;FF)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x6

    .line 3
    const/4 v2, 0x3

    .line 4
    iget-object v3, p0, Lm4/a;->H:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 5
    .line 6
    const/4 v4, 0x0

    .line 7
    cmpg-float v5, p3, v4

    .line 8
    .line 9
    if-gez v5, :cond_2

    .line 10
    .line 11
    iget-boolean p2, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a:Z

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    iget p2, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g:I

    .line 16
    .line 17
    const/4 v7, 0x3

    .line 18
    goto/16 :goto_4

    .line 19
    .line 20
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    iget p3, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:I

    .line 25
    .line 26
    if-le p2, p3, :cond_1

    .line 27
    .line 28
    move v0, p3

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    const/4 v1, 0x3

    .line 31
    :goto_1
    move p2, v0

    .line 32
    move v7, v1

    .line 33
    goto/16 :goto_4

    .line 34
    .line 35
    :cond_2
    iget-boolean v5, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->j:Z

    .line 36
    .line 37
    if-eqz v5, :cond_4

    .line 38
    .line 39
    invoke-virtual {v3, p1, p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->w(Landroid/view/View;F)Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-eqz v5, :cond_4

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 46
    .line 47
    .line 48
    move-result v5

    .line 49
    iget v6, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:I

    .line 50
    .line 51
    if-gt v5, v6, :cond_3

    .line 52
    .line 53
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    cmpg-float v5, v5, v6

    .line 62
    .line 63
    if-gez v5, :cond_4

    .line 64
    .line 65
    :cond_3
    iget p2, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:I

    .line 66
    .line 67
    const/4 v2, 0x5

    .line 68
    const/4 v7, 0x5

    .line 69
    goto :goto_4

    .line 70
    :cond_4
    const/4 v5, 0x4

    .line 71
    cmpl-float v4, p3, v4

    .line 72
    .line 73
    if-eqz v4, :cond_6

    .line 74
    .line 75
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 80
    .line 81
    .line 82
    move-result p3

    .line 83
    cmpl-float p2, p2, p3

    .line 84
    .line 85
    if-lez p2, :cond_5

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_5
    iget p2, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:I

    .line 89
    .line 90
    const/4 v7, 0x4

    .line 91
    goto :goto_4

    .line 92
    :cond_6
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    .line 93
    .line 94
    .line 95
    move-result p2

    .line 96
    iget-boolean p3, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->a:Z

    .line 97
    .line 98
    if-eqz p3, :cond_8

    .line 99
    .line 100
    iget p3, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g:I

    .line 101
    .line 102
    sub-int p3, p2, p3

    .line 103
    .line 104
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 105
    .line 106
    .line 107
    move-result p3

    .line 108
    iget v0, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:I

    .line 109
    .line 110
    sub-int/2addr p2, v0

    .line 111
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 112
    .line 113
    .line 114
    move-result p2

    .line 115
    if-ge p3, p2, :cond_7

    .line 116
    .line 117
    iget v0, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->g:I

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_7
    iget v0, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:I

    .line 121
    .line 122
    :goto_3
    const/4 v1, 0x4

    .line 123
    goto :goto_1

    .line 124
    :cond_8
    iget p3, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:I

    .line 125
    .line 126
    if-ge p2, p3, :cond_a

    .line 127
    .line 128
    iget p3, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:I

    .line 129
    .line 130
    sub-int p3, p2, p3

    .line 131
    .line 132
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 133
    .line 134
    .line 135
    move-result p3

    .line 136
    if-ge p2, p3, :cond_9

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_9
    iget v0, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:I

    .line 140
    .line 141
    goto :goto_1

    .line 142
    :cond_a
    sub-int p3, p2, p3

    .line 143
    .line 144
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 145
    .line 146
    .line 147
    move-result p3

    .line 148
    iget v0, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:I

    .line 149
    .line 150
    sub-int/2addr p2, v0

    .line 151
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    .line 152
    .line 153
    .line 154
    move-result p2

    .line 155
    if-ge p3, p2, :cond_b

    .line 156
    .line 157
    iget v0, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->h:I

    .line 158
    .line 159
    goto/16 :goto_1

    .line 160
    .line 161
    :cond_b
    iget v0, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->i:I

    .line 162
    .line 163
    goto :goto_3

    .line 164
    :goto_4
    iget-object p3, v3, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->m:LT/c;

    .line 165
    .line 166
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    invoke-virtual {p3, v0, p2}, LT/c;->o(II)Z

    .line 171
    .line 172
    .line 173
    move-result p2

    .line 174
    if-eqz p2, :cond_c

    .line 175
    .line 176
    const/4 p2, 0x2

    .line 177
    invoke-virtual {v3, p2}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->v(I)V

    .line 178
    .line 179
    .line 180
    new-instance p2, La/g;

    .line 181
    .line 182
    iget-object v5, p0, Lm4/a;->H:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 183
    .line 184
    const/4 v9, 0x0

    .line 185
    const/16 v8, 0x9

    .line 186
    .line 187
    move-object v4, p2

    .line 188
    move-object v6, p1

    .line 189
    invoke-direct/range {v4 .. v9}, La/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;III)V

    .line 190
    .line 191
    .line 192
    sget-object p3, LN/N;->a:Ljava/util/WeakHashMap;

    .line 193
    .line 194
    invoke-virtual {p1, p2}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 195
    .line 196
    .line 197
    goto :goto_5

    .line 198
    :cond_c
    invoke-virtual {v3, v7}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->v(I)V

    .line 199
    .line 200
    .line 201
    :goto_5
    return-void
.end method

.method public final m(Landroid/view/View;I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lm4/a;->H:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 2
    .line 3
    iget v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->l:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-ne v1, v3, :cond_0

    .line 8
    .line 9
    return v2

    .line 10
    :cond_0
    iget-boolean v4, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->w:Z

    .line 11
    .line 12
    if-eqz v4, :cond_1

    .line 13
    .line 14
    return v2

    .line 15
    :cond_1
    const/4 v4, 0x3

    .line 16
    if-ne v1, v4, :cond_2

    .line 17
    .line 18
    iget v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->u:I

    .line 19
    .line 20
    if-ne v1, p2, :cond_2

    .line 21
    .line 22
    iget-object p2, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->s:Ljava/lang/ref/WeakReference;

    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    check-cast p2, Landroid/view/View;

    .line 29
    .line 30
    if-eqz p2, :cond_2

    .line 31
    .line 32
    const/4 v1, -0x1

    .line 33
    invoke-virtual {p2, v1}, Landroid/view/View;->canScrollVertically(I)Z

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    if-eqz p2, :cond_2

    .line 38
    .line 39
    return v2

    .line 40
    :cond_2
    iget-object p2, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->r:Ljava/lang/ref/WeakReference;

    .line 41
    .line 42
    if-eqz p2, :cond_3

    .line 43
    .line 44
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    if-ne p2, p1, :cond_3

    .line 49
    .line 50
    const/4 v2, 0x1

    .line 51
    :cond_3
    return v2
.end method
