.class public final LD1/V;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements LD1/N;


# instance fields
.field public final G:LD1/c;

.field public final H:LD1/T;

.field public I:Ljava/util/List;

.field public J:LD1/d;

.field public K:F

.field public L:I

.field public M:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    .line 4
    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iput-object v1, p0, LD1/V;->I:Ljava/util/List;

    .line 10
    .line 11
    sget-object v1, LD1/d;->g:LD1/d;

    .line 12
    .line 13
    iput-object v1, p0, LD1/V;->J:LD1/d;

    .line 14
    .line 15
    const v1, 0x3d5a511a    # 0.0533f

    .line 16
    .line 17
    .line 18
    iput v1, p0, LD1/V;->K:F

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    iput v1, p0, LD1/V;->L:I

    .line 22
    .line 23
    const v2, 0x3da3d70a    # 0.08f

    .line 24
    .line 25
    .line 26
    iput v2, p0, LD1/V;->M:F

    .line 27
    .line 28
    new-instance v2, LD1/c;

    .line 29
    .line 30
    invoke-direct {v2, p1}, LD1/c;-><init>(Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    iput-object v2, p0, LD1/V;->G:LD1/c;

    .line 34
    .line 35
    new-instance v3, LD1/T;

    .line 36
    .line 37
    invoke-direct {v3, p1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    .line 39
    .line 40
    iput-object v3, p0, LD1/V;->H:LD1/T;

    .line 41
    .line 42
    invoke-virtual {v3, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;LD1/d;FIF)V
    .locals 6

    .line 1
    iput-object p2, p0, LD1/V;->J:LD1/d;

    .line 2
    .line 3
    iput p3, p0, LD1/V;->K:F

    .line 4
    .line 5
    iput p4, p0, LD1/V;->L:I

    .line 6
    .line 7
    iput p5, p0, LD1/V;->M:F

    .line 8
    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-ge v2, v3, :cond_1

    .line 25
    .line 26
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Lo0/b;

    .line 31
    .line 32
    iget-object v4, v3, Lo0/b;->d:Landroid/graphics/Bitmap;

    .line 33
    .line 34
    if-eqz v4, :cond_0

    .line 35
    .line 36
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    iget-object p1, p0, LD1/V;->I:Ljava/util/List;

    .line 47
    .line 48
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-nez p1, :cond_3

    .line 59
    .line 60
    :cond_2
    iput-object v0, p0, LD1/V;->I:Ljava/util/List;

    .line 61
    .line 62
    invoke-virtual {p0}, LD1/V;->c()V

    .line 63
    .line 64
    .line 65
    :cond_3
    iget-object v0, p0, LD1/V;->G:LD1/c;

    .line 66
    .line 67
    move-object v2, p2

    .line 68
    move v3, p3

    .line 69
    move v4, p4

    .line 70
    move v5, p5

    .line 71
    invoke-virtual/range {v0 .. v5}, LD1/c;->a(Ljava/util/List;LD1/d;FIF)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public final b(IF)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    sub-int/2addr v1, v2

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    sub-int/2addr v1, v2

    .line 19
    invoke-static {p2, p1, v0, v1}, Lcom/google/android/gms/internal/measurement/H1;->w(FIII)F

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    const p2, -0x800001

    .line 24
    .line 25
    .line 26
    cmpl-float p2, p1, p2

    .line 27
    .line 28
    if-nez p2, :cond_0

    .line 29
    .line 30
    const-string p1, "unset"

    .line 31
    .line 32
    return-object p1

    .line 33
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    .line 46
    .line 47
    div-float/2addr p1, p2

    .line 48
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const/4 p2, 0x1

    .line 53
    new-array p2, p2, [Ljava/lang/Object;

    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    aput-object p1, p2, v0

    .line 57
    .line 58
    sget-object p1, Lp0/M;->a:Ljava/lang/String;

    .line 59
    .line 60
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 61
    .line 62
    const-string v0, "%.2fpx"

    .line 63
    .line 64
    invoke-static {p1, v0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    return-object p1
.end method

.method public final c()V
    .locals 46

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x4

    .line 9
    new-array v3, v2, [Ljava/lang/Object;

    .line 10
    .line 11
    iget-object v4, v0, LD1/V;->J:LD1/d;

    .line 12
    .line 13
    iget v4, v4, LD1/d;->a:I

    .line 14
    .line 15
    invoke-static {v4}, Lcom/bumptech/glide/d;->t(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    const/4 v5, 0x0

    .line 20
    aput-object v4, v3, v5

    .line 21
    .line 22
    iget v4, v0, LD1/V;->L:I

    .line 23
    .line 24
    iget v6, v0, LD1/V;->K:F

    .line 25
    .line 26
    invoke-virtual {v0, v4, v6}, LD1/V;->b(IF)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    const/4 v6, 0x1

    .line 31
    aput-object v4, v3, v6

    .line 32
    .line 33
    const v4, 0x3f99999a    # 1.2f

    .line 34
    .line 35
    .line 36
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    const/4 v8, 0x2

    .line 41
    aput-object v7, v3, v8

    .line 42
    .line 43
    iget-object v7, v0, LD1/V;->J:LD1/d;

    .line 44
    .line 45
    iget v9, v7, LD1/d;->d:I

    .line 46
    .line 47
    const-string v10, "unset"

    .line 48
    .line 49
    const/4 v11, 0x3

    .line 50
    iget v7, v7, LD1/d;->e:I

    .line 51
    .line 52
    if-eq v9, v6, :cond_3

    .line 53
    .line 54
    if-eq v9, v8, :cond_2

    .line 55
    .line 56
    if-eq v9, v11, :cond_1

    .line 57
    .line 58
    if-eq v9, v2, :cond_0

    .line 59
    .line 60
    move-object v7, v10

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    invoke-static {v7}, Lcom/bumptech/glide/d;->t(I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    sget-object v9, Lp0/M;->a:Ljava/lang/String;

    .line 67
    .line 68
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 69
    .line 70
    const-string v9, "-0.05em -0.05em 0.15em "

    .line 71
    .line 72
    invoke-virtual {v9, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    goto :goto_0

    .line 77
    :cond_1
    invoke-static {v7}, Lcom/bumptech/glide/d;->t(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    sget-object v9, Lp0/M;->a:Ljava/lang/String;

    .line 82
    .line 83
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 84
    .line 85
    const-string v9, "0.06em 0.08em 0.15em "

    .line 86
    .line 87
    invoke-virtual {v9, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    goto :goto_0

    .line 92
    :cond_2
    invoke-static {v7}, Lcom/bumptech/glide/d;->t(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    sget-object v9, Lp0/M;->a:Ljava/lang/String;

    .line 97
    .line 98
    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 99
    .line 100
    const-string v9, "0.1em 0.12em 0.15em "

    .line 101
    .line 102
    invoke-virtual {v9, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    goto :goto_0

    .line 107
    :cond_3
    invoke-static {v7}, Lcom/bumptech/glide/d;->t(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    new-array v9, v6, [Ljava/lang/Object;

    .line 112
    .line 113
    aput-object v7, v9, v5

    .line 114
    .line 115
    sget-object v7, Lp0/M;->a:Ljava/lang/String;

    .line 116
    .line 117
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 118
    .line 119
    const-string v12, "1px 1px 0 %1$s, 1px -1px 0 %1$s, -1px 1px 0 %1$s, -1px -1px 0 %1$s"

    .line 120
    .line 121
    invoke-static {v7, v12, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    :goto_0
    aput-object v7, v3, v11

    .line 126
    .line 127
    sget-object v7, Lp0/M;->a:Ljava/lang/String;

    .line 128
    .line 129
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 130
    .line 131
    const-string v9, "<body><div style=\'-webkit-user-select:none;position:fixed;top:0;bottom:0;left:0;right:0;color:%s;font-size:%s;line-height:%.2f;text-shadow:%s;\'>"

    .line 132
    .line 133
    invoke-static {v7, v9, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    new-instance v3, Ljava/util/HashMap;

    .line 141
    .line 142
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 143
    .line 144
    .line 145
    iget-object v7, v0, LD1/V;->J:LD1/d;

    .line 146
    .line 147
    iget v7, v7, LD1/d;->b:I

    .line 148
    .line 149
    invoke-static {v7}, Lcom/bumptech/glide/d;->t(I)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v7

    .line 153
    new-instance v9, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    const-string v12, "background-color:"

    .line 156
    .line 157
    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string v7, ";"

    .line 164
    .line 165
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v9

    .line 172
    const-string v13, ".default_bg,.default_bg *"

    .line 173
    .line 174
    invoke-virtual {v3, v13, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    const/4 v9, 0x0

    .line 178
    :goto_1
    iget-object v13, v0, LD1/V;->I:Ljava/util/List;

    .line 179
    .line 180
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 181
    .line 182
    .line 183
    move-result v13

    .line 184
    if-ge v9, v13, :cond_54

    .line 185
    .line 186
    iget-object v13, v0, LD1/V;->I:Ljava/util/List;

    .line 187
    .line 188
    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v13

    .line 192
    check-cast v13, Lo0/b;

    .line 193
    .line 194
    iget v14, v13, Lo0/b;->h:F

    .line 195
    .line 196
    const v15, -0x800001

    .line 197
    .line 198
    .line 199
    const/high16 v16, 0x42c80000    # 100.0f

    .line 200
    .line 201
    cmpl-float v17, v14, v15

    .line 202
    .line 203
    if-eqz v17, :cond_4

    .line 204
    .line 205
    mul-float v14, v14, v16

    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_4
    const/high16 v14, 0x42480000    # 50.0f

    .line 209
    .line 210
    :goto_2
    const/16 v17, -0x32

    .line 211
    .line 212
    const/16 v18, -0x64

    .line 213
    .line 214
    iget v2, v13, Lo0/b;->i:I

    .line 215
    .line 216
    if-eq v2, v6, :cond_6

    .line 217
    .line 218
    if-eq v2, v8, :cond_5

    .line 219
    .line 220
    const/4 v2, 0x0

    .line 221
    goto :goto_3

    .line 222
    :cond_5
    const/16 v2, -0x64

    .line 223
    .line 224
    goto :goto_3

    .line 225
    :cond_6
    const/16 v2, -0x32

    .line 226
    .line 227
    :goto_3
    const/high16 v19, 0x3f800000    # 1.0f

    .line 228
    .line 229
    const/16 v20, 0x0

    .line 230
    .line 231
    const-string v11, "%.2f%%"

    .line 232
    .line 233
    iget v4, v13, Lo0/b;->p:I

    .line 234
    .line 235
    iget v8, v13, Lo0/b;->e:F

    .line 236
    .line 237
    cmpl-float v21, v8, v15

    .line 238
    .line 239
    if-eqz v21, :cond_e

    .line 240
    .line 241
    iget v15, v13, Lo0/b;->f:I

    .line 242
    .line 243
    if-eq v15, v6, :cond_c

    .line 244
    .line 245
    mul-float v8, v8, v16

    .line 246
    .line 247
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 248
    .line 249
    .line 250
    move-result-object v8

    .line 251
    new-array v15, v6, [Ljava/lang/Object;

    .line 252
    .line 253
    aput-object v8, v15, v5

    .line 254
    .line 255
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 256
    .line 257
    invoke-static {v8, v11, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v8

    .line 261
    iget v15, v13, Lo0/b;->g:I

    .line 262
    .line 263
    if-ne v4, v6, :cond_9

    .line 264
    .line 265
    if-eq v15, v6, :cond_8

    .line 266
    .line 267
    const/4 v5, 0x2

    .line 268
    if-eq v15, v5, :cond_7

    .line 269
    .line 270
    const/4 v15, 0x0

    .line 271
    goto :goto_4

    .line 272
    :cond_7
    const/16 v15, -0x64

    .line 273
    .line 274
    goto :goto_4

    .line 275
    :cond_8
    const/4 v5, 0x2

    .line 276
    const/16 v15, -0x32

    .line 277
    .line 278
    :goto_4
    neg-int v15, v15

    .line 279
    move/from16 v18, v15

    .line 280
    .line 281
    goto :goto_6

    .line 282
    :cond_9
    const/4 v5, 0x2

    .line 283
    if-eq v15, v6, :cond_b

    .line 284
    .line 285
    if-eq v15, v5, :cond_a

    .line 286
    .line 287
    const/16 v17, 0x0

    .line 288
    .line 289
    goto :goto_5

    .line 290
    :cond_a
    const/16 v17, -0x64

    .line 291
    .line 292
    :cond_b
    :goto_5
    move/from16 v18, v17

    .line 293
    .line 294
    :goto_6
    const/4 v5, 0x0

    .line 295
    goto :goto_8

    .line 296
    :cond_c
    const-string v5, "%.2fem"

    .line 297
    .line 298
    cmpl-float v15, v8, v20

    .line 299
    .line 300
    if-ltz v15, :cond_d

    .line 301
    .line 302
    const v15, 0x3f99999a    # 1.2f

    .line 303
    .line 304
    .line 305
    mul-float v8, v8, v15

    .line 306
    .line 307
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 308
    .line 309
    .line 310
    move-result-object v8

    .line 311
    new-array v15, v6, [Ljava/lang/Object;

    .line 312
    .line 313
    const/16 v22, 0x0

    .line 314
    .line 315
    aput-object v8, v15, v22

    .line 316
    .line 317
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 318
    .line 319
    invoke-static {v8, v5, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v8

    .line 323
    const/4 v5, 0x0

    .line 324
    :goto_7
    const/16 v18, 0x0

    .line 325
    .line 326
    goto :goto_8

    .line 327
    :cond_d
    const/16 v22, 0x0

    .line 328
    .line 329
    neg-float v8, v8

    .line 330
    sub-float v8, v8, v19

    .line 331
    .line 332
    const v15, 0x3f99999a    # 1.2f

    .line 333
    .line 334
    .line 335
    mul-float v8, v8, v15

    .line 336
    .line 337
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 338
    .line 339
    .line 340
    move-result-object v8

    .line 341
    new-array v15, v6, [Ljava/lang/Object;

    .line 342
    .line 343
    aput-object v8, v15, v22

    .line 344
    .line 345
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 346
    .line 347
    invoke-static {v8, v5, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v8

    .line 351
    const/4 v5, 0x1

    .line 352
    goto :goto_7

    .line 353
    :cond_e
    const/16 v22, 0x0

    .line 354
    .line 355
    iget v5, v0, LD1/V;->M:F

    .line 356
    .line 357
    sub-float v19, v19, v5

    .line 358
    .line 359
    mul-float v19, v19, v16

    .line 360
    .line 361
    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 362
    .line 363
    .line 364
    move-result-object v5

    .line 365
    new-array v8, v6, [Ljava/lang/Object;

    .line 366
    .line 367
    aput-object v5, v8, v22

    .line 368
    .line 369
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 370
    .line 371
    invoke-static {v5, v11, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v8

    .line 375
    goto :goto_6

    .line 376
    :goto_8
    iget v15, v13, Lo0/b;->j:F

    .line 377
    .line 378
    const v17, -0x800001

    .line 379
    .line 380
    .line 381
    cmpl-float v17, v15, v17

    .line 382
    .line 383
    if-eqz v17, :cond_f

    .line 384
    .line 385
    mul-float v15, v15, v16

    .line 386
    .line 387
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 388
    .line 389
    .line 390
    move-result-object v15

    .line 391
    move/from16 v17, v2

    .line 392
    .line 393
    new-array v2, v6, [Ljava/lang/Object;

    .line 394
    .line 395
    const/16 v19, 0x0

    .line 396
    .line 397
    aput-object v15, v2, v19

    .line 398
    .line 399
    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 400
    .line 401
    invoke-static {v15, v11, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v2

    .line 405
    goto :goto_9

    .line 406
    :cond_f
    move/from16 v17, v2

    .line 407
    .line 408
    const-string v2, "fit-content"

    .line 409
    .line 410
    :goto_9
    const-string v11, "start"

    .line 411
    .line 412
    const-string v15, "end"

    .line 413
    .line 414
    const-string v19, "center"

    .line 415
    .line 416
    iget-object v6, v13, Lo0/b;->b:Landroid/text/Layout$Alignment;

    .line 417
    .line 418
    if-nez v6, :cond_10

    .line 419
    .line 420
    move-object/from16 v23, v11

    .line 421
    .line 422
    move-object/from16 v24, v19

    .line 423
    .line 424
    const/4 v6, 0x1

    .line 425
    const/4 v11, 0x2

    .line 426
    goto :goto_b

    .line 427
    :cond_10
    sget-object v23, LD1/U;->a:[I

    .line 428
    .line 429
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 430
    .line 431
    .line 432
    move-result v6

    .line 433
    aget v6, v23, v6

    .line 434
    .line 435
    move-object/from16 v23, v11

    .line 436
    .line 437
    const/4 v11, 0x1

    .line 438
    if-eq v6, v11, :cond_12

    .line 439
    .line 440
    const/4 v11, 0x2

    .line 441
    if-eq v6, v11, :cond_11

    .line 442
    .line 443
    move-object/from16 v24, v19

    .line 444
    .line 445
    :goto_a
    const/4 v6, 0x1

    .line 446
    goto :goto_b

    .line 447
    :cond_11
    move-object/from16 v24, v15

    .line 448
    .line 449
    goto :goto_a

    .line 450
    :cond_12
    const/4 v11, 0x2

    .line 451
    move-object/from16 v24, v23

    .line 452
    .line 453
    goto :goto_a

    .line 454
    :goto_b
    if-eq v4, v6, :cond_14

    .line 455
    .line 456
    if-eq v4, v11, :cond_13

    .line 457
    .line 458
    const-string v6, "horizontal-tb"

    .line 459
    .line 460
    goto :goto_c

    .line 461
    :cond_13
    const-string v6, "vertical-lr"

    .line 462
    .line 463
    goto :goto_c

    .line 464
    :cond_14
    const-string v6, "vertical-rl"

    .line 465
    .line 466
    :goto_c
    iget v11, v13, Lo0/b;->n:I

    .line 467
    .line 468
    move-object/from16 v25, v15

    .line 469
    .line 470
    iget v15, v13, Lo0/b;->o:F

    .line 471
    .line 472
    invoke-virtual {v0, v11, v15}, LD1/V;->b(IF)Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v11

    .line 476
    iget-boolean v15, v13, Lo0/b;->l:Z

    .line 477
    .line 478
    if-eqz v15, :cond_15

    .line 479
    .line 480
    iget v15, v13, Lo0/b;->m:I

    .line 481
    .line 482
    goto :goto_d

    .line 483
    :cond_15
    iget-object v15, v0, LD1/V;->J:LD1/d;

    .line 484
    .line 485
    iget v15, v15, LD1/d;->c:I

    .line 486
    .line 487
    :goto_d
    invoke-static {v15}, Lcom/bumptech/glide/d;->t(I)Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v15

    .line 491
    const-string v26, "right"

    .line 492
    .line 493
    const-string v27, "top"

    .line 494
    .line 495
    const-string v28, "left"

    .line 496
    .line 497
    const/4 v0, 0x1

    .line 498
    if-eq v4, v0, :cond_1a

    .line 499
    .line 500
    const/4 v0, 0x2

    .line 501
    if-eq v4, v0, :cond_18

    .line 502
    .line 503
    if-eqz v5, :cond_16

    .line 504
    .line 505
    const-string v27, "bottom"

    .line 506
    .line 507
    :cond_16
    move-object/from16 v26, v27

    .line 508
    .line 509
    move-object/from16 v27, v28

    .line 510
    .line 511
    :cond_17
    :goto_e
    const/4 v0, 0x2

    .line 512
    goto :goto_10

    .line 513
    :cond_18
    if-eqz v5, :cond_19

    .line 514
    .line 515
    goto :goto_e

    .line 516
    :cond_19
    :goto_f
    move-object/from16 v26, v28

    .line 517
    .line 518
    goto :goto_e

    .line 519
    :cond_1a
    if-eqz v5, :cond_17

    .line 520
    .line 521
    goto :goto_f

    .line 522
    :goto_10
    if-eq v4, v0, :cond_1c

    .line 523
    .line 524
    const/4 v0, 0x1

    .line 525
    if-ne v4, v0, :cond_1b

    .line 526
    .line 527
    goto :goto_11

    .line 528
    :cond_1b
    const-string v0, "width"

    .line 529
    .line 530
    goto :goto_12

    .line 531
    :cond_1c
    :goto_11
    const-string v0, "height"

    .line 532
    .line 533
    move/from16 v45, v18

    .line 534
    .line 535
    move/from16 v18, v17

    .line 536
    .line 537
    move/from16 v17, v45

    .line 538
    .line 539
    :goto_12
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 540
    .line 541
    .line 542
    move-result-object v5

    .line 543
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 544
    .line 545
    .line 546
    move-result-object v5

    .line 547
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 548
    .line 549
    .line 550
    move-result-object v5

    .line 551
    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    .line 552
    .line 553
    sget-object v28, LD1/L;->a:Ljava/util/regex/Pattern;

    .line 554
    .line 555
    move-object/from16 v28, v1

    .line 556
    .line 557
    sget-object v1, Lz4/i0;->M:Lz4/i0;

    .line 558
    .line 559
    move/from16 v29, v4

    .line 560
    .line 561
    const-string v4, "</span>"

    .line 562
    .line 563
    move-object/from16 v30, v4

    .line 564
    .line 565
    const-string v4, ";\'>"

    .line 566
    .line 567
    move-object/from16 v31, v15

    .line 568
    .line 569
    const-string v15, ""

    .line 570
    .line 571
    move-object/from16 v32, v11

    .line 572
    .line 573
    iget-object v11, v13, Lo0/b;->a:Ljava/lang/CharSequence;

    .line 574
    .line 575
    if-nez v11, :cond_1d

    .line 576
    .line 577
    new-instance v5, LF/i;

    .line 578
    .line 579
    invoke-direct {v5, v15, v1}, LF/i;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 580
    .line 581
    .line 582
    move-object/from16 v38, v0

    .line 583
    .line 584
    move-object/from16 v37, v2

    .line 585
    .line 586
    move-object/from16 v44, v4

    .line 587
    .line 588
    move-object/from16 v35, v6

    .line 589
    .line 590
    move-object/from16 v41, v7

    .line 591
    .line 592
    move-object/from16 v42, v12

    .line 593
    .line 594
    move-object/from16 v34, v13

    .line 595
    .line 596
    move-object/from16 v33, v15

    .line 597
    .line 598
    goto/16 :goto_23

    .line 599
    .line 600
    :cond_1d
    move-object/from16 v33, v15

    .line 601
    .line 602
    instance-of v15, v11, Landroid/text/Spanned;

    .line 603
    .line 604
    if-nez v15, :cond_1e

    .line 605
    .line 606
    new-instance v5, LF/i;

    .line 607
    .line 608
    invoke-static {v11}, LD1/L;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object v11

    .line 612
    invoke-direct {v5, v11, v1}, LF/i;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 613
    .line 614
    .line 615
    move-object/from16 v38, v0

    .line 616
    .line 617
    move-object/from16 v37, v2

    .line 618
    .line 619
    move-object/from16 v44, v4

    .line 620
    .line 621
    move-object/from16 v35, v6

    .line 622
    .line 623
    move-object/from16 v41, v7

    .line 624
    .line 625
    move-object/from16 v42, v12

    .line 626
    .line 627
    move-object/from16 v34, v13

    .line 628
    .line 629
    goto/16 :goto_23

    .line 630
    .line 631
    :cond_1e
    check-cast v11, Landroid/text/Spanned;

    .line 632
    .line 633
    new-instance v1, Ljava/util/HashSet;

    .line 634
    .line 635
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 636
    .line 637
    .line 638
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    .line 639
    .line 640
    .line 641
    move-result v15

    .line 642
    move-object/from16 v34, v13

    .line 643
    .line 644
    const-class v13, Landroid/text/style/BackgroundColorSpan;

    .line 645
    .line 646
    move-object/from16 v35, v6

    .line 647
    .line 648
    const/4 v6, 0x0

    .line 649
    invoke-interface {v11, v6, v15, v13}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 650
    .line 651
    .line 652
    move-result-object v13

    .line 653
    check-cast v13, [Landroid/text/style/BackgroundColorSpan;

    .line 654
    .line 655
    array-length v6, v13

    .line 656
    const/4 v15, 0x0

    .line 657
    :goto_13
    if-ge v15, v6, :cond_1f

    .line 658
    .line 659
    aget-object v36, v13, v15

    .line 660
    .line 661
    invoke-virtual/range {v36 .. v36}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    .line 662
    .line 663
    .line 664
    move-result v36

    .line 665
    move/from16 v37, v6

    .line 666
    .line 667
    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 668
    .line 669
    .line 670
    move-result-object v6

    .line 671
    invoke-virtual {v1, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 672
    .line 673
    .line 674
    const/4 v6, 0x1

    .line 675
    add-int/2addr v15, v6

    .line 676
    move/from16 v6, v37

    .line 677
    .line 678
    goto :goto_13

    .line 679
    :cond_1f
    new-instance v6, Ljava/util/HashMap;

    .line 680
    .line 681
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 682
    .line 683
    .line 684
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 685
    .line 686
    .line 687
    move-result-object v1

    .line 688
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 689
    .line 690
    .line 691
    move-result v13

    .line 692
    if-eqz v13, :cond_20

    .line 693
    .line 694
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 695
    .line 696
    .line 697
    move-result-object v13

    .line 698
    check-cast v13, Ljava/lang/Integer;

    .line 699
    .line 700
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 701
    .line 702
    .line 703
    move-result v13

    .line 704
    const-string v15, "bg_"

    .line 705
    .line 706
    invoke-static {v15, v13}, La/r;->f(Ljava/lang/String;I)Ljava/lang/String;

    .line 707
    .line 708
    .line 709
    move-result-object v15

    .line 710
    move-object/from16 v36, v1

    .line 711
    .line 712
    const-string v1, "."

    .line 713
    .line 714
    move-object/from16 v37, v2

    .line 715
    .line 716
    const-string v2, ",."

    .line 717
    .line 718
    move-object/from16 v38, v0

    .line 719
    .line 720
    const-string v0, " *"

    .line 721
    .line 722
    invoke-static {v1, v15, v2, v15, v0}, LA0/O;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 723
    .line 724
    .line 725
    move-result-object v0

    .line 726
    invoke-static {v13}, Lcom/bumptech/glide/d;->t(I)Ljava/lang/String;

    .line 727
    .line 728
    .line 729
    move-result-object v1

    .line 730
    sget-object v2, Lp0/M;->a:Ljava/lang/String;

    .line 731
    .line 732
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 733
    .line 734
    new-instance v2, Ljava/lang/StringBuilder;

    .line 735
    .line 736
    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 737
    .line 738
    .line 739
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    .line 741
    .line 742
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    .line 744
    .line 745
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 746
    .line 747
    .line 748
    move-result-object v1

    .line 749
    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    .line 751
    .line 752
    move-object/from16 v1, v36

    .line 753
    .line 754
    move-object/from16 v2, v37

    .line 755
    .line 756
    move-object/from16 v0, v38

    .line 757
    .line 758
    goto :goto_14

    .line 759
    :cond_20
    move-object/from16 v38, v0

    .line 760
    .line 761
    move-object/from16 v37, v2

    .line 762
    .line 763
    new-instance v0, Landroid/util/SparseArray;

    .line 764
    .line 765
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 766
    .line 767
    .line 768
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    .line 769
    .line 770
    .line 771
    move-result v1

    .line 772
    const-class v2, Ljava/lang/Object;

    .line 773
    .line 774
    const/4 v13, 0x0

    .line 775
    invoke-interface {v11, v13, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 776
    .line 777
    .line 778
    move-result-object v1

    .line 779
    array-length v2, v1

    .line 780
    const/4 v13, 0x0

    .line 781
    :goto_15
    if-ge v13, v2, :cond_47

    .line 782
    .line 783
    aget-object v15, v1, v13

    .line 784
    .line 785
    move-object/from16 v36, v1

    .line 786
    .line 787
    instance-of v1, v15, Landroid/text/style/StrikethroughSpan;

    .line 788
    .line 789
    const/16 v39, 0x0

    .line 790
    .line 791
    if-eqz v1, :cond_21

    .line 792
    .line 793
    const-string v40, "<span style=\'text-decoration:line-through;\'>"

    .line 794
    .line 795
    move-object/from16 v44, v4

    .line 796
    .line 797
    move/from16 v43, v5

    .line 798
    .line 799
    move-object/from16 v41, v7

    .line 800
    .line 801
    move-object/from16 v42, v12

    .line 802
    .line 803
    move-object/from16 v45, v40

    .line 804
    .line 805
    move/from16 v40, v2

    .line 806
    .line 807
    move-object/from16 v2, v45

    .line 808
    .line 809
    goto/16 :goto_1c

    .line 810
    .line 811
    :cond_21
    move/from16 v40, v2

    .line 812
    .line 813
    instance-of v2, v15, Landroid/text/style/ForegroundColorSpan;

    .line 814
    .line 815
    if-eqz v2, :cond_22

    .line 816
    .line 817
    move-object v2, v15

    .line 818
    check-cast v2, Landroid/text/style/ForegroundColorSpan;

    .line 819
    .line 820
    invoke-virtual {v2}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    .line 821
    .line 822
    .line 823
    move-result v2

    .line 824
    invoke-static {v2}, Lcom/bumptech/glide/d;->t(I)Ljava/lang/String;

    .line 825
    .line 826
    .line 827
    move-result-object v2

    .line 828
    sget-object v41, Lp0/M;->a:Ljava/lang/String;

    .line 829
    .line 830
    sget-object v41, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 831
    .line 832
    move-object/from16 v41, v7

    .line 833
    .line 834
    const-string v7, "<span style=\'color:"

    .line 835
    .line 836
    invoke-static {v7, v2, v4}, La/r;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 837
    .line 838
    .line 839
    move-result-object v2

    .line 840
    move-object/from16 v44, v4

    .line 841
    .line 842
    move/from16 v43, v5

    .line 843
    .line 844
    move-object/from16 v42, v12

    .line 845
    .line 846
    goto/16 :goto_1c

    .line 847
    .line 848
    :cond_22
    move-object/from16 v41, v7

    .line 849
    .line 850
    instance-of v2, v15, Landroid/text/style/BackgroundColorSpan;

    .line 851
    .line 852
    if-eqz v2, :cond_23

    .line 853
    .line 854
    move-object v2, v15

    .line 855
    check-cast v2, Landroid/text/style/BackgroundColorSpan;

    .line 856
    .line 857
    invoke-virtual {v2}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    .line 858
    .line 859
    .line 860
    move-result v2

    .line 861
    sget-object v7, Lp0/M;->a:Ljava/lang/String;

    .line 862
    .line 863
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 864
    .line 865
    const-string v7, "<span class=\'bg_"

    .line 866
    .line 867
    move-object/from16 v42, v12

    .line 868
    .line 869
    const-string v12, "\'>"

    .line 870
    .line 871
    invoke-static {v7, v2, v12}, LA0/O;->y(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 872
    .line 873
    .line 874
    move-result-object v2

    .line 875
    :goto_16
    move-object/from16 v44, v4

    .line 876
    .line 877
    move/from16 v43, v5

    .line 878
    .line 879
    goto/16 :goto_1c

    .line 880
    .line 881
    :cond_23
    move-object/from16 v42, v12

    .line 882
    .line 883
    instance-of v2, v15, Lo0/e;

    .line 884
    .line 885
    if-eqz v2, :cond_24

    .line 886
    .line 887
    const-string v2, "<span style=\'text-combine-upright:all;\'>"

    .line 888
    .line 889
    goto :goto_16

    .line 890
    :cond_24
    instance-of v2, v15, Landroid/text/style/AbsoluteSizeSpan;

    .line 891
    .line 892
    if-eqz v2, :cond_26

    .line 893
    .line 894
    move-object v2, v15

    .line 895
    check-cast v2, Landroid/text/style/AbsoluteSizeSpan;

    .line 896
    .line 897
    invoke-virtual {v2}, Landroid/text/style/AbsoluteSizeSpan;->getDip()Z

    .line 898
    .line 899
    .line 900
    move-result v7

    .line 901
    if-eqz v7, :cond_25

    .line 902
    .line 903
    invoke-virtual {v2}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    .line 904
    .line 905
    .line 906
    move-result v2

    .line 907
    int-to-float v2, v2

    .line 908
    goto :goto_17

    .line 909
    :cond_25
    invoke-virtual {v2}, Landroid/text/style/AbsoluteSizeSpan;->getSize()I

    .line 910
    .line 911
    .line 912
    move-result v2

    .line 913
    int-to-float v2, v2

    .line 914
    div-float/2addr v2, v5

    .line 915
    :goto_17
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 916
    .line 917
    .line 918
    move-result-object v2

    .line 919
    const/4 v7, 0x1

    .line 920
    new-array v12, v7, [Ljava/lang/Object;

    .line 921
    .line 922
    const/4 v7, 0x0

    .line 923
    aput-object v2, v12, v7

    .line 924
    .line 925
    sget-object v2, Lp0/M;->a:Ljava/lang/String;

    .line 926
    .line 927
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 928
    .line 929
    const-string v7, "<span style=\'font-size:%.2fpx;\'>"

    .line 930
    .line 931
    invoke-static {v2, v7, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 932
    .line 933
    .line 934
    move-result-object v2

    .line 935
    goto :goto_16

    .line 936
    :cond_26
    instance-of v2, v15, Landroid/text/style/RelativeSizeSpan;

    .line 937
    .line 938
    if-eqz v2, :cond_27

    .line 939
    .line 940
    move-object v2, v15

    .line 941
    check-cast v2, Landroid/text/style/RelativeSizeSpan;

    .line 942
    .line 943
    invoke-virtual {v2}, Landroid/text/style/RelativeSizeSpan;->getSizeChange()F

    .line 944
    .line 945
    .line 946
    move-result v2

    .line 947
    mul-float v2, v2, v16

    .line 948
    .line 949
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 950
    .line 951
    .line 952
    move-result-object v2

    .line 953
    const/4 v7, 0x1

    .line 954
    new-array v12, v7, [Ljava/lang/Object;

    .line 955
    .line 956
    const/4 v7, 0x0

    .line 957
    aput-object v2, v12, v7

    .line 958
    .line 959
    sget-object v2, Lp0/M;->a:Ljava/lang/String;

    .line 960
    .line 961
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 962
    .line 963
    const-string v7, "<span style=\'font-size:%.2f%%;\'>"

    .line 964
    .line 965
    invoke-static {v2, v7, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 966
    .line 967
    .line 968
    move-result-object v2

    .line 969
    goto :goto_16

    .line 970
    :cond_27
    instance-of v2, v15, Landroid/text/style/TypefaceSpan;

    .line 971
    .line 972
    if-eqz v2, :cond_29

    .line 973
    .line 974
    move-object v2, v15

    .line 975
    check-cast v2, Landroid/text/style/TypefaceSpan;

    .line 976
    .line 977
    invoke-virtual {v2}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    .line 978
    .line 979
    .line 980
    move-result-object v2

    .line 981
    if-eqz v2, :cond_28

    .line 982
    .line 983
    sget-object v7, Lp0/M;->a:Ljava/lang/String;

    .line 984
    .line 985
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 986
    .line 987
    const-string v7, "<span style=\'font-family:\""

    .line 988
    .line 989
    const-string v12, "\";\'>"

    .line 990
    .line 991
    invoke-static {v7, v2, v12}, La/r;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 992
    .line 993
    .line 994
    move-result-object v2

    .line 995
    goto :goto_16

    .line 996
    :cond_28
    move-object/from16 v2, v39

    .line 997
    .line 998
    goto :goto_16

    .line 999
    :cond_29
    instance-of v2, v15, Landroid/text/style/StyleSpan;

    .line 1000
    .line 1001
    if-eqz v2, :cond_2e

    .line 1002
    .line 1003
    move-object v2, v15

    .line 1004
    check-cast v2, Landroid/text/style/StyleSpan;

    .line 1005
    .line 1006
    invoke-virtual {v2}, Landroid/text/style/StyleSpan;->getStyle()I

    .line 1007
    .line 1008
    .line 1009
    move-result v2

    .line 1010
    const/4 v7, 0x1

    .line 1011
    if-eq v2, v7, :cond_2d

    .line 1012
    .line 1013
    const/4 v7, 0x2

    .line 1014
    if-eq v2, v7, :cond_2c

    .line 1015
    .line 1016
    const/4 v7, 0x3

    .line 1017
    if-eq v2, v7, :cond_2b

    .line 1018
    .line 1019
    :cond_2a
    :goto_18
    move-object/from16 v44, v4

    .line 1020
    .line 1021
    move/from16 v43, v5

    .line 1022
    .line 1023
    move-object/from16 v2, v39

    .line 1024
    .line 1025
    goto/16 :goto_1c

    .line 1026
    .line 1027
    :cond_2b
    const-string v2, "<b><i>"

    .line 1028
    .line 1029
    goto/16 :goto_16

    .line 1030
    .line 1031
    :cond_2c
    const-string v2, "<i>"

    .line 1032
    .line 1033
    goto/16 :goto_16

    .line 1034
    .line 1035
    :cond_2d
    const-string v2, "<b>"

    .line 1036
    .line 1037
    goto/16 :goto_16

    .line 1038
    .line 1039
    :cond_2e
    instance-of v2, v15, Lo0/g;

    .line 1040
    .line 1041
    if-eqz v2, :cond_32

    .line 1042
    .line 1043
    move-object v2, v15

    .line 1044
    check-cast v2, Lo0/g;

    .line 1045
    .line 1046
    iget v2, v2, Lo0/g;->b:I

    .line 1047
    .line 1048
    const/4 v7, -0x1

    .line 1049
    if-eq v2, v7, :cond_31

    .line 1050
    .line 1051
    const/4 v7, 0x1

    .line 1052
    if-eq v2, v7, :cond_30

    .line 1053
    .line 1054
    const/4 v7, 0x2

    .line 1055
    if-eq v2, v7, :cond_2f

    .line 1056
    .line 1057
    goto :goto_18

    .line 1058
    :cond_2f
    const-string v2, "<ruby style=\'ruby-position:under;\'>"

    .line 1059
    .line 1060
    goto/16 :goto_16

    .line 1061
    .line 1062
    :cond_30
    const-string v2, "<ruby style=\'ruby-position:over;\'>"

    .line 1063
    .line 1064
    goto/16 :goto_16

    .line 1065
    .line 1066
    :cond_31
    const-string v2, "<ruby style=\'ruby-position:unset;\'>"

    .line 1067
    .line 1068
    goto/16 :goto_16

    .line 1069
    .line 1070
    :cond_32
    instance-of v2, v15, Landroid/text/style/UnderlineSpan;

    .line 1071
    .line 1072
    if-eqz v2, :cond_33

    .line 1073
    .line 1074
    const-string v2, "<u>"

    .line 1075
    .line 1076
    goto/16 :goto_16

    .line 1077
    .line 1078
    :cond_33
    instance-of v2, v15, Lo0/h;

    .line 1079
    .line 1080
    if-eqz v2, :cond_2a

    .line 1081
    .line 1082
    move-object v2, v15

    .line 1083
    check-cast v2, Lo0/h;

    .line 1084
    .line 1085
    iget v7, v2, Lo0/h;->a:I

    .line 1086
    .line 1087
    new-instance v12, Ljava/lang/StringBuilder;

    .line 1088
    .line 1089
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1090
    .line 1091
    .line 1092
    move/from16 v43, v5

    .line 1093
    .line 1094
    iget v5, v2, Lo0/h;->b:I

    .line 1095
    .line 1096
    move-object/from16 v44, v4

    .line 1097
    .line 1098
    const/4 v4, 0x1

    .line 1099
    if-eq v5, v4, :cond_35

    .line 1100
    .line 1101
    const/4 v4, 0x2

    .line 1102
    if-eq v5, v4, :cond_34

    .line 1103
    .line 1104
    goto :goto_19

    .line 1105
    :cond_34
    const-string v5, "open "

    .line 1106
    .line 1107
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1108
    .line 1109
    .line 1110
    goto :goto_19

    .line 1111
    :cond_35
    const/4 v4, 0x2

    .line 1112
    const-string v5, "filled "

    .line 1113
    .line 1114
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1115
    .line 1116
    .line 1117
    :goto_19
    if-eqz v7, :cond_39

    .line 1118
    .line 1119
    const/4 v5, 0x1

    .line 1120
    if-eq v7, v5, :cond_38

    .line 1121
    .line 1122
    if-eq v7, v4, :cond_37

    .line 1123
    .line 1124
    const/4 v4, 0x3

    .line 1125
    if-eq v7, v4, :cond_36

    .line 1126
    .line 1127
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1128
    .line 1129
    .line 1130
    goto :goto_1a

    .line 1131
    :cond_36
    const-string v4, "sesame"

    .line 1132
    .line 1133
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1134
    .line 1135
    .line 1136
    goto :goto_1a

    .line 1137
    :cond_37
    const-string v4, "dot"

    .line 1138
    .line 1139
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1140
    .line 1141
    .line 1142
    goto :goto_1a

    .line 1143
    :cond_38
    const-string v4, "circle"

    .line 1144
    .line 1145
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1146
    .line 1147
    .line 1148
    goto :goto_1a

    .line 1149
    :cond_39
    const-string v4, "none"

    .line 1150
    .line 1151
    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1152
    .line 1153
    .line 1154
    :goto_1a
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1155
    .line 1156
    .line 1157
    move-result-object v4

    .line 1158
    iget v2, v2, Lo0/h;->c:I

    .line 1159
    .line 1160
    const/4 v5, 0x2

    .line 1161
    if-eq v2, v5, :cond_3a

    .line 1162
    .line 1163
    const-string v2, "over right"

    .line 1164
    .line 1165
    goto :goto_1b

    .line 1166
    :cond_3a
    const-string v2, "under left"

    .line 1167
    .line 1168
    :goto_1b
    new-array v7, v5, [Ljava/lang/Object;

    .line 1169
    .line 1170
    const/4 v5, 0x0

    .line 1171
    aput-object v4, v7, v5

    .line 1172
    .line 1173
    const/4 v4, 0x1

    .line 1174
    aput-object v2, v7, v4

    .line 1175
    .line 1176
    sget-object v2, Lp0/M;->a:Ljava/lang/String;

    .line 1177
    .line 1178
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 1179
    .line 1180
    const-string v4, "<span style=\'-webkit-text-emphasis-style:%1$s;text-emphasis-style:%1$s;-webkit-text-emphasis-position:%2$s;text-emphasis-position:%2$s;display:inline-block;\'>"

    .line 1181
    .line 1182
    invoke-static {v2, v4, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1183
    .line 1184
    .line 1185
    move-result-object v2

    .line 1186
    :goto_1c
    if-nez v1, :cond_43

    .line 1187
    .line 1188
    instance-of v1, v15, Landroid/text/style/ForegroundColorSpan;

    .line 1189
    .line 1190
    if-nez v1, :cond_43

    .line 1191
    .line 1192
    instance-of v1, v15, Landroid/text/style/BackgroundColorSpan;

    .line 1193
    .line 1194
    if-nez v1, :cond_43

    .line 1195
    .line 1196
    instance-of v1, v15, Lo0/e;

    .line 1197
    .line 1198
    if-nez v1, :cond_43

    .line 1199
    .line 1200
    instance-of v1, v15, Landroid/text/style/AbsoluteSizeSpan;

    .line 1201
    .line 1202
    if-nez v1, :cond_43

    .line 1203
    .line 1204
    instance-of v1, v15, Landroid/text/style/RelativeSizeSpan;

    .line 1205
    .line 1206
    if-nez v1, :cond_43

    .line 1207
    .line 1208
    instance-of v1, v15, Lo0/h;

    .line 1209
    .line 1210
    if-eqz v1, :cond_3b

    .line 1211
    .line 1212
    goto :goto_1e

    .line 1213
    :cond_3b
    instance-of v1, v15, Landroid/text/style/TypefaceSpan;

    .line 1214
    .line 1215
    if-eqz v1, :cond_3d

    .line 1216
    .line 1217
    move-object v1, v15

    .line 1218
    check-cast v1, Landroid/text/style/TypefaceSpan;

    .line 1219
    .line 1220
    invoke-virtual {v1}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    .line 1221
    .line 1222
    .line 1223
    move-result-object v1

    .line 1224
    if-eqz v1, :cond_3c

    .line 1225
    .line 1226
    move-object/from16 v39, v30

    .line 1227
    .line 1228
    :cond_3c
    :goto_1d
    move-object/from16 v1, v39

    .line 1229
    .line 1230
    goto :goto_1f

    .line 1231
    :cond_3d
    instance-of v1, v15, Landroid/text/style/StyleSpan;

    .line 1232
    .line 1233
    if-eqz v1, :cond_41

    .line 1234
    .line 1235
    move-object v1, v15

    .line 1236
    check-cast v1, Landroid/text/style/StyleSpan;

    .line 1237
    .line 1238
    invoke-virtual {v1}, Landroid/text/style/StyleSpan;->getStyle()I

    .line 1239
    .line 1240
    .line 1241
    move-result v1

    .line 1242
    const/4 v4, 0x1

    .line 1243
    if-eq v1, v4, :cond_40

    .line 1244
    .line 1245
    const/4 v4, 0x2

    .line 1246
    if-eq v1, v4, :cond_3f

    .line 1247
    .line 1248
    const/4 v4, 0x3

    .line 1249
    if-eq v1, v4, :cond_3e

    .line 1250
    .line 1251
    goto :goto_1d

    .line 1252
    :cond_3e
    const-string v39, "</i></b>"

    .line 1253
    .line 1254
    goto :goto_1d

    .line 1255
    :cond_3f
    const-string v39, "</i>"

    .line 1256
    .line 1257
    goto :goto_1d

    .line 1258
    :cond_40
    const-string v39, "</b>"

    .line 1259
    .line 1260
    goto :goto_1d

    .line 1261
    :cond_41
    instance-of v1, v15, Lo0/g;

    .line 1262
    .line 1263
    if-eqz v1, :cond_42

    .line 1264
    .line 1265
    move-object v1, v15

    .line 1266
    check-cast v1, Lo0/g;

    .line 1267
    .line 1268
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1269
    .line 1270
    const-string v5, "<rt>"

    .line 1271
    .line 1272
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1273
    .line 1274
    .line 1275
    iget-object v1, v1, Lo0/g;->a:Ljava/lang/String;

    .line 1276
    .line 1277
    invoke-static {v1}, LD1/L;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1278
    .line 1279
    .line 1280
    move-result-object v1

    .line 1281
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1282
    .line 1283
    .line 1284
    const-string v1, "</rt></ruby>"

    .line 1285
    .line 1286
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1287
    .line 1288
    .line 1289
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1290
    .line 1291
    .line 1292
    move-result-object v39

    .line 1293
    goto :goto_1d

    .line 1294
    :cond_42
    instance-of v1, v15, Landroid/text/style/UnderlineSpan;

    .line 1295
    .line 1296
    if-eqz v1, :cond_3c

    .line 1297
    .line 1298
    const-string v39, "</u>"

    .line 1299
    .line 1300
    goto :goto_1d

    .line 1301
    :cond_43
    :goto_1e
    move-object/from16 v1, v30

    .line 1302
    .line 1303
    :goto_1f
    invoke-interface {v11, v15}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 1304
    .line 1305
    .line 1306
    move-result v4

    .line 1307
    invoke-interface {v11, v15}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 1308
    .line 1309
    .line 1310
    move-result v5

    .line 1311
    if-eqz v2, :cond_46

    .line 1312
    .line 1313
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1314
    .line 1315
    .line 1316
    new-instance v7, LD1/J;

    .line 1317
    .line 1318
    invoke-direct {v7, v4, v5, v2, v1}, LD1/J;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 1319
    .line 1320
    .line 1321
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1322
    .line 1323
    .line 1324
    move-result-object v1

    .line 1325
    check-cast v1, LD1/K;

    .line 1326
    .line 1327
    if-nez v1, :cond_44

    .line 1328
    .line 1329
    new-instance v1, LD1/K;

    .line 1330
    .line 1331
    invoke-direct {v1}, LD1/K;-><init>()V

    .line 1332
    .line 1333
    .line 1334
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1335
    .line 1336
    .line 1337
    :cond_44
    iget-object v1, v1, LD1/K;->a:Ljava/util/ArrayList;

    .line 1338
    .line 1339
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1340
    .line 1341
    .line 1342
    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1343
    .line 1344
    .line 1345
    move-result-object v1

    .line 1346
    check-cast v1, LD1/K;

    .line 1347
    .line 1348
    if-nez v1, :cond_45

    .line 1349
    .line 1350
    new-instance v1, LD1/K;

    .line 1351
    .line 1352
    invoke-direct {v1}, LD1/K;-><init>()V

    .line 1353
    .line 1354
    .line 1355
    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1356
    .line 1357
    .line 1358
    :cond_45
    iget-object v1, v1, LD1/K;->b:Ljava/util/ArrayList;

    .line 1359
    .line 1360
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1361
    .line 1362
    .line 1363
    :cond_46
    const/4 v1, 0x1

    .line 1364
    add-int/2addr v13, v1

    .line 1365
    move-object/from16 v1, v36

    .line 1366
    .line 1367
    move/from16 v2, v40

    .line 1368
    .line 1369
    move-object/from16 v7, v41

    .line 1370
    .line 1371
    move-object/from16 v12, v42

    .line 1372
    .line 1373
    move/from16 v5, v43

    .line 1374
    .line 1375
    move-object/from16 v4, v44

    .line 1376
    .line 1377
    goto/16 :goto_15

    .line 1378
    .line 1379
    :cond_47
    move-object/from16 v44, v4

    .line 1380
    .line 1381
    move-object/from16 v41, v7

    .line 1382
    .line 1383
    move-object/from16 v42, v12

    .line 1384
    .line 1385
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1386
    .line 1387
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    .line 1388
    .line 1389
    .line 1390
    move-result v2

    .line 1391
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1392
    .line 1393
    .line 1394
    const/4 v2, 0x0

    .line 1395
    const/4 v4, 0x0

    .line 1396
    :goto_20
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 1397
    .line 1398
    .line 1399
    move-result v5

    .line 1400
    if-ge v2, v5, :cond_4a

    .line 1401
    .line 1402
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 1403
    .line 1404
    .line 1405
    move-result v5

    .line 1406
    invoke-interface {v11, v4, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 1407
    .line 1408
    .line 1409
    move-result-object v4

    .line 1410
    invoke-static {v4}, LD1/L;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1411
    .line 1412
    .line 1413
    move-result-object v4

    .line 1414
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1415
    .line 1416
    .line 1417
    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 1418
    .line 1419
    .line 1420
    move-result-object v4

    .line 1421
    check-cast v4, LD1/K;

    .line 1422
    .line 1423
    iget-object v7, v4, LD1/K;->b:Ljava/util/ArrayList;

    .line 1424
    .line 1425
    sget-object v12, LD1/J;->f:LK/b;

    .line 1426
    .line 1427
    invoke-static {v7, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1428
    .line 1429
    .line 1430
    iget-object v7, v4, LD1/K;->b:Ljava/util/ArrayList;

    .line 1431
    .line 1432
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1433
    .line 1434
    .line 1435
    move-result-object v7

    .line 1436
    :goto_21
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 1437
    .line 1438
    .line 1439
    move-result v12

    .line 1440
    if-eqz v12, :cond_48

    .line 1441
    .line 1442
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1443
    .line 1444
    .line 1445
    move-result-object v12

    .line 1446
    check-cast v12, LD1/J;

    .line 1447
    .line 1448
    iget-object v12, v12, LD1/J;->d:Ljava/lang/String;

    .line 1449
    .line 1450
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1451
    .line 1452
    .line 1453
    goto :goto_21

    .line 1454
    :cond_48
    iget-object v4, v4, LD1/K;->a:Ljava/util/ArrayList;

    .line 1455
    .line 1456
    sget-object v7, LD1/J;->e:LK/b;

    .line 1457
    .line 1458
    invoke-static {v4, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1459
    .line 1460
    .line 1461
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 1462
    .line 1463
    .line 1464
    move-result-object v4

    .line 1465
    :goto_22
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 1466
    .line 1467
    .line 1468
    move-result v7

    .line 1469
    if-eqz v7, :cond_49

    .line 1470
    .line 1471
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1472
    .line 1473
    .line 1474
    move-result-object v7

    .line 1475
    check-cast v7, LD1/J;

    .line 1476
    .line 1477
    iget-object v7, v7, LD1/J;->c:Ljava/lang/String;

    .line 1478
    .line 1479
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1480
    .line 1481
    .line 1482
    goto :goto_22

    .line 1483
    :cond_49
    const/4 v7, 0x1

    .line 1484
    add-int/2addr v2, v7

    .line 1485
    move v4, v5

    .line 1486
    goto :goto_20

    .line 1487
    :cond_4a
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    .line 1488
    .line 1489
    .line 1490
    move-result v0

    .line 1491
    invoke-interface {v11, v4, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 1492
    .line 1493
    .line 1494
    move-result-object v0

    .line 1495
    invoke-static {v0}, LD1/L;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 1496
    .line 1497
    .line 1498
    move-result-object v0

    .line 1499
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1500
    .line 1501
    .line 1502
    new-instance v5, LF/i;

    .line 1503
    .line 1504
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1505
    .line 1506
    .line 1507
    move-result-object v0

    .line 1508
    invoke-direct {v5, v0, v6}, LF/i;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 1509
    .line 1510
    .line 1511
    :goto_23
    iget-object v0, v5, LF/i;->H:Ljava/lang/Object;

    .line 1512
    .line 1513
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 1514
    .line 1515
    .line 1516
    move-result-object v1

    .line 1517
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1518
    .line 1519
    .line 1520
    move-result-object v1

    .line 1521
    :goto_24
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1522
    .line 1523
    .line 1524
    move-result v2

    .line 1525
    if-eqz v2, :cond_4d

    .line 1526
    .line 1527
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1528
    .line 1529
    .line 1530
    move-result-object v2

    .line 1531
    check-cast v2, Ljava/lang/String;

    .line 1532
    .line 1533
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1534
    .line 1535
    .line 1536
    move-result-object v4

    .line 1537
    check-cast v4, Ljava/lang/String;

    .line 1538
    .line 1539
    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1540
    .line 1541
    .line 1542
    move-result-object v4

    .line 1543
    check-cast v4, Ljava/lang/String;

    .line 1544
    .line 1545
    if-eqz v4, :cond_4c

    .line 1546
    .line 1547
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1548
    .line 1549
    .line 1550
    move-result-object v2

    .line 1551
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1552
    .line 1553
    .line 1554
    move-result v2

    .line 1555
    if-eqz v2, :cond_4b

    .line 1556
    .line 1557
    goto :goto_25

    .line 1558
    :cond_4b
    const/4 v2, 0x0

    .line 1559
    goto :goto_26

    .line 1560
    :cond_4c
    :goto_25
    const/4 v2, 0x1

    .line 1561
    :goto_26
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

    .line 1562
    .line 1563
    .line 1564
    goto :goto_24

    .line 1565
    :cond_4d
    const/16 v1, 0xe

    .line 1566
    .line 1567
    new-array v1, v1, [Ljava/lang/Object;

    .line 1568
    .line 1569
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1570
    .line 1571
    .line 1572
    move-result-object v2

    .line 1573
    const/4 v4, 0x0

    .line 1574
    aput-object v2, v1, v4

    .line 1575
    .line 1576
    const/4 v2, 0x1

    .line 1577
    aput-object v27, v1, v2

    .line 1578
    .line 1579
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1580
    .line 1581
    .line 1582
    move-result-object v2

    .line 1583
    const/4 v4, 0x2

    .line 1584
    aput-object v2, v1, v4

    .line 1585
    .line 1586
    const/4 v2, 0x3

    .line 1587
    aput-object v26, v1, v2

    .line 1588
    .line 1589
    const/4 v4, 0x4

    .line 1590
    aput-object v8, v1, v4

    .line 1591
    .line 1592
    const/4 v5, 0x5

    .line 1593
    aput-object v38, v1, v5

    .line 1594
    .line 1595
    const/4 v5, 0x6

    .line 1596
    aput-object v37, v1, v5

    .line 1597
    .line 1598
    const/4 v5, 0x7

    .line 1599
    aput-object v24, v1, v5

    .line 1600
    .line 1601
    const/16 v5, 0x8

    .line 1602
    .line 1603
    aput-object v35, v1, v5

    .line 1604
    .line 1605
    const/16 v5, 0x9

    .line 1606
    .line 1607
    aput-object v32, v1, v5

    .line 1608
    .line 1609
    const/16 v5, 0xa

    .line 1610
    .line 1611
    aput-object v31, v1, v5

    .line 1612
    .line 1613
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1614
    .line 1615
    .line 1616
    move-result-object v5

    .line 1617
    const/16 v6, 0xb

    .line 1618
    .line 1619
    aput-object v5, v1, v6

    .line 1620
    .line 1621
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1622
    .line 1623
    .line 1624
    move-result-object v5

    .line 1625
    const/16 v6, 0xc

    .line 1626
    .line 1627
    aput-object v5, v1, v6

    .line 1628
    .line 1629
    move-object/from16 v13, v34

    .line 1630
    .line 1631
    iget v5, v13, Lo0/b;->q:F

    .line 1632
    .line 1633
    cmpl-float v6, v5, v20

    .line 1634
    .line 1635
    if-eqz v6, :cond_50

    .line 1636
    .line 1637
    move/from16 v7, v29

    .line 1638
    .line 1639
    const/4 v6, 0x2

    .line 1640
    const/4 v8, 0x1

    .line 1641
    if-eq v7, v6, :cond_4f

    .line 1642
    .line 1643
    if-ne v7, v8, :cond_4e

    .line 1644
    .line 1645
    goto :goto_27

    .line 1646
    :cond_4e
    const-string v7, "skewX"

    .line 1647
    .line 1648
    goto :goto_28

    .line 1649
    :cond_4f
    :goto_27
    const-string v7, "skewY"

    .line 1650
    .line 1651
    :goto_28
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 1652
    .line 1653
    .line 1654
    move-result-object v5

    .line 1655
    new-array v11, v6, [Ljava/lang/Object;

    .line 1656
    .line 1657
    const/4 v6, 0x0

    .line 1658
    aput-object v7, v11, v6

    .line 1659
    .line 1660
    aput-object v5, v11, v8

    .line 1661
    .line 1662
    sget-object v5, Lp0/M;->a:Ljava/lang/String;

    .line 1663
    .line 1664
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 1665
    .line 1666
    const-string v6, "%s(%.2fdeg)"

    .line 1667
    .line 1668
    invoke-static {v5, v6, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1669
    .line 1670
    .line 1671
    move-result-object v15

    .line 1672
    goto :goto_29

    .line 1673
    :cond_50
    move-object/from16 v15, v33

    .line 1674
    .line 1675
    :goto_29
    const/16 v5, 0xd

    .line 1676
    .line 1677
    aput-object v15, v1, v5

    .line 1678
    .line 1679
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 1680
    .line 1681
    const-string v6, "<div style=\'position:absolute;z-index:%s;%s:%.2f%%;%s:%s;%s:%s;text-align:%s;writing-mode:%s;font-size:%s;background-color:%s;transform:translate(%s%%,%s%%)%s;\'>"

    .line 1682
    .line 1683
    invoke-static {v5, v6, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1684
    .line 1685
    .line 1686
    move-result-object v1

    .line 1687
    move-object/from16 v5, v28

    .line 1688
    .line 1689
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1690
    .line 1691
    .line 1692
    const-string v1, "<span class=\'default_bg\'>"

    .line 1693
    .line 1694
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1695
    .line 1696
    .line 1697
    iget-object v1, v13, Lo0/b;->c:Landroid/text/Layout$Alignment;

    .line 1698
    .line 1699
    if-eqz v1, :cond_53

    .line 1700
    .line 1701
    sget-object v6, LD1/U;->a:[I

    .line 1702
    .line 1703
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 1704
    .line 1705
    .line 1706
    move-result v1

    .line 1707
    aget v1, v6, v1

    .line 1708
    .line 1709
    const/4 v6, 0x1

    .line 1710
    if-eq v1, v6, :cond_52

    .line 1711
    .line 1712
    const/4 v6, 0x2

    .line 1713
    if-eq v1, v6, :cond_51

    .line 1714
    .line 1715
    move-object/from16 v11, v19

    .line 1716
    .line 1717
    goto :goto_2a

    .line 1718
    :cond_51
    move-object/from16 v11, v25

    .line 1719
    .line 1720
    goto :goto_2a

    .line 1721
    :cond_52
    const/4 v6, 0x2

    .line 1722
    move-object/from16 v11, v23

    .line 1723
    .line 1724
    :goto_2a
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1725
    .line 1726
    const-string v7, "<span style=\'display:inline-block; text-align:"

    .line 1727
    .line 1728
    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1729
    .line 1730
    .line 1731
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1732
    .line 1733
    .line 1734
    move-object/from16 v7, v44

    .line 1735
    .line 1736
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1737
    .line 1738
    .line 1739
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1740
    .line 1741
    .line 1742
    move-result-object v1

    .line 1743
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1744
    .line 1745
    .line 1746
    check-cast v0, Ljava/lang/String;

    .line 1747
    .line 1748
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1749
    .line 1750
    .line 1751
    move-object/from16 v0, v30

    .line 1752
    .line 1753
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1754
    .line 1755
    .line 1756
    goto :goto_2b

    .line 1757
    :cond_53
    const/4 v6, 0x2

    .line 1758
    check-cast v0, Ljava/lang/String;

    .line 1759
    .line 1760
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1761
    .line 1762
    .line 1763
    :goto_2b
    const-string v0, "</span></div>"

    .line 1764
    .line 1765
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1766
    .line 1767
    .line 1768
    const/4 v0, 0x1

    .line 1769
    add-int/2addr v9, v0

    .line 1770
    const/4 v2, 0x4

    .line 1771
    const v4, 0x3f99999a    # 1.2f

    .line 1772
    .line 1773
    .line 1774
    const/4 v6, 0x1

    .line 1775
    const/4 v8, 0x2

    .line 1776
    const/4 v11, 0x3

    .line 1777
    move-object/from16 v0, p0

    .line 1778
    .line 1779
    move-object v1, v5

    .line 1780
    move-object/from16 v7, v41

    .line 1781
    .line 1782
    move-object/from16 v12, v42

    .line 1783
    .line 1784
    const/4 v5, 0x0

    .line 1785
    goto/16 :goto_1

    .line 1786
    .line 1787
    :cond_54
    move-object v5, v1

    .line 1788
    const-string v0, "</div></body></html>"

    .line 1789
    .line 1790
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1791
    .line 1792
    .line 1793
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1794
    .line 1795
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1796
    .line 1797
    .line 1798
    const-string v1, "<html><head><style>"

    .line 1799
    .line 1800
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1801
    .line 1802
    .line 1803
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 1804
    .line 1805
    .line 1806
    move-result-object v1

    .line 1807
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1808
    .line 1809
    .line 1810
    move-result-object v1

    .line 1811
    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 1812
    .line 1813
    .line 1814
    move-result v2

    .line 1815
    if-eqz v2, :cond_55

    .line 1816
    .line 1817
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1818
    .line 1819
    .line 1820
    move-result-object v2

    .line 1821
    check-cast v2, Ljava/lang/String;

    .line 1822
    .line 1823
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1824
    .line 1825
    .line 1826
    const-string v4, "{"

    .line 1827
    .line 1828
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1829
    .line 1830
    .line 1831
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1832
    .line 1833
    .line 1834
    move-result-object v2

    .line 1835
    check-cast v2, Ljava/lang/String;

    .line 1836
    .line 1837
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1838
    .line 1839
    .line 1840
    const-string v2, "}"

    .line 1841
    .line 1842
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1843
    .line 1844
    .line 1845
    goto :goto_2c

    .line 1846
    :cond_55
    const-string v1, "</style></head>"

    .line 1847
    .line 1848
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1849
    .line 1850
    .line 1851
    const/4 v1, 0x0

    .line 1852
    invoke-virtual {v5, v1, v0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1853
    .line 1854
    .line 1855
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1856
    .line 1857
    .line 1858
    move-result-object v0

    .line 1859
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 1860
    .line 1861
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 1862
    .line 1863
    .line 1864
    move-result-object v0

    .line 1865
    const/4 v1, 0x1

    .line 1866
    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 1867
    .line 1868
    .line 1869
    move-result-object v0

    .line 1870
    const-string v1, "text/html"

    .line 1871
    .line 1872
    const-string v2, "base64"

    .line 1873
    .line 1874
    move-object/from16 v3, p0

    .line 1875
    .line 1876
    iget-object v4, v3, LD1/V;->H:LD1/T;

    .line 1877
    .line 1878
    invoke-virtual {v4, v0, v1, v2}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1879
    .line 1880
    .line 1881
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, LD1/V;->I:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0}, LD1/V;->c()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
