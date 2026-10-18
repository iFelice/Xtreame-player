.class public final Ll/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Z

.field public e:Z

.field public f:Z

.field public final g:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Ll/w;->a:I

    .line 3
    iput-object p1, p0, Ll/w;->b:Ljava/lang/Object;

    iput-object p2, p0, Ll/w;->g:Landroid/view/View;

    iput-object p3, p0, Ll/w;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/widget/TextView;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Ll/w;->a:I

    const/4 p2, 0x0

    iput-object p2, p0, Ll/w;->b:Ljava/lang/Object;

    iput-object p2, p0, Ll/w;->c:Ljava/lang/Object;

    const/4 p2, 0x0

    iput-boolean p2, p0, Ll/w;->d:Z

    iput-boolean p2, p0, Ll/w;->e:Z

    iput-object p1, p0, Ll/w;->g:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .line 1
    iget-object v0, p0, Ll/w;->g:Landroid/view/View;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Landroid/widget/CompoundButton;

    .line 5
    .line 6
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v3, 0x17

    .line 9
    .line 10
    if-lt v2, v3, :cond_0

    .line 11
    .line 12
    invoke-static {v1}, Ll/H;->c(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    sget-boolean v2, Lcom/bumptech/glide/d;->b:Z

    .line 18
    .line 19
    const-string v3, "CompoundButtonCompat"

    .line 20
    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    :try_start_0
    const-class v4, Landroid/widget/CompoundButton;

    .line 25
    .line 26
    const-string v5, "mButtonDrawable"

    .line 27
    .line 28
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    sput-object v4, Lcom/bumptech/glide/d;->a:Ljava/lang/reflect/Field;

    .line 33
    .line 34
    invoke-virtual {v4, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception v4

    .line 39
    const-string v5, "Failed to retrieve mButtonDrawable field"

    .line 40
    .line 41
    invoke-static {v3, v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    .line 43
    .line 44
    :goto_0
    sput-boolean v2, Lcom/bumptech/glide/d;->b:Z

    .line 45
    .line 46
    :cond_1
    sget-object v2, Lcom/bumptech/glide/d;->a:Ljava/lang/reflect/Field;

    .line 47
    .line 48
    const/4 v4, 0x0

    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    :try_start_1
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :catch_1
    move-exception v1

    .line 59
    const-string v2, "Failed to get button drawable via reflection"

    .line 60
    .line 61
    invoke-static {v3, v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    .line 63
    .line 64
    sput-object v4, Lcom/bumptech/glide/d;->a:Ljava/lang/reflect/Field;

    .line 65
    .line 66
    :cond_2
    move-object v1, v4

    .line 67
    :goto_1
    if-eqz v1, :cond_7

    .line 68
    .line 69
    iget-boolean v2, p0, Ll/w;->d:Z

    .line 70
    .line 71
    if-nez v2, :cond_3

    .line 72
    .line 73
    iget-boolean v2, p0, Ll/w;->e:Z

    .line 74
    .line 75
    if-eqz v2, :cond_7

    .line 76
    .line 77
    :cond_3
    invoke-static {v1}, Ln0/c;->q(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    iget-boolean v2, p0, Ll/w;->d:Z

    .line 86
    .line 87
    if-eqz v2, :cond_4

    .line 88
    .line 89
    iget-object v2, p0, Ll/w;->b:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v2, Landroid/content/res/ColorStateList;

    .line 92
    .line 93
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 94
    .line 95
    .line 96
    :cond_4
    iget-boolean v2, p0, Ll/w;->e:Z

    .line 97
    .line 98
    if-eqz v2, :cond_5

    .line 99
    .line 100
    iget-object v2, p0, Ll/w;->c:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v2, Landroid/graphics/PorterDuff$Mode;

    .line 103
    .line 104
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 105
    .line 106
    .line 107
    :cond_5
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    if-eqz v2, :cond_6

    .line 112
    .line 113
    move-object v2, v0

    .line 114
    check-cast v2, Landroid/widget/CompoundButton;

    .line 115
    .line 116
    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 121
    .line 122
    .line 123
    :cond_6
    check-cast v0, Landroid/widget/CompoundButton;

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    .line 127
    .line 128
    :cond_7
    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Ll/w;->g:Landroid/view/View;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Landroid/widget/CheckedTextView;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/widget/CheckedTextView;->getCheckMarkDrawable()Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_4

    .line 11
    .line 12
    iget-boolean v2, p0, Ll/w;->d:Z

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    iget-boolean v2, p0, Ll/w;->e:Z

    .line 17
    .line 18
    if-eqz v2, :cond_4

    .line 19
    .line 20
    :cond_0
    invoke-static {v1}, Ln0/c;->q(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-boolean v2, p0, Ll/w;->d:Z

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    iget-object v2, p0, Ll/w;->b:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v2, Landroid/content/res/ColorStateList;

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    iget-boolean v2, p0, Ll/w;->e:Z

    .line 40
    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    iget-object v2, p0, Ll/w;->c:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v2, Landroid/graphics/PorterDuff$Mode;

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 48
    .line 49
    .line 50
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_3

    .line 55
    .line 56
    move-object v2, v0

    .line 57
    check-cast v2, Landroid/widget/CheckedTextView;

    .line 58
    .line 59
    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 64
    .line 65
    .line 66
    :cond_3
    check-cast v0, Landroid/widget/CheckedTextView;

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69
    .line 70
    .line 71
    :cond_4
    return-void
.end method

.method public final c(Landroid/util/AttributeSet;I)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move/from16 v7, p2

    .line 6
    .line 7
    iget v2, v1, Ll/w;->a:I

    .line 8
    .line 9
    const/4 v8, 0x0

    .line 10
    const/4 v9, -0x1

    .line 11
    const/4 v10, 0x3

    .line 12
    const/4 v11, 0x2

    .line 13
    const/4 v12, 0x1

    .line 14
    const/4 v13, 0x0

    .line 15
    iget-object v14, v1, Ll/w;->g:Landroid/view/View;

    .line 16
    .line 17
    packed-switch v2, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    move-object v2, v14

    .line 21
    check-cast v2, Landroid/widget/CompoundButton;

    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    sget-object v4, Le/a;->m:[I

    .line 28
    .line 29
    invoke-static {v3, v0, v4, v7, v13}, Lm2/u;->J(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lm2/u;

    .line 30
    .line 31
    .line 32
    move-result-object v15

    .line 33
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    iget-object v5, v15, Lm2/u;->I:Ljava/lang/Object;

    .line 38
    .line 39
    move-object v6, v5

    .line 40
    check-cast v6, Landroid/content/res/TypedArray;

    .line 41
    .line 42
    move-object/from16 v5, p1

    .line 43
    .line 44
    move/from16 v7, p2

    .line 45
    .line 46
    invoke-static/range {v2 .. v7}, LN/N;->l(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    .line 47
    .line 48
    .line 49
    :try_start_0
    invoke-virtual {v15, v12}, Lm2/u;->F(I)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_0

    .line 54
    .line 55
    invoke-virtual {v15, v12, v13}, Lm2/u;->z(II)I

    .line 56
    .line 57
    .line 58
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    if-eqz v0, :cond_0

    .line 60
    .line 61
    :try_start_1
    move-object v2, v14

    .line 62
    check-cast v2, Landroid/widget/CompoundButton;

    .line 63
    .line 64
    move-object v3, v14

    .line 65
    check-cast v3, Landroid/widget/CompoundButton;

    .line 66
    .line 67
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-static {v3, v0}, LJ6/r;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    .line 80
    goto :goto_1

    .line 81
    :catch_0
    :cond_0
    :try_start_2
    invoke-virtual {v15, v13}, Lm2/u;->F(I)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_1

    .line 86
    .line 87
    invoke-virtual {v15, v13, v13}, Lm2/u;->z(II)I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_1

    .line 92
    .line 93
    move-object v2, v14

    .line 94
    check-cast v2, Landroid/widget/CompoundButton;

    .line 95
    .line 96
    move-object v3, v14

    .line 97
    check-cast v3, Landroid/widget/CompoundButton;

    .line 98
    .line 99
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-static {v3, v0}, LJ6/r;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    .line 109
    .line 110
    :cond_1
    :goto_0
    invoke-virtual {v15, v11}, Lm2/u;->F(I)Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_2

    .line 115
    .line 116
    move-object v0, v14

    .line 117
    check-cast v0, Landroid/widget/CompoundButton;

    .line 118
    .line 119
    invoke-virtual {v15, v11}, Lm2/u;->o(I)Landroid/content/res/ColorStateList;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 124
    .line 125
    .line 126
    :cond_2
    invoke-virtual {v15, v10}, Lm2/u;->F(I)Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    if-eqz v0, :cond_3

    .line 131
    .line 132
    check-cast v14, Landroid/widget/CompoundButton;

    .line 133
    .line 134
    invoke-virtual {v15, v10, v9}, Lm2/u;->x(II)I

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    invoke-static {v0, v8}, Ll/t0;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-virtual {v14, v0}, Landroid/widget/CompoundButton;->setButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    .line 144
    .line 145
    :cond_3
    invoke-virtual {v15}, Lm2/u;->P()V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :goto_1
    invoke-virtual {v15}, Lm2/u;->P()V

    .line 150
    .line 151
    .line 152
    throw v0

    .line 153
    :pswitch_0
    move-object v2, v14

    .line 154
    check-cast v2, Landroid/widget/CheckedTextView;

    .line 155
    .line 156
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    sget-object v4, Le/a;->l:[I

    .line 161
    .line 162
    invoke-static {v3, v0, v4, v7, v13}, Lm2/u;->J(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lm2/u;

    .line 163
    .line 164
    .line 165
    move-result-object v15

    .line 166
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    iget-object v5, v15, Lm2/u;->I:Ljava/lang/Object;

    .line 171
    .line 172
    move-object v6, v5

    .line 173
    check-cast v6, Landroid/content/res/TypedArray;

    .line 174
    .line 175
    move-object/from16 v5, p1

    .line 176
    .line 177
    move/from16 v7, p2

    .line 178
    .line 179
    invoke-static/range {v2 .. v7}, LN/N;->l(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    .line 180
    .line 181
    .line 182
    :try_start_3
    invoke-virtual {v15, v12}, Lm2/u;->F(I)Z

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    if-eqz v0, :cond_4

    .line 187
    .line 188
    invoke-virtual {v15, v12, v13}, Lm2/u;->z(II)I

    .line 189
    .line 190
    .line 191
    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 192
    if-eqz v0, :cond_4

    .line 193
    .line 194
    :try_start_4
    move-object v2, v14

    .line 195
    check-cast v2, Landroid/widget/CheckedTextView;

    .line 196
    .line 197
    move-object v3, v14

    .line 198
    check-cast v3, Landroid/widget/CheckedTextView;

    .line 199
    .line 200
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    invoke-static {v3, v0}, LJ6/r;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-virtual {v2, v0}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 209
    .line 210
    .line 211
    goto :goto_2

    .line 212
    :catchall_1
    move-exception v0

    .line 213
    goto :goto_3

    .line 214
    :catch_1
    :cond_4
    :try_start_5
    invoke-virtual {v15, v13}, Lm2/u;->F(I)Z

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    if-eqz v0, :cond_5

    .line 219
    .line 220
    invoke-virtual {v15, v13, v13}, Lm2/u;->z(II)I

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    if-eqz v0, :cond_5

    .line 225
    .line 226
    move-object v2, v14

    .line 227
    check-cast v2, Landroid/widget/CheckedTextView;

    .line 228
    .line 229
    move-object v3, v14

    .line 230
    check-cast v3, Landroid/widget/CheckedTextView;

    .line 231
    .line 232
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 233
    .line 234
    .line 235
    move-result-object v3

    .line 236
    invoke-static {v3, v0}, LJ6/r;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-virtual {v2, v0}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 241
    .line 242
    .line 243
    :cond_5
    :goto_2
    invoke-virtual {v15, v11}, Lm2/u;->F(I)Z

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    if-eqz v0, :cond_6

    .line 248
    .line 249
    move-object v0, v14

    .line 250
    check-cast v0, Landroid/widget/CheckedTextView;

    .line 251
    .line 252
    invoke-virtual {v15, v11}, Lm2/u;->o(I)Landroid/content/res/ColorStateList;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setCheckMarkTintList(Landroid/content/res/ColorStateList;)V

    .line 257
    .line 258
    .line 259
    :cond_6
    invoke-virtual {v15, v10}, Lm2/u;->F(I)Z

    .line 260
    .line 261
    .line 262
    move-result v0

    .line 263
    if-eqz v0, :cond_7

    .line 264
    .line 265
    check-cast v14, Landroid/widget/CheckedTextView;

    .line 266
    .line 267
    invoke-virtual {v15, v10, v9}, Lm2/u;->x(II)I

    .line 268
    .line 269
    .line 270
    move-result v0

    .line 271
    invoke-static {v0, v8}, Ll/t0;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    invoke-virtual {v14, v0}, Landroid/widget/CheckedTextView;->setCheckMarkTintMode(Landroid/graphics/PorterDuff$Mode;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 276
    .line 277
    .line 278
    :cond_7
    invoke-virtual {v15}, Lm2/u;->P()V

    .line 279
    .line 280
    .line 281
    return-void

    .line 282
    :goto_3
    invoke-virtual {v15}, Lm2/u;->P()V

    .line 283
    .line 284
    .line 285
    throw v0

    .line 286
    nop

    .line 287
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Ll/w;->d:Z

    .line 2
    .line 3
    if-nez v0, :cond_7

    .line 4
    .line 5
    iget-object v0, p0, Ll/w;->b:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Landroid/app/Activity;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    iget-object v2, p0, Ll/w;->c:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v2, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    move-object v0, v1

    .line 35
    :goto_1
    if-eqz v0, :cond_2

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 38
    .line 39
    .line 40
    :cond_2
    iget-object v0, p0, Ll/w;->c:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v0, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 43
    .line 44
    sget-object v2, Lk3/l;->A:Lk3/l;

    .line 45
    .line 46
    iget-object v2, v2, Lk3/l;->z:Lcom/google/android/gms/internal/ads/Aa;

    .line 47
    .line 48
    new-instance v2, Lcom/google/android/gms/internal/ads/xe;

    .line 49
    .line 50
    iget-object v3, p0, Ll/w;->g:Landroid/view/View;

    .line 51
    .line 52
    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/internal/ads/xe;-><init>(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/mI;->G:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 58
    .line 59
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Landroid/view/View;

    .line 64
    .line 65
    if-nez v0, :cond_3

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    if-eqz v0, :cond_5

    .line 73
    .line 74
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-nez v3, :cond_4

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_4
    move-object v1, v0

    .line 82
    :cond_5
    :goto_2
    if-eqz v1, :cond_6

    .line 83
    .line 84
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/xe;->a1(Landroid/view/ViewTreeObserver;)V

    .line 85
    .line 86
    .line 87
    :cond_6
    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Ll/w;->d:Z

    .line 89
    .line 90
    :cond_7
    return-void
.end method
