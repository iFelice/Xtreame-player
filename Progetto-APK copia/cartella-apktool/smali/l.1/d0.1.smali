.class public final Ll/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/widget/TextView;

.field public b:Ll/e1;

.field public c:Ll/e1;

.field public d:Ll/e1;

.field public e:Ll/e1;

.field public f:Ll/e1;

.field public g:Ll/e1;

.field public h:Ll/e1;

.field public final i:Ll/m0;

.field public j:I

.field public k:I

.field public l:Landroid/graphics/Typeface;

.field public m:Z


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Ll/d0;->j:I

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Ll/d0;->k:I

    .line 9
    .line 10
    iput-object p1, p0, Ll/d0;->a:Landroid/widget/TextView;

    .line 11
    .line 12
    new-instance v0, Ll/m0;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Ll/m0;-><init>(Landroid/widget/TextView;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Ll/d0;->i:Ll/m0;

    .line 18
    .line 19
    return-void
.end method

.method public static c(Landroid/content/Context;Ll/y;I)Ll/e1;
    .locals 1

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p1, Ll/y;->a:Ll/V0;

    .line 3
    .line 4
    invoke-virtual {v0, p0, p2}, Ll/V0;->i(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 5
    .line 6
    .line 7
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p1

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    new-instance p1, Ll/e1;

    .line 12
    .line 13
    const/4 p2, 0x0

    .line 14
    invoke-direct {p1, p2}, Ll/e1;-><init>(I)V

    .line 15
    .line 16
    .line 17
    const/4 p2, 0x1

    .line 18
    iput-boolean p2, p1, Ll/e1;->c:Z

    .line 19
    .line 20
    iput-object p0, p1, Ll/e1;->d:Ljava/lang/Object;

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    return-object p0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    monitor-exit p1

    .line 27
    throw p0
.end method

.method public static h(Landroid/widget/TextView;Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V
    .locals 11

    .line 1
    const/16 v0, 0x800

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 6
    .line 7
    const/16 v4, 0x1e

    .line 8
    .line 9
    if-ge v3, v4, :cond_d

    .line 10
    .line 11
    if-eqz p1, :cond_d

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    if-lt v3, v4, :cond_0

    .line 18
    .line 19
    invoke-static {p2, p0}, LP/b;->a(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    goto/16 :goto_6

    .line 23
    .line 24
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    if-lt v3, v4, :cond_1

    .line 28
    .line 29
    invoke-static {p2, p0}, LP/b;->a(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    goto/16 :goto_6

    .line 33
    .line 34
    :cond_1
    iget p1, p2, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 35
    .line 36
    iget v3, p2, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 37
    .line 38
    if-le p1, v3, :cond_2

    .line 39
    .line 40
    move v4, v3

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    move v4, p1

    .line 43
    :goto_0
    if-le p1, v3, :cond_3

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_3
    move p1, v3

    .line 47
    :goto_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    const/4 v5, 0x0

    .line 52
    if-ltz v4, :cond_c

    .line 53
    .line 54
    if-le p1, v3, :cond_4

    .line 55
    .line 56
    goto/16 :goto_5

    .line 57
    .line 58
    :cond_4
    iget v6, p2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 59
    .line 60
    and-int/lit16 v6, v6, 0xfff

    .line 61
    .line 62
    const/16 v7, 0x81

    .line 63
    .line 64
    if-eq v6, v7, :cond_b

    .line 65
    .line 66
    const/16 v7, 0xe1

    .line 67
    .line 68
    if-eq v6, v7, :cond_b

    .line 69
    .line 70
    const/16 v7, 0x12

    .line 71
    .line 72
    if-ne v6, v7, :cond_5

    .line 73
    .line 74
    goto/16 :goto_4

    .line 75
    .line 76
    :cond_5
    if-gt v3, v0, :cond_6

    .line 77
    .line 78
    invoke-static {p2, p0, v4, p1}, LP/c;->a(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    .line 79
    .line 80
    .line 81
    goto/16 :goto_6

    .line 82
    .line 83
    :cond_6
    sub-int v3, p1, v4

    .line 84
    .line 85
    const/16 v5, 0x400

    .line 86
    .line 87
    if-le v3, v5, :cond_7

    .line 88
    .line 89
    const/4 v5, 0x0

    .line 90
    goto :goto_2

    .line 91
    :cond_7
    move v5, v3

    .line 92
    :goto_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    sub-int/2addr v6, p1

    .line 97
    sub-int/2addr v0, v5

    .line 98
    const-wide v7, 0x3fe999999999999aL    # 0.8

    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    int-to-double v9, v0

    .line 104
    mul-double v9, v9, v7

    .line 105
    .line 106
    double-to-int v7, v9

    .line 107
    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    .line 108
    .line 109
    .line 110
    move-result v7

    .line 111
    sub-int v7, v0, v7

    .line 112
    .line 113
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    .line 114
    .line 115
    .line 116
    move-result v6

    .line 117
    sub-int/2addr v0, v6

    .line 118
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    sub-int/2addr v4, v0

    .line 123
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    .line 124
    .line 125
    .line 126
    move-result v7

    .line 127
    invoke-static {v7}, Ljava/lang/Character;->isLowSurrogate(C)Z

    .line 128
    .line 129
    .line 130
    move-result v7

    .line 131
    if-eqz v7, :cond_8

    .line 132
    .line 133
    add-int/2addr v4, v2

    .line 134
    sub-int/2addr v0, v2

    .line 135
    :cond_8
    add-int v7, p1, v6

    .line 136
    .line 137
    sub-int/2addr v7, v2

    .line 138
    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    .line 139
    .line 140
    .line 141
    move-result v7

    .line 142
    invoke-static {v7}, Ljava/lang/Character;->isHighSurrogate(C)Z

    .line 143
    .line 144
    .line 145
    move-result v7

    .line 146
    if-eqz v7, :cond_9

    .line 147
    .line 148
    sub-int/2addr v6, v2

    .line 149
    :cond_9
    add-int v7, v0, v5

    .line 150
    .line 151
    add-int v8, v7, v6

    .line 152
    .line 153
    if-eq v5, v3, :cond_a

    .line 154
    .line 155
    add-int v3, v4, v0

    .line 156
    .line 157
    invoke-interface {p0, v4, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    add-int/2addr v6, p1

    .line 162
    invoke-interface {p0, p1, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    const/4 p1, 0x2

    .line 167
    new-array p1, p1, [Ljava/lang/CharSequence;

    .line 168
    .line 169
    aput-object v3, p1, v1

    .line 170
    .line 171
    aput-object p0, p1, v2

    .line 172
    .line 173
    invoke-static {p1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    goto :goto_3

    .line 178
    :cond_a
    add-int/2addr v8, v4

    .line 179
    invoke-interface {p0, v4, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    :goto_3
    invoke-static {p2, p0, v0, v7}, LP/c;->a(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    .line 184
    .line 185
    .line 186
    goto :goto_6

    .line 187
    :cond_b
    :goto_4
    invoke-static {p2, v5, v1, v1}, LP/c;->a(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    .line 188
    .line 189
    .line 190
    goto :goto_6

    .line 191
    :cond_c
    :goto_5
    invoke-static {p2, v5, v1, v1}, LP/c;->a(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;II)V

    .line 192
    .line 193
    .line 194
    :cond_d
    :goto_6
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;Ll/e1;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Ll/d0;->a:Landroid/widget/TextView;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {p1, p2, v0}, Ll/y;->d(Landroid/graphics/drawable/Drawable;Ll/e1;[I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 6

    .line 1
    iget-object v0, p0, Ll/d0;->b:Ll/e1;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object v3, p0, Ll/d0;->a:Landroid/widget/TextView;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Ll/d0;->c:Ll/e1;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Ll/d0;->d:Ll/e1;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Ll/d0;->e:Ll/e1;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    :cond_0
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    aget-object v4, v0, v2

    .line 26
    .line 27
    iget-object v5, p0, Ll/d0;->b:Ll/e1;

    .line 28
    .line 29
    invoke-virtual {p0, v4, v5}, Ll/d0;->a(Landroid/graphics/drawable/Drawable;Ll/e1;)V

    .line 30
    .line 31
    .line 32
    const/4 v4, 0x1

    .line 33
    aget-object v4, v0, v4

    .line 34
    .line 35
    iget-object v5, p0, Ll/d0;->c:Ll/e1;

    .line 36
    .line 37
    invoke-virtual {p0, v4, v5}, Ll/d0;->a(Landroid/graphics/drawable/Drawable;Ll/e1;)V

    .line 38
    .line 39
    .line 40
    aget-object v4, v0, v1

    .line 41
    .line 42
    iget-object v5, p0, Ll/d0;->d:Ll/e1;

    .line 43
    .line 44
    invoke-virtual {p0, v4, v5}, Ll/d0;->a(Landroid/graphics/drawable/Drawable;Ll/e1;)V

    .line 45
    .line 46
    .line 47
    const/4 v4, 0x3

    .line 48
    aget-object v0, v0, v4

    .line 49
    .line 50
    iget-object v4, p0, Ll/d0;->e:Ll/e1;

    .line 51
    .line 52
    invoke-virtual {p0, v0, v4}, Ll/d0;->a(Landroid/graphics/drawable/Drawable;Ll/e1;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    iget-object v0, p0, Ll/d0;->f:Ll/e1;

    .line 56
    .line 57
    if-nez v0, :cond_2

    .line 58
    .line 59
    iget-object v0, p0, Ll/d0;->g:Ll/e1;

    .line 60
    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    :cond_2
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    aget-object v2, v0, v2

    .line 68
    .line 69
    iget-object v3, p0, Ll/d0;->f:Ll/e1;

    .line 70
    .line 71
    invoke-virtual {p0, v2, v3}, Ll/d0;->a(Landroid/graphics/drawable/Drawable;Ll/e1;)V

    .line 72
    .line 73
    .line 74
    aget-object v0, v0, v1

    .line 75
    .line 76
    iget-object v1, p0, Ll/d0;->g:Ll/e1;

    .line 77
    .line 78
    invoke-virtual {p0, v0, v1}, Ll/d0;->a(Landroid/graphics/drawable/Drawable;Ll/e1;)V

    .line 79
    .line 80
    .line 81
    :cond_3
    return-void
.end method

.method public final d()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Ll/d0;->h:Ll/e1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Ll/e1;->d:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Landroid/content/res/ColorStateList;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public final e()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1
    iget-object v0, p0, Ll/d0;->h:Ll/e1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Ll/e1;->e:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Landroid/graphics/PorterDuff$Mode;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public final f(Landroid/util/AttributeSet;I)V
    .locals 27

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    move/from16 v8, p2

    .line 6
    .line 7
    iget-object v9, v0, Ll/d0;->a:Landroid/widget/TextView;

    .line 8
    .line 9
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v10

    .line 13
    invoke-static {}, Ll/y;->a()Ll/y;

    .line 14
    .line 15
    .line 16
    move-result-object v11

    .line 17
    sget-object v3, Le/a;->h:[I

    .line 18
    .line 19
    const/4 v12, 0x0

    .line 20
    invoke-static {v10, v7, v3, v8, v12}, Lm2/u;->J(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lm2/u;

    .line 21
    .line 22
    .line 23
    move-result-object v13

    .line 24
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iget-object v1, v13, Lm2/u;->I:Ljava/lang/Object;

    .line 29
    .line 30
    move-object v5, v1

    .line 31
    check-cast v5, Landroid/content/res/TypedArray;

    .line 32
    .line 33
    move-object v1, v9

    .line 34
    move-object/from16 v4, p1

    .line 35
    .line 36
    move/from16 v6, p2

    .line 37
    .line 38
    invoke-static/range {v1 .. v6}, LN/N;->l(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    .line 39
    .line 40
    .line 41
    const/4 v14, -0x1

    .line 42
    invoke-virtual {v13, v12, v14}, Lm2/u;->z(II)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    const/4 v15, 0x3

    .line 47
    invoke-virtual {v13, v15}, Lm2/u;->F(I)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_0

    .line 52
    .line 53
    invoke-virtual {v13, v15, v12}, Lm2/u;->z(II)I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-static {v10, v11, v2}, Ll/d0;->c(Landroid/content/Context;Ll/y;I)Ll/e1;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    iput-object v2, v0, Ll/d0;->b:Ll/e1;

    .line 62
    .line 63
    :cond_0
    const/4 v6, 0x1

    .line 64
    invoke-virtual {v13, v6}, Lm2/u;->F(I)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_1

    .line 69
    .line 70
    invoke-virtual {v13, v6, v12}, Lm2/u;->z(II)I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    invoke-static {v10, v11, v2}, Ll/d0;->c(Landroid/content/Context;Ll/y;I)Ll/e1;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    iput-object v2, v0, Ll/d0;->c:Ll/e1;

    .line 79
    .line 80
    :cond_1
    const/4 v5, 0x4

    .line 81
    invoke-virtual {v13, v5}, Lm2/u;->F(I)Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_2

    .line 86
    .line 87
    invoke-virtual {v13, v5, v12}, Lm2/u;->z(II)I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    invoke-static {v10, v11, v2}, Ll/d0;->c(Landroid/content/Context;Ll/y;I)Ll/e1;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    iput-object v2, v0, Ll/d0;->d:Ll/e1;

    .line 96
    .line 97
    :cond_2
    const/4 v4, 0x2

    .line 98
    invoke-virtual {v13, v4}, Lm2/u;->F(I)Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-eqz v2, :cond_3

    .line 103
    .line 104
    invoke-virtual {v13, v4, v12}, Lm2/u;->z(II)I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    invoke-static {v10, v11, v2}, Ll/d0;->c(Landroid/content/Context;Ll/y;I)Ll/e1;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    iput-object v2, v0, Ll/d0;->e:Ll/e1;

    .line 113
    .line 114
    :cond_3
    const/4 v3, 0x5

    .line 115
    invoke-virtual {v13, v3}, Lm2/u;->F(I)Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-eqz v2, :cond_4

    .line 120
    .line 121
    invoke-virtual {v13, v3, v12}, Lm2/u;->z(II)I

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    invoke-static {v10, v11, v2}, Ll/d0;->c(Landroid/content/Context;Ll/y;I)Ll/e1;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    iput-object v2, v0, Ll/d0;->f:Ll/e1;

    .line 130
    .line 131
    :cond_4
    const/4 v2, 0x6

    .line 132
    invoke-virtual {v13, v2}, Lm2/u;->F(I)Z

    .line 133
    .line 134
    .line 135
    move-result v16

    .line 136
    if-eqz v16, :cond_5

    .line 137
    .line 138
    invoke-virtual {v13, v2, v12}, Lm2/u;->z(II)I

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    invoke-static {v10, v11, v4}, Ll/d0;->c(Landroid/content/Context;Ll/y;I)Ll/e1;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    iput-object v4, v0, Ll/d0;->g:Ll/e1;

    .line 147
    .line 148
    :cond_5
    invoke-virtual {v13}, Lm2/u;->P()V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v9}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    instance-of v4, v4, Landroid/text/method/PasswordTransformationMethod;

    .line 156
    .line 157
    sget-object v13, Le/a;->w:[I

    .line 158
    .line 159
    const/16 v6, 0x17

    .line 160
    .line 161
    const/16 v2, 0xe

    .line 162
    .line 163
    if-eq v1, v14, :cond_d

    .line 164
    .line 165
    new-instance v3, Lm2/u;

    .line 166
    .line 167
    invoke-virtual {v10, v1, v13}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-direct {v3, v10, v1}, Lm2/u;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 172
    .line 173
    .line 174
    if-nez v4, :cond_6

    .line 175
    .line 176
    invoke-virtual {v3, v2}, Lm2/u;->F(I)Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-eqz v1, :cond_6

    .line 181
    .line 182
    invoke-virtual {v3, v2, v12}, Lm2/u;->n(IZ)Z

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    const/16 v22, 0x1

    .line 187
    .line 188
    goto :goto_0

    .line 189
    :cond_6
    const/4 v1, 0x0

    .line 190
    const/16 v22, 0x0

    .line 191
    .line 192
    :goto_0
    invoke-virtual {v0, v10, v3}, Ll/d0;->n(Landroid/content/Context;Lm2/u;)V

    .line 193
    .line 194
    .line 195
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 196
    .line 197
    if-ge v14, v6, :cond_a

    .line 198
    .line 199
    invoke-virtual {v3, v15}, Lm2/u;->F(I)Z

    .line 200
    .line 201
    .line 202
    move-result v23

    .line 203
    if-eqz v23, :cond_7

    .line 204
    .line 205
    invoke-virtual {v3, v15}, Lm2/u;->o(I)Landroid/content/res/ColorStateList;

    .line 206
    .line 207
    .line 208
    move-result-object v23

    .line 209
    goto :goto_1

    .line 210
    :cond_7
    const/16 v23, 0x0

    .line 211
    .line 212
    :goto_1
    invoke-virtual {v3, v5}, Lm2/u;->F(I)Z

    .line 213
    .line 214
    .line 215
    move-result v24

    .line 216
    if-eqz v24, :cond_8

    .line 217
    .line 218
    invoke-virtual {v3, v5}, Lm2/u;->o(I)Landroid/content/res/ColorStateList;

    .line 219
    .line 220
    .line 221
    move-result-object v24

    .line 222
    const/4 v5, 0x5

    .line 223
    goto :goto_2

    .line 224
    :cond_8
    const/4 v5, 0x5

    .line 225
    const/16 v24, 0x0

    .line 226
    .line 227
    :goto_2
    invoke-virtual {v3, v5}, Lm2/u;->F(I)Z

    .line 228
    .line 229
    .line 230
    move-result v17

    .line 231
    if-eqz v17, :cond_9

    .line 232
    .line 233
    invoke-virtual {v3, v5}, Lm2/u;->o(I)Landroid/content/res/ColorStateList;

    .line 234
    .line 235
    .line 236
    move-result-object v25

    .line 237
    const/16 v5, 0xf

    .line 238
    .line 239
    goto :goto_4

    .line 240
    :cond_9
    const/16 v5, 0xf

    .line 241
    .line 242
    :goto_3
    const/16 v25, 0x0

    .line 243
    .line 244
    goto :goto_4

    .line 245
    :cond_a
    const/16 v5, 0xf

    .line 246
    .line 247
    const/16 v23, 0x0

    .line 248
    .line 249
    const/16 v24, 0x0

    .line 250
    .line 251
    goto :goto_3

    .line 252
    :goto_4
    invoke-virtual {v3, v5}, Lm2/u;->F(I)Z

    .line 253
    .line 254
    .line 255
    move-result v20

    .line 256
    if-eqz v20, :cond_b

    .line 257
    .line 258
    invoke-virtual {v3, v5}, Lm2/u;->A(I)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v26

    .line 262
    const/16 v5, 0x1a

    .line 263
    .line 264
    goto :goto_5

    .line 265
    :cond_b
    const/16 v5, 0x1a

    .line 266
    .line 267
    const/16 v26, 0x0

    .line 268
    .line 269
    :goto_5
    if-lt v14, v5, :cond_c

    .line 270
    .line 271
    const/16 v5, 0xd

    .line 272
    .line 273
    invoke-virtual {v3, v5}, Lm2/u;->F(I)Z

    .line 274
    .line 275
    .line 276
    move-result v14

    .line 277
    if-eqz v14, :cond_c

    .line 278
    .line 279
    invoke-virtual {v3, v5}, Lm2/u;->A(I)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v14

    .line 283
    goto :goto_6

    .line 284
    :cond_c
    const/4 v14, 0x0

    .line 285
    :goto_6
    invoke-virtual {v3}, Lm2/u;->P()V

    .line 286
    .line 287
    .line 288
    goto :goto_7

    .line 289
    :cond_d
    const/4 v1, 0x0

    .line 290
    const/4 v14, 0x0

    .line 291
    const/16 v22, 0x0

    .line 292
    .line 293
    const/16 v23, 0x0

    .line 294
    .line 295
    const/16 v24, 0x0

    .line 296
    .line 297
    const/16 v25, 0x0

    .line 298
    .line 299
    const/16 v26, 0x0

    .line 300
    .line 301
    :goto_7
    new-instance v3, Lm2/u;

    .line 302
    .line 303
    invoke-virtual {v10, v7, v13, v8, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 304
    .line 305
    .line 306
    move-result-object v5

    .line 307
    invoke-direct {v3, v10, v5}, Lm2/u;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 308
    .line 309
    .line 310
    if-nez v4, :cond_e

    .line 311
    .line 312
    invoke-virtual {v3, v2}, Lm2/u;->F(I)Z

    .line 313
    .line 314
    .line 315
    move-result v5

    .line 316
    if-eqz v5, :cond_e

    .line 317
    .line 318
    invoke-virtual {v3, v2, v12}, Lm2/u;->n(IZ)Z

    .line 319
    .line 320
    .line 321
    move-result v1

    .line 322
    const/16 v22, 0x1

    .line 323
    .line 324
    :cond_e
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 325
    .line 326
    if-ge v2, v6, :cond_11

    .line 327
    .line 328
    invoke-virtual {v3, v15}, Lm2/u;->F(I)Z

    .line 329
    .line 330
    .line 331
    move-result v5

    .line 332
    if-eqz v5, :cond_f

    .line 333
    .line 334
    invoke-virtual {v3, v15}, Lm2/u;->o(I)Landroid/content/res/ColorStateList;

    .line 335
    .line 336
    .line 337
    move-result-object v23

    .line 338
    :cond_f
    const/4 v5, 0x4

    .line 339
    invoke-virtual {v3, v5}, Lm2/u;->F(I)Z

    .line 340
    .line 341
    .line 342
    move-result v6

    .line 343
    if-eqz v6, :cond_10

    .line 344
    .line 345
    invoke-virtual {v3, v5}, Lm2/u;->o(I)Landroid/content/res/ColorStateList;

    .line 346
    .line 347
    .line 348
    move-result-object v24

    .line 349
    :cond_10
    const/4 v6, 0x5

    .line 350
    invoke-virtual {v3, v6}, Lm2/u;->F(I)Z

    .line 351
    .line 352
    .line 353
    move-result v13

    .line 354
    if-eqz v13, :cond_11

    .line 355
    .line 356
    invoke-virtual {v3, v6}, Lm2/u;->o(I)Landroid/content/res/ColorStateList;

    .line 357
    .line 358
    .line 359
    move-result-object v25

    .line 360
    :cond_11
    move-object/from16 v13, v23

    .line 361
    .line 362
    move-object/from16 v5, v24

    .line 363
    .line 364
    move-object/from16 v6, v25

    .line 365
    .line 366
    const/16 v15, 0xf

    .line 367
    .line 368
    invoke-virtual {v3, v15}, Lm2/u;->F(I)Z

    .line 369
    .line 370
    .line 371
    move-result v23

    .line 372
    if-eqz v23, :cond_12

    .line 373
    .line 374
    invoke-virtual {v3, v15}, Lm2/u;->A(I)Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v26

    .line 378
    :cond_12
    move-object/from16 v15, v26

    .line 379
    .line 380
    const/16 v12, 0x1a

    .line 381
    .line 382
    if-lt v2, v12, :cond_13

    .line 383
    .line 384
    const/16 v12, 0xd

    .line 385
    .line 386
    invoke-virtual {v3, v12}, Lm2/u;->F(I)Z

    .line 387
    .line 388
    .line 389
    move-result v21

    .line 390
    if-eqz v21, :cond_14

    .line 391
    .line 392
    invoke-virtual {v3, v12}, Lm2/u;->A(I)Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v14

    .line 396
    goto :goto_8

    .line 397
    :cond_13
    const/16 v12, 0xd

    .line 398
    .line 399
    :cond_14
    :goto_8
    const/16 v12, 0x1c

    .line 400
    .line 401
    if-lt v2, v12, :cond_15

    .line 402
    .line 403
    const/4 v12, 0x0

    .line 404
    invoke-virtual {v3, v12}, Lm2/u;->F(I)Z

    .line 405
    .line 406
    .line 407
    move-result v19

    .line 408
    if-eqz v19, :cond_15

    .line 409
    .line 410
    move-object/from16 v24, v11

    .line 411
    .line 412
    const/4 v11, -0x1

    .line 413
    invoke-virtual {v3, v12, v11}, Lm2/u;->r(II)I

    .line 414
    .line 415
    .line 416
    move-result v19

    .line 417
    if-nez v19, :cond_16

    .line 418
    .line 419
    const/4 v11, 0x0

    .line 420
    invoke-virtual {v9, v12, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 421
    .line 422
    .line 423
    goto :goto_9

    .line 424
    :cond_15
    move-object/from16 v24, v11

    .line 425
    .line 426
    :cond_16
    :goto_9
    invoke-virtual {v0, v10, v3}, Ll/d0;->n(Landroid/content/Context;Lm2/u;)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v3}, Lm2/u;->P()V

    .line 430
    .line 431
    .line 432
    if-eqz v13, :cond_17

    .line 433
    .line 434
    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 435
    .line 436
    .line 437
    :cond_17
    if-eqz v5, :cond_18

    .line 438
    .line 439
    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 440
    .line 441
    .line 442
    :cond_18
    if-eqz v6, :cond_19

    .line 443
    .line 444
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 445
    .line 446
    .line 447
    :cond_19
    if-nez v4, :cond_1a

    .line 448
    .line 449
    if-eqz v22, :cond_1a

    .line 450
    .line 451
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 452
    .line 453
    .line 454
    :cond_1a
    iget-object v1, v0, Ll/d0;->l:Landroid/graphics/Typeface;

    .line 455
    .line 456
    if-eqz v1, :cond_1c

    .line 457
    .line 458
    iget v3, v0, Ll/d0;->k:I

    .line 459
    .line 460
    const/4 v4, -0x1

    .line 461
    if-ne v3, v4, :cond_1b

    .line 462
    .line 463
    iget v3, v0, Ll/d0;->j:I

    .line 464
    .line 465
    invoke-virtual {v9, v1, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 466
    .line 467
    .line 468
    goto :goto_a

    .line 469
    :cond_1b
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 470
    .line 471
    .line 472
    :cond_1c
    :goto_a
    if-eqz v14, :cond_1d

    .line 473
    .line 474
    invoke-static {v9, v14}, Ll/b0;->d(Landroid/widget/TextView;Ljava/lang/String;)Z

    .line 475
    .line 476
    .line 477
    :cond_1d
    const/16 v11, 0x18

    .line 478
    .line 479
    if-eqz v15, :cond_1e

    .line 480
    .line 481
    if-lt v2, v11, :cond_1f

    .line 482
    .line 483
    invoke-static {v15}, Ll/a0;->a(Ljava/lang/String;)Landroid/os/LocaleList;

    .line 484
    .line 485
    .line 486
    move-result-object v1

    .line 487
    invoke-static {v9, v1}, Ll/a0;->b(Landroid/widget/TextView;Landroid/os/LocaleList;)V

    .line 488
    .line 489
    .line 490
    :cond_1e
    const/4 v2, 0x0

    .line 491
    goto :goto_b

    .line 492
    :cond_1f
    const-string v1, ","

    .line 493
    .line 494
    invoke-virtual {v15, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v1

    .line 498
    const/4 v2, 0x0

    .line 499
    aget-object v1, v1, v2

    .line 500
    .line 501
    invoke-static {v1}, Ll/Z;->a(Ljava/lang/String;)Ljava/util/Locale;

    .line 502
    .line 503
    .line 504
    move-result-object v1

    .line 505
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    .line 506
    .line 507
    .line 508
    :goto_b
    sget-object v12, Le/a;->i:[I

    .line 509
    .line 510
    iget-object v13, v0, Ll/d0;->i:Ll/m0;

    .line 511
    .line 512
    iget-object v14, v13, Ll/m0;->j:Landroid/content/Context;

    .line 513
    .line 514
    invoke-virtual {v14, v7, v12, v8, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 515
    .line 516
    .line 517
    move-result-object v15

    .line 518
    iget-object v1, v13, Ll/m0;->i:Landroid/widget/TextView;

    .line 519
    .line 520
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 521
    .line 522
    .line 523
    move-result-object v2

    .line 524
    const/4 v6, 0x6

    .line 525
    const/4 v4, 0x5

    .line 526
    const/4 v5, 0x0

    .line 527
    const/16 v11, 0xd

    .line 528
    .line 529
    move-object v3, v12

    .line 530
    const/4 v11, 0x5

    .line 531
    move-object/from16 v4, p1

    .line 532
    .line 533
    move-object v5, v15

    .line 534
    move/from16 v6, p2

    .line 535
    .line 536
    invoke-static/range {v1 .. v6}, LN/N;->l(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    .line 537
    .line 538
    .line 539
    invoke-virtual {v15, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 540
    .line 541
    .line 542
    move-result v1

    .line 543
    if-eqz v1, :cond_20

    .line 544
    .line 545
    const/4 v1, 0x0

    .line 546
    invoke-virtual {v15, v11, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 547
    .line 548
    .line 549
    move-result v2

    .line 550
    iput v2, v13, Ll/m0;->a:I

    .line 551
    .line 552
    :cond_20
    const/4 v1, 0x4

    .line 553
    invoke-virtual {v15, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 554
    .line 555
    .line 556
    move-result v2

    .line 557
    const/high16 v3, -0x40800000    # -1.0f

    .line 558
    .line 559
    if-eqz v2, :cond_21

    .line 560
    .line 561
    invoke-virtual {v15, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 562
    .line 563
    .line 564
    move-result v1

    .line 565
    :goto_c
    const/4 v2, 0x2

    .line 566
    goto :goto_d

    .line 567
    :cond_21
    const/high16 v1, -0x40800000    # -1.0f

    .line 568
    .line 569
    goto :goto_c

    .line 570
    :goto_d
    invoke-virtual {v15, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 571
    .line 572
    .line 573
    move-result v4

    .line 574
    if-eqz v4, :cond_22

    .line 575
    .line 576
    invoke-virtual {v15, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 577
    .line 578
    .line 579
    move-result v4

    .line 580
    const/4 v2, 0x1

    .line 581
    goto :goto_e

    .line 582
    :cond_22
    const/4 v2, 0x1

    .line 583
    const/high16 v4, -0x40800000    # -1.0f

    .line 584
    .line 585
    :goto_e
    invoke-virtual {v15, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 586
    .line 587
    .line 588
    move-result v5

    .line 589
    if-eqz v5, :cond_23

    .line 590
    .line 591
    invoke-virtual {v15, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 592
    .line 593
    .line 594
    move-result v5

    .line 595
    :goto_f
    const/4 v6, 0x3

    .line 596
    goto :goto_10

    .line 597
    :cond_23
    const/high16 v5, -0x40800000    # -1.0f

    .line 598
    .line 599
    goto :goto_f

    .line 600
    :goto_10
    invoke-virtual {v15, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 601
    .line 602
    .line 603
    move-result v8

    .line 604
    if-eqz v8, :cond_26

    .line 605
    .line 606
    const/4 v8, 0x0

    .line 607
    invoke-virtual {v15, v6, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 608
    .line 609
    .line 610
    move-result v11

    .line 611
    if-lez v11, :cond_26

    .line 612
    .line 613
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    .line 614
    .line 615
    .line 616
    move-result-object v6

    .line 617
    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 618
    .line 619
    .line 620
    move-result-object v6

    .line 621
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->length()I

    .line 622
    .line 623
    .line 624
    move-result v8

    .line 625
    new-array v11, v8, [I

    .line 626
    .line 627
    if-lez v8, :cond_25

    .line 628
    .line 629
    const/4 v3, 0x0

    .line 630
    :goto_11
    if-ge v3, v8, :cond_24

    .line 631
    .line 632
    const/4 v2, -0x1

    .line 633
    invoke-virtual {v6, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 634
    .line 635
    .line 636
    move-result v18

    .line 637
    aput v18, v11, v3

    .line 638
    .line 639
    add-int/lit8 v3, v3, 0x1

    .line 640
    .line 641
    const/4 v2, 0x1

    .line 642
    goto :goto_11

    .line 643
    :cond_24
    invoke-static {v11}, Ll/m0;->b([I)[I

    .line 644
    .line 645
    .line 646
    move-result-object v2

    .line 647
    iput-object v2, v13, Ll/m0;->f:[I

    .line 648
    .line 649
    invoke-virtual {v13}, Ll/m0;->i()Z

    .line 650
    .line 651
    .line 652
    :cond_25
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 653
    .line 654
    .line 655
    :cond_26
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 656
    .line 657
    .line 658
    invoke-virtual {v13}, Ll/m0;->j()Z

    .line 659
    .line 660
    .line 661
    move-result v2

    .line 662
    if-eqz v2, :cond_2b

    .line 663
    .line 664
    iget v2, v13, Ll/m0;->a:I

    .line 665
    .line 666
    const/4 v3, 0x1

    .line 667
    if-ne v2, v3, :cond_2c

    .line 668
    .line 669
    iget-boolean v2, v13, Ll/m0;->g:Z

    .line 670
    .line 671
    if-nez v2, :cond_2a

    .line 672
    .line 673
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 674
    .line 675
    .line 676
    move-result-object v2

    .line 677
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 678
    .line 679
    .line 680
    move-result-object v2

    .line 681
    const/high16 v3, -0x40800000    # -1.0f

    .line 682
    .line 683
    cmpl-float v6, v4, v3

    .line 684
    .line 685
    if-nez v6, :cond_27

    .line 686
    .line 687
    const/high16 v4, 0x41400000    # 12.0f

    .line 688
    .line 689
    const/4 v6, 0x2

    .line 690
    invoke-static {v6, v4, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 691
    .line 692
    .line 693
    move-result v4

    .line 694
    goto :goto_12

    .line 695
    :cond_27
    const/4 v6, 0x2

    .line 696
    :goto_12
    cmpl-float v8, v5, v3

    .line 697
    .line 698
    if-nez v8, :cond_28

    .line 699
    .line 700
    const/high16 v5, 0x42e00000    # 112.0f

    .line 701
    .line 702
    invoke-static {v6, v5, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 703
    .line 704
    .line 705
    move-result v5

    .line 706
    :cond_28
    cmpl-float v2, v1, v3

    .line 707
    .line 708
    if-nez v2, :cond_29

    .line 709
    .line 710
    const/high16 v1, 0x3f800000    # 1.0f

    .line 711
    .line 712
    :cond_29
    invoke-virtual {v13, v4, v5, v1}, Ll/m0;->k(FFF)V

    .line 713
    .line 714
    .line 715
    :cond_2a
    invoke-virtual {v13}, Ll/m0;->h()Z

    .line 716
    .line 717
    .line 718
    goto :goto_13

    .line 719
    :cond_2b
    const/4 v1, 0x0

    .line 720
    iput v1, v13, Ll/m0;->a:I

    .line 721
    .line 722
    :cond_2c
    :goto_13
    sget-boolean v1, Ll/w1;->c:Z

    .line 723
    .line 724
    if-eqz v1, :cond_2e

    .line 725
    .line 726
    iget v1, v13, Ll/m0;->a:I

    .line 727
    .line 728
    if-eqz v1, :cond_2e

    .line 729
    .line 730
    iget-object v1, v13, Ll/m0;->f:[I

    .line 731
    .line 732
    array-length v2, v1

    .line 733
    if-lez v2, :cond_2e

    .line 734
    .line 735
    invoke-static {v9}, Ll/b0;->a(Landroid/widget/TextView;)I

    .line 736
    .line 737
    .line 738
    move-result v2

    .line 739
    int-to-float v2, v2

    .line 740
    const/high16 v3, -0x40800000    # -1.0f

    .line 741
    .line 742
    cmpl-float v2, v2, v3

    .line 743
    .line 744
    if-eqz v2, :cond_2d

    .line 745
    .line 746
    iget v1, v13, Ll/m0;->d:F

    .line 747
    .line 748
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 749
    .line 750
    .line 751
    move-result v1

    .line 752
    iget v2, v13, Ll/m0;->e:F

    .line 753
    .line 754
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 755
    .line 756
    .line 757
    move-result v2

    .line 758
    iget v3, v13, Ll/m0;->c:F

    .line 759
    .line 760
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 761
    .line 762
    .line 763
    move-result v3

    .line 764
    const/4 v4, 0x0

    .line 765
    invoke-static {v9, v1, v2, v3, v4}, Ll/b0;->b(Landroid/widget/TextView;IIII)V

    .line 766
    .line 767
    .line 768
    goto :goto_14

    .line 769
    :cond_2d
    const/4 v4, 0x0

    .line 770
    invoke-static {v9, v1, v4}, Ll/b0;->c(Landroid/widget/TextView;[II)V

    .line 771
    .line 772
    .line 773
    :cond_2e
    :goto_14
    new-instance v1, Lm2/u;

    .line 774
    .line 775
    invoke-virtual {v10, v7, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 776
    .line 777
    .line 778
    move-result-object v2

    .line 779
    invoke-direct {v1, v10, v2}, Lm2/u;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 780
    .line 781
    .line 782
    const/16 v2, 0x8

    .line 783
    .line 784
    const/4 v3, -0x1

    .line 785
    invoke-virtual {v1, v2, v3}, Lm2/u;->z(II)I

    .line 786
    .line 787
    .line 788
    move-result v2

    .line 789
    move-object/from16 v4, v24

    .line 790
    .line 791
    if-eq v2, v3, :cond_2f

    .line 792
    .line 793
    invoke-virtual {v4, v10, v2}, Ll/y;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 794
    .line 795
    .line 796
    move-result-object v2

    .line 797
    :goto_15
    const/16 v5, 0xd

    .line 798
    .line 799
    goto :goto_16

    .line 800
    :cond_2f
    const/4 v2, 0x0

    .line 801
    goto :goto_15

    .line 802
    :goto_16
    invoke-virtual {v1, v5, v3}, Lm2/u;->z(II)I

    .line 803
    .line 804
    .line 805
    move-result v5

    .line 806
    if-eq v5, v3, :cond_30

    .line 807
    .line 808
    invoke-virtual {v4, v10, v5}, Ll/y;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 809
    .line 810
    .line 811
    move-result-object v5

    .line 812
    goto :goto_17

    .line 813
    :cond_30
    const/4 v5, 0x0

    .line 814
    :goto_17
    const/16 v6, 0x9

    .line 815
    .line 816
    invoke-virtual {v1, v6, v3}, Lm2/u;->z(II)I

    .line 817
    .line 818
    .line 819
    move-result v6

    .line 820
    if-eq v6, v3, :cond_31

    .line 821
    .line 822
    invoke-virtual {v4, v10, v6}, Ll/y;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 823
    .line 824
    .line 825
    move-result-object v6

    .line 826
    :goto_18
    const/4 v7, 0x6

    .line 827
    goto :goto_19

    .line 828
    :cond_31
    const/4 v6, 0x0

    .line 829
    goto :goto_18

    .line 830
    :goto_19
    invoke-virtual {v1, v7, v3}, Lm2/u;->z(II)I

    .line 831
    .line 832
    .line 833
    move-result v7

    .line 834
    if-eq v7, v3, :cond_32

    .line 835
    .line 836
    invoke-virtual {v4, v10, v7}, Ll/y;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 837
    .line 838
    .line 839
    move-result-object v7

    .line 840
    goto :goto_1a

    .line 841
    :cond_32
    const/4 v7, 0x0

    .line 842
    :goto_1a
    const/16 v8, 0xa

    .line 843
    .line 844
    invoke-virtual {v1, v8, v3}, Lm2/u;->z(II)I

    .line 845
    .line 846
    .line 847
    move-result v8

    .line 848
    if-eq v8, v3, :cond_33

    .line 849
    .line 850
    invoke-virtual {v4, v10, v8}, Ll/y;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 851
    .line 852
    .line 853
    move-result-object v8

    .line 854
    goto :goto_1b

    .line 855
    :cond_33
    const/4 v8, 0x0

    .line 856
    :goto_1b
    const/4 v11, 0x7

    .line 857
    invoke-virtual {v1, v11, v3}, Lm2/u;->z(II)I

    .line 858
    .line 859
    .line 860
    move-result v11

    .line 861
    if-eq v11, v3, :cond_34

    .line 862
    .line 863
    invoke-virtual {v4, v10, v11}, Ll/y;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 864
    .line 865
    .line 866
    move-result-object v3

    .line 867
    goto :goto_1c

    .line 868
    :cond_34
    const/4 v3, 0x0

    .line 869
    :goto_1c
    if-nez v8, :cond_3f

    .line 870
    .line 871
    if-eqz v3, :cond_35

    .line 872
    .line 873
    goto :goto_25

    .line 874
    :cond_35
    if-nez v2, :cond_36

    .line 875
    .line 876
    if-nez v5, :cond_36

    .line 877
    .line 878
    if-nez v6, :cond_36

    .line 879
    .line 880
    if-eqz v7, :cond_44

    .line 881
    .line 882
    :cond_36
    invoke-virtual {v9}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    .line 883
    .line 884
    .line 885
    move-result-object v3

    .line 886
    const/4 v4, 0x0

    .line 887
    aget-object v8, v3, v4

    .line 888
    .line 889
    if-nez v8, :cond_37

    .line 890
    .line 891
    const/4 v10, 0x2

    .line 892
    aget-object v11, v3, v10

    .line 893
    .line 894
    if-eqz v11, :cond_38

    .line 895
    .line 896
    :cond_37
    const/4 v4, 0x3

    .line 897
    goto :goto_21

    .line 898
    :cond_38
    invoke-virtual {v9}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    .line 899
    .line 900
    .line 901
    move-result-object v3

    .line 902
    if-eqz v2, :cond_39

    .line 903
    .line 904
    goto :goto_1d

    .line 905
    :cond_39
    aget-object v2, v3, v4

    .line 906
    .line 907
    :goto_1d
    if-eqz v5, :cond_3a

    .line 908
    .line 909
    goto :goto_1e

    .line 910
    :cond_3a
    const/4 v4, 0x1

    .line 911
    aget-object v5, v3, v4

    .line 912
    .line 913
    :goto_1e
    if-eqz v6, :cond_3b

    .line 914
    .line 915
    goto :goto_1f

    .line 916
    :cond_3b
    const/4 v4, 0x2

    .line 917
    aget-object v6, v3, v4

    .line 918
    .line 919
    :goto_1f
    if-eqz v7, :cond_3c

    .line 920
    .line 921
    goto :goto_20

    .line 922
    :cond_3c
    const/4 v4, 0x3

    .line 923
    aget-object v7, v3, v4

    .line 924
    .line 925
    :goto_20
    invoke-virtual {v9, v2, v5, v6, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 926
    .line 927
    .line 928
    goto :goto_2a

    .line 929
    :goto_21
    if-eqz v5, :cond_3d

    .line 930
    .line 931
    goto :goto_22

    .line 932
    :cond_3d
    const/4 v2, 0x1

    .line 933
    aget-object v5, v3, v2

    .line 934
    .line 935
    :goto_22
    if-eqz v7, :cond_3e

    .line 936
    .line 937
    :goto_23
    const/4 v2, 0x2

    .line 938
    goto :goto_24

    .line 939
    :cond_3e
    aget-object v7, v3, v4

    .line 940
    .line 941
    goto :goto_23

    .line 942
    :goto_24
    aget-object v2, v3, v2

    .line 943
    .line 944
    invoke-virtual {v9, v8, v5, v2, v7}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 945
    .line 946
    .line 947
    goto :goto_2a

    .line 948
    :cond_3f
    :goto_25
    invoke-virtual {v9}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    .line 949
    .line 950
    .line 951
    move-result-object v2

    .line 952
    if-eqz v8, :cond_40

    .line 953
    .line 954
    goto :goto_26

    .line 955
    :cond_40
    const/4 v4, 0x0

    .line 956
    aget-object v8, v2, v4

    .line 957
    .line 958
    :goto_26
    if-eqz v5, :cond_41

    .line 959
    .line 960
    goto :goto_27

    .line 961
    :cond_41
    const/4 v4, 0x1

    .line 962
    aget-object v5, v2, v4

    .line 963
    .line 964
    :goto_27
    if-eqz v3, :cond_42

    .line 965
    .line 966
    goto :goto_28

    .line 967
    :cond_42
    const/4 v3, 0x2

    .line 968
    aget-object v3, v2, v3

    .line 969
    .line 970
    :goto_28
    if-eqz v7, :cond_43

    .line 971
    .line 972
    goto :goto_29

    .line 973
    :cond_43
    const/4 v4, 0x3

    .line 974
    aget-object v7, v2, v4

    .line 975
    .line 976
    :goto_29
    invoke-virtual {v9, v8, v5, v3, v7}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 977
    .line 978
    .line 979
    :cond_44
    :goto_2a
    const/16 v2, 0xb

    .line 980
    .line 981
    invoke-virtual {v1, v2}, Lm2/u;->F(I)Z

    .line 982
    .line 983
    .line 984
    move-result v3

    .line 985
    if-eqz v3, :cond_46

    .line 986
    .line 987
    invoke-virtual {v1, v2}, Lm2/u;->o(I)Landroid/content/res/ColorStateList;

    .line 988
    .line 989
    .line 990
    move-result-object v2

    .line 991
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 992
    .line 993
    const/16 v4, 0x18

    .line 994
    .line 995
    if-lt v3, v4, :cond_45

    .line 996
    .line 997
    invoke-static {v9, v2}, Ll/H;->o(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    .line 998
    .line 999
    .line 1000
    goto :goto_2b

    .line 1001
    :cond_45
    instance-of v3, v9, LQ/k;

    .line 1002
    .line 1003
    if-eqz v3, :cond_46

    .line 1004
    .line 1005
    move-object v3, v9

    .line 1006
    check-cast v3, LQ/k;

    .line 1007
    .line 1008
    invoke-interface {v3, v2}, LQ/k;->setSupportCompoundDrawablesTintList(Landroid/content/res/ColorStateList;)V

    .line 1009
    .line 1010
    .line 1011
    :cond_46
    :goto_2b
    const/16 v2, 0xc

    .line 1012
    .line 1013
    invoke-virtual {v1, v2}, Lm2/u;->F(I)Z

    .line 1014
    .line 1015
    .line 1016
    move-result v3

    .line 1017
    if-eqz v3, :cond_48

    .line 1018
    .line 1019
    const/4 v3, -0x1

    .line 1020
    invoke-virtual {v1, v2, v3}, Lm2/u;->x(II)I

    .line 1021
    .line 1022
    .line 1023
    move-result v2

    .line 1024
    const/4 v3, 0x0

    .line 1025
    invoke-static {v2, v3}, Ll/t0;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v2

    .line 1029
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1030
    .line 1031
    const/16 v4, 0x18

    .line 1032
    .line 1033
    if-lt v3, v4, :cond_47

    .line 1034
    .line 1035
    invoke-static {v9, v2}, Ll/H;->p(Landroid/widget/TextView;Landroid/graphics/PorterDuff$Mode;)V

    .line 1036
    .line 1037
    .line 1038
    goto :goto_2c

    .line 1039
    :cond_47
    instance-of v3, v9, LQ/k;

    .line 1040
    .line 1041
    if-eqz v3, :cond_48

    .line 1042
    .line 1043
    move-object v3, v9

    .line 1044
    check-cast v3, LQ/k;

    .line 1045
    .line 1046
    invoke-interface {v3, v2}, LQ/k;->setSupportCompoundDrawablesTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 1047
    .line 1048
    .line 1049
    :cond_48
    :goto_2c
    const/4 v2, -0x1

    .line 1050
    const/16 v3, 0xf

    .line 1051
    .line 1052
    invoke-virtual {v1, v3, v2}, Lm2/u;->r(II)I

    .line 1053
    .line 1054
    .line 1055
    move-result v3

    .line 1056
    const/16 v4, 0x12

    .line 1057
    .line 1058
    invoke-virtual {v1, v4, v2}, Lm2/u;->r(II)I

    .line 1059
    .line 1060
    .line 1061
    move-result v4

    .line 1062
    const/16 v2, 0x13

    .line 1063
    .line 1064
    invoke-virtual {v1, v2}, Lm2/u;->F(I)Z

    .line 1065
    .line 1066
    .line 1067
    move-result v5

    .line 1068
    if-eqz v5, :cond_4a

    .line 1069
    .line 1070
    iget-object v5, v1, Lm2/u;->I:Ljava/lang/Object;

    .line 1071
    .line 1072
    check-cast v5, Landroid/content/res/TypedArray;

    .line 1073
    .line 1074
    invoke-virtual {v5, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 1075
    .line 1076
    .line 1077
    move-result-object v5

    .line 1078
    if-eqz v5, :cond_49

    .line 1079
    .line 1080
    iget v6, v5, Landroid/util/TypedValue;->type:I

    .line 1081
    .line 1082
    const/4 v7, 0x5

    .line 1083
    if-ne v6, v7, :cond_49

    .line 1084
    .line 1085
    iget v2, v5, Landroid/util/TypedValue;->data:I

    .line 1086
    .line 1087
    and-int/lit8 v11, v2, 0xf

    .line 1088
    .line 1089
    invoke-static {v2}, Landroid/util/TypedValue;->complexToFloat(I)F

    .line 1090
    .line 1091
    .line 1092
    move-result v2

    .line 1093
    move v5, v11

    .line 1094
    const/4 v11, -0x1

    .line 1095
    goto :goto_2e

    .line 1096
    :cond_49
    const/4 v11, -0x1

    .line 1097
    invoke-virtual {v1, v2, v11}, Lm2/u;->r(II)I

    .line 1098
    .line 1099
    .line 1100
    move-result v2

    .line 1101
    int-to-float v2, v2

    .line 1102
    :goto_2d
    const/4 v5, -0x1

    .line 1103
    goto :goto_2e

    .line 1104
    :cond_4a
    const/4 v11, -0x1

    .line 1105
    const/high16 v2, -0x40800000    # -1.0f

    .line 1106
    .line 1107
    goto :goto_2d

    .line 1108
    :goto_2e
    invoke-virtual {v1}, Lm2/u;->P()V

    .line 1109
    .line 1110
    .line 1111
    if-eq v3, v11, :cond_4b

    .line 1112
    .line 1113
    invoke-static {v9, v3}, LE3/f;->z(Landroid/widget/TextView;I)V

    .line 1114
    .line 1115
    .line 1116
    :cond_4b
    if-eq v4, v11, :cond_4c

    .line 1117
    .line 1118
    invoke-static {v9, v4}, LE3/f;->A(Landroid/widget/TextView;I)V

    .line 1119
    .line 1120
    .line 1121
    :cond_4c
    const/high16 v1, -0x40800000    # -1.0f

    .line 1122
    .line 1123
    cmpl-float v1, v2, v1

    .line 1124
    .line 1125
    if-eqz v1, :cond_4f

    .line 1126
    .line 1127
    if-ne v5, v11, :cond_4d

    .line 1128
    .line 1129
    float-to-int v1, v2

    .line 1130
    invoke-static {v9, v1}, LE3/f;->B(Landroid/widget/TextView;I)V

    .line 1131
    .line 1132
    .line 1133
    goto :goto_2f

    .line 1134
    :cond_4d
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1135
    .line 1136
    const/16 v3, 0x22

    .line 1137
    .line 1138
    if-lt v1, v3, :cond_4e

    .line 1139
    .line 1140
    invoke-static {v9, v5, v2}, Le7/a;->n(Landroid/widget/TextView;IF)V

    .line 1141
    .line 1142
    .line 1143
    goto :goto_2f

    .line 1144
    :cond_4e
    invoke-virtual {v9}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 1145
    .line 1146
    .line 1147
    move-result-object v1

    .line 1148
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 1149
    .line 1150
    .line 1151
    move-result-object v1

    .line 1152
    invoke-static {v5, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 1153
    .line 1154
    .line 1155
    move-result v1

    .line 1156
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 1157
    .line 1158
    .line 1159
    move-result v1

    .line 1160
    invoke-static {v9, v1}, LE3/f;->B(Landroid/widget/TextView;I)V

    .line 1161
    .line 1162
    .line 1163
    :cond_4f
    :goto_2f
    return-void
.end method

.method public final g(Landroid/content/Context;I)V
    .locals 5

    .line 1
    sget-object v0, Le/a;->w:[I

    .line 2
    .line 3
    new-instance v1, Lm2/u;

    .line 4
    .line 5
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-direct {v1, p1, p2}, Lm2/u;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 10
    .line 11
    .line 12
    const/16 p2, 0xe

    .line 13
    .line 14
    invoke-virtual {v1, p2}, Lm2/u;->F(I)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-object v2, p0, Ll/d0;->a:Landroid/widget/TextView;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1, p2, v3}, Lm2/u;->n(IZ)Z

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 28
    .line 29
    .line 30
    :cond_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 31
    .line 32
    const/16 v0, 0x17

    .line 33
    .line 34
    if-ge p2, v0, :cond_3

    .line 35
    .line 36
    const/4 v0, 0x3

    .line 37
    invoke-virtual {v1, v0}, Lm2/u;->F(I)Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    if-eqz v4, :cond_1

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Lm2/u;->o(I)Landroid/content/res/ColorStateList;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    const/4 v0, 0x5

    .line 53
    invoke-virtual {v1, v0}, Lm2/u;->F(I)Z

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    if-eqz v4, :cond_2

    .line 58
    .line 59
    invoke-virtual {v1, v0}, Lm2/u;->o(I)Landroid/content/res/ColorStateList;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 66
    .line 67
    .line 68
    :cond_2
    const/4 v0, 0x4

    .line 69
    invoke-virtual {v1, v0}, Lm2/u;->F(I)Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-eqz v4, :cond_3

    .line 74
    .line 75
    invoke-virtual {v1, v0}, Lm2/u;->o(I)Landroid/content/res/ColorStateList;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 82
    .line 83
    .line 84
    :cond_3
    invoke-virtual {v1, v3}, Lm2/u;->F(I)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_4

    .line 89
    .line 90
    const/4 v0, -0x1

    .line 91
    invoke-virtual {v1, v3, v0}, Lm2/u;->r(II)I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-nez v0, :cond_4

    .line 96
    .line 97
    const/4 v0, 0x0

    .line 98
    invoke-virtual {v2, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 99
    .line 100
    .line 101
    :cond_4
    invoke-virtual {p0, p1, v1}, Ll/d0;->n(Landroid/content/Context;Lm2/u;)V

    .line 102
    .line 103
    .line 104
    const/16 p1, 0x1a

    .line 105
    .line 106
    if-lt p2, p1, :cond_5

    .line 107
    .line 108
    const/16 p1, 0xd

    .line 109
    .line 110
    invoke-virtual {v1, p1}, Lm2/u;->F(I)Z

    .line 111
    .line 112
    .line 113
    move-result p2

    .line 114
    if-eqz p2, :cond_5

    .line 115
    .line 116
    invoke-virtual {v1, p1}, Lm2/u;->A(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    if-eqz p1, :cond_5

    .line 121
    .line 122
    invoke-static {v2, p1}, Ll/b0;->d(Landroid/widget/TextView;Ljava/lang/String;)Z

    .line 123
    .line 124
    .line 125
    :cond_5
    invoke-virtual {v1}, Lm2/u;->P()V

    .line 126
    .line 127
    .line 128
    iget-object p1, p0, Ll/d0;->l:Landroid/graphics/Typeface;

    .line 129
    .line 130
    if-eqz p1, :cond_6

    .line 131
    .line 132
    iget p2, p0, Ll/d0;->j:I

    .line 133
    .line 134
    invoke-virtual {v2, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 135
    .line 136
    .line 137
    :cond_6
    return-void
.end method

.method public final i(IIII)V
    .locals 2

    .line 1
    iget-object v0, p0, Ll/d0;->i:Ll/m0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ll/m0;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v1, v0, Ll/m0;->j:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    int-to-float p1, p1

    .line 20
    invoke-static {p4, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    int-to-float p2, p2

    .line 25
    invoke-static {p4, p2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    int-to-float p3, p3

    .line 30
    invoke-static {p4, p3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 31
    .line 32
    .line 33
    move-result p3

    .line 34
    invoke-virtual {v0, p1, p2, p3}, Ll/m0;->k(FFF)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ll/m0;->h()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    invoke-virtual {v0}, Ll/m0;->a()V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method

.method public final j([II)V
    .locals 6

    .line 1
    iget-object v0, p0, Ll/d0;->i:Ll/m0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ll/m0;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_4

    .line 8
    .line 9
    array-length v1, p1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-lez v1, :cond_3

    .line 12
    .line 13
    new-array v3, v1, [I

    .line 14
    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    iget-object v4, v0, Ll/m0;->j:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    :goto_0
    if-ge v2, v1, :cond_1

    .line 33
    .line 34
    aget v5, p1, v2

    .line 35
    .line 36
    int-to-float v5, v5

    .line 37
    invoke-static {p2, v5, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    aput v5, v3, v2

    .line 46
    .line 47
    add-int/lit8 v2, v2, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    :goto_1
    invoke-static {v3}, Ll/m0;->b([I)[I

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    iput-object p2, v0, Ll/m0;->f:[I

    .line 55
    .line 56
    invoke-virtual {v0}, Ll/m0;->i()Z

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    if-eqz p2, :cond_2

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 64
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v1, "None of the preset sizes is valid: "

    .line 68
    .line 69
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p2

    .line 87
    :cond_3
    iput-boolean v2, v0, Ll/m0;->g:Z

    .line 88
    .line 89
    :goto_2
    invoke-virtual {v0}, Ll/m0;->h()Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_4

    .line 94
    .line 95
    invoke-virtual {v0}, Ll/m0;->a()V

    .line 96
    .line 97
    .line 98
    :cond_4
    return-void
.end method

.method public final k(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Ll/d0;->i:Ll/m0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ll/m0;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-ne p1, v1, :cond_0

    .line 13
    .line 14
    iget-object p1, v0, Ll/m0;->j:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const/4 v1, 0x2

    .line 25
    const/high16 v2, 0x41400000    # 12.0f

    .line 26
    .line 27
    invoke-static {v1, v2, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const/high16 v3, 0x42e00000    # 112.0f

    .line 32
    .line 33
    invoke-static {v1, v3, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    const/high16 v1, 0x3f800000    # 1.0f

    .line 38
    .line 39
    invoke-virtual {v0, v2, p1, v1}, Ll/m0;->k(FFF)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ll/m0;->h()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    invoke-virtual {v0}, Ll/m0;->a()V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 53
    .line 54
    const-string v1, "Unknown auto-size text type: "

    .line 55
    .line 56
    invoke-static {v1, p1}, La/r;->f(Ljava/lang/String;I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw v0

    .line 64
    :cond_1
    const/4 p1, 0x0

    .line 65
    iput p1, v0, Ll/m0;->a:I

    .line 66
    .line 67
    const/high16 v1, -0x40800000    # -1.0f

    .line 68
    .line 69
    iput v1, v0, Ll/m0;->d:F

    .line 70
    .line 71
    iput v1, v0, Ll/m0;->e:F

    .line 72
    .line 73
    iput v1, v0, Ll/m0;->c:F

    .line 74
    .line 75
    new-array v1, p1, [I

    .line 76
    .line 77
    iput-object v1, v0, Ll/m0;->f:[I

    .line 78
    .line 79
    iput-boolean p1, v0, Ll/m0;->b:Z

    .line 80
    .line 81
    :cond_2
    :goto_0
    return-void
.end method

.method public final l(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ll/d0;->h:Ll/e1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ll/e1;

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ll/e1;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Ll/d0;->h:Ll/e1;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Ll/d0;->h:Ll/e1;

    .line 14
    .line 15
    iput-object p1, v0, Ll/e1;->d:Ljava/lang/Object;

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    :cond_1
    iput-boolean v1, v0, Ll/e1;->c:Z

    .line 21
    .line 22
    iput-object v0, p0, Ll/d0;->b:Ll/e1;

    .line 23
    .line 24
    iput-object v0, p0, Ll/d0;->c:Ll/e1;

    .line 25
    .line 26
    iput-object v0, p0, Ll/d0;->d:Ll/e1;

    .line 27
    .line 28
    iput-object v0, p0, Ll/d0;->e:Ll/e1;

    .line 29
    .line 30
    iput-object v0, p0, Ll/d0;->f:Ll/e1;

    .line 31
    .line 32
    iput-object v0, p0, Ll/d0;->g:Ll/e1;

    .line 33
    .line 34
    return-void
.end method

.method public final m(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ll/d0;->h:Ll/e1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ll/e1;

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ll/e1;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Ll/d0;->h:Ll/e1;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Ll/d0;->h:Ll/e1;

    .line 14
    .line 15
    iput-object p1, v0, Ll/e1;->e:Ljava/lang/Object;

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    :cond_1
    iput-boolean v1, v0, Ll/e1;->b:Z

    .line 21
    .line 22
    iput-object v0, p0, Ll/d0;->b:Ll/e1;

    .line 23
    .line 24
    iput-object v0, p0, Ll/d0;->c:Ll/e1;

    .line 25
    .line 26
    iput-object v0, p0, Ll/d0;->d:Ll/e1;

    .line 27
    .line 28
    iput-object v0, p0, Ll/d0;->e:Ll/e1;

    .line 29
    .line 30
    iput-object v0, p0, Ll/d0;->f:Ll/e1;

    .line 31
    .line 32
    iput-object v0, p0, Ll/d0;->g:Ll/e1;

    .line 33
    .line 34
    return-void
.end method

.method public final n(Landroid/content/Context;Lm2/u;)V
    .locals 10

    .line 1
    iget v0, p0, Ll/d0;->j:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {p2, v1, v0}, Lm2/u;->x(II)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    iput v0, p0, Ll/d0;->j:I

    .line 9
    .line 10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 11
    .line 12
    const/4 v2, -0x1

    .line 13
    const/16 v3, 0x1c

    .line 14
    .line 15
    if-lt v0, v3, :cond_0

    .line 16
    .line 17
    const/16 v4, 0xb

    .line 18
    .line 19
    invoke-virtual {p2, v4, v2}, Lm2/u;->x(II)I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    iput v4, p0, Ll/d0;->k:I

    .line 24
    .line 25
    if-eq v4, v2, :cond_0

    .line 26
    .line 27
    iget v4, p0, Ll/d0;->j:I

    .line 28
    .line 29
    and-int/2addr v4, v1

    .line 30
    iput v4, p0, Ll/d0;->j:I

    .line 31
    .line 32
    :cond_0
    const/16 v4, 0xa

    .line 33
    .line 34
    invoke-virtual {p2, v4}, Lm2/u;->F(I)Z

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    const/16 v6, 0xc

    .line 39
    .line 40
    const/4 v7, 0x0

    .line 41
    const/4 v8, 0x1

    .line 42
    if-nez v5, :cond_6

    .line 43
    .line 44
    invoke-virtual {p2, v6}, Lm2/u;->F(I)Z

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    if-eqz v5, :cond_1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    invoke-virtual {p2, v8}, Lm2/u;->F(I)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_5

    .line 56
    .line 57
    iput-boolean v7, p0, Ll/d0;->m:Z

    .line 58
    .line 59
    invoke-virtual {p2, v8, v8}, Lm2/u;->x(II)I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eq p1, v8, :cond_4

    .line 64
    .line 65
    if-eq p1, v1, :cond_3

    .line 66
    .line 67
    const/4 p2, 0x3

    .line 68
    if-eq p1, p2, :cond_2

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 72
    .line 73
    iput-object p1, p0, Ll/d0;->l:Landroid/graphics/Typeface;

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 77
    .line 78
    iput-object p1, p0, Ll/d0;->l:Landroid/graphics/Typeface;

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_4
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 82
    .line 83
    iput-object p1, p0, Ll/d0;->l:Landroid/graphics/Typeface;

    .line 84
    .line 85
    :cond_5
    :goto_0
    return-void

    .line 86
    :cond_6
    :goto_1
    const/4 v5, 0x0

    .line 87
    iput-object v5, p0, Ll/d0;->l:Landroid/graphics/Typeface;

    .line 88
    .line 89
    invoke-virtual {p2, v6}, Lm2/u;->F(I)Z

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    if-eqz v5, :cond_7

    .line 94
    .line 95
    const/16 v4, 0xc

    .line 96
    .line 97
    :cond_7
    iget v5, p0, Ll/d0;->k:I

    .line 98
    .line 99
    iget v6, p0, Ll/d0;->j:I

    .line 100
    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-nez p1, :cond_c

    .line 106
    .line 107
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 108
    .line 109
    iget-object v9, p0, Ll/d0;->a:Landroid/widget/TextView;

    .line 110
    .line 111
    invoke-direct {p1, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    new-instance v9, Lc/g;

    .line 115
    .line 116
    invoke-direct {v9, p0, v5, v6, p1}, Lc/g;-><init>(Ll/d0;IILjava/lang/ref/WeakReference;)V

    .line 117
    .line 118
    .line 119
    :try_start_0
    iget p1, p0, Ll/d0;->j:I

    .line 120
    .line 121
    invoke-virtual {p2, v4, p1, v9}, Lm2/u;->v(IILc/g;)Landroid/graphics/Typeface;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    if-eqz p1, :cond_a

    .line 126
    .line 127
    if-lt v0, v3, :cond_9

    .line 128
    .line 129
    iget v0, p0, Ll/d0;->k:I

    .line 130
    .line 131
    if-eq v0, v2, :cond_9

    .line 132
    .line 133
    invoke-static {p1, v7}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    iget v0, p0, Ll/d0;->k:I

    .line 138
    .line 139
    iget v5, p0, Ll/d0;->j:I

    .line 140
    .line 141
    and-int/2addr v5, v1

    .line 142
    if-eqz v5, :cond_8

    .line 143
    .line 144
    const/4 v5, 0x1

    .line 145
    goto :goto_2

    .line 146
    :cond_8
    const/4 v5, 0x0

    .line 147
    :goto_2
    invoke-static {p1, v0, v5}, Ll/c0;->a(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    iput-object p1, p0, Ll/d0;->l:Landroid/graphics/Typeface;

    .line 152
    .line 153
    goto :goto_3

    .line 154
    :catch_0
    nop

    .line 155
    goto :goto_5

    .line 156
    :cond_9
    iput-object p1, p0, Ll/d0;->l:Landroid/graphics/Typeface;

    .line 157
    .line 158
    :cond_a
    :goto_3
    iget-object p1, p0, Ll/d0;->l:Landroid/graphics/Typeface;

    .line 159
    .line 160
    if-nez p1, :cond_b

    .line 161
    .line 162
    const/4 p1, 0x1

    .line 163
    goto :goto_4

    .line 164
    :cond_b
    const/4 p1, 0x0

    .line 165
    :goto_4
    iput-boolean p1, p0, Ll/d0;->m:Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .line 167
    :cond_c
    :goto_5
    iget-object p1, p0, Ll/d0;->l:Landroid/graphics/Typeface;

    .line 168
    .line 169
    if-nez p1, :cond_f

    .line 170
    .line 171
    invoke-virtual {p2, v4}, Lm2/u;->A(I)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    if-eqz p1, :cond_f

    .line 176
    .line 177
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 178
    .line 179
    if-lt p2, v3, :cond_e

    .line 180
    .line 181
    iget p2, p0, Ll/d0;->k:I

    .line 182
    .line 183
    if-eq p2, v2, :cond_e

    .line 184
    .line 185
    invoke-static {p1, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    iget p2, p0, Ll/d0;->k:I

    .line 190
    .line 191
    iget v0, p0, Ll/d0;->j:I

    .line 192
    .line 193
    and-int/2addr v0, v1

    .line 194
    if-eqz v0, :cond_d

    .line 195
    .line 196
    const/4 v7, 0x1

    .line 197
    :cond_d
    invoke-static {p1, p2, v7}, Ll/c0;->a(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    iput-object p1, p0, Ll/d0;->l:Landroid/graphics/Typeface;

    .line 202
    .line 203
    goto :goto_6

    .line 204
    :cond_e
    iget p2, p0, Ll/d0;->j:I

    .line 205
    .line 206
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    iput-object p1, p0, Ll/d0;->l:Landroid/graphics/Typeface;

    .line 211
    .line 212
    :cond_f
    :goto_6
    return-void
.end method
