.class public abstract LE3/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Landroid/content/SharedPreferences;

.field public static b:Ljava/lang/reflect/Field;

.field public static c:Z

.field public static d:Ljava/lang/Class;

.field public static e:Z

.field public static f:Ljava/lang/reflect/Field;

.field public static g:Z

.field public static h:Ljava/lang/reflect/Field;

.field public static i:Z


# direct methods
.method public static A(Landroid/widget/TextView;I)V
    .locals 3

    .line 1
    if-ltz p1, :cond_2

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 21
    .line 22
    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-le p1, v1, :cond_1

    .line 27
    .line 28
    sub-int/2addr p1, v0

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void

    .line 45
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 46
    .line 47
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 48
    .line 49
    .line 50
    throw p0
.end method

.method public static B(Landroid/widget/TextView;I)V
    .locals 2

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eq p1, v0, :cond_0

    .line 13
    .line 14
    sub-int/2addr p1, v0

    .line 15
    int-to-float p1, p1

    .line 16
    const/high16 v0, 0x3f800000    # 1.0f

    .line 17
    .line 18
    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void

    .line 22
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 25
    .line 26
    .line 27
    throw p0
.end method

.method public static C(Ljava/nio/ByteBuffer;)Ljava/util/ArrayList;
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    :goto_0
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_4

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    shr-int/lit8 v2, v1, 0x3

    .line 21
    .line 22
    and-int/lit8 v2, v2, 0xf

    .line 23
    .line 24
    shr-int/lit8 v3, v1, 0x2

    .line 25
    .line 26
    and-int/lit8 v3, v3, 0x1

    .line 27
    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 31
    .line 32
    .line 33
    :cond_0
    shr-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    and-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    const/4 v3, 0x0

    .line 41
    :goto_1
    const/16 v4, 0x8

    .line 42
    .line 43
    if-ge v1, v4, :cond_3

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    and-int/lit8 v5, v4, 0x7f

    .line 50
    .line 51
    mul-int/lit8 v6, v1, 0x7

    .line 52
    .line 53
    shl-int/2addr v5, v6

    .line 54
    or-int/2addr v3, v5

    .line 55
    and-int/lit16 v4, v4, 0x80

    .line 56
    .line 57
    if-nez v4, :cond_1

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    :cond_3
    :goto_2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    add-int/2addr v4, v3

    .line 76
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 77
    .line 78
    .line 79
    new-instance v4, Lq0/r;

    .line 80
    .line 81
    invoke-direct {v4, v2, v1}, Lq0/r;-><init>(ILjava/nio/ByteBuffer;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    add-int/2addr v1, v3

    .line 92
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_4
    return-object v0
.end method

.method public static D(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;
    .locals 2

    .line 1
    instance-of v0, p0, LQ/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v1, 0x1a

    .line 8
    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    check-cast p0, LQ/i;

    .line 12
    .line 13
    iget-object p0, p0, LQ/i;->a:Landroid/view/ActionMode$Callback;

    .line 14
    .line 15
    :cond_0
    return-object p0
.end method

.method public static E(Landroid/view/ActionMode$Callback;Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-lt v0, v1, :cond_1

    .line 6
    .line 7
    const/16 v1, 0x1b

    .line 8
    .line 9
    if-gt v0, v1, :cond_1

    .line 10
    .line 11
    instance-of v0, p0, LQ/i;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    if-nez p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, LQ/i;

    .line 19
    .line 20
    invoke-direct {v0, p0, p1}, LQ/i;-><init>(Landroid/view/ActionMode$Callback;Landroid/widget/TextView;)V

    .line 21
    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static F(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 1
    const-class v0, Landroid/content/SharedPreferences;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, LE3/f;->a:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lo3/E;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lo3/E;-><init>(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/Cw;->I(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Landroid/content/SharedPreferences;

    .line 18
    .line 19
    sput-object p0, LE3/f;->a:Landroid/content/SharedPreferences;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    sget-object p0, LE3/f;->a:Landroid/content/SharedPreferences;

    .line 25
    .line 26
    monitor-exit v0

    .line 27
    return-object p0

    .line 28
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0
.end method

.method public static G(I)I
    .locals 1

    .line 1
    and-int/lit8 v0, p0, 0x1

    .line 2
    .line 3
    ushr-int/lit8 p0, p0, 0x1

    .line 4
    .line 5
    neg-int v0, v0

    .line 6
    xor-int/2addr p0, v0

    .line 7
    return p0
.end method

.method public static H(J)J
    .locals 3

    .line 1
    const-wide/16 v0, 0x1

    .line 2
    .line 3
    and-long/2addr v0, p0

    .line 4
    const/4 v2, 0x1

    .line 5
    ushr-long/2addr p0, v2

    .line 6
    neg-long v0, v0

    .line 7
    xor-long/2addr p0, v0

    .line 8
    return-wide p0
.end method

.method public static a(Lw/e;Lu/d;Ljava/util/ArrayList;I)V
    .locals 36

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v10, p1

    .line 4
    .line 5
    move-object/from16 v11, p2

    .line 6
    .line 7
    const/4 v12, 0x2

    .line 8
    if-nez p3, :cond_0

    .line 9
    .line 10
    iget v1, v0, Lw/e;->y0:I

    .line 11
    .line 12
    iget-object v2, v0, Lw/e;->B0:[Lw/b;

    .line 13
    .line 14
    move v14, v1

    .line 15
    move-object v15, v2

    .line 16
    const/16 v16, 0x0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget v1, v0, Lw/e;->z0:I

    .line 20
    .line 21
    iget-object v2, v0, Lw/e;->A0:[Lw/b;

    .line 22
    .line 23
    move v14, v1

    .line 24
    move-object v15, v2

    .line 25
    const/16 v16, 0x2

    .line 26
    .line 27
    :goto_0
    const/4 v9, 0x0

    .line 28
    :goto_1
    if-ge v9, v14, :cond_70

    .line 29
    .line 30
    aget-object v1, v15, v9

    .line 31
    .line 32
    iget-boolean v2, v1, Lw/b;->q:Z

    .line 33
    .line 34
    iget-object v8, v1, Lw/b;->a:Lw/d;

    .line 35
    .line 36
    const/4 v3, 0x3

    .line 37
    const/4 v4, 0x1

    .line 38
    const/16 v7, 0x8

    .line 39
    .line 40
    const/16 v17, 0x0

    .line 41
    .line 42
    if-nez v2, :cond_19

    .line 43
    .line 44
    iget v2, v1, Lw/b;->l:I

    .line 45
    .line 46
    mul-int/lit8 v6, v2, 0x2

    .line 47
    .line 48
    move-object v13, v8

    .line 49
    move-object/from16 v20, v13

    .line 50
    .line 51
    const/16 v18, 0x0

    .line 52
    .line 53
    :goto_2
    if-nez v18, :cond_14

    .line 54
    .line 55
    iget v5, v1, Lw/b;->i:I

    .line 56
    .line 57
    add-int/2addr v5, v4

    .line 58
    iput v5, v1, Lw/b;->i:I

    .line 59
    .line 60
    iget-object v5, v13, Lw/d;->l0:[Lw/d;

    .line 61
    .line 62
    aput-object v17, v5, v2

    .line 63
    .line 64
    iget-object v5, v13, Lw/d;->k0:[Lw/d;

    .line 65
    .line 66
    aput-object v17, v5, v2

    .line 67
    .line 68
    iget v5, v13, Lw/d;->f0:I

    .line 69
    .line 70
    iget-object v4, v13, Lw/d;->P:[Lw/c;

    .line 71
    .line 72
    if-eq v5, v7, :cond_f

    .line 73
    .line 74
    invoke-virtual {v13, v2}, Lw/d;->h(I)I

    .line 75
    .line 76
    .line 77
    aget-object v5, v4, v6

    .line 78
    .line 79
    invoke-virtual {v5}, Lw/c;->d()I

    .line 80
    .line 81
    .line 82
    add-int/lit8 v5, v6, 0x1

    .line 83
    .line 84
    aget-object v23, v4, v5

    .line 85
    .line 86
    invoke-virtual/range {v23 .. v23}, Lw/c;->d()I

    .line 87
    .line 88
    .line 89
    aget-object v23, v4, v6

    .line 90
    .line 91
    invoke-virtual/range {v23 .. v23}, Lw/c;->d()I

    .line 92
    .line 93
    .line 94
    aget-object v5, v4, v5

    .line 95
    .line 96
    invoke-virtual {v5}, Lw/c;->d()I

    .line 97
    .line 98
    .line 99
    iget-object v5, v1, Lw/b;->b:Lw/d;

    .line 100
    .line 101
    if-nez v5, :cond_1

    .line 102
    .line 103
    iput-object v13, v1, Lw/b;->b:Lw/d;

    .line 104
    .line 105
    :cond_1
    iput-object v13, v1, Lw/b;->d:Lw/d;

    .line 106
    .line 107
    iget-object v5, v13, Lw/d;->o0:[I

    .line 108
    .line 109
    aget v5, v5, v2

    .line 110
    .line 111
    if-ne v5, v3, :cond_f

    .line 112
    .line 113
    iget-object v7, v13, Lw/d;->t:[I

    .line 114
    .line 115
    aget v7, v7, v2

    .line 116
    .line 117
    if-eqz v7, :cond_3

    .line 118
    .line 119
    if-eq v7, v3, :cond_3

    .line 120
    .line 121
    if-ne v7, v12, :cond_2

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_2
    move/from16 v25, v9

    .line 125
    .line 126
    goto :goto_5

    .line 127
    :cond_3
    :goto_3
    iget v12, v1, Lw/b;->j:I

    .line 128
    .line 129
    const/16 v22, 0x1

    .line 130
    .line 131
    add-int/lit8 v12, v12, 0x1

    .line 132
    .line 133
    iput v12, v1, Lw/b;->j:I

    .line 134
    .line 135
    iget-object v12, v13, Lw/d;->j0:[F

    .line 136
    .line 137
    aget v12, v12, v2

    .line 138
    .line 139
    const/16 v21, 0x0

    .line 140
    .line 141
    cmpl-float v24, v12, v21

    .line 142
    .line 143
    if-lez v24, :cond_4

    .line 144
    .line 145
    iget v3, v1, Lw/b;->k:F

    .line 146
    .line 147
    add-float/2addr v3, v12

    .line 148
    iput v3, v1, Lw/b;->k:F

    .line 149
    .line 150
    :cond_4
    iget v3, v13, Lw/d;->f0:I

    .line 151
    .line 152
    move/from16 v25, v9

    .line 153
    .line 154
    const/16 v9, 0x8

    .line 155
    .line 156
    if-eq v3, v9, :cond_8

    .line 157
    .line 158
    const/4 v3, 0x3

    .line 159
    if-ne v5, v3, :cond_8

    .line 160
    .line 161
    if-eqz v7, :cond_5

    .line 162
    .line 163
    if-ne v7, v3, :cond_8

    .line 164
    .line 165
    :cond_5
    const/4 v3, 0x0

    .line 166
    cmpg-float v5, v12, v3

    .line 167
    .line 168
    if-gez v5, :cond_6

    .line 169
    .line 170
    const/4 v3, 0x1

    .line 171
    iput-boolean v3, v1, Lw/b;->n:Z

    .line 172
    .line 173
    goto :goto_4

    .line 174
    :cond_6
    const/4 v3, 0x1

    .line 175
    iput-boolean v3, v1, Lw/b;->o:Z

    .line 176
    .line 177
    :goto_4
    iget-object v3, v1, Lw/b;->h:Ljava/util/ArrayList;

    .line 178
    .line 179
    if-nez v3, :cond_7

    .line 180
    .line 181
    new-instance v3, Ljava/util/ArrayList;

    .line 182
    .line 183
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .line 185
    .line 186
    iput-object v3, v1, Lw/b;->h:Ljava/util/ArrayList;

    .line 187
    .line 188
    :cond_7
    iget-object v3, v1, Lw/b;->h:Ljava/util/ArrayList;

    .line 189
    .line 190
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    :cond_8
    iget-object v3, v1, Lw/b;->f:Lw/d;

    .line 194
    .line 195
    if-nez v3, :cond_9

    .line 196
    .line 197
    iput-object v13, v1, Lw/b;->f:Lw/d;

    .line 198
    .line 199
    :cond_9
    iget-object v3, v1, Lw/b;->g:Lw/d;

    .line 200
    .line 201
    if-eqz v3, :cond_a

    .line 202
    .line 203
    iget-object v3, v3, Lw/d;->k0:[Lw/d;

    .line 204
    .line 205
    aput-object v13, v3, v2

    .line 206
    .line 207
    :cond_a
    iput-object v13, v1, Lw/b;->g:Lw/d;

    .line 208
    .line 209
    :goto_5
    if-nez v2, :cond_c

    .line 210
    .line 211
    iget v3, v13, Lw/d;->r:I

    .line 212
    .line 213
    if-eqz v3, :cond_b

    .line 214
    .line 215
    goto :goto_6

    .line 216
    :cond_b
    iget v3, v13, Lw/d;->u:I

    .line 217
    .line 218
    if-nez v3, :cond_e

    .line 219
    .line 220
    iget v3, v13, Lw/d;->v:I

    .line 221
    .line 222
    goto :goto_6

    .line 223
    :cond_c
    iget v3, v13, Lw/d;->s:I

    .line 224
    .line 225
    if-eqz v3, :cond_d

    .line 226
    .line 227
    goto :goto_6

    .line 228
    :cond_d
    iget v3, v13, Lw/d;->x:I

    .line 229
    .line 230
    if-nez v3, :cond_e

    .line 231
    .line 232
    iget v3, v13, Lw/d;->y:I

    .line 233
    .line 234
    :cond_e
    :goto_6
    move-object/from16 v3, v20

    .line 235
    .line 236
    goto :goto_7

    .line 237
    :cond_f
    move/from16 v25, v9

    .line 238
    .line 239
    goto :goto_6

    .line 240
    :goto_7
    if-eq v3, v13, :cond_10

    .line 241
    .line 242
    iget-object v3, v3, Lw/d;->l0:[Lw/d;

    .line 243
    .line 244
    aput-object v13, v3, v2

    .line 245
    .line 246
    :cond_10
    add-int/lit8 v3, v6, 0x1

    .line 247
    .line 248
    aget-object v3, v4, v3

    .line 249
    .line 250
    iget-object v3, v3, Lw/c;->f:Lw/c;

    .line 251
    .line 252
    if-eqz v3, :cond_11

    .line 253
    .line 254
    iget-object v3, v3, Lw/c;->d:Lw/d;

    .line 255
    .line 256
    iget-object v4, v3, Lw/d;->P:[Lw/c;

    .line 257
    .line 258
    aget-object v4, v4, v6

    .line 259
    .line 260
    iget-object v4, v4, Lw/c;->f:Lw/c;

    .line 261
    .line 262
    if-eqz v4, :cond_11

    .line 263
    .line 264
    iget-object v4, v4, Lw/c;->d:Lw/d;

    .line 265
    .line 266
    if-eq v4, v13, :cond_12

    .line 267
    .line 268
    :cond_11
    move-object/from16 v3, v17

    .line 269
    .line 270
    :cond_12
    if-eqz v3, :cond_13

    .line 271
    .line 272
    goto :goto_8

    .line 273
    :cond_13
    move-object v3, v13

    .line 274
    const/16 v18, 0x1

    .line 275
    .line 276
    :goto_8
    move-object/from16 v20, v13

    .line 277
    .line 278
    move/from16 v9, v25

    .line 279
    .line 280
    const/4 v4, 0x1

    .line 281
    const/16 v7, 0x8

    .line 282
    .line 283
    const/4 v12, 0x2

    .line 284
    move-object v13, v3

    .line 285
    const/4 v3, 0x3

    .line 286
    goto/16 :goto_2

    .line 287
    .line 288
    :cond_14
    move/from16 v25, v9

    .line 289
    .line 290
    iget-object v3, v1, Lw/b;->b:Lw/d;

    .line 291
    .line 292
    if-eqz v3, :cond_15

    .line 293
    .line 294
    iget-object v3, v3, Lw/d;->P:[Lw/c;

    .line 295
    .line 296
    aget-object v3, v3, v6

    .line 297
    .line 298
    invoke-virtual {v3}, Lw/c;->d()I

    .line 299
    .line 300
    .line 301
    :cond_15
    iget-object v3, v1, Lw/b;->d:Lw/d;

    .line 302
    .line 303
    if-eqz v3, :cond_16

    .line 304
    .line 305
    add-int/lit8 v6, v6, 0x1

    .line 306
    .line 307
    iget-object v3, v3, Lw/d;->P:[Lw/c;

    .line 308
    .line 309
    aget-object v3, v3, v6

    .line 310
    .line 311
    invoke-virtual {v3}, Lw/c;->d()I

    .line 312
    .line 313
    .line 314
    :cond_16
    iput-object v13, v1, Lw/b;->c:Lw/d;

    .line 315
    .line 316
    if-nez v2, :cond_17

    .line 317
    .line 318
    iget-boolean v2, v1, Lw/b;->m:Z

    .line 319
    .line 320
    if-eqz v2, :cond_17

    .line 321
    .line 322
    iput-object v13, v1, Lw/b;->e:Lw/d;

    .line 323
    .line 324
    goto :goto_9

    .line 325
    :cond_17
    iput-object v8, v1, Lw/b;->e:Lw/d;

    .line 326
    .line 327
    :goto_9
    iget-boolean v2, v1, Lw/b;->o:Z

    .line 328
    .line 329
    if-eqz v2, :cond_18

    .line 330
    .line 331
    iget-boolean v2, v1, Lw/b;->n:Z

    .line 332
    .line 333
    if-eqz v2, :cond_18

    .line 334
    .line 335
    const/4 v2, 0x1

    .line 336
    goto :goto_a

    .line 337
    :cond_18
    const/4 v2, 0x0

    .line 338
    :goto_a
    iput-boolean v2, v1, Lw/b;->p:Z

    .line 339
    .line 340
    :goto_b
    const/4 v2, 0x1

    .line 341
    goto :goto_c

    .line 342
    :cond_19
    move/from16 v25, v9

    .line 343
    .line 344
    goto :goto_b

    .line 345
    :goto_c
    iput-boolean v2, v1, Lw/b;->q:Z

    .line 346
    .line 347
    if-eqz v11, :cond_1b

    .line 348
    .line 349
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 350
    .line 351
    .line 352
    move-result v2

    .line 353
    if-eqz v2, :cond_1a

    .line 354
    .line 355
    goto :goto_d

    .line 356
    :cond_1a
    move/from16 v30, v14

    .line 357
    .line 358
    move-object/from16 v31, v15

    .line 359
    .line 360
    move/from16 v23, v25

    .line 361
    .line 362
    const/16 v19, 0x0

    .line 363
    .line 364
    goto/16 :goto_4b

    .line 365
    .line 366
    :cond_1b
    :goto_d
    iget-object v12, v1, Lw/b;->c:Lw/d;

    .line 367
    .line 368
    iget-object v13, v1, Lw/b;->b:Lw/d;

    .line 369
    .line 370
    iget-object v9, v1, Lw/b;->d:Lw/d;

    .line 371
    .line 372
    iget-object v2, v1, Lw/b;->e:Lw/d;

    .line 373
    .line 374
    iget v3, v1, Lw/b;->k:F

    .line 375
    .line 376
    iget-object v4, v0, Lw/d;->o0:[I

    .line 377
    .line 378
    aget v4, v4, p3

    .line 379
    .line 380
    const/4 v7, 0x2

    .line 381
    if-ne v4, v7, :cond_1c

    .line 382
    .line 383
    const/4 v4, 0x1

    .line 384
    goto :goto_e

    .line 385
    :cond_1c
    const/4 v4, 0x0

    .line 386
    :goto_e
    if-nez p3, :cond_20

    .line 387
    .line 388
    iget v5, v2, Lw/d;->h0:I

    .line 389
    .line 390
    const/4 v6, 0x1

    .line 391
    if-nez v5, :cond_1d

    .line 392
    .line 393
    const/16 v22, 0x1

    .line 394
    .line 395
    goto :goto_f

    .line 396
    :cond_1d
    const/16 v22, 0x0

    .line 397
    .line 398
    :goto_f
    if-ne v5, v6, :cond_1e

    .line 399
    .line 400
    const/16 v18, 0x1

    .line 401
    .line 402
    goto :goto_10

    .line 403
    :cond_1e
    const/16 v18, 0x0

    .line 404
    .line 405
    :goto_10
    if-ne v5, v7, :cond_1f

    .line 406
    .line 407
    const/4 v5, 0x1

    .line 408
    goto :goto_11

    .line 409
    :cond_1f
    const/4 v5, 0x0

    .line 410
    :goto_11
    move/from16 v26, v3

    .line 411
    .line 412
    move-object v7, v8

    .line 413
    move/from16 v20, v22

    .line 414
    .line 415
    :goto_12
    const/4 v6, 0x0

    .line 416
    goto :goto_16

    .line 417
    :cond_20
    const/4 v6, 0x1

    .line 418
    iget v5, v2, Lw/d;->i0:I

    .line 419
    .line 420
    if-nez v5, :cond_21

    .line 421
    .line 422
    const/16 v18, 0x1

    .line 423
    .line 424
    goto :goto_13

    .line 425
    :cond_21
    const/16 v18, 0x0

    .line 426
    .line 427
    :goto_13
    if-ne v5, v6, :cond_22

    .line 428
    .line 429
    const/4 v6, 0x1

    .line 430
    goto :goto_14

    .line 431
    :cond_22
    const/4 v6, 0x0

    .line 432
    :goto_14
    if-ne v5, v7, :cond_23

    .line 433
    .line 434
    const/4 v5, 0x1

    .line 435
    goto :goto_15

    .line 436
    :cond_23
    const/4 v5, 0x0

    .line 437
    :goto_15
    move/from16 v26, v3

    .line 438
    .line 439
    move-object v7, v8

    .line 440
    move/from16 v20, v18

    .line 441
    .line 442
    move/from16 v18, v6

    .line 443
    .line 444
    goto :goto_12

    .line 445
    :goto_16
    iget-object v3, v0, Lw/d;->P:[Lw/c;

    .line 446
    .line 447
    if-nez v6, :cond_31

    .line 448
    .line 449
    iget-object v11, v7, Lw/d;->P:[Lw/c;

    .line 450
    .line 451
    aget-object v11, v11, v16

    .line 452
    .line 453
    if-eqz v5, :cond_24

    .line 454
    .line 455
    const/16 v27, 0x1

    .line 456
    .line 457
    goto :goto_17

    .line 458
    :cond_24
    const/16 v27, 0x4

    .line 459
    .line 460
    :goto_17
    invoke-virtual {v11}, Lw/c;->d()I

    .line 461
    .line 462
    .line 463
    move-result v28

    .line 464
    move/from16 v29, v6

    .line 465
    .line 466
    iget-object v6, v7, Lw/d;->o0:[I

    .line 467
    .line 468
    move/from16 v30, v14

    .line 469
    .line 470
    aget v14, v6, p3

    .line 471
    .line 472
    move-object/from16 v31, v15

    .line 473
    .line 474
    const/4 v15, 0x3

    .line 475
    if-ne v14, v15, :cond_25

    .line 476
    .line 477
    iget-object v14, v7, Lw/d;->t:[I

    .line 478
    .line 479
    aget v14, v14, p3

    .line 480
    .line 481
    if-nez v14, :cond_25

    .line 482
    .line 483
    const/4 v14, 0x1

    .line 484
    goto :goto_18

    .line 485
    :cond_25
    const/4 v14, 0x0

    .line 486
    :goto_18
    iget-object v15, v11, Lw/c;->f:Lw/c;

    .line 487
    .line 488
    if-eqz v15, :cond_26

    .line 489
    .line 490
    if-eq v7, v8, :cond_26

    .line 491
    .line 492
    invoke-virtual {v15}, Lw/c;->d()I

    .line 493
    .line 494
    .line 495
    move-result v15

    .line 496
    add-int v28, v15, v28

    .line 497
    .line 498
    :cond_26
    move/from16 v15, v28

    .line 499
    .line 500
    if-eqz v5, :cond_27

    .line 501
    .line 502
    if-eq v7, v8, :cond_27

    .line 503
    .line 504
    if-eq v7, v13, :cond_27

    .line 505
    .line 506
    move-object/from16 v28, v2

    .line 507
    .line 508
    const/16 v27, 0x8

    .line 509
    .line 510
    goto :goto_19

    .line 511
    :cond_27
    move-object/from16 v28, v2

    .line 512
    .line 513
    :goto_19
    iget-object v2, v11, Lw/c;->f:Lw/c;

    .line 514
    .line 515
    if-eqz v2, :cond_2b

    .line 516
    .line 517
    if-ne v7, v13, :cond_28

    .line 518
    .line 519
    move-object/from16 v32, v8

    .line 520
    .line 521
    iget-object v8, v11, Lw/c;->i:Lu/i;

    .line 522
    .line 523
    iget-object v2, v2, Lw/c;->i:Lu/i;

    .line 524
    .line 525
    move-object/from16 v33, v1

    .line 526
    .line 527
    const/4 v1, 0x6

    .line 528
    invoke-virtual {v10, v8, v2, v15, v1}, Lu/d;->f(Lu/i;Lu/i;II)V

    .line 529
    .line 530
    .line 531
    goto :goto_1a

    .line 532
    :cond_28
    move-object/from16 v33, v1

    .line 533
    .line 534
    move-object/from16 v32, v8

    .line 535
    .line 536
    iget-object v1, v11, Lw/c;->i:Lu/i;

    .line 537
    .line 538
    iget-object v2, v2, Lw/c;->i:Lu/i;

    .line 539
    .line 540
    const/16 v8, 0x8

    .line 541
    .line 542
    invoke-virtual {v10, v1, v2, v15, v8}, Lu/d;->f(Lu/i;Lu/i;II)V

    .line 543
    .line 544
    .line 545
    :goto_1a
    if-eqz v14, :cond_29

    .line 546
    .line 547
    if-nez v5, :cond_29

    .line 548
    .line 549
    const/16 v27, 0x5

    .line 550
    .line 551
    :cond_29
    if-ne v7, v13, :cond_2a

    .line 552
    .line 553
    if-eqz v5, :cond_2a

    .line 554
    .line 555
    iget-object v1, v7, Lw/d;->R:[Z

    .line 556
    .line 557
    aget-boolean v1, v1, p3

    .line 558
    .line 559
    if-eqz v1, :cond_2a

    .line 560
    .line 561
    const/4 v1, 0x5

    .line 562
    goto :goto_1b

    .line 563
    :cond_2a
    move/from16 v1, v27

    .line 564
    .line 565
    :goto_1b
    iget-object v2, v11, Lw/c;->i:Lu/i;

    .line 566
    .line 567
    iget-object v8, v11, Lw/c;->f:Lw/c;

    .line 568
    .line 569
    iget-object v8, v8, Lw/c;->i:Lu/i;

    .line 570
    .line 571
    invoke-virtual {v10, v2, v8, v15, v1}, Lu/d;->e(Lu/i;Lu/i;II)V

    .line 572
    .line 573
    .line 574
    goto :goto_1c

    .line 575
    :cond_2b
    move-object/from16 v33, v1

    .line 576
    .line 577
    move-object/from16 v32, v8

    .line 578
    .line 579
    :goto_1c
    iget-object v1, v7, Lw/d;->P:[Lw/c;

    .line 580
    .line 581
    if-eqz v4, :cond_2d

    .line 582
    .line 583
    iget v2, v7, Lw/d;->f0:I

    .line 584
    .line 585
    const/16 v8, 0x8

    .line 586
    .line 587
    if-eq v2, v8, :cond_2c

    .line 588
    .line 589
    aget v2, v6, p3

    .line 590
    .line 591
    const/4 v6, 0x3

    .line 592
    if-ne v2, v6, :cond_2c

    .line 593
    .line 594
    add-int/lit8 v2, v16, 0x1

    .line 595
    .line 596
    aget-object v2, v1, v2

    .line 597
    .line 598
    iget-object v2, v2, Lw/c;->i:Lu/i;

    .line 599
    .line 600
    aget-object v6, v1, v16

    .line 601
    .line 602
    iget-object v6, v6, Lw/c;->i:Lu/i;

    .line 603
    .line 604
    const/4 v8, 0x0

    .line 605
    const/4 v11, 0x5

    .line 606
    invoke-virtual {v10, v2, v6, v8, v11}, Lu/d;->f(Lu/i;Lu/i;II)V

    .line 607
    .line 608
    .line 609
    goto :goto_1d

    .line 610
    :cond_2c
    const/4 v8, 0x0

    .line 611
    :goto_1d
    aget-object v2, v1, v16

    .line 612
    .line 613
    iget-object v2, v2, Lw/c;->i:Lu/i;

    .line 614
    .line 615
    aget-object v3, v3, v16

    .line 616
    .line 617
    iget-object v3, v3, Lw/c;->i:Lu/i;

    .line 618
    .line 619
    const/16 v6, 0x8

    .line 620
    .line 621
    invoke-virtual {v10, v2, v3, v8, v6}, Lu/d;->f(Lu/i;Lu/i;II)V

    .line 622
    .line 623
    .line 624
    :cond_2d
    add-int/lit8 v2, v16, 0x1

    .line 625
    .line 626
    aget-object v1, v1, v2

    .line 627
    .line 628
    iget-object v1, v1, Lw/c;->f:Lw/c;

    .line 629
    .line 630
    if-eqz v1, :cond_2e

    .line 631
    .line 632
    iget-object v1, v1, Lw/c;->d:Lw/d;

    .line 633
    .line 634
    iget-object v2, v1, Lw/d;->P:[Lw/c;

    .line 635
    .line 636
    aget-object v2, v2, v16

    .line 637
    .line 638
    iget-object v2, v2, Lw/c;->f:Lw/c;

    .line 639
    .line 640
    if-eqz v2, :cond_2e

    .line 641
    .line 642
    iget-object v2, v2, Lw/c;->d:Lw/d;

    .line 643
    .line 644
    if-eq v2, v7, :cond_2f

    .line 645
    .line 646
    :cond_2e
    move-object/from16 v1, v17

    .line 647
    .line 648
    :cond_2f
    if-eqz v1, :cond_30

    .line 649
    .line 650
    move-object v7, v1

    .line 651
    move/from16 v6, v29

    .line 652
    .line 653
    goto :goto_1e

    .line 654
    :cond_30
    const/4 v6, 0x1

    .line 655
    :goto_1e
    move-object/from16 v11, p2

    .line 656
    .line 657
    move-object/from16 v2, v28

    .line 658
    .line 659
    move/from16 v14, v30

    .line 660
    .line 661
    move-object/from16 v15, v31

    .line 662
    .line 663
    move-object/from16 v8, v32

    .line 664
    .line 665
    move-object/from16 v1, v33

    .line 666
    .line 667
    goto/16 :goto_16

    .line 668
    .line 669
    :cond_31
    move-object/from16 v33, v1

    .line 670
    .line 671
    move-object/from16 v28, v2

    .line 672
    .line 673
    move-object/from16 v32, v8

    .line 674
    .line 675
    move/from16 v30, v14

    .line 676
    .line 677
    move-object/from16 v31, v15

    .line 678
    .line 679
    if-eqz v9, :cond_34

    .line 680
    .line 681
    iget-object v1, v12, Lw/d;->P:[Lw/c;

    .line 682
    .line 683
    add-int/lit8 v2, v16, 0x1

    .line 684
    .line 685
    aget-object v1, v1, v2

    .line 686
    .line 687
    iget-object v1, v1, Lw/c;->f:Lw/c;

    .line 688
    .line 689
    if-eqz v1, :cond_34

    .line 690
    .line 691
    iget-object v1, v9, Lw/d;->P:[Lw/c;

    .line 692
    .line 693
    aget-object v1, v1, v2

    .line 694
    .line 695
    iget-object v6, v9, Lw/d;->o0:[I

    .line 696
    .line 697
    aget v6, v6, p3

    .line 698
    .line 699
    const/4 v7, 0x3

    .line 700
    if-ne v6, v7, :cond_32

    .line 701
    .line 702
    iget-object v6, v9, Lw/d;->t:[I

    .line 703
    .line 704
    aget v6, v6, p3

    .line 705
    .line 706
    if-nez v6, :cond_32

    .line 707
    .line 708
    if-nez v5, :cond_32

    .line 709
    .line 710
    iget-object v6, v1, Lw/c;->f:Lw/c;

    .line 711
    .line 712
    iget-object v7, v6, Lw/c;->d:Lw/d;

    .line 713
    .line 714
    if-ne v7, v0, :cond_32

    .line 715
    .line 716
    iget-object v7, v1, Lw/c;->i:Lu/i;

    .line 717
    .line 718
    iget-object v6, v6, Lw/c;->i:Lu/i;

    .line 719
    .line 720
    invoke-virtual {v1}, Lw/c;->d()I

    .line 721
    .line 722
    .line 723
    move-result v8

    .line 724
    neg-int v8, v8

    .line 725
    const/4 v11, 0x5

    .line 726
    invoke-virtual {v10, v7, v6, v8, v11}, Lu/d;->e(Lu/i;Lu/i;II)V

    .line 727
    .line 728
    .line 729
    goto :goto_1f

    .line 730
    :cond_32
    const/4 v11, 0x5

    .line 731
    if-eqz v5, :cond_33

    .line 732
    .line 733
    iget-object v6, v1, Lw/c;->f:Lw/c;

    .line 734
    .line 735
    iget-object v7, v6, Lw/c;->d:Lw/d;

    .line 736
    .line 737
    if-ne v7, v0, :cond_33

    .line 738
    .line 739
    iget-object v7, v1, Lw/c;->i:Lu/i;

    .line 740
    .line 741
    iget-object v6, v6, Lw/c;->i:Lu/i;

    .line 742
    .line 743
    invoke-virtual {v1}, Lw/c;->d()I

    .line 744
    .line 745
    .line 746
    move-result v8

    .line 747
    neg-int v8, v8

    .line 748
    const/4 v14, 0x4

    .line 749
    invoke-virtual {v10, v7, v6, v8, v14}, Lu/d;->e(Lu/i;Lu/i;II)V

    .line 750
    .line 751
    .line 752
    :cond_33
    :goto_1f
    iget-object v6, v1, Lw/c;->i:Lu/i;

    .line 753
    .line 754
    iget-object v7, v12, Lw/d;->P:[Lw/c;

    .line 755
    .line 756
    aget-object v2, v7, v2

    .line 757
    .line 758
    iget-object v2, v2, Lw/c;->f:Lw/c;

    .line 759
    .line 760
    iget-object v2, v2, Lw/c;->i:Lu/i;

    .line 761
    .line 762
    invoke-virtual {v1}, Lw/c;->d()I

    .line 763
    .line 764
    .line 765
    move-result v1

    .line 766
    neg-int v1, v1

    .line 767
    const/4 v7, 0x6

    .line 768
    invoke-virtual {v10, v6, v2, v1, v7}, Lu/d;->g(Lu/i;Lu/i;II)V

    .line 769
    .line 770
    .line 771
    goto :goto_20

    .line 772
    :cond_34
    const/4 v11, 0x5

    .line 773
    :goto_20
    if-eqz v4, :cond_35

    .line 774
    .line 775
    add-int/lit8 v1, v16, 0x1

    .line 776
    .line 777
    aget-object v2, v3, v1

    .line 778
    .line 779
    iget-object v2, v2, Lw/c;->i:Lu/i;

    .line 780
    .line 781
    iget-object v3, v12, Lw/d;->P:[Lw/c;

    .line 782
    .line 783
    aget-object v1, v3, v1

    .line 784
    .line 785
    iget-object v3, v1, Lw/c;->i:Lu/i;

    .line 786
    .line 787
    invoke-virtual {v1}, Lw/c;->d()I

    .line 788
    .line 789
    .line 790
    move-result v1

    .line 791
    const/16 v4, 0x8

    .line 792
    .line 793
    invoke-virtual {v10, v2, v3, v1, v4}, Lu/d;->f(Lu/i;Lu/i;II)V

    .line 794
    .line 795
    .line 796
    :cond_35
    move-object/from16 v1, v33

    .line 797
    .line 798
    iget-object v2, v1, Lw/b;->h:Ljava/util/ArrayList;

    .line 799
    .line 800
    if-eqz v2, :cond_3f

    .line 801
    .line 802
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 803
    .line 804
    .line 805
    move-result v3

    .line 806
    const/4 v4, 0x1

    .line 807
    if-le v3, v4, :cond_3f

    .line 808
    .line 809
    iget-boolean v6, v1, Lw/b;->n:Z

    .line 810
    .line 811
    if-eqz v6, :cond_36

    .line 812
    .line 813
    iget-boolean v6, v1, Lw/b;->p:Z

    .line 814
    .line 815
    if-nez v6, :cond_36

    .line 816
    .line 817
    iget v6, v1, Lw/b;->j:I

    .line 818
    .line 819
    int-to-float v6, v6

    .line 820
    goto :goto_21

    .line 821
    :cond_36
    move/from16 v6, v26

    .line 822
    .line 823
    :goto_21
    move-object/from16 v14, v17

    .line 824
    .line 825
    const/4 v7, 0x0

    .line 826
    const/4 v8, 0x0

    .line 827
    :goto_22
    if-ge v8, v3, :cond_3f

    .line 828
    .line 829
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 830
    .line 831
    .line 832
    move-result-object v15

    .line 833
    check-cast v15, Lw/d;

    .line 834
    .line 835
    iget-object v4, v15, Lw/d;->j0:[F

    .line 836
    .line 837
    aget v4, v4, p3

    .line 838
    .line 839
    iget-object v11, v15, Lw/d;->P:[Lw/c;

    .line 840
    .line 841
    const/16 v21, 0x0

    .line 842
    .line 843
    cmpg-float v24, v4, v21

    .line 844
    .line 845
    if-gez v24, :cond_38

    .line 846
    .line 847
    iget-boolean v4, v1, Lw/b;->p:Z

    .line 848
    .line 849
    if-eqz v4, :cond_37

    .line 850
    .line 851
    add-int/lit8 v0, v16, 0x1

    .line 852
    .line 853
    aget-object v0, v11, v0

    .line 854
    .line 855
    iget-object v0, v0, Lw/c;->i:Lu/i;

    .line 856
    .line 857
    aget-object v4, v11, v16

    .line 858
    .line 859
    iget-object v4, v4, Lw/c;->i:Lu/i;

    .line 860
    .line 861
    const/4 v11, 0x0

    .line 862
    const/4 v15, 0x4

    .line 863
    invoke-virtual {v10, v0, v4, v11, v15}, Lu/d;->e(Lu/i;Lu/i;II)V

    .line 864
    .line 865
    .line 866
    const/16 v24, 0x4

    .line 867
    .line 868
    goto :goto_25

    .line 869
    :cond_37
    const/16 v24, 0x4

    .line 870
    .line 871
    const/high16 v4, 0x3f800000    # 1.0f

    .line 872
    .line 873
    :goto_23
    const/16 v21, 0x0

    .line 874
    .line 875
    goto :goto_24

    .line 876
    :cond_38
    const/16 v24, 0x4

    .line 877
    .line 878
    goto :goto_23

    .line 879
    :goto_24
    cmpl-float v26, v4, v21

    .line 880
    .line 881
    if-nez v26, :cond_39

    .line 882
    .line 883
    add-int/lit8 v0, v16, 0x1

    .line 884
    .line 885
    aget-object v0, v11, v0

    .line 886
    .line 887
    iget-object v0, v0, Lw/c;->i:Lu/i;

    .line 888
    .line 889
    aget-object v4, v11, v16

    .line 890
    .line 891
    iget-object v4, v4, Lw/c;->i:Lu/i;

    .line 892
    .line 893
    const/4 v11, 0x0

    .line 894
    const/16 v15, 0x8

    .line 895
    .line 896
    invoke-virtual {v10, v0, v4, v11, v15}, Lu/d;->e(Lu/i;Lu/i;II)V

    .line 897
    .line 898
    .line 899
    :goto_25
    move-object/from16 v21, v1

    .line 900
    .line 901
    move-object/from16 v29, v2

    .line 902
    .line 903
    move/from16 v27, v3

    .line 904
    .line 905
    const/16 v19, 0x0

    .line 906
    .line 907
    goto/16 :goto_29

    .line 908
    .line 909
    :cond_39
    const/16 v19, 0x0

    .line 910
    .line 911
    if-eqz v14, :cond_3e

    .line 912
    .line 913
    iget-object v14, v14, Lw/d;->P:[Lw/c;

    .line 914
    .line 915
    aget-object v0, v14, v16

    .line 916
    .line 917
    iget-object v0, v0, Lw/c;->i:Lu/i;

    .line 918
    .line 919
    add-int/lit8 v27, v16, 0x1

    .line 920
    .line 921
    aget-object v14, v14, v27

    .line 922
    .line 923
    iget-object v14, v14, Lw/c;->i:Lu/i;

    .line 924
    .line 925
    move-object/from16 v29, v2

    .line 926
    .line 927
    aget-object v2, v11, v16

    .line 928
    .line 929
    iget-object v2, v2, Lw/c;->i:Lu/i;

    .line 930
    .line 931
    aget-object v11, v11, v27

    .line 932
    .line 933
    iget-object v11, v11, Lw/c;->i:Lu/i;

    .line 934
    .line 935
    move/from16 v27, v3

    .line 936
    .line 937
    invoke-virtual/range {p1 .. p1}, Lu/d;->l()Lu/c;

    .line 938
    .line 939
    .line 940
    move-result-object v3

    .line 941
    move-object/from16 v33, v15

    .line 942
    .line 943
    const/4 v15, 0x0

    .line 944
    iput v15, v3, Lu/c;->b:F

    .line 945
    .line 946
    move-object/from16 v21, v1

    .line 947
    .line 948
    const/high16 v1, -0x40800000    # -1.0f

    .line 949
    .line 950
    cmpl-float v34, v6, v15

    .line 951
    .line 952
    if-eqz v34, :cond_3a

    .line 953
    .line 954
    cmpl-float v34, v7, v4

    .line 955
    .line 956
    if-nez v34, :cond_3b

    .line 957
    .line 958
    :cond_3a
    const/high16 v15, 0x3f800000    # 1.0f

    .line 959
    .line 960
    goto :goto_26

    .line 961
    :cond_3b
    cmpl-float v34, v7, v15

    .line 962
    .line 963
    if-nez v34, :cond_3c

    .line 964
    .line 965
    iget-object v2, v3, Lu/c;->d:Lu/b;

    .line 966
    .line 967
    const/high16 v7, 0x3f800000    # 1.0f

    .line 968
    .line 969
    invoke-interface {v2, v0, v7}, Lu/b;->j(Lu/i;F)V

    .line 970
    .line 971
    .line 972
    iget-object v0, v3, Lu/c;->d:Lu/b;

    .line 973
    .line 974
    invoke-interface {v0, v14, v1}, Lu/b;->j(Lu/i;F)V

    .line 975
    .line 976
    .line 977
    goto :goto_27

    .line 978
    :cond_3c
    const/high16 v15, 0x3f800000    # 1.0f

    .line 979
    .line 980
    if-nez v26, :cond_3d

    .line 981
    .line 982
    iget-object v0, v3, Lu/c;->d:Lu/b;

    .line 983
    .line 984
    invoke-interface {v0, v2, v15}, Lu/b;->j(Lu/i;F)V

    .line 985
    .line 986
    .line 987
    iget-object v0, v3, Lu/c;->d:Lu/b;

    .line 988
    .line 989
    invoke-interface {v0, v11, v1}, Lu/b;->j(Lu/i;F)V

    .line 990
    .line 991
    .line 992
    goto :goto_27

    .line 993
    :cond_3d
    div-float/2addr v7, v6

    .line 994
    div-float v26, v4, v6

    .line 995
    .line 996
    div-float v7, v7, v26

    .line 997
    .line 998
    iget-object v1, v3, Lu/c;->d:Lu/b;

    .line 999
    .line 1000
    invoke-interface {v1, v0, v15}, Lu/b;->j(Lu/i;F)V

    .line 1001
    .line 1002
    .line 1003
    iget-object v0, v3, Lu/c;->d:Lu/b;

    .line 1004
    .line 1005
    const/high16 v1, -0x40800000    # -1.0f

    .line 1006
    .line 1007
    invoke-interface {v0, v14, v1}, Lu/b;->j(Lu/i;F)V

    .line 1008
    .line 1009
    .line 1010
    iget-object v0, v3, Lu/c;->d:Lu/b;

    .line 1011
    .line 1012
    invoke-interface {v0, v11, v7}, Lu/b;->j(Lu/i;F)V

    .line 1013
    .line 1014
    .line 1015
    iget-object v0, v3, Lu/c;->d:Lu/b;

    .line 1016
    .line 1017
    neg-float v1, v7

    .line 1018
    invoke-interface {v0, v2, v1}, Lu/b;->j(Lu/i;F)V

    .line 1019
    .line 1020
    .line 1021
    goto :goto_27

    .line 1022
    :goto_26
    iget-object v7, v3, Lu/c;->d:Lu/b;

    .line 1023
    .line 1024
    invoke-interface {v7, v0, v15}, Lu/b;->j(Lu/i;F)V

    .line 1025
    .line 1026
    .line 1027
    iget-object v0, v3, Lu/c;->d:Lu/b;

    .line 1028
    .line 1029
    invoke-interface {v0, v14, v1}, Lu/b;->j(Lu/i;F)V

    .line 1030
    .line 1031
    .line 1032
    iget-object v0, v3, Lu/c;->d:Lu/b;

    .line 1033
    .line 1034
    invoke-interface {v0, v11, v15}, Lu/b;->j(Lu/i;F)V

    .line 1035
    .line 1036
    .line 1037
    iget-object v0, v3, Lu/c;->d:Lu/b;

    .line 1038
    .line 1039
    invoke-interface {v0, v2, v1}, Lu/b;->j(Lu/i;F)V

    .line 1040
    .line 1041
    .line 1042
    :goto_27
    invoke-virtual {v10, v3}, Lu/d;->c(Lu/c;)V

    .line 1043
    .line 1044
    .line 1045
    goto :goto_28

    .line 1046
    :cond_3e
    move-object/from16 v21, v1

    .line 1047
    .line 1048
    move-object/from16 v29, v2

    .line 1049
    .line 1050
    move/from16 v27, v3

    .line 1051
    .line 1052
    move-object/from16 v33, v15

    .line 1053
    .line 1054
    :goto_28
    move v7, v4

    .line 1055
    move-object/from16 v14, v33

    .line 1056
    .line 1057
    :goto_29
    add-int/lit8 v8, v8, 0x1

    .line 1058
    .line 1059
    const/4 v4, 0x1

    .line 1060
    const/4 v11, 0x5

    .line 1061
    move-object/from16 v0, p0

    .line 1062
    .line 1063
    move-object/from16 v1, v21

    .line 1064
    .line 1065
    move/from16 v3, v27

    .line 1066
    .line 1067
    move-object/from16 v2, v29

    .line 1068
    .line 1069
    goto/16 :goto_22

    .line 1070
    .line 1071
    :cond_3f
    move-object/from16 v21, v1

    .line 1072
    .line 1073
    const/16 v19, 0x0

    .line 1074
    .line 1075
    const/16 v24, 0x4

    .line 1076
    .line 1077
    if-eqz v13, :cond_41

    .line 1078
    .line 1079
    if-eq v13, v9, :cond_40

    .line 1080
    .line 1081
    if-eqz v5, :cond_41

    .line 1082
    .line 1083
    :cond_40
    move-object/from16 v0, v32

    .line 1084
    .line 1085
    goto :goto_2a

    .line 1086
    :cond_41
    move-object v14, v9

    .line 1087
    move/from16 v15, v25

    .line 1088
    .line 1089
    move-object/from16 v0, v32

    .line 1090
    .line 1091
    const/4 v11, 0x2

    .line 1092
    goto/16 :goto_30

    .line 1093
    .line 1094
    :goto_2a
    iget-object v0, v0, Lw/d;->P:[Lw/c;

    .line 1095
    .line 1096
    aget-object v0, v0, v16

    .line 1097
    .line 1098
    iget-object v1, v12, Lw/d;->P:[Lw/c;

    .line 1099
    .line 1100
    add-int/lit8 v2, v16, 0x1

    .line 1101
    .line 1102
    aget-object v1, v1, v2

    .line 1103
    .line 1104
    iget-object v0, v0, Lw/c;->f:Lw/c;

    .line 1105
    .line 1106
    if-eqz v0, :cond_42

    .line 1107
    .line 1108
    iget-object v0, v0, Lw/c;->i:Lu/i;

    .line 1109
    .line 1110
    move-object v3, v0

    .line 1111
    goto :goto_2b

    .line 1112
    :cond_42
    move-object/from16 v3, v17

    .line 1113
    .line 1114
    :goto_2b
    iget-object v0, v1, Lw/c;->f:Lw/c;

    .line 1115
    .line 1116
    if-eqz v0, :cond_43

    .line 1117
    .line 1118
    iget-object v0, v0, Lw/c;->i:Lu/i;

    .line 1119
    .line 1120
    move-object v6, v0

    .line 1121
    goto :goto_2c

    .line 1122
    :cond_43
    move-object/from16 v6, v17

    .line 1123
    .line 1124
    :goto_2c
    iget-object v0, v13, Lw/d;->P:[Lw/c;

    .line 1125
    .line 1126
    aget-object v0, v0, v16

    .line 1127
    .line 1128
    if-eqz v9, :cond_44

    .line 1129
    .line 1130
    iget-object v1, v9, Lw/d;->P:[Lw/c;

    .line 1131
    .line 1132
    aget-object v1, v1, v2

    .line 1133
    .line 1134
    :cond_44
    if-eqz v3, :cond_46

    .line 1135
    .line 1136
    if-eqz v6, :cond_46

    .line 1137
    .line 1138
    if-nez p3, :cond_45

    .line 1139
    .line 1140
    move-object/from16 v2, v28

    .line 1141
    .line 1142
    iget v2, v2, Lw/d;->c0:F

    .line 1143
    .line 1144
    :goto_2d
    move v5, v2

    .line 1145
    goto :goto_2e

    .line 1146
    :cond_45
    move-object/from16 v2, v28

    .line 1147
    .line 1148
    iget v2, v2, Lw/d;->d0:F

    .line 1149
    .line 1150
    goto :goto_2d

    .line 1151
    :goto_2e
    invoke-virtual {v0}, Lw/c;->d()I

    .line 1152
    .line 1153
    .line 1154
    move-result v4

    .line 1155
    invoke-virtual {v1}, Lw/c;->d()I

    .line 1156
    .line 1157
    .line 1158
    move-result v8

    .line 1159
    iget-object v2, v0, Lw/c;->i:Lu/i;

    .line 1160
    .line 1161
    iget-object v7, v1, Lw/c;->i:Lu/i;

    .line 1162
    .line 1163
    const/4 v0, 0x7

    .line 1164
    move-object/from16 v1, p1

    .line 1165
    .line 1166
    const/4 v11, 0x2

    .line 1167
    move-object v14, v9

    .line 1168
    move/from16 v15, v25

    .line 1169
    .line 1170
    move v9, v0

    .line 1171
    invoke-virtual/range {v1 .. v9}, Lu/d;->b(Lu/i;Lu/i;IFLu/i;Lu/i;II)V

    .line 1172
    .line 1173
    .line 1174
    goto :goto_2f

    .line 1175
    :cond_46
    move-object v14, v9

    .line 1176
    move/from16 v15, v25

    .line 1177
    .line 1178
    const/4 v11, 0x2

    .line 1179
    :cond_47
    :goto_2f
    move/from16 v23, v15

    .line 1180
    .line 1181
    goto/16 :goto_47

    .line 1182
    .line 1183
    :goto_30
    if-eqz v20, :cond_58

    .line 1184
    .line 1185
    if-eqz v13, :cond_58

    .line 1186
    .line 1187
    move-object/from16 v1, v21

    .line 1188
    .line 1189
    iget v2, v1, Lw/b;->j:I

    .line 1190
    .line 1191
    if-lez v2, :cond_48

    .line 1192
    .line 1193
    iget v1, v1, Lw/b;->i:I

    .line 1194
    .line 1195
    if-ne v1, v2, :cond_48

    .line 1196
    .line 1197
    const/16 v22, 0x1

    .line 1198
    .line 1199
    goto :goto_31

    .line 1200
    :cond_48
    const/16 v22, 0x0

    .line 1201
    .line 1202
    :goto_31
    move-object v8, v13

    .line 1203
    move-object v9, v8

    .line 1204
    :goto_32
    if-eqz v9, :cond_47

    .line 1205
    .line 1206
    iget-object v1, v9, Lw/d;->l0:[Lw/d;

    .line 1207
    .line 1208
    aget-object v1, v1, p3

    .line 1209
    .line 1210
    move-object v7, v1

    .line 1211
    :goto_33
    if-eqz v7, :cond_49

    .line 1212
    .line 1213
    iget v1, v7, Lw/d;->f0:I

    .line 1214
    .line 1215
    const/16 v6, 0x8

    .line 1216
    .line 1217
    if-ne v1, v6, :cond_4a

    .line 1218
    .line 1219
    iget-object v1, v7, Lw/d;->l0:[Lw/d;

    .line 1220
    .line 1221
    aget-object v7, v1, p3

    .line 1222
    .line 1223
    goto :goto_33

    .line 1224
    :cond_49
    const/16 v6, 0x8

    .line 1225
    .line 1226
    :cond_4a
    if-nez v7, :cond_4c

    .line 1227
    .line 1228
    if-ne v9, v14, :cond_4b

    .line 1229
    .line 1230
    goto :goto_34

    .line 1231
    :cond_4b
    move-object/from16 v21, v7

    .line 1232
    .line 1233
    move-object/from16 v23, v8

    .line 1234
    .line 1235
    move-object v11, v9

    .line 1236
    goto/16 :goto_39

    .line 1237
    .line 1238
    :cond_4c
    :goto_34
    iget-object v1, v9, Lw/d;->P:[Lw/c;

    .line 1239
    .line 1240
    aget-object v2, v1, v16

    .line 1241
    .line 1242
    iget-object v3, v2, Lw/c;->i:Lu/i;

    .line 1243
    .line 1244
    iget-object v4, v2, Lw/c;->f:Lw/c;

    .line 1245
    .line 1246
    if-eqz v4, :cond_4d

    .line 1247
    .line 1248
    iget-object v4, v4, Lw/c;->i:Lu/i;

    .line 1249
    .line 1250
    goto :goto_35

    .line 1251
    :cond_4d
    move-object/from16 v4, v17

    .line 1252
    .line 1253
    :goto_35
    if-eq v8, v9, :cond_4e

    .line 1254
    .line 1255
    iget-object v4, v8, Lw/d;->P:[Lw/c;

    .line 1256
    .line 1257
    add-int/lit8 v5, v16, 0x1

    .line 1258
    .line 1259
    aget-object v4, v4, v5

    .line 1260
    .line 1261
    iget-object v4, v4, Lw/c;->i:Lu/i;

    .line 1262
    .line 1263
    goto :goto_36

    .line 1264
    :cond_4e
    if-ne v9, v13, :cond_50

    .line 1265
    .line 1266
    iget-object v4, v0, Lw/d;->P:[Lw/c;

    .line 1267
    .line 1268
    aget-object v4, v4, v16

    .line 1269
    .line 1270
    iget-object v4, v4, Lw/c;->f:Lw/c;

    .line 1271
    .line 1272
    if-eqz v4, :cond_4f

    .line 1273
    .line 1274
    iget-object v4, v4, Lw/c;->i:Lu/i;

    .line 1275
    .line 1276
    goto :goto_36

    .line 1277
    :cond_4f
    move-object/from16 v4, v17

    .line 1278
    .line 1279
    :cond_50
    :goto_36
    invoke-virtual {v2}, Lw/c;->d()I

    .line 1280
    .line 1281
    .line 1282
    move-result v2

    .line 1283
    add-int/lit8 v5, v16, 0x1

    .line 1284
    .line 1285
    aget-object v21, v1, v5

    .line 1286
    .line 1287
    invoke-virtual/range {v21 .. v21}, Lw/c;->d()I

    .line 1288
    .line 1289
    .line 1290
    move-result v21

    .line 1291
    if-eqz v7, :cond_51

    .line 1292
    .line 1293
    iget-object v6, v7, Lw/d;->P:[Lw/c;

    .line 1294
    .line 1295
    aget-object v6, v6, v16

    .line 1296
    .line 1297
    iget-object v11, v6, Lw/c;->i:Lu/i;

    .line 1298
    .line 1299
    goto :goto_37

    .line 1300
    :cond_51
    iget-object v6, v12, Lw/d;->P:[Lw/c;

    .line 1301
    .line 1302
    aget-object v6, v6, v5

    .line 1303
    .line 1304
    iget-object v6, v6, Lw/c;->f:Lw/c;

    .line 1305
    .line 1306
    if-eqz v6, :cond_52

    .line 1307
    .line 1308
    iget-object v11, v6, Lw/c;->i:Lu/i;

    .line 1309
    .line 1310
    goto :goto_37

    .line 1311
    :cond_52
    move-object/from16 v11, v17

    .line 1312
    .line 1313
    :goto_37
    aget-object v1, v1, v5

    .line 1314
    .line 1315
    iget-object v1, v1, Lw/c;->i:Lu/i;

    .line 1316
    .line 1317
    if-eqz v6, :cond_53

    .line 1318
    .line 1319
    invoke-virtual {v6}, Lw/c;->d()I

    .line 1320
    .line 1321
    .line 1322
    move-result v6

    .line 1323
    add-int v21, v6, v21

    .line 1324
    .line 1325
    :cond_53
    iget-object v6, v8, Lw/d;->P:[Lw/c;

    .line 1326
    .line 1327
    aget-object v6, v6, v5

    .line 1328
    .line 1329
    invoke-virtual {v6}, Lw/c;->d()I

    .line 1330
    .line 1331
    .line 1332
    move-result v6

    .line 1333
    add-int/2addr v6, v2

    .line 1334
    if-eqz v3, :cond_4b

    .line 1335
    .line 1336
    if-eqz v4, :cond_4b

    .line 1337
    .line 1338
    if-eqz v11, :cond_4b

    .line 1339
    .line 1340
    if-eqz v1, :cond_4b

    .line 1341
    .line 1342
    if-ne v9, v13, :cond_54

    .line 1343
    .line 1344
    iget-object v2, v13, Lw/d;->P:[Lw/c;

    .line 1345
    .line 1346
    aget-object v2, v2, v16

    .line 1347
    .line 1348
    invoke-virtual {v2}, Lw/c;->d()I

    .line 1349
    .line 1350
    .line 1351
    move-result v2

    .line 1352
    move v6, v2

    .line 1353
    :cond_54
    if-ne v9, v14, :cond_55

    .line 1354
    .line 1355
    iget-object v2, v14, Lw/d;->P:[Lw/c;

    .line 1356
    .line 1357
    aget-object v2, v2, v5

    .line 1358
    .line 1359
    invoke-virtual {v2}, Lw/c;->d()I

    .line 1360
    .line 1361
    .line 1362
    move-result v2

    .line 1363
    move/from16 v21, v2

    .line 1364
    .line 1365
    :cond_55
    if-eqz v22, :cond_56

    .line 1366
    .line 1367
    const/16 v24, 0x8

    .line 1368
    .line 1369
    goto :goto_38

    .line 1370
    :cond_56
    const/16 v24, 0x5

    .line 1371
    .line 1372
    :goto_38
    const/high16 v5, 0x3f000000    # 0.5f

    .line 1373
    .line 1374
    move-object/from16 v25, v1

    .line 1375
    .line 1376
    move-object/from16 v1, p1

    .line 1377
    .line 1378
    move-object v2, v3

    .line 1379
    move-object v3, v4

    .line 1380
    move v4, v6

    .line 1381
    const/16 v23, 0x8

    .line 1382
    .line 1383
    move-object v6, v11

    .line 1384
    move-object v11, v7

    .line 1385
    move-object/from16 v7, v25

    .line 1386
    .line 1387
    move-object/from16 v23, v8

    .line 1388
    .line 1389
    move/from16 v8, v21

    .line 1390
    .line 1391
    move-object/from16 v21, v11

    .line 1392
    .line 1393
    move-object v11, v9

    .line 1394
    move/from16 v9, v24

    .line 1395
    .line 1396
    invoke-virtual/range {v1 .. v9}, Lu/d;->b(Lu/i;Lu/i;IFLu/i;Lu/i;II)V

    .line 1397
    .line 1398
    .line 1399
    :goto_39
    iget v1, v11, Lw/d;->f0:I

    .line 1400
    .line 1401
    const/16 v9, 0x8

    .line 1402
    .line 1403
    if-eq v1, v9, :cond_57

    .line 1404
    .line 1405
    move-object v8, v11

    .line 1406
    goto :goto_3a

    .line 1407
    :cond_57
    move-object/from16 v8, v23

    .line 1408
    .line 1409
    :goto_3a
    move-object/from16 v9, v21

    .line 1410
    .line 1411
    const/4 v11, 0x2

    .line 1412
    goto/16 :goto_32

    .line 1413
    .line 1414
    :cond_58
    move-object/from16 v1, v21

    .line 1415
    .line 1416
    const/16 v9, 0x8

    .line 1417
    .line 1418
    if-eqz v18, :cond_47

    .line 1419
    .line 1420
    if-eqz v13, :cond_47

    .line 1421
    .line 1422
    iget v2, v1, Lw/b;->j:I

    .line 1423
    .line 1424
    if-lez v2, :cond_59

    .line 1425
    .line 1426
    iget v1, v1, Lw/b;->i:I

    .line 1427
    .line 1428
    if-ne v1, v2, :cond_59

    .line 1429
    .line 1430
    const/16 v22, 0x1

    .line 1431
    .line 1432
    goto :goto_3b

    .line 1433
    :cond_59
    const/16 v22, 0x0

    .line 1434
    .line 1435
    :goto_3b
    move-object v8, v13

    .line 1436
    move-object v11, v8

    .line 1437
    :goto_3c
    if-eqz v11, :cond_64

    .line 1438
    .line 1439
    iget-object v1, v11, Lw/d;->l0:[Lw/d;

    .line 1440
    .line 1441
    aget-object v1, v1, p3

    .line 1442
    .line 1443
    :goto_3d
    if-eqz v1, :cond_5a

    .line 1444
    .line 1445
    iget v2, v1, Lw/d;->f0:I

    .line 1446
    .line 1447
    if-ne v2, v9, :cond_5a

    .line 1448
    .line 1449
    iget-object v1, v1, Lw/d;->l0:[Lw/d;

    .line 1450
    .line 1451
    aget-object v1, v1, p3

    .line 1452
    .line 1453
    goto :goto_3d

    .line 1454
    :cond_5a
    if-eq v11, v13, :cond_62

    .line 1455
    .line 1456
    if-eq v11, v14, :cond_62

    .line 1457
    .line 1458
    if-eqz v1, :cond_62

    .line 1459
    .line 1460
    if-ne v1, v14, :cond_5b

    .line 1461
    .line 1462
    move-object/from16 v7, v17

    .line 1463
    .line 1464
    goto :goto_3e

    .line 1465
    :cond_5b
    move-object v7, v1

    .line 1466
    :goto_3e
    iget-object v1, v11, Lw/d;->P:[Lw/c;

    .line 1467
    .line 1468
    aget-object v2, v1, v16

    .line 1469
    .line 1470
    iget-object v3, v2, Lw/c;->i:Lu/i;

    .line 1471
    .line 1472
    iget-object v4, v8, Lw/d;->P:[Lw/c;

    .line 1473
    .line 1474
    add-int/lit8 v5, v16, 0x1

    .line 1475
    .line 1476
    aget-object v4, v4, v5

    .line 1477
    .line 1478
    iget-object v4, v4, Lw/c;->i:Lu/i;

    .line 1479
    .line 1480
    invoke-virtual {v2}, Lw/c;->d()I

    .line 1481
    .line 1482
    .line 1483
    move-result v2

    .line 1484
    aget-object v6, v1, v5

    .line 1485
    .line 1486
    invoke-virtual {v6}, Lw/c;->d()I

    .line 1487
    .line 1488
    .line 1489
    move-result v6

    .line 1490
    if-eqz v7, :cond_5d

    .line 1491
    .line 1492
    iget-object v1, v7, Lw/d;->P:[Lw/c;

    .line 1493
    .line 1494
    aget-object v1, v1, v16

    .line 1495
    .line 1496
    iget-object v9, v1, Lw/c;->i:Lu/i;

    .line 1497
    .line 1498
    move-object/from16 v21, v7

    .line 1499
    .line 1500
    iget-object v7, v1, Lw/c;->f:Lw/c;

    .line 1501
    .line 1502
    if-eqz v7, :cond_5c

    .line 1503
    .line 1504
    iget-object v7, v7, Lw/c;->i:Lu/i;

    .line 1505
    .line 1506
    goto :goto_40

    .line 1507
    :cond_5c
    move-object/from16 v7, v17

    .line 1508
    .line 1509
    goto :goto_40

    .line 1510
    :cond_5d
    move-object/from16 v21, v7

    .line 1511
    .line 1512
    iget-object v7, v14, Lw/d;->P:[Lw/c;

    .line 1513
    .line 1514
    aget-object v7, v7, v16

    .line 1515
    .line 1516
    if-eqz v7, :cond_5e

    .line 1517
    .line 1518
    iget-object v9, v7, Lw/c;->i:Lu/i;

    .line 1519
    .line 1520
    goto :goto_3f

    .line 1521
    :cond_5e
    move-object/from16 v9, v17

    .line 1522
    .line 1523
    :goto_3f
    aget-object v1, v1, v5

    .line 1524
    .line 1525
    iget-object v1, v1, Lw/c;->i:Lu/i;

    .line 1526
    .line 1527
    move-object/from16 v35, v7

    .line 1528
    .line 1529
    move-object v7, v1

    .line 1530
    move-object/from16 v1, v35

    .line 1531
    .line 1532
    :goto_40
    if-eqz v1, :cond_5f

    .line 1533
    .line 1534
    invoke-virtual {v1}, Lw/c;->d()I

    .line 1535
    .line 1536
    .line 1537
    move-result v1

    .line 1538
    add-int/2addr v1, v6

    .line 1539
    move/from16 v23, v1

    .line 1540
    .line 1541
    goto :goto_41

    .line 1542
    :cond_5f
    move/from16 v23, v6

    .line 1543
    .line 1544
    :goto_41
    iget-object v1, v8, Lw/d;->P:[Lw/c;

    .line 1545
    .line 1546
    aget-object v1, v1, v5

    .line 1547
    .line 1548
    invoke-virtual {v1}, Lw/c;->d()I

    .line 1549
    .line 1550
    .line 1551
    move-result v1

    .line 1552
    add-int v5, v1, v2

    .line 1553
    .line 1554
    if-eqz v22, :cond_60

    .line 1555
    .line 1556
    const/16 v25, 0x8

    .line 1557
    .line 1558
    goto :goto_42

    .line 1559
    :cond_60
    const/16 v25, 0x4

    .line 1560
    .line 1561
    :goto_42
    if-eqz v3, :cond_61

    .line 1562
    .line 1563
    if-eqz v4, :cond_61

    .line 1564
    .line 1565
    if-eqz v9, :cond_61

    .line 1566
    .line 1567
    if-eqz v7, :cond_61

    .line 1568
    .line 1569
    const/high16 v6, 0x3f000000    # 0.5f

    .line 1570
    .line 1571
    move-object/from16 v1, p1

    .line 1572
    .line 1573
    move-object v2, v3

    .line 1574
    move-object v3, v4

    .line 1575
    move v4, v5

    .line 1576
    move v5, v6

    .line 1577
    move-object v6, v9

    .line 1578
    move-object/from16 v26, v8

    .line 1579
    .line 1580
    move/from16 v8, v23

    .line 1581
    .line 1582
    move/from16 v23, v15

    .line 1583
    .line 1584
    const/16 v15, 0x8

    .line 1585
    .line 1586
    move/from16 v9, v25

    .line 1587
    .line 1588
    invoke-virtual/range {v1 .. v9}, Lu/d;->b(Lu/i;Lu/i;IFLu/i;Lu/i;II)V

    .line 1589
    .line 1590
    .line 1591
    goto :goto_43

    .line 1592
    :cond_61
    move-object/from16 v26, v8

    .line 1593
    .line 1594
    move/from16 v23, v15

    .line 1595
    .line 1596
    const/16 v15, 0x8

    .line 1597
    .line 1598
    :goto_43
    move-object/from16 v1, v21

    .line 1599
    .line 1600
    goto :goto_44

    .line 1601
    :cond_62
    move-object/from16 v26, v8

    .line 1602
    .line 1603
    move/from16 v23, v15

    .line 1604
    .line 1605
    const/16 v15, 0x8

    .line 1606
    .line 1607
    :goto_44
    iget v2, v11, Lw/d;->f0:I

    .line 1608
    .line 1609
    if-eq v2, v15, :cond_63

    .line 1610
    .line 1611
    move-object v8, v11

    .line 1612
    goto :goto_45

    .line 1613
    :cond_63
    move-object/from16 v8, v26

    .line 1614
    .line 1615
    :goto_45
    move-object v11, v1

    .line 1616
    move/from16 v15, v23

    .line 1617
    .line 1618
    const/16 v9, 0x8

    .line 1619
    .line 1620
    goto/16 :goto_3c

    .line 1621
    .line 1622
    :cond_64
    move/from16 v23, v15

    .line 1623
    .line 1624
    iget-object v1, v13, Lw/d;->P:[Lw/c;

    .line 1625
    .line 1626
    aget-object v1, v1, v16

    .line 1627
    .line 1628
    iget-object v0, v0, Lw/d;->P:[Lw/c;

    .line 1629
    .line 1630
    aget-object v0, v0, v16

    .line 1631
    .line 1632
    iget-object v0, v0, Lw/c;->f:Lw/c;

    .line 1633
    .line 1634
    iget-object v2, v14, Lw/d;->P:[Lw/c;

    .line 1635
    .line 1636
    add-int/lit8 v3, v16, 0x1

    .line 1637
    .line 1638
    aget-object v11, v2, v3

    .line 1639
    .line 1640
    iget-object v2, v12, Lw/d;->P:[Lw/c;

    .line 1641
    .line 1642
    aget-object v2, v2, v3

    .line 1643
    .line 1644
    iget-object v15, v2, Lw/c;->f:Lw/c;

    .line 1645
    .line 1646
    const/4 v9, 0x5

    .line 1647
    if-eqz v0, :cond_65

    .line 1648
    .line 1649
    if-eq v13, v14, :cond_66

    .line 1650
    .line 1651
    iget-object v2, v1, Lw/c;->i:Lu/i;

    .line 1652
    .line 1653
    iget-object v0, v0, Lw/c;->i:Lu/i;

    .line 1654
    .line 1655
    invoke-virtual {v1}, Lw/c;->d()I

    .line 1656
    .line 1657
    .line 1658
    move-result v1

    .line 1659
    invoke-virtual {v10, v2, v0, v1, v9}, Lu/d;->e(Lu/i;Lu/i;II)V

    .line 1660
    .line 1661
    .line 1662
    :cond_65
    const/4 v0, 0x5

    .line 1663
    goto :goto_46

    .line 1664
    :cond_66
    if-eqz v15, :cond_65

    .line 1665
    .line 1666
    iget-object v2, v1, Lw/c;->i:Lu/i;

    .line 1667
    .line 1668
    iget-object v3, v0, Lw/c;->i:Lu/i;

    .line 1669
    .line 1670
    invoke-virtual {v1}, Lw/c;->d()I

    .line 1671
    .line 1672
    .line 1673
    move-result v4

    .line 1674
    iget-object v6, v11, Lw/c;->i:Lu/i;

    .line 1675
    .line 1676
    iget-object v7, v15, Lw/c;->i:Lu/i;

    .line 1677
    .line 1678
    invoke-virtual {v11}, Lw/c;->d()I

    .line 1679
    .line 1680
    .line 1681
    move-result v8

    .line 1682
    const/high16 v5, 0x3f000000    # 0.5f

    .line 1683
    .line 1684
    move-object/from16 v1, p1

    .line 1685
    .line 1686
    const/4 v0, 0x5

    .line 1687
    move v9, v0

    .line 1688
    invoke-virtual/range {v1 .. v9}, Lu/d;->b(Lu/i;Lu/i;IFLu/i;Lu/i;II)V

    .line 1689
    .line 1690
    .line 1691
    :goto_46
    if-eqz v15, :cond_67

    .line 1692
    .line 1693
    if-eq v13, v14, :cond_67

    .line 1694
    .line 1695
    iget-object v1, v11, Lw/c;->i:Lu/i;

    .line 1696
    .line 1697
    iget-object v2, v15, Lw/c;->i:Lu/i;

    .line 1698
    .line 1699
    invoke-virtual {v11}, Lw/c;->d()I

    .line 1700
    .line 1701
    .line 1702
    move-result v3

    .line 1703
    neg-int v3, v3

    .line 1704
    invoke-virtual {v10, v1, v2, v3, v0}, Lu/d;->e(Lu/i;Lu/i;II)V

    .line 1705
    .line 1706
    .line 1707
    :cond_67
    :goto_47
    if-nez v20, :cond_68

    .line 1708
    .line 1709
    if-eqz v18, :cond_6f

    .line 1710
    .line 1711
    :cond_68
    if-eqz v13, :cond_6f

    .line 1712
    .line 1713
    if-eq v13, v14, :cond_6f

    .line 1714
    .line 1715
    iget-object v0, v13, Lw/d;->P:[Lw/c;

    .line 1716
    .line 1717
    aget-object v1, v0, v16

    .line 1718
    .line 1719
    if-nez v14, :cond_69

    .line 1720
    .line 1721
    move-object v9, v13

    .line 1722
    goto :goto_48

    .line 1723
    :cond_69
    move-object v9, v14

    .line 1724
    :goto_48
    add-int/lit8 v2, v16, 0x1

    .line 1725
    .line 1726
    iget-object v3, v9, Lw/d;->P:[Lw/c;

    .line 1727
    .line 1728
    aget-object v4, v3, v2

    .line 1729
    .line 1730
    iget-object v5, v1, Lw/c;->f:Lw/c;

    .line 1731
    .line 1732
    if-eqz v5, :cond_6a

    .line 1733
    .line 1734
    iget-object v5, v5, Lw/c;->i:Lu/i;

    .line 1735
    .line 1736
    goto :goto_49

    .line 1737
    :cond_6a
    move-object/from16 v5, v17

    .line 1738
    .line 1739
    :goto_49
    iget-object v6, v4, Lw/c;->f:Lw/c;

    .line 1740
    .line 1741
    if-eqz v6, :cond_6b

    .line 1742
    .line 1743
    iget-object v6, v6, Lw/c;->i:Lu/i;

    .line 1744
    .line 1745
    goto :goto_4a

    .line 1746
    :cond_6b
    move-object/from16 v6, v17

    .line 1747
    .line 1748
    :goto_4a
    if-eq v12, v9, :cond_6d

    .line 1749
    .line 1750
    iget-object v6, v12, Lw/d;->P:[Lw/c;

    .line 1751
    .line 1752
    aget-object v6, v6, v2

    .line 1753
    .line 1754
    iget-object v6, v6, Lw/c;->f:Lw/c;

    .line 1755
    .line 1756
    if-eqz v6, :cond_6c

    .line 1757
    .line 1758
    iget-object v6, v6, Lw/c;->i:Lu/i;

    .line 1759
    .line 1760
    move-object/from16 v17, v6

    .line 1761
    .line 1762
    :cond_6c
    move-object/from16 v6, v17

    .line 1763
    .line 1764
    :cond_6d
    if-ne v13, v9, :cond_6e

    .line 1765
    .line 1766
    aget-object v4, v0, v2

    .line 1767
    .line 1768
    :cond_6e
    if-eqz v5, :cond_6f

    .line 1769
    .line 1770
    if-eqz v6, :cond_6f

    .line 1771
    .line 1772
    invoke-virtual {v1}, Lw/c;->d()I

    .line 1773
    .line 1774
    .line 1775
    move-result v0

    .line 1776
    aget-object v2, v3, v2

    .line 1777
    .line 1778
    invoke-virtual {v2}, Lw/c;->d()I

    .line 1779
    .line 1780
    .line 1781
    move-result v8

    .line 1782
    iget-object v2, v1, Lw/c;->i:Lu/i;

    .line 1783
    .line 1784
    iget-object v7, v4, Lw/c;->i:Lu/i;

    .line 1785
    .line 1786
    const/4 v9, 0x5

    .line 1787
    const/high16 v11, 0x3f000000    # 0.5f

    .line 1788
    .line 1789
    move-object/from16 v1, p1

    .line 1790
    .line 1791
    move-object v3, v5

    .line 1792
    move v4, v0

    .line 1793
    move v5, v11

    .line 1794
    invoke-virtual/range {v1 .. v9}, Lu/d;->b(Lu/i;Lu/i;IFLu/i;Lu/i;II)V

    .line 1795
    .line 1796
    .line 1797
    :cond_6f
    :goto_4b
    add-int/lit8 v9, v23, 0x1

    .line 1798
    .line 1799
    const/4 v12, 0x2

    .line 1800
    move-object/from16 v0, p0

    .line 1801
    .line 1802
    move-object/from16 v11, p2

    .line 1803
    .line 1804
    move/from16 v14, v30

    .line 1805
    .line 1806
    move-object/from16 v15, v31

    .line 1807
    .line 1808
    goto/16 :goto_1

    .line 1809
    .line 1810
    :cond_70
    return-void
.end method

.method public static b(Ljava/util/UUID;[Ljava/util/UUID;[B)[B
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    array-length v1, p2

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 v1, 0x0

    .line 7
    :goto_0
    add-int/lit8 v1, v1, 0x20

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    array-length v2, p1

    .line 12
    mul-int/lit8 v2, v2, 0x10

    .line 13
    .line 14
    add-int/lit8 v2, v2, 0x4

    .line 15
    .line 16
    add-int/2addr v1, v2

    .line 17
    :cond_1
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 22
    .line 23
    .line 24
    const v1, 0x70737368    # 3.013775E29f

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 28
    .line 29
    .line 30
    if-eqz p1, :cond_2

    .line 31
    .line 32
    const/high16 v1, 0x1000000

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    const/4 v1, 0x0

    .line 36
    :goto_1
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/util/UUID;->getMostSignificantBits()J

    .line 40
    .line 41
    .line 42
    move-result-wide v3

    .line 43
    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/util/UUID;->getLeastSignificantBits()J

    .line 47
    .line 48
    .line 49
    move-result-wide v3

    .line 50
    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 51
    .line 52
    .line 53
    if-eqz p1, :cond_3

    .line 54
    .line 55
    array-length p0, p1

    .line 56
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 57
    .line 58
    .line 59
    array-length p0, p1

    .line 60
    const/4 v1, 0x0

    .line 61
    :goto_2
    if-ge v1, p0, :cond_3

    .line 62
    .line 63
    aget-object v3, p1, v1

    .line 64
    .line 65
    invoke-virtual {v3}, Ljava/util/UUID;->getMostSignificantBits()J

    .line 66
    .line 67
    .line 68
    move-result-wide v4

    .line 69
    invoke-virtual {v2, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3}, Ljava/util/UUID;->getLeastSignificantBits()J

    .line 73
    .line 74
    .line 75
    move-result-wide v3

    .line 76
    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 77
    .line 78
    .line 79
    add-int/lit8 v1, v1, 0x1

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_3
    if-eqz p2, :cond_4

    .line 83
    .line 84
    array-length p0, p2

    .line 85
    if-eqz p0, :cond_4

    .line 86
    .line 87
    array-length p0, p2

    .line 88
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 92
    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_4
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 96
    .line 97
    .line 98
    :goto_3
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    return-object p0
.end method

.method public static c(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/4 p1, 0x0

    .line 5
    invoke-static {p0, p1}, Lm0/P;->a(Ljava/lang/String;Ljava/lang/RuntimeException;)Lm0/P;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    throw p0
.end method

.method public static d(II)I
    .locals 6

    .line 1
    int-to-long v0, p0

    .line 2
    int-to-long v2, p1

    .line 3
    add-long/2addr v0, v2

    .line 4
    long-to-int v2, v0

    .line 5
    int-to-long v3, v2

    .line 6
    cmp-long v5, v0, v3

    .line 7
    .line 8
    if-nez v5, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-eqz v0, :cond_1

    .line 14
    .line 15
    return v2

    .line 16
    :cond_1
    new-instance v0, Ljava/lang/ArithmeticException;

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v2, "overflow: checkedAdd("

    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string p0, ", "

    .line 29
    .line 30
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p0, ")"

    .line 37
    .line 38
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-direct {v0, p0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v0
.end method

.method public static e(Ljava/io/Closeable;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    :catch_0
    :cond_0
    return-void
.end method

.method public static f(Ljava/io/File;Landroid/content/res/Resources;I)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 2
    .line 3
    .line 4
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    invoke-static {p0, p1}, LE3/f;->g(Ljava/io/File;Ljava/io/InputStream;)Z

    .line 6
    .line 7
    .line 8
    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    invoke-static {p1}, LE3/f;->e(Ljava/io/Closeable;)V

    .line 10
    .line 11
    .line 12
    return p0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_0

    .line 15
    :catchall_1
    move-exception p0

    .line 16
    const/4 p1, 0x0

    .line 17
    :goto_0
    invoke-static {p1}, LE3/f;->e(Ljava/io/Closeable;)V

    .line 18
    .line 19
    .line 20
    throw p0
.end method

.method public static g(Ljava/io/File;Ljava/io/InputStream;)Z
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    .line 8
    .line 9
    invoke-direct {v3, p0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    .line 11
    .line 12
    const/16 p0, 0x400

    .line 13
    .line 14
    :try_start_1
    new-array p0, p0, [B

    .line 15
    .line 16
    :goto_0
    invoke-virtual {p1, p0}, Ljava/io/InputStream;->read([B)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v4, -0x1

    .line 21
    if-eq v2, v4, :cond_0

    .line 22
    .line 23
    invoke-virtual {v3, p0, v1, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p0

    .line 28
    move-object v2, v3

    .line 29
    goto :goto_2

    .line 30
    :catch_0
    move-exception p0

    .line 31
    move-object v2, v3

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    invoke-static {v3}, LE3/f;->e(Ljava/io/Closeable;)V

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 37
    .line 38
    .line 39
    const/4 p0, 0x1

    .line 40
    return p0

    .line 41
    :catchall_1
    move-exception p0

    .line 42
    goto :goto_2

    .line 43
    :catch_1
    move-exception p0

    .line 44
    :goto_1
    :try_start_2
    const-string p1, "TypefaceCompatUtil"

    .line 45
    .line 46
    new-instance v3, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v4, "Error copying resource contents to temp file: "

    .line 52
    .line 53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 68
    .line 69
    .line 70
    invoke-static {v2}, LE3/f;->e(Ljava/io/Closeable;)V

    .line 71
    .line 72
    .line 73
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 74
    .line 75
    .line 76
    return v1

    .line 77
    :goto_2
    invoke-static {v2}, LE3/f;->e(Ljava/io/Closeable;)V

    .line 78
    .line 79
    .line 80
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 81
    .line 82
    .line 83
    throw p0
.end method

.method public static h(Lcom/bumptech/glide/b;Ljava/util/List;)Lcom/bumptech/glide/j;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v6, v0, Lcom/bumptech/glide/b;->G:Lz2/d;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/bumptech/glide/b;->I:Lcom/bumptech/glide/f;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v1, v1, Lcom/bumptech/glide/f;->h:Le0/u;

    .line 12
    .line 13
    new-instance v7, Lcom/bumptech/glide/j;

    .line 14
    .line 15
    invoke-direct {v7}, Lcom/bumptech/glide/j;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v3, LF2/l;

    .line 19
    .line 20
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-object v4, v7, Lcom/bumptech/glide/j;->g:LI2/c;

    .line 24
    .line 25
    monitor-enter v4

    .line 26
    :try_start_0
    iget-object v5, v4, LI2/c;->G:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    monitor-exit v4

    .line 32
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 33
    .line 34
    const/16 v3, 0x1b

    .line 35
    .line 36
    if-lt v8, v3, :cond_0

    .line 37
    .line 38
    new-instance v3, LF2/t;

    .line 39
    .line 40
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v7, v3}, Lcom/bumptech/glide/j;->k(Lw2/f;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 47
    .line 48
    .line 49
    move-result-object v9

    .line 50
    invoke-virtual {v7}, Lcom/bumptech/glide/j;->f()Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    new-instance v4, LH2/a;

    .line 55
    .line 56
    iget-object v0, v0, Lcom/bumptech/glide/b;->J:Lz2/h;

    .line 57
    .line 58
    invoke-direct {v4, v2, v3, v6, v0}, LH2/a;-><init>(Landroid/content/Context;Ljava/util/List;Lz2/d;Lz2/h;)V

    .line 59
    .line 60
    .line 61
    new-instance v5, LF2/H;

    .line 62
    .line 63
    new-instance v10, LF2/G;

    .line 64
    .line 65
    const/4 v11, 0x1

    .line 66
    invoke-direct {v10, v11}, LF2/G;-><init>(I)V

    .line 67
    .line 68
    .line 69
    invoke-direct {v5, v6, v10}, LF2/H;-><init>(Lz2/d;LF2/F;)V

    .line 70
    .line 71
    .line 72
    new-instance v10, LF2/p;

    .line 73
    .line 74
    invoke-virtual {v7}, Lcom/bumptech/glide/j;->f()Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object v12

    .line 78
    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 79
    .line 80
    .line 81
    move-result-object v13

    .line 82
    invoke-direct {v10, v12, v13, v6, v0}, LF2/p;-><init>(Ljava/util/List;Landroid/util/DisplayMetrics;Lz2/d;Lz2/h;)V

    .line 83
    .line 84
    .line 85
    const/4 v12, 0x0

    .line 86
    const/16 v13, 0x1c

    .line 87
    .line 88
    const/4 v14, 0x2

    .line 89
    if-lt v8, v13, :cond_1

    .line 90
    .line 91
    iget-object v1, v1, Le0/u;->a:Ljava/util/Map;

    .line 92
    .line 93
    const-class v15, Lcom/bumptech/glide/c;

    .line 94
    .line 95
    invoke-interface {v1, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_1

    .line 100
    .line 101
    new-instance v1, LF2/g;

    .line 102
    .line 103
    invoke-direct {v1, v11}, LF2/g;-><init>(I)V

    .line 104
    .line 105
    .line 106
    new-instance v15, LF2/g;

    .line 107
    .line 108
    invoke-direct {v15, v12}, LF2/g;-><init>(I)V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_1
    new-instance v15, LF2/f;

    .line 113
    .line 114
    invoke-direct {v15, v10, v12}, LF2/f;-><init>(LF2/p;I)V

    .line 115
    .line 116
    .line 117
    new-instance v1, LF2/a;

    .line 118
    .line 119
    invoke-direct {v1, v14, v10, v0}, LF2/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    :goto_0
    const-string v14, "Animation"

    .line 123
    .line 124
    const-class v12, Ljava/nio/ByteBuffer;

    .line 125
    .line 126
    const-class v11, Landroid/graphics/drawable/Drawable;

    .line 127
    .line 128
    move-object/from16 v16, v4

    .line 129
    .line 130
    const-class v4, Ljava/io/InputStream;

    .line 131
    .line 132
    if-lt v8, v13, :cond_2

    .line 133
    .line 134
    new-instance v13, LG2/a;

    .line 135
    .line 136
    move/from16 v17, v8

    .line 137
    .line 138
    new-instance v8, Lm2/e;

    .line 139
    .line 140
    move-object/from16 v18, v9

    .line 141
    .line 142
    const/16 v9, 0xb

    .line 143
    .line 144
    invoke-direct {v8, v9, v3, v0}, Lm2/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    const/4 v9, 0x1

    .line 148
    invoke-direct {v13, v8, v9}, LG2/a;-><init>(Lm2/e;I)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v7, v13, v4, v11, v14}, Lcom/bumptech/glide/j;->d(Lw2/n;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    new-instance v8, LG2/a;

    .line 155
    .line 156
    new-instance v9, Lm2/e;

    .line 157
    .line 158
    const/16 v13, 0xb

    .line 159
    .line 160
    invoke-direct {v9, v13, v3, v0}, Lm2/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    const/4 v13, 0x0

    .line 164
    invoke-direct {v8, v9, v13}, LG2/a;-><init>(Lm2/e;I)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v7, v8, v12, v11, v14}, Lcom/bumptech/glide/j;->d(Lw2/n;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_2
    move/from16 v17, v8

    .line 172
    .line 173
    move-object/from16 v18, v9

    .line 174
    .line 175
    const/4 v13, 0x0

    .line 176
    :goto_1
    new-instance v8, LG2/e;

    .line 177
    .line 178
    invoke-direct {v8, v2}, LG2/e;-><init>(Landroid/content/Context;)V

    .line 179
    .line 180
    .line 181
    new-instance v9, LF2/b;

    .line 182
    .line 183
    invoke-direct {v9, v0}, LF2/b;-><init>(Lz2/h;)V

    .line 184
    .line 185
    .line 186
    move-object/from16 v19, v8

    .line 187
    .line 188
    new-instance v8, LK/k;

    .line 189
    .line 190
    move-object/from16 v20, v11

    .line 191
    .line 192
    const/4 v11, 0x5

    .line 193
    invoke-direct {v8, v11, v13}, LK/k;-><init>(II)V

    .line 194
    .line 195
    .line 196
    new-instance v13, LF2/G;

    .line 197
    .line 198
    const/4 v11, 0x4

    .line 199
    invoke-direct {v13, v11}, LF2/G;-><init>(I)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 203
    .line 204
    .line 205
    move-result-object v11

    .line 206
    move-object/from16 v21, v13

    .line 207
    .line 208
    new-instance v13, LU1/f;

    .line 209
    .line 210
    move-object/from16 v22, v8

    .line 211
    .line 212
    const/16 v8, 0x17

    .line 213
    .line 214
    move-object/from16 v23, v11

    .line 215
    .line 216
    const/4 v11, 0x0

    .line 217
    invoke-direct {v13, v8, v11}, LU1/f;-><init>(ILjava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v7, v12, v13}, Lcom/bumptech/glide/j;->b(Ljava/lang/Class;Lw2/c;)V

    .line 221
    .line 222
    .line 223
    new-instance v13, LC2/g;

    .line 224
    .line 225
    const/4 v11, 0x3

    .line 226
    invoke-direct {v13, v0, v11}, LC2/g;-><init>(Ljava/lang/Object;I)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v7, v4, v13}, Lcom/bumptech/glide/j;->b(Ljava/lang/Class;Lw2/c;)V

    .line 230
    .line 231
    .line 232
    const-class v13, Landroid/graphics/Bitmap;

    .line 233
    .line 234
    const-string v8, "Bitmap"

    .line 235
    .line 236
    invoke-virtual {v7, v15, v12, v13, v8}, Lcom/bumptech/glide/j;->d(Lw2/n;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v7, v1, v4, v13, v8}, Lcom/bumptech/glide/j;->d(Lw2/n;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    const-string v11, "robolectric"

    .line 243
    .line 244
    move-object/from16 v24, v2

    .line 245
    .line 246
    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 247
    .line 248
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result v11

    .line 252
    move-object/from16 v25, v2

    .line 253
    .line 254
    const/4 v2, 0x1

    .line 255
    xor-int/2addr v11, v2

    .line 256
    const-class v2, Landroid/os/ParcelFileDescriptor;

    .line 257
    .line 258
    if-eqz v11, :cond_3

    .line 259
    .line 260
    new-instance v11, LF2/f;

    .line 261
    .line 262
    move-object/from16 v26, v14

    .line 263
    .line 264
    const/4 v14, 0x1

    .line 265
    invoke-direct {v11, v10, v14}, LF2/f;-><init>(LF2/p;I)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v7, v11, v2, v13, v8}, Lcom/bumptech/glide/j;->d(Lw2/n;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    goto :goto_2

    .line 272
    :cond_3
    move-object/from16 v26, v14

    .line 273
    .line 274
    :goto_2
    new-instance v10, LF2/H;

    .line 275
    .line 276
    new-instance v11, LU1/f;

    .line 277
    .line 278
    invoke-direct {v11}, LU1/f;-><init>()V

    .line 279
    .line 280
    .line 281
    invoke-direct {v10, v6, v11}, LF2/H;-><init>(Lz2/d;LF2/F;)V

    .line 282
    .line 283
    .line 284
    const-class v11, Landroid/content/res/AssetFileDescriptor;

    .line 285
    .line 286
    invoke-virtual {v7, v10, v11, v13, v8}, Lcom/bumptech/glide/j;->d(Lw2/n;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v7, v5, v2, v13, v8}, Lcom/bumptech/glide/j;->d(Lw2/n;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    sget-object v10, LC2/K;->a:LC2/K;

    .line 293
    .line 294
    invoke-virtual {v7, v13, v13, v10}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;LC2/D;)V

    .line 295
    .line 296
    .line 297
    new-instance v14, LF2/A;

    .line 298
    .line 299
    move-object/from16 v27, v11

    .line 300
    .line 301
    const/4 v11, 0x0

    .line 302
    invoke-direct {v14, v11}, LF2/A;-><init>(I)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v7, v14, v13, v13, v8}, Lcom/bumptech/glide/j;->d(Lw2/n;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v7, v13, v9}, Lcom/bumptech/glide/j;->c(Ljava/lang/Class;Lw2/o;)V

    .line 309
    .line 310
    .line 311
    new-instance v11, LF2/a;

    .line 312
    .line 313
    move-object/from16 v14, v18

    .line 314
    .line 315
    invoke-direct {v11, v14, v15}, LF2/a;-><init>(Landroid/content/res/Resources;Lw2/n;)V

    .line 316
    .line 317
    .line 318
    const-class v15, Landroid/graphics/drawable/BitmapDrawable;

    .line 319
    .line 320
    move-object/from16 v18, v8

    .line 321
    .line 322
    const-string v8, "BitmapDrawable"

    .line 323
    .line 324
    invoke-virtual {v7, v11, v12, v15, v8}, Lcom/bumptech/glide/j;->d(Lw2/n;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    new-instance v11, LF2/a;

    .line 328
    .line 329
    invoke-direct {v11, v14, v1}, LF2/a;-><init>(Landroid/content/res/Resources;Lw2/n;)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v7, v11, v4, v15, v8}, Lcom/bumptech/glide/j;->d(Lw2/n;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    new-instance v1, LF2/a;

    .line 336
    .line 337
    invoke-direct {v1, v14, v5}, LF2/a;-><init>(Landroid/content/res/Resources;Lw2/n;)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v7, v1, v2, v15, v8}, Lcom/bumptech/glide/j;->d(Lw2/n;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    new-instance v1, LF/i;

    .line 344
    .line 345
    const/16 v5, 0x9

    .line 346
    .line 347
    invoke-direct {v1, v5, v6, v9}, LF/i;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v7, v15, v1}, Lcom/bumptech/glide/j;->c(Ljava/lang/Class;Lw2/o;)V

    .line 351
    .line 352
    .line 353
    new-instance v1, LH2/j;

    .line 354
    .line 355
    move-object/from16 v5, v16

    .line 356
    .line 357
    invoke-direct {v1, v3, v5, v0}, LH2/j;-><init>(Ljava/util/List;LH2/a;Lz2/h;)V

    .line 358
    .line 359
    .line 360
    const-class v8, LH2/c;

    .line 361
    .line 362
    move-object/from16 v3, v26

    .line 363
    .line 364
    invoke-virtual {v7, v1, v4, v8, v3}, Lcom/bumptech/glide/j;->d(Lw2/n;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v7, v5, v12, v8, v3}, Lcom/bumptech/glide/j;->d(Lw2/n;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    new-instance v1, LF2/G;

    .line 371
    .line 372
    const/4 v3, 0x3

    .line 373
    invoke-direct {v1, v3}, LF2/G;-><init>(I)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v7, v8, v1}, Lcom/bumptech/glide/j;->c(Ljava/lang/Class;Lw2/o;)V

    .line 377
    .line 378
    .line 379
    const-class v1, Lu2/a;

    .line 380
    .line 381
    invoke-virtual {v7, v1, v1, v10}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;LC2/D;)V

    .line 382
    .line 383
    .line 384
    new-instance v3, LF2/c;

    .line 385
    .line 386
    invoke-direct {v3, v6}, LF2/c;-><init>(Lz2/d;)V

    .line 387
    .line 388
    .line 389
    move-object/from16 v5, v18

    .line 390
    .line 391
    invoke-virtual {v7, v3, v1, v13, v5}, Lcom/bumptech/glide/j;->d(Lw2/n;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    const-class v1, Landroid/net/Uri;

    .line 395
    .line 396
    const-string v3, "legacy_append"

    .line 397
    .line 398
    move-object/from16 v5, v19

    .line 399
    .line 400
    move-object/from16 v9, v20

    .line 401
    .line 402
    invoke-virtual {v7, v5, v1, v9, v3}, Lcom/bumptech/glide/j;->d(Lw2/n;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    new-instance v11, LF2/a;

    .line 406
    .line 407
    move-object/from16 v16, v8

    .line 408
    .line 409
    const/4 v8, 0x1

    .line 410
    invoke-direct {v11, v8, v5, v6}, LF2/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {v7, v11, v1, v13, v3}, Lcom/bumptech/glide/j;->d(Lw2/n;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    new-instance v5, Lcom/bumptech/glide/load/data/h;

    .line 417
    .line 418
    const/4 v8, 0x2

    .line 419
    invoke-direct {v5, v8}, Lcom/bumptech/glide/load/data/h;-><init>(I)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v7, v5}, Lcom/bumptech/glide/j;->i(Lcom/bumptech/glide/load/data/f;)V

    .line 423
    .line 424
    .line 425
    new-instance v5, LC2/d;

    .line 426
    .line 427
    invoke-direct {v5, v8}, LC2/d;-><init>(I)V

    .line 428
    .line 429
    .line 430
    const-class v11, Ljava/io/File;

    .line 431
    .line 432
    invoke-virtual {v7, v11, v12, v5}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;LC2/D;)V

    .line 433
    .line 434
    .line 435
    new-instance v5, LC2/r;

    .line 436
    .line 437
    const/4 v8, 0x1

    .line 438
    invoke-direct {v5, v8}, LC2/r;-><init>(I)V

    .line 439
    .line 440
    .line 441
    invoke-virtual {v7, v11, v4, v5}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;LC2/D;)V

    .line 442
    .line 443
    .line 444
    new-instance v5, LF2/A;

    .line 445
    .line 446
    const/4 v8, 0x2

    .line 447
    invoke-direct {v5, v8}, LF2/A;-><init>(I)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {v7, v5, v11, v11, v3}, Lcom/bumptech/glide/j;->d(Lw2/n;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    new-instance v5, LC2/r;

    .line 454
    .line 455
    const/4 v8, 0x0

    .line 456
    invoke-direct {v5, v8}, LC2/r;-><init>(I)V

    .line 457
    .line 458
    .line 459
    invoke-virtual {v7, v11, v2, v5}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;LC2/D;)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v7, v11, v11, v10}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;LC2/D;)V

    .line 463
    .line 464
    .line 465
    new-instance v5, Lcom/bumptech/glide/load/data/m;

    .line 466
    .line 467
    invoke-direct {v5, v0}, Lcom/bumptech/glide/load/data/m;-><init>(Lz2/h;)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v7, v5}, Lcom/bumptech/glide/j;->i(Lcom/bumptech/glide/load/data/f;)V

    .line 471
    .line 472
    .line 473
    const-string v0, "robolectric"

    .line 474
    .line 475
    move-object/from16 v5, v25

    .line 476
    .line 477
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 478
    .line 479
    .line 480
    move-result v0

    .line 481
    const/4 v5, 0x1

    .line 482
    xor-int/2addr v0, v5

    .line 483
    if-eqz v0, :cond_4

    .line 484
    .line 485
    new-instance v0, Lcom/bumptech/glide/load/data/h;

    .line 486
    .line 487
    invoke-direct {v0, v5}, Lcom/bumptech/glide/load/data/h;-><init>(I)V

    .line 488
    .line 489
    .line 490
    invoke-virtual {v7, v0}, Lcom/bumptech/glide/j;->i(Lcom/bumptech/glide/load/data/f;)V

    .line 491
    .line 492
    .line 493
    :cond_4
    new-instance v0, LC2/m;

    .line 494
    .line 495
    move-object/from16 v8, v24

    .line 496
    .line 497
    const/4 v5, 0x2

    .line 498
    invoke-direct {v0, v8, v5}, LC2/m;-><init>(Landroid/content/Context;I)V

    .line 499
    .line 500
    .line 501
    new-instance v5, LC2/m;

    .line 502
    .line 503
    move-object/from16 v18, v6

    .line 504
    .line 505
    const/4 v6, 0x0

    .line 506
    invoke-direct {v5, v8, v6}, LC2/m;-><init>(Landroid/content/Context;I)V

    .line 507
    .line 508
    .line 509
    new-instance v6, LC2/m;

    .line 510
    .line 511
    move-object/from16 v19, v13

    .line 512
    .line 513
    const/4 v13, 0x1

    .line 514
    invoke-direct {v6, v8, v13}, LC2/m;-><init>(Landroid/content/Context;I)V

    .line 515
    .line 516
    .line 517
    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 518
    .line 519
    invoke-virtual {v7, v13, v4, v0}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;LC2/D;)V

    .line 520
    .line 521
    .line 522
    move-object/from16 v20, v15

    .line 523
    .line 524
    const-class v15, Ljava/lang/Integer;

    .line 525
    .line 526
    invoke-virtual {v7, v15, v4, v0}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;LC2/D;)V

    .line 527
    .line 528
    .line 529
    move-object/from16 v0, v27

    .line 530
    .line 531
    invoke-virtual {v7, v13, v0, v5}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;LC2/D;)V

    .line 532
    .line 533
    .line 534
    invoke-virtual {v7, v15, v0, v5}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;LC2/D;)V

    .line 535
    .line 536
    .line 537
    invoke-virtual {v7, v13, v9, v6}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;LC2/D;)V

    .line 538
    .line 539
    .line 540
    invoke-virtual {v7, v15, v9, v6}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;LC2/D;)V

    .line 541
    .line 542
    .line 543
    new-instance v5, LC2/m;

    .line 544
    .line 545
    const/4 v6, 0x5

    .line 546
    invoke-direct {v5, v8, v6}, LC2/m;-><init>(Landroid/content/Context;I)V

    .line 547
    .line 548
    .line 549
    invoke-virtual {v7, v1, v4, v5}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;LC2/D;)V

    .line 550
    .line 551
    .line 552
    new-instance v5, LC2/m;

    .line 553
    .line 554
    const/4 v6, 0x4

    .line 555
    invoke-direct {v5, v8, v6}, LC2/m;-><init>(Landroid/content/Context;I)V

    .line 556
    .line 557
    .line 558
    invoke-virtual {v7, v1, v0, v5}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;LC2/D;)V

    .line 559
    .line 560
    .line 561
    new-instance v5, LC2/I;

    .line 562
    .line 563
    const/4 v6, 0x2

    .line 564
    invoke-direct {v5, v14, v6}, LC2/I;-><init>(Landroid/content/res/Resources;I)V

    .line 565
    .line 566
    .line 567
    new-instance v6, LC2/I;

    .line 568
    .line 569
    move-object/from16 v24, v3

    .line 570
    .line 571
    const/4 v3, 0x0

    .line 572
    invoke-direct {v6, v14, v3}, LC2/I;-><init>(Landroid/content/res/Resources;I)V

    .line 573
    .line 574
    .line 575
    new-instance v3, LC2/I;

    .line 576
    .line 577
    move-object/from16 v25, v9

    .line 578
    .line 579
    const/4 v9, 0x1

    .line 580
    invoke-direct {v3, v14, v9}, LC2/I;-><init>(Landroid/content/res/Resources;I)V

    .line 581
    .line 582
    .line 583
    invoke-virtual {v7, v15, v1, v5}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;LC2/D;)V

    .line 584
    .line 585
    .line 586
    invoke-virtual {v7, v13, v1, v5}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;LC2/D;)V

    .line 587
    .line 588
    .line 589
    invoke-virtual {v7, v15, v0, v6}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;LC2/D;)V

    .line 590
    .line 591
    .line 592
    invoke-virtual {v7, v13, v0, v6}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;LC2/D;)V

    .line 593
    .line 594
    .line 595
    invoke-virtual {v7, v15, v4, v3}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;LC2/D;)V

    .line 596
    .line 597
    .line 598
    invoke-virtual {v7, v13, v4, v3}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;LC2/D;)V

    .line 599
    .line 600
    .line 601
    new-instance v3, LC2/l;

    .line 602
    .line 603
    const/4 v5, 0x0

    .line 604
    invoke-direct {v3, v5}, LC2/l;-><init>(I)V

    .line 605
    .line 606
    .line 607
    const-class v6, Ljava/lang/String;

    .line 608
    .line 609
    invoke-virtual {v7, v6, v4, v3}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;LC2/D;)V

    .line 610
    .line 611
    .line 612
    new-instance v3, LC2/l;

    .line 613
    .line 614
    invoke-direct {v3, v5}, LC2/l;-><init>(I)V

    .line 615
    .line 616
    .line 617
    invoke-virtual {v7, v1, v4, v3}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;LC2/D;)V

    .line 618
    .line 619
    .line 620
    new-instance v3, LC2/d;

    .line 621
    .line 622
    const/4 v5, 0x5

    .line 623
    invoke-direct {v3, v5}, LC2/d;-><init>(I)V

    .line 624
    .line 625
    .line 626
    invoke-virtual {v7, v6, v4, v3}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;LC2/D;)V

    .line 627
    .line 628
    .line 629
    new-instance v3, LC2/d;

    .line 630
    .line 631
    const/4 v5, 0x4

    .line 632
    invoke-direct {v3, v5}, LC2/d;-><init>(I)V

    .line 633
    .line 634
    .line 635
    invoke-virtual {v7, v6, v2, v3}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;LC2/D;)V

    .line 636
    .line 637
    .line 638
    new-instance v3, LC2/d;

    .line 639
    .line 640
    const/4 v5, 0x3

    .line 641
    invoke-direct {v3, v5}, LC2/d;-><init>(I)V

    .line 642
    .line 643
    .line 644
    invoke-virtual {v7, v6, v0, v3}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;LC2/D;)V

    .line 645
    .line 646
    .line 647
    new-instance v3, LC2/b;

    .line 648
    .line 649
    invoke-virtual {v8}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 650
    .line 651
    .line 652
    move-result-object v5

    .line 653
    const/4 v6, 0x1

    .line 654
    invoke-direct {v3, v5, v6}, LC2/b;-><init>(Landroid/content/res/AssetManager;I)V

    .line 655
    .line 656
    .line 657
    invoke-virtual {v7, v1, v4, v3}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;LC2/D;)V

    .line 658
    .line 659
    .line 660
    new-instance v3, LC2/b;

    .line 661
    .line 662
    invoke-virtual {v8}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 663
    .line 664
    .line 665
    move-result-object v5

    .line 666
    const/4 v6, 0x0

    .line 667
    invoke-direct {v3, v5, v6}, LC2/b;-><init>(Landroid/content/res/AssetManager;I)V

    .line 668
    .line 669
    .line 670
    invoke-virtual {v7, v1, v0, v3}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;LC2/D;)V

    .line 671
    .line 672
    .line 673
    new-instance v3, LC2/m;

    .line 674
    .line 675
    const/4 v5, 0x6

    .line 676
    invoke-direct {v3, v8, v5}, LC2/m;-><init>(Landroid/content/Context;I)V

    .line 677
    .line 678
    .line 679
    invoke-virtual {v7, v1, v4, v3}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;LC2/D;)V

    .line 680
    .line 681
    .line 682
    new-instance v3, LC2/m;

    .line 683
    .line 684
    const/4 v6, 0x7

    .line 685
    invoke-direct {v3, v8, v6}, LC2/m;-><init>(Landroid/content/Context;I)V

    .line 686
    .line 687
    .line 688
    invoke-virtual {v7, v1, v4, v3}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;LC2/D;)V

    .line 689
    .line 690
    .line 691
    const/16 v9, 0x1d

    .line 692
    .line 693
    move/from16 v13, v17

    .line 694
    .line 695
    if-lt v13, v9, :cond_5

    .line 696
    .line 697
    new-instance v3, LD2/c;

    .line 698
    .line 699
    const/4 v15, 0x1

    .line 700
    invoke-direct {v3, v8, v15}, LD2/c;-><init>(Landroid/content/Context;I)V

    .line 701
    .line 702
    .line 703
    invoke-virtual {v7, v1, v4, v3}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;LC2/D;)V

    .line 704
    .line 705
    .line 706
    new-instance v3, LD2/c;

    .line 707
    .line 708
    const/4 v9, 0x0

    .line 709
    invoke-direct {v3, v8, v9}, LD2/c;-><init>(Landroid/content/Context;I)V

    .line 710
    .line 711
    .line 712
    invoke-virtual {v7, v1, v2, v3}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;LC2/D;)V

    .line 713
    .line 714
    .line 715
    goto :goto_3

    .line 716
    :cond_5
    const/4 v9, 0x0

    .line 717
    const/4 v15, 0x1

    .line 718
    :goto_3
    new-instance v3, LC2/M;

    .line 719
    .line 720
    move-object/from16 v5, v23

    .line 721
    .line 722
    const/4 v6, 0x2

    .line 723
    invoke-direct {v3, v5, v6}, LC2/M;-><init>(Landroid/content/ContentResolver;I)V

    .line 724
    .line 725
    .line 726
    invoke-virtual {v7, v1, v4, v3}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;LC2/D;)V

    .line 727
    .line 728
    .line 729
    new-instance v3, LC2/M;

    .line 730
    .line 731
    invoke-direct {v3, v5, v15}, LC2/M;-><init>(Landroid/content/ContentResolver;I)V

    .line 732
    .line 733
    .line 734
    invoke-virtual {v7, v1, v2, v3}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;LC2/D;)V

    .line 735
    .line 736
    .line 737
    new-instance v2, LC2/M;

    .line 738
    .line 739
    invoke-direct {v2, v5, v9}, LC2/M;-><init>(Landroid/content/ContentResolver;I)V

    .line 740
    .line 741
    .line 742
    invoke-virtual {v7, v1, v0, v2}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;LC2/D;)V

    .line 743
    .line 744
    .line 745
    new-instance v0, LC2/d;

    .line 746
    .line 747
    const/4 v2, 0x6

    .line 748
    invoke-direct {v0, v2}, LC2/d;-><init>(I)V

    .line 749
    .line 750
    .line 751
    invoke-virtual {v7, v1, v4, v0}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;LC2/D;)V

    .line 752
    .line 753
    .line 754
    new-instance v0, LC2/d;

    .line 755
    .line 756
    const/4 v2, 0x7

    .line 757
    invoke-direct {v0, v2}, LC2/d;-><init>(I)V

    .line 758
    .line 759
    .line 760
    const-class v2, Ljava/net/URL;

    .line 761
    .line 762
    invoke-virtual {v7, v2, v4, v0}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;LC2/D;)V

    .line 763
    .line 764
    .line 765
    new-instance v0, LC2/m;

    .line 766
    .line 767
    const/4 v2, 0x3

    .line 768
    invoke-direct {v0, v8, v2}, LC2/m;-><init>(Landroid/content/Context;I)V

    .line 769
    .line 770
    .line 771
    invoke-virtual {v7, v1, v11, v0}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;LC2/D;)V

    .line 772
    .line 773
    .line 774
    new-instance v0, LC2/l;

    .line 775
    .line 776
    const/4 v2, 0x1

    .line 777
    invoke-direct {v0, v2}, LC2/l;-><init>(I)V

    .line 778
    .line 779
    .line 780
    const-class v3, LC2/t;

    .line 781
    .line 782
    invoke-virtual {v7, v3, v4, v0}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;LC2/D;)V

    .line 783
    .line 784
    .line 785
    new-instance v0, LC2/d;

    .line 786
    .line 787
    const/4 v3, 0x0

    .line 788
    invoke-direct {v0, v3}, LC2/d;-><init>(I)V

    .line 789
    .line 790
    .line 791
    const-class v6, [B

    .line 792
    .line 793
    invoke-virtual {v7, v6, v12, v0}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;LC2/D;)V

    .line 794
    .line 795
    .line 796
    new-instance v0, LC2/d;

    .line 797
    .line 798
    invoke-direct {v0, v2}, LC2/d;-><init>(I)V

    .line 799
    .line 800
    .line 801
    invoke-virtual {v7, v6, v4, v0}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;LC2/D;)V

    .line 802
    .line 803
    .line 804
    invoke-virtual {v7, v1, v1, v10}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;LC2/D;)V

    .line 805
    .line 806
    .line 807
    move-object/from16 v8, v25

    .line 808
    .line 809
    invoke-virtual {v7, v8, v8, v10}, Lcom/bumptech/glide/j;->a(Ljava/lang/Class;Ljava/lang/Class;LC2/D;)V

    .line 810
    .line 811
    .line 812
    new-instance v0, LF2/A;

    .line 813
    .line 814
    invoke-direct {v0, v2}, LF2/A;-><init>(I)V

    .line 815
    .line 816
    .line 817
    move-object/from16 v1, v24

    .line 818
    .line 819
    invoke-virtual {v7, v0, v8, v8, v1}, Lcom/bumptech/glide/j;->d(Lw2/n;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 820
    .line 821
    .line 822
    new-instance v0, LC2/g;

    .line 823
    .line 824
    invoke-direct {v0, v14}, LC2/g;-><init>(Landroid/content/res/Resources;)V

    .line 825
    .line 826
    .line 827
    move-object/from16 v9, v19

    .line 828
    .line 829
    move-object/from16 v10, v20

    .line 830
    .line 831
    invoke-virtual {v7, v9, v10, v0}, Lcom/bumptech/glide/j;->j(Ljava/lang/Class;Ljava/lang/Class;LI2/a;)V

    .line 832
    .line 833
    .line 834
    move-object/from16 v2, v22

    .line 835
    .line 836
    invoke-virtual {v7, v9, v6, v2}, Lcom/bumptech/glide/j;->j(Ljava/lang/Class;Ljava/lang/Class;LI2/a;)V

    .line 837
    .line 838
    .line 839
    new-instance v11, Lm2/u;

    .line 840
    .line 841
    const/16 v4, 0x1b

    .line 842
    .line 843
    const/4 v5, 0x0

    .line 844
    move-object v0, v11

    .line 845
    move-object/from16 v1, v18

    .line 846
    .line 847
    move-object/from16 v3, v21

    .line 848
    .line 849
    invoke-direct/range {v0 .. v5}, Lm2/u;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 850
    .line 851
    .line 852
    invoke-virtual {v7, v8, v6, v11}, Lcom/bumptech/glide/j;->j(Ljava/lang/Class;Ljava/lang/Class;LI2/a;)V

    .line 853
    .line 854
    .line 855
    move-object/from16 v1, v16

    .line 856
    .line 857
    move-object/from16 v0, v21

    .line 858
    .line 859
    invoke-virtual {v7, v1, v6, v0}, Lcom/bumptech/glide/j;->j(Ljava/lang/Class;Ljava/lang/Class;LI2/a;)V

    .line 860
    .line 861
    .line 862
    const/16 v0, 0x17

    .line 863
    .line 864
    if-lt v13, v0, :cond_6

    .line 865
    .line 866
    new-instance v0, LF2/H;

    .line 867
    .line 868
    new-instance v1, LU1/f;

    .line 869
    .line 870
    const/4 v2, 0x0

    .line 871
    const/16 v3, 0x1d

    .line 872
    .line 873
    invoke-direct {v1, v3, v2}, LU1/f;-><init>(ILjava/lang/Object;)V

    .line 874
    .line 875
    .line 876
    move-object/from16 v2, v18

    .line 877
    .line 878
    invoke-direct {v0, v2, v1}, LF2/H;-><init>(Lz2/d;LF2/F;)V

    .line 879
    .line 880
    .line 881
    const-class v1, Ljava/nio/ByteBuffer;

    .line 882
    .line 883
    const-string v2, "legacy_append"

    .line 884
    .line 885
    invoke-virtual {v7, v0, v1, v9, v2}, Lcom/bumptech/glide/j;->d(Lw2/n;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 886
    .line 887
    .line 888
    new-instance v1, LF2/a;

    .line 889
    .line 890
    invoke-direct {v1, v14, v0}, LF2/a;-><init>(Landroid/content/res/Resources;Lw2/n;)V

    .line 891
    .line 892
    .line 893
    const-class v0, Ljava/nio/ByteBuffer;

    .line 894
    .line 895
    const-string v2, "legacy_append"

    .line 896
    .line 897
    invoke-virtual {v7, v1, v0, v10, v2}, Lcom/bumptech/glide/j;->d(Lw2/n;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    .line 898
    .line 899
    .line 900
    :cond_6
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 901
    .line 902
    .line 903
    move-result-object v0

    .line 904
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 905
    .line 906
    .line 907
    move-result v1

    .line 908
    if-eqz v1, :cond_7

    .line 909
    .line 910
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 911
    .line 912
    .line 913
    move-result-object v1

    .line 914
    check-cast v1, Lcom/bumptech/glide/integration/okhttp3/OkHttpGlideModule;

    .line 915
    .line 916
    :try_start_1
    invoke-virtual {v1, v7}, Lcom/bumptech/glide/integration/okhttp3/OkHttpGlideModule;->a(Lcom/bumptech/glide/j;)V
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_0

    .line 917
    .line 918
    .line 919
    goto :goto_4

    .line 920
    :catch_0
    move-exception v0

    .line 921
    move-object v2, v0

    .line 922
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 923
    .line 924
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 925
    .line 926
    .line 927
    move-result-object v1

    .line 928
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 929
    .line 930
    .line 931
    move-result-object v1

    .line 932
    const-string v3, "Attempting to register a Glide v3 module. If you see this, you or one of your dependencies may be including Glide v3 even though you\'re using Glide v4. You\'ll need to find and remove (or update) the offending dependency. The v3 module name is: "

    .line 933
    .line 934
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 935
    .line 936
    .line 937
    move-result-object v1

    .line 938
    invoke-direct {v0, v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 939
    .line 940
    .line 941
    throw v0

    .line 942
    :cond_7
    return-object v7

    .line 943
    :catchall_0
    move-exception v0

    .line 944
    monitor-exit v4

    .line 945
    throw v0
.end method

.method public static i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, LE3/f;->o(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x3

    .line 6
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    new-array v0, v0, [Ljava/lang/Object;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    aput-object p0, v0, v1

    .line 17
    .line 18
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public static j(IILjava/math/RoundingMode;)I
    .locals 5

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_7

    .line 5
    .line 6
    div-int v0, p0, p1

    .line 7
    .line 8
    mul-int v1, p1, v0

    .line 9
    .line 10
    sub-int v1, p0, v1

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    return v0

    .line 15
    :cond_0
    xor-int/2addr p0, p1

    .line 16
    shr-int/lit8 p0, p0, 0x1f

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    or-int/2addr p0, v2

    .line 20
    sget-object v3, LB4/d;->a:[I

    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    aget v3, v3, v4

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    packed-switch v3, :pswitch_data_0

    .line 30
    .line 31
    .line 32
    new-instance p0, Ljava/lang/AssertionError;

    .line 33
    .line 34
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 35
    .line 36
    .line 37
    throw p0

    .line 38
    :pswitch_0
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    sub-int/2addr p1, v1

    .line 47
    sub-int/2addr v1, p1

    .line 48
    if-nez v1, :cond_3

    .line 49
    .line 50
    sget-object p1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 51
    .line 52
    if-eq p2, p1, :cond_4

    .line 53
    .line 54
    sget-object p1, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    .line 55
    .line 56
    if-ne p2, p1, :cond_1

    .line 57
    .line 58
    const/4 p1, 0x1

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const/4 p1, 0x0

    .line 61
    :goto_0
    and-int/lit8 p2, v0, 0x1

    .line 62
    .line 63
    if-eqz p2, :cond_2

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    const/4 v2, 0x0

    .line 67
    :goto_1
    and-int/2addr p1, v2

    .line 68
    if-eqz p1, :cond_6

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_3
    if-lez v1, :cond_6

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :pswitch_1
    if-lez p0, :cond_6

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :pswitch_2
    if-gez p0, :cond_6

    .line 78
    .line 79
    :cond_4
    :goto_2
    :pswitch_3
    add-int/2addr v0, p0

    .line 80
    goto :goto_4

    .line 81
    :pswitch_4
    if-nez v1, :cond_5

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_5
    const/4 v2, 0x0

    .line 85
    :goto_3
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Cw;->i(Z)V

    .line 86
    .line 87
    .line 88
    :cond_6
    :goto_4
    :pswitch_5
    return v0

    .line 89
    :cond_7
    new-instance p0, Ljava/lang/ArithmeticException;

    .line 90
    .line 91
    const-string p1, "/ by zero"

    .line 92
    .line 93
    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw p0

    .line 97
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .line 1
    invoke-static {p0}, LE3/f;->o(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x6

    .line 6
    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public static l(Ljava/lang/Object;)V
    .locals 4

    .line 1
    sget-boolean v0, LE3/f;->e:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-string v2, "ResourcesFlusher"

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    :try_start_0
    const-string v0, "android.content.res.ThemedResourceCache"

    .line 9
    .line 10
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, LE3/f;->d:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception v0

    .line 18
    const-string v3, "Could not find ThemedResourceCache class"

    .line 19
    .line 20
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 21
    .line 22
    .line 23
    :goto_0
    sput-boolean v1, LE3/f;->e:Z

    .line 24
    .line 25
    :cond_0
    sget-object v0, LE3/f;->d:Ljava/lang/Class;

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    sget-boolean v3, LE3/f;->g:Z

    .line 31
    .line 32
    if-nez v3, :cond_2

    .line 33
    .line 34
    :try_start_1
    const-string v3, "mUnthemedEntries"

    .line 35
    .line 36
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sput-object v0, LE3/f;->f:Ljava/lang/reflect/Field;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :catch_1
    move-exception v0

    .line 47
    const-string v3, "Could not retrieve ThemedResourceCache#mUnthemedEntries field"

    .line 48
    .line 49
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    .line 51
    .line 52
    :goto_1
    sput-boolean v1, LE3/f;->g:Z

    .line 53
    .line 54
    :cond_2
    sget-object v0, LE3/f;->f:Ljava/lang/reflect/Field;

    .line 55
    .line 56
    if-nez v0, :cond_3

    .line 57
    .line 58
    return-void

    .line 59
    :cond_3
    :try_start_2
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    check-cast p0, Landroid/util/LongSparseArray;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :catch_2
    move-exception p0

    .line 67
    const-string v0, "Could not retrieve value from ThemedResourceCache#mUnthemedEntries"

    .line 68
    .line 69
    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    .line 71
    .line 72
    const/4 p0, 0x0

    .line 73
    :goto_2
    if-eqz p0, :cond_4

    .line 74
    .line 75
    invoke-virtual {p0}, Landroid/util/LongSparseArray;->clear()V

    .line 76
    .line 77
    .line 78
    :cond_4
    return-void
.end method

.method public static m(Landroid/widget/EdgeEffect;)F
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, LQ/c;->b(Landroid/widget/EdgeEffect;)F

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
.end method

.method public static n(I)I
    .locals 1

    .line 1
    const/16 v0, 0x14

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x1e

    .line 6
    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    .line 9
    packed-switch p0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    packed-switch p0, :pswitch_data_1

    .line 13
    .line 14
    .line 15
    const p0, -0x7fffffff

    .line 16
    .line 17
    .line 18
    return p0

    .line 19
    :pswitch_0
    const p0, 0x52080

    .line 20
    .line 21
    .line 22
    return p0

    .line 23
    :pswitch_1
    const p0, 0x3e800

    .line 24
    .line 25
    .line 26
    return p0

    .line 27
    :pswitch_2
    const/16 p0, 0x1f40

    .line 28
    .line 29
    return p0

    .line 30
    :pswitch_3
    const p0, 0x2ebae4

    .line 31
    .line 32
    .line 33
    return p0

    .line 34
    :pswitch_4
    const/16 p0, 0x1b58

    .line 35
    .line 36
    return p0

    .line 37
    :pswitch_5
    const/16 p0, 0x3e80

    .line 38
    .line 39
    return p0

    .line 40
    :pswitch_6
    const p0, 0x186a0

    .line 41
    .line 42
    .line 43
    return p0

    .line 44
    :pswitch_7
    const p0, 0x9c40

    .line 45
    .line 46
    .line 47
    return p0

    .line 48
    :pswitch_8
    const p0, 0x2ee00

    .line 49
    .line 50
    .line 51
    return p0

    .line 52
    :pswitch_9
    const p0, 0xbb800

    .line 53
    .line 54
    .line 55
    return p0

    .line 56
    :pswitch_a
    const p0, 0x13880

    .line 57
    .line 58
    .line 59
    return p0

    .line 60
    :cond_0
    :pswitch_b
    const p0, 0x225510

    .line 61
    .line 62
    .line 63
    return p0

    .line 64
    :cond_1
    const p0, 0xf906

    .line 65
    .line 66
    .line 67
    return p0

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_b
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public static o(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    const-string v2, "TRuntime."

    .line 6
    .line 7
    if-ge v0, v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/16 v1, 0x17

    .line 18
    .line 19
    if-le v0, v1, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    :cond_0
    return-object p0

    .line 27
    :cond_1
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method

.method public static p(Landroid/content/Context;)Ljava/io/File;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v2, ".font"

    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v2, "-"

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-static {}, Landroid/os/Process;->myTid()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const/4 v2, 0x0

    .line 43
    :goto_0
    const/16 v3, 0x64

    .line 44
    .line 45
    if-ge v2, v3, :cond_2

    .line 46
    .line 47
    new-instance v3, Ljava/io/File;

    .line 48
    .line 49
    new-instance v4, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    invoke-direct {v3, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 68
    .line 69
    .line 70
    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    if-eqz v4, :cond_1

    .line 72
    .line 73
    return-object v3

    .line 74
    :catch_0
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    return-object v0
.end method

.method public static q(Landroid/widget/TextView;)LL/a;
    .locals 9

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1c

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    new-instance v0, LL/a;

    .line 8
    .line 9
    invoke-static {p0}, Lm/d;->i(Landroid/widget/TextView;)Landroid/text/PrecomputedText$Params;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-direct {v0, p0}, LL/a;-><init>(Landroid/text/PrecomputedText$Params;)V

    .line 14
    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    new-instance v2, Landroid/text/TextPaint;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-direct {v2, v3}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    .line 24
    .line 25
    .line 26
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    const/4 v5, 0x1

    .line 30
    const/16 v6, 0x17

    .line 31
    .line 32
    if-lt v3, v6, :cond_1

    .line 33
    .line 34
    const/4 v3, 0x1

    .line 35
    const/4 v7, 0x1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v3, 0x0

    .line 38
    const/4 v7, 0x0

    .line 39
    :goto_0
    sget-object v8, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    .line 40
    .line 41
    if-lt v0, v6, :cond_2

    .line 42
    .line 43
    invoke-static {p0}, Ll/H;->b(Landroid/widget/TextView;)I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    invoke-static {p0}, Ll/H;->f(Landroid/widget/TextView;)I

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    instance-of v6, v6, Landroid/text/method/PasswordTransformationMethod;

    .line 56
    .line 57
    if-eqz v6, :cond_3

    .line 58
    .line 59
    sget-object p0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_3
    if-lt v0, v1, :cond_6

    .line 63
    .line 64
    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    and-int/lit8 v0, v0, 0xf

    .line 69
    .line 70
    const/4 v1, 0x3

    .line 71
    if-ne v0, v1, :cond_6

    .line 72
    .line 73
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextLocale()Ljava/util/Locale;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-static {p0}, LD/q;->c(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-static {p0}, Lm/d;->c(Landroid/icu/text/DecimalFormatSymbols;)[Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    aget-object p0, p0, v4

    .line 86
    .line 87
    invoke-virtual {p0, v4}, Ljava/lang/String;->codePointAt(I)I

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(I)B

    .line 92
    .line 93
    .line 94
    move-result p0

    .line 95
    if-eq p0, v5, :cond_5

    .line 96
    .line 97
    const/4 v0, 0x2

    .line 98
    if-ne p0, v0, :cond_4

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_4
    sget-object p0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_5
    :goto_1
    sget-object p0, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-ne v0, v5, :cond_7

    .line 112
    .line 113
    const/4 v4, 0x1

    .line 114
    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getTextDirection()I

    .line 115
    .line 116
    .line 117
    move-result p0

    .line 118
    packed-switch p0, :pswitch_data_0

    .line 119
    .line 120
    .line 121
    if-eqz v4, :cond_8

    .line 122
    .line 123
    sget-object p0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_8
    sget-object p0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    .line 127
    .line 128
    goto :goto_2

    .line 129
    :pswitch_0
    sget-object p0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :pswitch_1
    sget-object p0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :pswitch_2
    sget-object p0, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :pswitch_3
    sget-object p0, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :pswitch_4
    sget-object p0, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :pswitch_5
    sget-object p0, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    .line 145
    .line 146
    :goto_2
    new-instance v0, LL/a;

    .line 147
    .line 148
    invoke-direct {v0, v2, p0, v3, v7}, LL/a;-><init>(Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;II)V

    .line 149
    .line 150
    .line 151
    return-object v0

    .line 152
    nop

    .line 153
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static r(Landroid/view/ViewGroup;Landroid/view/View;)Z
    .locals 2

    .line 1
    :goto_0
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    if-ne p1, p0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x1

    .line 7
    return p0

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    instance-of v1, p1, Landroid/view/View;

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    return v0

    .line 17
    :cond_1
    check-cast p1, Landroid/view/View;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    return v0
.end method

.method public static s(ILjava/math/RoundingMode;)I
    .locals 3

    .line 1
    if-lez p0, :cond_2

    .line 2
    .line 3
    sget-object v0, LB4/d;->a:[I

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    aget p1, v0, p1

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    packed-switch p1, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    new-instance p0, Ljava/lang/AssertionError;

    .line 16
    .line 17
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    .line 18
    .line 19
    .line 20
    throw p0

    .line 21
    :pswitch_0
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    const v0, -0x4afb0ccd

    .line 26
    .line 27
    .line 28
    ushr-int/2addr v0, p1

    .line 29
    rsub-int/lit8 p1, p1, 0x1f

    .line 30
    .line 31
    sub-int/2addr v0, p0

    .line 32
    not-int p0, v0

    .line 33
    not-int p0, p0

    .line 34
    ushr-int/lit8 p0, p0, 0x1f

    .line 35
    .line 36
    add-int/2addr p1, p0

    .line 37
    return p1

    .line 38
    :pswitch_1
    sub-int/2addr p0, v0

    .line 39
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    rsub-int/lit8 p0, p0, 0x20

    .line 44
    .line 45
    return p0

    .line 46
    :pswitch_2
    const/4 p1, 0x0

    .line 47
    if-lez p0, :cond_0

    .line 48
    .line 49
    const/4 v1, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/4 v1, 0x0

    .line 52
    :goto_0
    add-int/lit8 v2, p0, -0x1

    .line 53
    .line 54
    and-int/2addr v2, p0

    .line 55
    if-nez v2, :cond_1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    const/4 v0, 0x0

    .line 59
    :goto_1
    and-int p1, v1, v0

    .line 60
    .line 61
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Cw;->i(Z)V

    .line 62
    .line 63
    .line 64
    :pswitch_3
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    rsub-int/lit8 p0, p0, 0x1f

    .line 69
    .line 70
    return p0

    .line 71
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 72
    .line 73
    const-string v0, "x ("

    .line 74
    .line 75
    const-string v1, ") must be > 0"

    .line 76
    .line 77
    invoke-static {v0, p0, v1}, LA0/O;->y(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p1

    .line 85
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static t(Landroid/content/Context;Landroid/net/Uri;)Ljava/nio/MappedByteBuffer;
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    :try_start_0
    const-string v1, "r"

    .line 7
    .line 8
    invoke-virtual {p0, p1, v1, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-nez p0, :cond_1

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    :cond_0
    return-object v0

    .line 20
    :cond_1
    :try_start_1
    new-instance p1, Ljava/io/FileInputStream;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-direct {p1, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    .line 28
    .line 29
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    .line 34
    .line 35
    .line 36
    move-result-wide v6

    .line 37
    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    .line 38
    .line 39
    const-wide/16 v4, 0x0

    .line 40
    .line 41
    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    .line 42
    .line 43
    .line 44
    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 45
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 46
    .line 47
    .line 48
    :try_start_4
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 49
    .line 50
    .line 51
    return-object v1

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    goto :goto_1

    .line 54
    :catchall_1
    move-exception v1

    .line 55
    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catchall_2
    move-exception p1

    .line 60
    :try_start_6
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 61
    .line 62
    .line 63
    :goto_0
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 64
    :goto_1
    :try_start_7
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 65
    .line 66
    .line 67
    goto :goto_2

    .line 68
    :catchall_3
    move-exception p0

    .line 69
    :try_start_8
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    :goto_2
    throw p1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 73
    :catch_0
    return-object v0
.end method

.method public static u(Landroid/widget/EdgeEffect;FF)F
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1f

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0, p1, p2}, LQ/c;->c(Landroid/widget/EdgeEffect;FF)F

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    invoke-static {p0, p1, p2}, LQ/b;->a(Landroid/widget/EdgeEffect;FF)V

    .line 13
    .line 14
    .line 15
    return p1
.end method

.method public static v(Lp0/E;)Ljava/util/ArrayList;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lp0/E;->z()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_0
    const/4 v1, 0x7

    .line 12
    invoke-virtual {v0, v1}, Lp0/E;->M(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual/range {p0 .. p0}, Lp0/E;->l()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const v4, 0x64666c38

    .line 20
    .line 21
    .line 22
    const/4 v5, 0x1

    .line 23
    if-ne v3, v4, :cond_2

    .line 24
    .line 25
    new-instance v3, Lp0/E;

    .line 26
    .line 27
    invoke-direct {v3}, Lp0/E;-><init>()V

    .line 28
    .line 29
    .line 30
    new-instance v4, Ljava/util/zip/Inflater;

    .line 31
    .line 32
    invoke-direct {v4, v5}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 33
    .line 34
    .line 35
    :try_start_0
    invoke-static {v0, v3, v4}, Lp0/M;->K(Lp0/E;Lp0/E;Ljava/util/zip/Inflater;)Z

    .line 36
    .line 37
    .line 38
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->end()V

    .line 42
    .line 43
    .line 44
    return-object v2

    .line 45
    :cond_1
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->end()V

    .line 46
    .line 47
    .line 48
    move-object v0, v3

    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    move-object v1, v0

    .line 52
    invoke-virtual {v4}, Ljava/util/zip/Inflater;->end()V

    .line 53
    .line 54
    .line 55
    throw v1

    .line 56
    :cond_2
    const v4, 0x72617720

    .line 57
    .line 58
    .line 59
    if-eq v3, v4, :cond_3

    .line 60
    .line 61
    return-object v2

    .line 62
    :cond_3
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    .line 63
    .line 64
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .line 66
    .line 67
    iget v4, v0, Lp0/E;->b:I

    .line 68
    .line 69
    iget v6, v0, Lp0/E;->c:I

    .line 70
    .line 71
    :goto_1
    if-ge v4, v6, :cond_14

    .line 72
    .line 73
    invoke-virtual {v0}, Lp0/E;->l()I

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    add-int/2addr v7, v4

    .line 78
    if-le v7, v4, :cond_11

    .line 79
    .line 80
    if-le v7, v6, :cond_4

    .line 81
    .line 82
    goto/16 :goto_c

    .line 83
    .line 84
    :cond_4
    invoke-virtual {v0}, Lp0/E;->l()I

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    const v8, 0x6d657368

    .line 89
    .line 90
    .line 91
    if-ne v4, v8, :cond_13

    .line 92
    .line 93
    invoke-virtual {v0}, Lp0/E;->l()I

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    const/16 v8, 0x2710

    .line 98
    .line 99
    if-le v4, v8, :cond_5

    .line 100
    .line 101
    :goto_2
    move-object v1, v2

    .line 102
    move-object/from16 v20, v3

    .line 103
    .line 104
    move/from16 p0, v6

    .line 105
    .line 106
    :goto_3
    const/16 v22, 0x1

    .line 107
    .line 108
    goto/16 :goto_b

    .line 109
    .line 110
    :cond_5
    new-array v8, v4, [F

    .line 111
    .line 112
    const/4 v9, 0x0

    .line 113
    const/4 v10, 0x0

    .line 114
    :goto_4
    if-ge v10, v4, :cond_6

    .line 115
    .line 116
    invoke-virtual {v0}, Lp0/E;->l()I

    .line 117
    .line 118
    .line 119
    move-result v11

    .line 120
    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 121
    .line 122
    .line 123
    move-result v11

    .line 124
    aput v11, v8, v10

    .line 125
    .line 126
    add-int/lit8 v10, v10, 0x1

    .line 127
    .line 128
    goto :goto_4

    .line 129
    :cond_6
    invoke-virtual {v0}, Lp0/E;->l()I

    .line 130
    .line 131
    .line 132
    move-result v10

    .line 133
    const/16 v11, 0x7d00

    .line 134
    .line 135
    if-le v10, v11, :cond_7

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_7
    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    .line 139
    .line 140
    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    .line 141
    .line 142
    .line 143
    move-result-wide v13

    .line 144
    move/from16 p0, v6

    .line 145
    .line 146
    int-to-double v5, v4

    .line 147
    mul-double v5, v5, v11

    .line 148
    .line 149
    invoke-static {v5, v6}, Ljava/lang/Math;->log(D)D

    .line 150
    .line 151
    .line 152
    move-result-wide v5

    .line 153
    div-double/2addr v5, v13

    .line 154
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    .line 155
    .line 156
    .line 157
    move-result-wide v5

    .line 158
    double-to-int v5, v5

    .line 159
    new-instance v6, Lp0/D;

    .line 160
    .line 161
    iget-object v15, v0, Lp0/E;->a:[B

    .line 162
    .line 163
    invoke-direct {v6, v15, v9, v2}, Lp0/D;-><init>([BILjava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    iget v15, v0, Lp0/E;->b:I

    .line 167
    .line 168
    const/16 v2, 0x8

    .line 169
    .line 170
    mul-int/lit8 v15, v15, 0x8

    .line 171
    .line 172
    invoke-virtual {v6, v15}, Lp0/D;->r(I)V

    .line 173
    .line 174
    .line 175
    mul-int/lit8 v15, v10, 0x5

    .line 176
    .line 177
    new-array v15, v15, [F

    .line 178
    .line 179
    const/4 v9, 0x5

    .line 180
    new-array v11, v9, [I

    .line 181
    .line 182
    const/4 v12, 0x0

    .line 183
    const/16 v19, 0x0

    .line 184
    .line 185
    :goto_5
    if-ge v12, v10, :cond_b

    .line 186
    .line 187
    const/4 v2, 0x0

    .line 188
    :goto_6
    if-ge v2, v9, :cond_a

    .line 189
    .line 190
    aget v20, v11, v2

    .line 191
    .line 192
    invoke-virtual {v6, v5}, Lp0/D;->i(I)I

    .line 193
    .line 194
    .line 195
    move-result v21

    .line 196
    shr-int/lit8 v22, v21, 0x1

    .line 197
    .line 198
    const/16 v16, 0x1

    .line 199
    .line 200
    and-int/lit8 v9, v21, 0x1

    .line 201
    .line 202
    move-object/from16 v16, v15

    .line 203
    .line 204
    neg-int v9, v9

    .line 205
    xor-int v9, v22, v9

    .line 206
    .line 207
    add-int v9, v9, v20

    .line 208
    .line 209
    if-ge v9, v4, :cond_9

    .line 210
    .line 211
    if-gez v9, :cond_8

    .line 212
    .line 213
    goto :goto_7

    .line 214
    :cond_8
    add-int/lit8 v20, v19, 0x1

    .line 215
    .line 216
    aget v21, v8, v9

    .line 217
    .line 218
    aput v21, v16, v19

    .line 219
    .line 220
    aput v9, v11, v2

    .line 221
    .line 222
    add-int/lit8 v2, v2, 0x1

    .line 223
    .line 224
    move-object/from16 v15, v16

    .line 225
    .line 226
    move/from16 v19, v20

    .line 227
    .line 228
    const/4 v9, 0x5

    .line 229
    goto :goto_6

    .line 230
    :cond_9
    :goto_7
    move-object/from16 v20, v3

    .line 231
    .line 232
    const/4 v1, 0x0

    .line 233
    goto :goto_3

    .line 234
    :cond_a
    move-object/from16 v16, v15

    .line 235
    .line 236
    add-int/lit8 v12, v12, 0x1

    .line 237
    .line 238
    const/16 v2, 0x8

    .line 239
    .line 240
    const/4 v9, 0x5

    .line 241
    goto :goto_5

    .line 242
    :cond_b
    move-object/from16 v16, v15

    .line 243
    .line 244
    invoke-virtual {v6}, Lp0/D;->g()I

    .line 245
    .line 246
    .line 247
    move-result v2

    .line 248
    add-int/2addr v2, v1

    .line 249
    and-int/lit8 v2, v2, -0x8

    .line 250
    .line 251
    invoke-virtual {v6, v2}, Lp0/D;->r(I)V

    .line 252
    .line 253
    .line 254
    const/16 v2, 0x20

    .line 255
    .line 256
    invoke-virtual {v6, v2}, Lp0/D;->i(I)I

    .line 257
    .line 258
    .line 259
    move-result v4

    .line 260
    new-array v5, v4, [Lc/g;

    .line 261
    .line 262
    const/4 v8, 0x0

    .line 263
    :goto_8
    if-ge v8, v4, :cond_10

    .line 264
    .line 265
    const/16 v9, 0x8

    .line 266
    .line 267
    invoke-virtual {v6, v9}, Lp0/D;->i(I)I

    .line 268
    .line 269
    .line 270
    move-result v11

    .line 271
    invoke-virtual {v6, v9}, Lp0/D;->i(I)I

    .line 272
    .line 273
    .line 274
    move-result v12

    .line 275
    invoke-virtual {v6, v2}, Lp0/D;->i(I)I

    .line 276
    .line 277
    .line 278
    move-result v1

    .line 279
    const v2, 0x1f400

    .line 280
    .line 281
    .line 282
    if-le v1, v2, :cond_c

    .line 283
    .line 284
    goto :goto_7

    .line 285
    :cond_c
    move-object/from16 v20, v3

    .line 286
    .line 287
    int-to-double v2, v10

    .line 288
    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    .line 289
    .line 290
    mul-double v2, v2, v17

    .line 291
    .line 292
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    .line 293
    .line 294
    .line 295
    move-result-wide v2

    .line 296
    div-double/2addr v2, v13

    .line 297
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 298
    .line 299
    .line 300
    move-result-wide v2

    .line 301
    double-to-int v2, v2

    .line 302
    mul-int/lit8 v3, v1, 0x3

    .line 303
    .line 304
    new-array v3, v3, [F

    .line 305
    .line 306
    mul-int/lit8 v9, v1, 0x2

    .line 307
    .line 308
    new-array v9, v9, [F

    .line 309
    .line 310
    const/4 v15, 0x0

    .line 311
    const/16 v23, 0x0

    .line 312
    .line 313
    :goto_9
    if-ge v15, v1, :cond_f

    .line 314
    .line 315
    invoke-virtual {v6, v2}, Lp0/D;->i(I)I

    .line 316
    .line 317
    .line 318
    move-result v24

    .line 319
    shr-int/lit8 v25, v24, 0x1

    .line 320
    .line 321
    move/from16 v26, v1

    .line 322
    .line 323
    const/16 v22, 0x1

    .line 324
    .line 325
    and-int/lit8 v1, v24, 0x1

    .line 326
    .line 327
    neg-int v1, v1

    .line 328
    xor-int v1, v25, v1

    .line 329
    .line 330
    add-int v1, v1, v23

    .line 331
    .line 332
    if-ltz v1, :cond_d

    .line 333
    .line 334
    if-lt v1, v10, :cond_e

    .line 335
    .line 336
    :cond_d
    const/16 v22, 0x1

    .line 337
    .line 338
    goto :goto_a

    .line 339
    :cond_e
    mul-int/lit8 v23, v15, 0x3

    .line 340
    .line 341
    mul-int/lit8 v24, v1, 0x5

    .line 342
    .line 343
    aget v25, v16, v24

    .line 344
    .line 345
    aput v25, v3, v23

    .line 346
    .line 347
    add-int/lit8 v25, v23, 0x1

    .line 348
    .line 349
    add-int/lit8 v27, v24, 0x1

    .line 350
    .line 351
    aget v27, v16, v27

    .line 352
    .line 353
    aput v27, v3, v25

    .line 354
    .line 355
    add-int/lit8 v23, v23, 0x2

    .line 356
    .line 357
    add-int/lit8 v25, v24, 0x2

    .line 358
    .line 359
    aget v25, v16, v25

    .line 360
    .line 361
    aput v25, v3, v23

    .line 362
    .line 363
    mul-int/lit8 v23, v15, 0x2

    .line 364
    .line 365
    add-int/lit8 v25, v24, 0x3

    .line 366
    .line 367
    aget v25, v16, v25

    .line 368
    .line 369
    aput v25, v9, v23

    .line 370
    .line 371
    const/16 v22, 0x1

    .line 372
    .line 373
    add-int/lit8 v23, v23, 0x1

    .line 374
    .line 375
    add-int/lit8 v24, v24, 0x4

    .line 376
    .line 377
    aget v24, v16, v24

    .line 378
    .line 379
    aput v24, v9, v23

    .line 380
    .line 381
    add-int/lit8 v15, v15, 0x1

    .line 382
    .line 383
    move/from16 v23, v1

    .line 384
    .line 385
    move/from16 v1, v26

    .line 386
    .line 387
    goto :goto_9

    .line 388
    :goto_a
    const/4 v1, 0x0

    .line 389
    goto :goto_b

    .line 390
    :cond_f
    const/16 v22, 0x1

    .line 391
    .line 392
    new-instance v1, Lc/g;

    .line 393
    .line 394
    invoke-direct {v1, v11, v3, v9, v12}, Lc/g;-><init>(I[F[FI)V

    .line 395
    .line 396
    .line 397
    aput-object v1, v5, v8

    .line 398
    .line 399
    add-int/lit8 v8, v8, 0x1

    .line 400
    .line 401
    move-object/from16 v3, v20

    .line 402
    .line 403
    const/4 v1, 0x7

    .line 404
    const/16 v2, 0x20

    .line 405
    .line 406
    goto/16 :goto_8

    .line 407
    .line 408
    :cond_10
    move-object/from16 v20, v3

    .line 409
    .line 410
    const/16 v22, 0x1

    .line 411
    .line 412
    new-instance v1, LV0/e;

    .line 413
    .line 414
    invoke-direct {v1, v5}, LV0/e;-><init>([Lc/g;)V

    .line 415
    .line 416
    .line 417
    :goto_b
    if-nez v1, :cond_12

    .line 418
    .line 419
    :cond_11
    :goto_c
    const/4 v2, 0x0

    .line 420
    goto :goto_e

    .line 421
    :cond_12
    move-object/from16 v2, v20

    .line 422
    .line 423
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    .line 425
    .line 426
    goto :goto_d

    .line 427
    :cond_13
    move-object v2, v3

    .line 428
    move/from16 p0, v6

    .line 429
    .line 430
    const/16 v22, 0x1

    .line 431
    .line 432
    :goto_d
    invoke-virtual {v0, v7}, Lp0/E;->L(I)V

    .line 433
    .line 434
    .line 435
    move/from16 v6, p0

    .line 436
    .line 437
    move-object v3, v2

    .line 438
    move v4, v7

    .line 439
    const/4 v1, 0x7

    .line 440
    const/4 v2, 0x0

    .line 441
    const/4 v5, 0x1

    .line 442
    goto/16 :goto_1

    .line 443
    .line 444
    :cond_14
    move-object v2, v3

    .line 445
    :goto_e
    return-object v2
.end method

.method public static w([B)LB0/w0;
    .locals 13

    .line 1
    new-instance v0, Lp0/E;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lp0/E;-><init>([B)V

    .line 4
    .line 5
    .line 6
    iget p0, v0, Lp0/E;->c:I

    .line 7
    .line 8
    const/16 v1, 0x20

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-ge p0, v1, :cond_0

    .line 12
    .line 13
    return-object v2

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    invoke-virtual {v0, p0}, Lp0/E;->L(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lp0/E;->a()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-virtual {v0}, Lp0/E;->l()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const-string v4, "PsshAtomUtil"

    .line 27
    .line 28
    if-eq v3, v1, :cond_1

    .line 29
    .line 30
    new-instance p0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v0, "Advertised atom size ("

    .line 33
    .line 34
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v0, ") does not match buffer size: "

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-static {v4, p0}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-object v2

    .line 56
    :cond_1
    invoke-virtual {v0}, Lp0/E;->l()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    const v3, 0x70737368    # 3.013775E29f

    .line 61
    .line 62
    .line 63
    if-eq v1, v3, :cond_2

    .line 64
    .line 65
    const-string p0, "Atom type is not pssh: "

    .line 66
    .line 67
    invoke-static {p0, v1, v4}, Lcom/google/protobuf/U2;->v(Ljava/lang/String;ILjava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-object v2

    .line 71
    :cond_2
    invoke-virtual {v0}, Lp0/E;->l()I

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    invoke-static {v1}, Lo1/e;->e(I)I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    const/4 v3, 0x1

    .line 80
    if-le v1, v3, :cond_3

    .line 81
    .line 82
    const-string p0, "Unsupported pssh version: "

    .line 83
    .line 84
    invoke-static {p0, v1, v4}, Lcom/google/protobuf/U2;->v(Ljava/lang/String;ILjava/lang/String;)V

    .line 85
    .line 86
    .line 87
    return-object v2

    .line 88
    :cond_3
    new-instance v5, Ljava/util/UUID;

    .line 89
    .line 90
    invoke-virtual {v0}, Lp0/E;->t()J

    .line 91
    .line 92
    .line 93
    move-result-wide v6

    .line 94
    invoke-virtual {v0}, Lp0/E;->t()J

    .line 95
    .line 96
    .line 97
    move-result-wide v8

    .line 98
    invoke-direct {v5, v6, v7, v8, v9}, Ljava/util/UUID;-><init>(JJ)V

    .line 99
    .line 100
    .line 101
    if-ne v1, v3, :cond_4

    .line 102
    .line 103
    invoke-virtual {v0}, Lp0/E;->D()I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    new-array v6, v3, [Ljava/util/UUID;

    .line 108
    .line 109
    const/4 v7, 0x0

    .line 110
    :goto_0
    if-ge v7, v3, :cond_5

    .line 111
    .line 112
    new-instance v8, Ljava/util/UUID;

    .line 113
    .line 114
    invoke-virtual {v0}, Lp0/E;->t()J

    .line 115
    .line 116
    .line 117
    move-result-wide v9

    .line 118
    invoke-virtual {v0}, Lp0/E;->t()J

    .line 119
    .line 120
    .line 121
    move-result-wide v11

    .line 122
    invoke-direct {v8, v9, v10, v11, v12}, Ljava/util/UUID;-><init>(JJ)V

    .line 123
    .line 124
    .line 125
    aput-object v8, v6, v7

    .line 126
    .line 127
    add-int/lit8 v7, v7, 0x1

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_4
    move-object v6, v2

    .line 131
    :cond_5
    invoke-virtual {v0}, Lp0/E;->D()I

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    invoke-virtual {v0}, Lp0/E;->a()I

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    if-eq v3, v7, :cond_6

    .line 140
    .line 141
    new-instance p0, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    const-string v0, "Atom data size ("

    .line 144
    .line 145
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    const-string v0, ") does not match the bytes left: "

    .line 152
    .line 153
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    invoke-static {v4, p0}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    return-object v2

    .line 167
    :cond_6
    new-array v2, v3, [B

    .line 168
    .line 169
    invoke-virtual {v0, p0, v2, v3}, Lp0/E;->j(I[BI)V

    .line 170
    .line 171
    .line 172
    new-instance p0, LB0/w0;

    .line 173
    .line 174
    invoke-direct {p0, v5, v1, v2, v6}, LB0/w0;-><init>(Ljava/util/UUID;I[B[Ljava/util/UUID;)V

    .line 175
    .line 176
    .line 177
    return-object p0
.end method

.method public static x(Ljava/util/UUID;[B)[B
    .locals 3

    .line 1
    invoke-static {p1}, LE3/f;->w([B)LB0/w0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    iget-object v1, p1, LB0/w0;->I:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Ljava/util/UUID;

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    const-string v2, "UUID mismatch. Expected: "

    .line 22
    .line 23
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p0, ", got: "

    .line 30
    .line 31
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object p0, p1, LB0/w0;->I:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p0, Ljava/util/UUID;

    .line 37
    .line 38
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string p0, "."

    .line 42
    .line 43
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    const-string p1, "PsshAtomUtil"

    .line 51
    .line 52
    invoke-static {p1, p0}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-object v0

    .line 56
    :cond_1
    iget-object p0, p1, LB0/w0;->J:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast p0, [B

    .line 59
    .line 60
    return-object p0
.end method

.method public static final y(Landroid/view/View;LS1/g;)V
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0b05a9

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static z(Landroid/widget/TextView;I)V
    .locals 3

    .line 1
    if-ltz p1, :cond_3

    .line 2
    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    .line 5
    const/16 v1, 0x1c

    .line 6
    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    invoke-static {p0, p1}, Lm/d;->l(Landroid/widget/TextView;I)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p0}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 31
    .line 32
    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-le p1, v1, :cond_2

    .line 37
    .line 38
    add-int/2addr p1, v0

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 52
    .line 53
    .line 54
    :cond_2
    return-void

    .line 55
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 56
    .line 57
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 58
    .line 59
    .line 60
    throw p0
.end method
