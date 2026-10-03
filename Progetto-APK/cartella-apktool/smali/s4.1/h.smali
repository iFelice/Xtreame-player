.class public final Ls4/h;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# static fields
.field public static final synthetic P:I


# instance fields
.field public G:Ls4/f;

.field public H:Landroid/widget/TextView;

.field public I:Landroid/widget/ImageView;

.field public J:Landroid/view/View;

.field public K:Landroid/widget/TextView;

.field public L:Landroid/widget/ImageView;

.field public M:Landroid/graphics/drawable/Drawable;

.field public N:I

.field public final synthetic O:Lcom/google/android/material/tabs/TabLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/material/tabs/TabLayout;Landroid/content/Context;)V
    .locals 3

    .line 1
    iput-object p1, p0, Ls4/h;->O:Lcom/google/android/material/tabs/TabLayout;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    iput v0, p0, Ls4/h;->N:I

    .line 8
    .line 9
    invoke-virtual {p0, p2}, Ls4/h;->b(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    iget p2, p1, Lcom/google/android/material/tabs/TabLayout;->K:I

    .line 13
    .line 14
    sget-object v0, LN/N;->a:Ljava/util/WeakHashMap;

    .line 15
    .line 16
    iget v0, p1, Lcom/google/android/material/tabs/TabLayout;->L:I

    .line 17
    .line 18
    iget v1, p1, Lcom/google/android/material/tabs/TabLayout;->M:I

    .line 19
    .line 20
    iget v2, p1, Lcom/google/android/material/tabs/TabLayout;->N:I

    .line 21
    .line 22
    invoke-virtual {p0, p2, v0, v1, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 23
    .line 24
    .line 25
    const/16 p2, 0x11

    .line 26
    .line 27
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 28
    .line 29
    .line 30
    iget-boolean p1, p1, Lcom/google/android/material/tabs/TabLayout;->j0:Z

    .line 31
    .line 32
    const/4 p2, 0x1

    .line 33
    xor-int/2addr p1, p2

    .line 34
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0, p2}, Landroid/view/View;->setClickable(Z)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 45
    .line 46
    const/16 v0, 0x18

    .line 47
    .line 48
    const/16 v1, 0xc

    .line 49
    .line 50
    if-lt p2, v0, :cond_0

    .line 51
    .line 52
    new-instance v2, Lf/S;

    .line 53
    .line 54
    invoke-static {p1}, LD/q;->e(Landroid/content/Context;)Landroid/view/PointerIcon;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-direct {v2, p1, v1}, Lf/S;-><init>(Ljava/lang/Object;I)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    new-instance v2, Lf/S;

    .line 63
    .line 64
    const/4 p1, 0x0

    .line 65
    invoke-direct {v2, p1, v1}, Lf/S;-><init>(Ljava/lang/Object;I)V

    .line 66
    .line 67
    .line 68
    :goto_0
    if-lt p2, v0, :cond_1

    .line 69
    .line 70
    iget-object p1, v2, Lf/S;->H:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast p1, Landroid/view/PointerIcon;

    .line 73
    .line 74
    invoke-static {p1}, LD0/y;->k(Ljava/lang/Object;)Landroid/view/PointerIcon;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-static {p0, p1}, LN/G;->a(Landroid/view/View;Landroid/view/PointerIcon;)V

    .line 79
    .line 80
    .line 81
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1
    iget-object v0, p0, Ls4/h;->G:Ls4/f;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v2, v0, Ls4/f;->e:Landroid/view/View;

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object v2, v1

    .line 10
    :goto_0
    if-eqz v2, :cond_6

    .line 11
    .line 12
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-eq v3, p0, :cond_2

    .line 17
    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    check-cast v3, Landroid/view/ViewGroup;

    .line 21
    .line 22
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 26
    .line 27
    .line 28
    :cond_2
    iput-object v2, p0, Ls4/h;->J:Landroid/view/View;

    .line 29
    .line 30
    iget-object v3, p0, Ls4/h;->H:Landroid/widget/TextView;

    .line 31
    .line 32
    const/16 v4, 0x8

    .line 33
    .line 34
    if-eqz v3, :cond_3

    .line 35
    .line 36
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    :cond_3
    iget-object v3, p0, Ls4/h;->I:Landroid/widget/ImageView;

    .line 40
    .line 41
    if-eqz v3, :cond_4

    .line 42
    .line 43
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    iget-object v3, p0, Ls4/h;->I:Landroid/widget/ImageView;

    .line 47
    .line 48
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    .line 50
    .line 51
    :cond_4
    const v3, 0x1020014

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Landroid/widget/TextView;

    .line 59
    .line 60
    iput-object v3, p0, Ls4/h;->K:Landroid/widget/TextView;

    .line 61
    .line 62
    if-eqz v3, :cond_5

    .line 63
    .line 64
    invoke-virtual {v3}, Landroid/widget/TextView;->getMaxLines()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    iput v3, p0, Ls4/h;->N:I

    .line 69
    .line 70
    :cond_5
    const v3, 0x1020006

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    check-cast v2, Landroid/widget/ImageView;

    .line 78
    .line 79
    iput-object v2, p0, Ls4/h;->L:Landroid/widget/ImageView;

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_6
    iget-object v2, p0, Ls4/h;->J:Landroid/view/View;

    .line 83
    .line 84
    if-eqz v2, :cond_7

    .line 85
    .line 86
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 87
    .line 88
    .line 89
    iput-object v1, p0, Ls4/h;->J:Landroid/view/View;

    .line 90
    .line 91
    :cond_7
    iput-object v1, p0, Ls4/h;->K:Landroid/widget/TextView;

    .line 92
    .line 93
    iput-object v1, p0, Ls4/h;->L:Landroid/widget/ImageView;

    .line 94
    .line 95
    :goto_1
    iget-object v2, p0, Ls4/h;->J:Landroid/view/View;

    .line 96
    .line 97
    const/4 v3, 0x0

    .line 98
    if-nez v2, :cond_e

    .line 99
    .line 100
    iget-object v2, p0, Ls4/h;->I:Landroid/widget/ImageView;

    .line 101
    .line 102
    if-nez v2, :cond_8

    .line 103
    .line 104
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    const v4, 0x7f0e006c

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2, v4, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    check-cast v2, Landroid/widget/ImageView;

    .line 120
    .line 121
    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 122
    .line 123
    .line 124
    iput-object v2, p0, Ls4/h;->I:Landroid/widget/ImageView;

    .line 125
    .line 126
    :cond_8
    if-eqz v0, :cond_9

    .line 127
    .line 128
    iget-object v2, v0, Ls4/f;->a:Landroid/graphics/drawable/Drawable;

    .line 129
    .line 130
    if-eqz v2, :cond_9

    .line 131
    .line 132
    invoke-static {v2}, Ln0/c;->q(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    :cond_9
    iget-object v2, p0, Ls4/h;->O:Lcom/google/android/material/tabs/TabLayout;

    .line 141
    .line 142
    if-eqz v1, :cond_a

    .line 143
    .line 144
    iget-object v4, v2, Lcom/google/android/material/tabs/TabLayout;->Q:Landroid/content/res/ColorStateList;

    .line 145
    .line 146
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 147
    .line 148
    .line 149
    iget-object v4, v2, Lcom/google/android/material/tabs/TabLayout;->T:Landroid/graphics/PorterDuff$Mode;

    .line 150
    .line 151
    if-eqz v4, :cond_a

    .line 152
    .line 153
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 154
    .line 155
    .line 156
    :cond_a
    iget-object v1, p0, Ls4/h;->H:Landroid/widget/TextView;

    .line 157
    .line 158
    if-nez v1, :cond_b

    .line 159
    .line 160
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    const v4, 0x7f0e006d

    .line 169
    .line 170
    .line 171
    invoke-virtual {v1, v4, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    check-cast v1, Landroid/widget/TextView;

    .line 176
    .line 177
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 178
    .line 179
    .line 180
    iput-object v1, p0, Ls4/h;->H:Landroid/widget/TextView;

    .line 181
    .line 182
    invoke-virtual {v1}, Landroid/widget/TextView;->getMaxLines()I

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    iput v1, p0, Ls4/h;->N:I

    .line 187
    .line 188
    :cond_b
    iget-object v1, p0, Ls4/h;->H:Landroid/widget/TextView;

    .line 189
    .line 190
    iget v4, v2, Lcom/google/android/material/tabs/TabLayout;->O:I

    .line 191
    .line 192
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 193
    .line 194
    const/16 v6, 0x17

    .line 195
    .line 196
    if-lt v5, v6, :cond_c

    .line 197
    .line 198
    invoke-static {v1, v4}, LF2/D;->u(Landroid/widget/TextView;I)V

    .line 199
    .line 200
    .line 201
    goto :goto_2

    .line 202
    :cond_c
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    invoke-virtual {v1, v5, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 207
    .line 208
    .line 209
    :goto_2
    iget-object v1, v2, Lcom/google/android/material/tabs/TabLayout;->P:Landroid/content/res/ColorStateList;

    .line 210
    .line 211
    if-eqz v1, :cond_d

    .line 212
    .line 213
    iget-object v2, p0, Ls4/h;->H:Landroid/widget/TextView;

    .line 214
    .line 215
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 216
    .line 217
    .line 218
    :cond_d
    iget-object v1, p0, Ls4/h;->H:Landroid/widget/TextView;

    .line 219
    .line 220
    iget-object v2, p0, Ls4/h;->I:Landroid/widget/ImageView;

    .line 221
    .line 222
    invoke-virtual {p0, v1, v2}, Ls4/h;->c(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 223
    .line 224
    .line 225
    goto :goto_3

    .line 226
    :cond_e
    iget-object v1, p0, Ls4/h;->K:Landroid/widget/TextView;

    .line 227
    .line 228
    if-nez v1, :cond_f

    .line 229
    .line 230
    iget-object v2, p0, Ls4/h;->L:Landroid/widget/ImageView;

    .line 231
    .line 232
    if-eqz v2, :cond_10

    .line 233
    .line 234
    :cond_f
    iget-object v2, p0, Ls4/h;->L:Landroid/widget/ImageView;

    .line 235
    .line 236
    invoke-virtual {p0, v1, v2}, Ls4/h;->c(Landroid/widget/TextView;Landroid/widget/ImageView;)V

    .line 237
    .line 238
    .line 239
    :cond_10
    :goto_3
    if-eqz v0, :cond_11

    .line 240
    .line 241
    iget-object v1, v0, Ls4/f;->c:Ljava/lang/CharSequence;

    .line 242
    .line 243
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 244
    .line 245
    .line 246
    move-result v1

    .line 247
    if-nez v1, :cond_11

    .line 248
    .line 249
    iget-object v1, v0, Ls4/f;->c:Ljava/lang/CharSequence;

    .line 250
    .line 251
    invoke-virtual {p0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 252
    .line 253
    .line 254
    :cond_11
    if-eqz v0, :cond_13

    .line 255
    .line 256
    iget-object v1, v0, Ls4/f;->f:Lcom/google/android/material/tabs/TabLayout;

    .line 257
    .line 258
    if-eqz v1, :cond_12

    .line 259
    .line 260
    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout;->getSelectedTabPosition()I

    .line 261
    .line 262
    .line 263
    move-result v1

    .line 264
    iget v0, v0, Ls4/f;->d:I

    .line 265
    .line 266
    if-ne v1, v0, :cond_13

    .line 267
    .line 268
    const/4 v3, 0x1

    .line 269
    goto :goto_4

    .line 270
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 271
    .line 272
    const-string v1, "Tab not attached to a TabLayout"

    .line 273
    .line 274
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    throw v0

    .line 278
    :cond_13
    :goto_4
    invoke-virtual {p0, v3}, Ls4/h;->setSelected(Z)V

    .line 279
    .line 280
    .line 281
    return-void
.end method

.method public final b(Landroid/content/Context;)V
    .locals 6

    .line 1
    iget-object v0, p0, Ls4/h;->O:Lcom/google/android/material/tabs/TabLayout;

    .line 2
    .line 3
    iget v1, v0, Lcom/google/android/material/tabs/TabLayout;->W:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-static {p1, v1}, LJ6/r;->h(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Ls4/h;->M:Landroid/graphics/drawable/Drawable;

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    iget-object p1, p0, Ls4/h;->M:Landroid/graphics/drawable/Drawable;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iput-object v2, p0, Ls4/h;->M:Landroid/graphics/drawable/Drawable;

    .line 33
    .line 34
    :cond_1
    :goto_0
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    .line 35
    .line 36
    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 37
    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 41
    .line 42
    .line 43
    iget-object v1, v0, Lcom/google/android/material/tabs/TabLayout;->R:Landroid/content/res/ColorStateList;

    .line 44
    .line 45
    if-eqz v1, :cond_4

    .line 46
    .line 47
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    .line 48
    .line 49
    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 50
    .line 51
    .line 52
    const v3, 0x3727c5ac    # 1.0E-5f

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 56
    .line 57
    .line 58
    const/4 v3, -0x1

    .line 59
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 60
    .line 61
    .line 62
    iget-object v3, v0, Lcom/google/android/material/tabs/TabLayout;->R:Landroid/content/res/ColorStateList;

    .line 63
    .line 64
    invoke-static {v3}, Lq4/a;->a(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    new-instance v4, Landroid/graphics/drawable/RippleDrawable;

    .line 69
    .line 70
    iget-boolean v5, v0, Lcom/google/android/material/tabs/TabLayout;->l0:Z

    .line 71
    .line 72
    if-eqz v5, :cond_2

    .line 73
    .line 74
    move-object p1, v2

    .line 75
    :cond_2
    if-eqz v5, :cond_3

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    move-object v2, v1

    .line 79
    :goto_1
    invoke-direct {v4, v3, p1, v2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 80
    .line 81
    .line 82
    move-object p1, v4

    .line 83
    :cond_4
    sget-object v1, LN/N;->a:Ljava/util/WeakHashMap;

    .line 84
    .line 85
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method public final c(Landroid/widget/TextView;Landroid/widget/ImageView;)V
    .locals 6

    .line 1
    iget-object v0, p0, Ls4/h;->G:Ls4/f;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object v0, v0, Ls4/f;->a:Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-static {v0}, Ln0/c;->q(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v0, v1

    .line 20
    :goto_0
    iget-object v2, p0, Ls4/h;->G:Ls4/f;

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    iget-object v2, v2, Ls4/f;->b:Ljava/lang/CharSequence;

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move-object v2, v1

    .line 28
    :goto_1
    const/16 v3, 0x8

    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    if-eqz p2, :cond_3

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_2
    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    .line 50
    .line 51
    :cond_3
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    xor-int/lit8 v0, v0, 0x1

    .line 56
    .line 57
    if-eqz p1, :cond_5

    .line 58
    .line 59
    if-eqz v0, :cond_4

    .line 60
    .line 61
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_4
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    .line 76
    .line 77
    :cond_5
    :goto_3
    if-eqz p2, :cond_8

    .line 78
    .line 79
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 84
    .line 85
    iget-object v2, p0, Ls4/h;->O:Lcom/google/android/material/tabs/TabLayout;

    .line 86
    .line 87
    if-eqz v0, :cond_6

    .line 88
    .line 89
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    if-nez v5, :cond_6

    .line 94
    .line 95
    invoke-virtual {v2, v3}, Lcom/google/android/material/tabs/TabLayout;->d(I)I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    goto :goto_4

    .line 100
    :cond_6
    const/4 v3, 0x0

    .line 101
    :goto_4
    iget-boolean v2, v2, Lcom/google/android/material/tabs/TabLayout;->j0:Z

    .line 102
    .line 103
    if-eqz v2, :cond_7

    .line 104
    .line 105
    invoke-virtual {p1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-eq v3, v2, :cond_8

    .line 110
    .line 111
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 112
    .line 113
    .line 114
    iput v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 115
    .line 116
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    .line 120
    .line 121
    .line 122
    goto :goto_5

    .line 123
    :cond_7
    iget v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 124
    .line 125
    if-eq v3, v2, :cond_8

    .line 126
    .line 127
    iput v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 128
    .line 129
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    .line 136
    .line 137
    .line 138
    :cond_8
    :goto_5
    iget-object p1, p0, Ls4/h;->G:Ls4/f;

    .line 139
    .line 140
    if-eqz p1, :cond_9

    .line 141
    .line 142
    iget-object p1, p1, Ls4/f;->c:Ljava/lang/CharSequence;

    .line 143
    .line 144
    goto :goto_6

    .line 145
    :cond_9
    move-object p1, v1

    .line 146
    :goto_6
    if-eqz v0, :cond_a

    .line 147
    .line 148
    goto :goto_7

    .line 149
    :cond_a
    move-object v1, p1

    .line 150
    :goto_7
    invoke-static {p0, v1}, LZ3/H;->v(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 151
    .line 152
    .line 153
    return-void
.end method

.method public final drawableStateChanged()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Ls4/h;->M:Landroid/graphics/drawable/Drawable;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Ls4/h;->M:Landroid/graphics/drawable/Drawable;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Ls4/h;->O:Lcom/google/android/material/tabs/TabLayout;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    .line 3
    .line 4
    const-class v0, LQ3/b;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    .line 3
    .line 4
    const-class v0, LQ3/b;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onMeasure(II)V
    .locals 7

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Ls4/h;->O:Lcom/google/android/material/tabs/TabLayout;

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout;->getTabMaxWidth()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-lez v3, :cond_1

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    if-le v0, v3, :cond_1

    .line 20
    .line 21
    :cond_0
    iget p1, v2, Lcom/google/android/material/tabs/TabLayout;->a0:I

    .line 22
    .line 23
    const/high16 v0, -0x80000000

    .line 24
    .line 25
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Ls4/h;->H:Landroid/widget/TextView;

    .line 33
    .line 34
    if-eqz v0, :cond_6

    .line 35
    .line 36
    iget v0, v2, Lcom/google/android/material/tabs/TabLayout;->U:F

    .line 37
    .line 38
    iget v1, p0, Ls4/h;->N:I

    .line 39
    .line 40
    iget-object v3, p0, Ls4/h;->I:Landroid/widget/ImageView;

    .line 41
    .line 42
    const/4 v4, 0x1

    .line 43
    if-eqz v3, :cond_2

    .line 44
    .line 45
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-nez v3, :cond_2

    .line 50
    .line 51
    const/4 v1, 0x1

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    iget-object v3, p0, Ls4/h;->H:Landroid/widget/TextView;

    .line 54
    .line 55
    if-eqz v3, :cond_3

    .line 56
    .line 57
    invoke-virtual {v3}, Landroid/widget/TextView;->getLineCount()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-le v3, v4, :cond_3

    .line 62
    .line 63
    iget v0, v2, Lcom/google/android/material/tabs/TabLayout;->V:F

    .line 64
    .line 65
    :cond_3
    :goto_0
    iget-object v3, p0, Ls4/h;->H:Landroid/widget/TextView;

    .line 66
    .line 67
    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    iget-object v5, p0, Ls4/h;->H:Landroid/widget/TextView;

    .line 72
    .line 73
    invoke-virtual {v5}, Landroid/widget/TextView;->getLineCount()I

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    iget-object v6, p0, Ls4/h;->H:Landroid/widget/TextView;

    .line 78
    .line 79
    invoke-virtual {v6}, Landroid/widget/TextView;->getMaxLines()I

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    cmpl-float v3, v0, v3

    .line 84
    .line 85
    if-nez v3, :cond_4

    .line 86
    .line 87
    if-ltz v6, :cond_6

    .line 88
    .line 89
    if-eq v1, v6, :cond_6

    .line 90
    .line 91
    :cond_4
    iget v2, v2, Lcom/google/android/material/tabs/TabLayout;->i0:I

    .line 92
    .line 93
    const/4 v6, 0x0

    .line 94
    if-ne v2, v4, :cond_5

    .line 95
    .line 96
    if-lez v3, :cond_5

    .line 97
    .line 98
    if-ne v5, v4, :cond_5

    .line 99
    .line 100
    iget-object v2, p0, Ls4/h;->H:Landroid/widget/TextView;

    .line 101
    .line 102
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    if-eqz v2, :cond_6

    .line 107
    .line 108
    invoke-virtual {v2, v6}, Landroid/text/Layout;->getLineWidth(I)F

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    invoke-virtual {v2}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    div-float v2, v0, v2

    .line 121
    .line 122
    mul-float v2, v2, v3

    .line 123
    .line 124
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    sub-int/2addr v3, v4

    .line 133
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    sub-int/2addr v3, v4

    .line 138
    int-to-float v3, v3

    .line 139
    cmpl-float v2, v2, v3

    .line 140
    .line 141
    if-lez v2, :cond_5

    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_5
    iget-object v2, p0, Ls4/h;->H:Landroid/widget/TextView;

    .line 145
    .line 146
    invoke-virtual {v2, v6, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 147
    .line 148
    .line 149
    iget-object v0, p0, Ls4/h;->H:Landroid/widget/TextView;

    .line 150
    .line 151
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 152
    .line 153
    .line 154
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 155
    .line 156
    .line 157
    :cond_6
    :goto_1
    return-void
.end method

.method public final performClick()Z
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Ls4/h;->G:Ls4/f;

    .line 6
    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Ls4/h;->G:Ls4/f;

    .line 16
    .line 17
    iget-object v1, v0, Ls4/f;->f:Lcom/google/android/material/tabs/TabLayout;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    invoke-virtual {v1, v0, v2}, Lcom/google/android/material/tabs/TabLayout;->g(Ls4/f;Z)V

    .line 23
    .line 24
    .line 25
    return v2

    .line 26
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    const-string v1, "Tab not attached to a TabLayout"

    .line 29
    .line 30
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw v0

    .line 34
    :cond_2
    return v0
.end method

.method public final setSelected(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Ls4/h;->H:Landroid/widget/TextView;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Ls4/h;->I:Landroid/widget/ImageView;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 19
    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Ls4/h;->J:Landroid/view/View;

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 26
    .line 27
    .line 28
    :cond_2
    return-void
.end method
