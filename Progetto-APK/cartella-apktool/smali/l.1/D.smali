.class public final Ll/D;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public b:I

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    iput p1, p0, Ll/D;->a:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput v1, p0, Ll/D;->b:I

    .line 4
    new-instance p1, Landroidx/leanback/widget/u;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroidx/leanback/widget/u;-><init>(I)V

    iput-object p1, p0, Ll/D;->c:Ljava/lang/Object;

    .line 5
    new-instance v0, Landroidx/leanback/widget/u;

    invoke-direct {v0, v1}, Landroidx/leanback/widget/u;-><init>(I)V

    iput-object v0, p0, Ll/D;->d:Ljava/lang/Object;

    .line 6
    iput-object v0, p0, Ll/D;->e:Ljava/lang/Object;

    .line 7
    iput-object p1, p0, Ll/D;->f:Ljava/lang/Object;

    return-void

    .line 8
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 9
    iput p1, p0, Ll/D;->b:I

    return-void

    .line 10
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput v1, p0, Ll/D;->b:I

    .line 12
    new-instance p1, Landroidx/leanback/widget/Y;

    invoke-direct {p1}, Landroidx/leanback/widget/Y;-><init>()V

    iput-object p1, p0, Ll/D;->c:Ljava/lang/Object;

    .line 13
    new-instance v0, Landroidx/leanback/widget/Y;

    invoke-direct {v0}, Landroidx/leanback/widget/Y;-><init>()V

    iput-object v0, p0, Ll/D;->d:Ljava/lang/Object;

    .line 14
    iput-object v0, p0, Ll/D;->e:Ljava/lang/Object;

    .line 15
    iput-object p1, p0, Ll/D;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LF0/u;)V
    .locals 8

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 17
    iput v0, p0, Ll/D;->a:I

    .line 18
    iget-object v0, p1, LF0/u;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 19
    new-array v2, v1, [Ljava/lang/String;

    iget-object v3, p1, LF0/u;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, p0, Ll/D;->c:Ljava/lang/Object;

    .line 20
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v3, v2, [D

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_0

    .line 21
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    aput-wide v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 22
    :cond_0
    iput-object v3, p0, Ll/D;->d:Ljava/lang/Object;

    .line 23
    iget-object p1, p1, LF0/u;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [D

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_1

    .line 24
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    aput-wide v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 25
    :cond_1
    iput-object v2, p0, Ll/D;->e:Ljava/lang/Object;

    .line 26
    new-array p1, v1, [I

    iput-object p1, p0, Ll/D;->f:Ljava/lang/Object;

    iput v4, p0, Ll/D;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Ll/D;->a:I

    .line 29
    iput v0, p0, Ll/D;->b:I

    .line 30
    iput-object p1, p0, Ll/D;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Ll/D;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {v0}, Ll/t0;->a(Landroid/graphics/drawable/Drawable;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    if-eqz v0, :cond_8

    .line 15
    .line 16
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 17
    .line 18
    const/16 v2, 0x15

    .line 19
    .line 20
    if-le v1, v2, :cond_1

    .line 21
    .line 22
    iget-object v1, p0, Ll/D;->d:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v1, Ll/e1;

    .line 25
    .line 26
    if-eqz v1, :cond_6

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    if-ne v1, v2, :cond_6

    .line 30
    .line 31
    :goto_0
    iget-object v1, p0, Ll/D;->f:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v1, Ll/e1;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    if-nez v1, :cond_2

    .line 37
    .line 38
    new-instance v1, Ll/e1;

    .line 39
    .line 40
    invoke-direct {v1, v2}, Ll/e1;-><init>(I)V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Ll/D;->f:Ljava/lang/Object;

    .line 44
    .line 45
    :cond_2
    iget-object v1, p0, Ll/D;->f:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v1, Ll/e1;

    .line 48
    .line 49
    const/4 v3, 0x0

    .line 50
    iput-object v3, v1, Ll/e1;->d:Ljava/lang/Object;

    .line 51
    .line 52
    iput-boolean v2, v1, Ll/e1;->c:Z

    .line 53
    .line 54
    iput-object v3, v1, Ll/e1;->e:Ljava/lang/Object;

    .line 55
    .line 56
    iput-boolean v2, v1, Ll/e1;->b:Z

    .line 57
    .line 58
    iget-object v2, p0, Ll/D;->c:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v2, Landroid/widget/ImageView;

    .line 61
    .line 62
    invoke-virtual {v2}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    const/4 v3, 0x1

    .line 67
    if-eqz v2, :cond_3

    .line 68
    .line 69
    iput-boolean v3, v1, Ll/e1;->c:Z

    .line 70
    .line 71
    iput-object v2, v1, Ll/e1;->d:Ljava/lang/Object;

    .line 72
    .line 73
    :cond_3
    iget-object v2, p0, Ll/D;->c:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v2, Landroid/widget/ImageView;

    .line 76
    .line 77
    invoke-virtual {v2}, Landroid/widget/ImageView;->getImageTintMode()Landroid/graphics/PorterDuff$Mode;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    if-eqz v2, :cond_4

    .line 82
    .line 83
    iput-boolean v3, v1, Ll/e1;->b:Z

    .line 84
    .line 85
    iput-object v2, v1, Ll/e1;->e:Ljava/lang/Object;

    .line 86
    .line 87
    :cond_4
    iget-boolean v2, v1, Ll/e1;->c:Z

    .line 88
    .line 89
    if-nez v2, :cond_5

    .line 90
    .line 91
    iget-boolean v2, v1, Ll/e1;->b:Z

    .line 92
    .line 93
    if-eqz v2, :cond_6

    .line 94
    .line 95
    :cond_5
    iget-object v2, p0, Ll/D;->c:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v2, Landroid/widget/ImageView;

    .line 98
    .line 99
    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-static {v0, v1, v2}, Ll/y;->d(Landroid/graphics/drawable/Drawable;Ll/e1;[I)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_6
    iget-object v1, p0, Ll/D;->e:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast v1, Ll/e1;

    .line 110
    .line 111
    if-eqz v1, :cond_7

    .line 112
    .line 113
    iget-object v2, p0, Ll/D;->c:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast v2, Landroid/widget/ImageView;

    .line 116
    .line 117
    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-static {v0, v1, v2}, Ll/y;->d(Landroid/graphics/drawable/Drawable;Ll/e1;[I)V

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_7
    iget-object v1, p0, Ll/D;->d:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast v1, Ll/e1;

    .line 128
    .line 129
    if-eqz v1, :cond_8

    .line 130
    .line 131
    iget-object v2, p0, Ll/D;->c:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast v2, Landroid/widget/ImageView;

    .line 134
    .line 135
    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-static {v0, v1, v2}, Ll/y;->d(Landroid/graphics/drawable/Drawable;Ll/e1;[I)V

    .line 140
    .line 141
    .line 142
    :cond_8
    :goto_1
    return-void
.end method

.method public final b(Landroid/util/AttributeSet;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Ll/D;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/widget/ImageView;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v3, Le/a;->f:[I

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-static {v0, p1, v3, p2, v1}, Lm2/u;->J(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lm2/u;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Ll/D;->c:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Landroid/widget/ImageView;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget-object v4, v0, Lm2/u;->I:Ljava/lang/Object;

    .line 25
    .line 26
    move-object v5, v4

    .line 27
    check-cast v5, Landroid/content/res/TypedArray;

    .line 28
    .line 29
    move-object v4, p1

    .line 30
    move v6, p2

    .line 31
    invoke-static/range {v1 .. v6}, LN/N;->l(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    .line 32
    .line 33
    .line 34
    :try_start_0
    iget-object p1, p0, Ll/D;->c:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p1, Landroid/widget/ImageView;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const/4 p2, -0x1

    .line 43
    if-nez p1, :cond_0

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    invoke-virtual {v0, v1, p2}, Lm2/u;->z(II)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eq v1, p2, :cond_0

    .line 51
    .line 52
    iget-object p1, p0, Ll/D;->c:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast p1, Landroid/widget/ImageView;

    .line 55
    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {p1, v1}, LJ6/r;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    if-eqz p1, :cond_0

    .line 65
    .line 66
    iget-object v1, p0, Ll/D;->c:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v1, Landroid/widget/ImageView;

    .line 69
    .line 70
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :catchall_0
    move-exception p1

    .line 75
    goto/16 :goto_1

    .line 76
    .line 77
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 78
    .line 79
    invoke-static {p1}, Ll/t0;->a(Landroid/graphics/drawable/Drawable;)V

    .line 80
    .line 81
    .line 82
    :cond_1
    const/4 p1, 0x2

    .line 83
    invoke-virtual {v0, p1}, Lm2/u;->F(I)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    const/16 v2, 0x15

    .line 88
    .line 89
    if-eqz v1, :cond_3

    .line 90
    .line 91
    iget-object v1, p0, Ll/D;->c:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v1, Landroid/widget/ImageView;

    .line 94
    .line 95
    invoke-virtual {v0, p1}, Lm2/u;->o(I)Landroid/content/res/ColorStateList;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 100
    .line 101
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 102
    .line 103
    .line 104
    if-ne v3, v2, :cond_3

    .line 105
    .line 106
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    if-eqz p1, :cond_3

    .line 111
    .line 112
    invoke-virtual {v1}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    if-eqz v3, :cond_3

    .line 117
    .line 118
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-eqz v3, :cond_2

    .line 123
    .line 124
    invoke-virtual {v1}, Landroid/view/View;->getDrawableState()[I

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 129
    .line 130
    .line 131
    :cond_2
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    .line 133
    .line 134
    :cond_3
    const/4 p1, 0x3

    .line 135
    invoke-virtual {v0, p1}, Lm2/u;->F(I)Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-eqz v1, :cond_5

    .line 140
    .line 141
    iget-object v1, p0, Ll/D;->c:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast v1, Landroid/widget/ImageView;

    .line 144
    .line 145
    invoke-virtual {v0, p1, p2}, Lm2/u;->x(II)I

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    const/4 p2, 0x0

    .line 150
    invoke-static {p1, p2}, Ll/t0;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 155
    .line 156
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 157
    .line 158
    .line 159
    if-ne p2, v2, :cond_5

    .line 160
    .line 161
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    if-eqz p1, :cond_5

    .line 166
    .line 167
    invoke-virtual {v1}, Landroid/widget/ImageView;->getImageTintList()Landroid/content/res/ColorStateList;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    if-eqz p2, :cond_5

    .line 172
    .line 173
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 174
    .line 175
    .line 176
    move-result p2

    .line 177
    if-eqz p2, :cond_4

    .line 178
    .line 179
    invoke-virtual {v1}, Landroid/view/View;->getDrawableState()[I

    .line 180
    .line 181
    .line 182
    move-result-object p2

    .line 183
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 184
    .line 185
    .line 186
    :cond_4
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    .line 188
    .line 189
    :cond_5
    invoke-virtual {v0}, Lm2/u;->P()V

    .line 190
    .line 191
    .line 192
    return-void

    .line 193
    :goto_1
    invoke-virtual {v0}, Lm2/u;->P()V

    .line 194
    .line 195
    .line 196
    throw p1
.end method

.method public final c(I)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Ll/D;->c:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroid/widget/ImageView;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0, p1}, LJ6/r;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-static {p1}, Ll/t0;->a(Landroid/graphics/drawable/Drawable;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Ll/D;->c:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Landroid/widget/ImageView;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    iget-object p1, p0, Ll/D;->c:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p1, Landroid/widget/ImageView;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 34
    .line 35
    .line 36
    :goto_0
    invoke-virtual {p0}, Ll/D;->a()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final d(I)V
    .locals 1

    .line 1
    iget v0, p0, Ll/D;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iput p1, p0, Ll/D;->b:I

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Ll/D;->d:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p1, Landroidx/leanback/widget/Y;

    .line 13
    .line 14
    iput-object p1, p0, Ll/D;->e:Ljava/lang/Object;

    .line 15
    .line 16
    iget-object p1, p0, Ll/D;->c:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p1, Landroidx/leanback/widget/Y;

    .line 19
    .line 20
    iput-object p1, p0, Ll/D;->f:Ljava/lang/Object;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object p1, p0, Ll/D;->c:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast p1, Landroidx/leanback/widget/Y;

    .line 26
    .line 27
    iput-object p1, p0, Ll/D;->e:Ljava/lang/Object;

    .line 28
    .line 29
    iget-object p1, p0, Ll/D;->d:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p1, Landroidx/leanback/widget/Y;

    .line 32
    .line 33
    iput-object p1, p0, Ll/D;->f:Ljava/lang/Object;

    .line 34
    .line 35
    :goto_0
    return-void

    .line 36
    :pswitch_0
    iput p1, p0, Ll/D;->b:I

    .line 37
    .line 38
    if-nez p1, :cond_1

    .line 39
    .line 40
    iget-object p1, p0, Ll/D;->d:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p1, Landroidx/leanback/widget/u;

    .line 43
    .line 44
    iput-object p1, p0, Ll/D;->e:Ljava/lang/Object;

    .line 45
    .line 46
    iget-object p1, p0, Ll/D;->c:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p1, Landroidx/leanback/widget/u;

    .line 49
    .line 50
    iput-object p1, p0, Ll/D;->f:Ljava/lang/Object;

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    iget-object p1, p0, Ll/D;->c:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast p1, Landroidx/leanback/widget/u;

    .line 56
    .line 57
    iput-object p1, p0, Ll/D;->e:Ljava/lang/Object;

    .line 58
    .line 59
    iget-object p1, p0, Ll/D;->d:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast p1, Landroidx/leanback/widget/u;

    .line 62
    .line 63
    iput-object p1, p0, Ll/D;->f:Ljava/lang/Object;

    .line 64
    .line 65
    :goto_1
    return-void

    .line 66
    nop

    .line 67
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ll/D;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ll/e1;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ll/e1;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {v0, v1}, Ll/e1;-><init>(I)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Ll/D;->e:Ljava/lang/Object;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Ll/D;->e:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Ll/e1;

    .line 18
    .line 19
    iput-object p1, v0, Ll/e1;->d:Ljava/lang/Object;

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    iput-boolean p1, v0, Ll/e1;->c:Z

    .line 23
    .line 24
    invoke-virtual {p0}, Ll/D;->a()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final f(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ll/D;->e:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ll/e1;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ll/e1;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {v0, v1}, Ll/e1;-><init>(I)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Ll/D;->e:Ljava/lang/Object;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Ll/D;->e:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Ll/e1;

    .line 18
    .line 19
    iput-object p1, v0, Ll/e1;->e:Ljava/lang/Object;

    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    iput-boolean p1, v0, Ll/e1;->b:Z

    .line 23
    .line 24
    invoke-virtual {p0}, Ll/D;->a()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Ll/D;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :pswitch_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const/16 v1, 0xc8

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 16
    .line 17
    .line 18
    const-string v1, "<<\n mode: "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Ll/D;->c:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v1, LL5/d;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, "\n ecLevel: "

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Ll/D;->d:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v1, LL5/b;

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v1, "\n version: "

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Ll/D;->e:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v1, LL5/f;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, "\n maskPattern: "

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget v1, p0, Ll/D;->b:I

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Ll/D;->f:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v1, LV/b;

    .line 67
    .line 68
    if-nez v1, :cond_0

    .line 69
    .line 70
    const-string v1, "\n matrix: null\n"

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    const-string v1, "\n matrix:\n"

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Ll/D;->f:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast v1, LV/b;

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    :goto_0
    const-string v1, ">>\n"

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    return-object v0

    .line 98
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    const-string v1, "horizontal="

    .line 101
    .line 102
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    iget-object v1, p0, Ll/D;->d:Ljava/lang/Object;

    .line 106
    .line 107
    check-cast v1, Landroidx/leanback/widget/Y;

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v1, "; vertical="

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    iget-object v1, p0, Ll/D;->c:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v1, Landroidx/leanback/widget/Y;

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    return-object v0

    .line 129
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
