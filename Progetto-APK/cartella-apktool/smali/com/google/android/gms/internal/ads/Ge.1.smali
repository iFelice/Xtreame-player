.class public final Lcom/google/android/gms/internal/ads/Ge;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/Ce;


# instance fields
.field public final G:Lcom/google/android/gms/internal/ads/Oe;

.field public final H:Landroid/widget/FrameLayout;

.field public final I:Landroid/view/View;

.field public final J:Lcom/google/android/gms/internal/ads/W7;

.field public final K:Lcom/google/android/gms/internal/ads/Fe;

.field public final L:J

.field public final M:Lcom/google/android/gms/internal/ads/De;

.field public N:Z

.field public O:Z

.field public P:Z

.field public Q:Z

.field public R:J

.field public S:J

.field public T:Ljava/lang/String;

.field public U:[Ljava/lang/String;

.field public V:Landroid/graphics/Bitmap;

.field public final W:Landroid/widget/ImageView;

.field public a0:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/Oe;IZLcom/google/android/gms/internal/ads/W7;Lcom/google/android/gms/internal/ads/Ne;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v7, p1

    .line 3
    .line 4
    move/from16 v8, p3

    .line 5
    .line 6
    move-object/from16 v9, p5

    .line 7
    .line 8
    invoke-direct/range {p0 .. p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    move-object/from16 v10, p2

    .line 12
    .line 13
    iput-object v10, v0, Lcom/google/android/gms/internal/ads/Ge;->G:Lcom/google/android/gms/internal/ads/Oe;

    .line 14
    .line 15
    iput-object v9, v0, Lcom/google/android/gms/internal/ads/Ge;->J:Lcom/google/android/gms/internal/ads/W7;

    .line 16
    .line 17
    new-instance v11, Landroid/widget/FrameLayout;

    .line 18
    .line 19
    invoke-direct {v11, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    iput-object v11, v0, Lcom/google/android/gms/internal/ads/Ge;->H:Landroid/widget/FrameLayout;

    .line 23
    .line 24
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 25
    .line 26
    const/4 v12, -0x1

    .line 27
    invoke-direct {v1, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v11, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    .line 32
    .line 33
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/Oe;->zzj()Lk3/a;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/Oe;->zzj()Lk3/a;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iget-object v1, v1, Lk3/a;->a:Lcom/google/android/gms/internal/ads/Aa;

    .line 45
    .line 46
    new-instance v13, Lcom/google/android/gms/internal/ads/Pe;

    .line 47
    .line 48
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/Oe;->zzn()Lp3/a;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/Oe;->s()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/Oe;->zzk()Lcom/google/android/gms/internal/ads/U7;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    move-object v1, v13

    .line 61
    move-object/from16 v2, p1

    .line 62
    .line 63
    move-object/from16 v5, p5

    .line 64
    .line 65
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/Pe;-><init>(Landroid/content/Context;Lp3/a;Ljava/lang/String;Lcom/google/android/gms/internal/ads/W7;Lcom/google/android/gms/internal/ads/U7;)V

    .line 66
    .line 67
    .line 68
    const/4 v1, 0x3

    .line 69
    if-ne v8, v1, :cond_0

    .line 70
    .line 71
    new-instance v1, Lcom/google/android/gms/internal/ads/zf;

    .line 72
    .line 73
    invoke-direct {v1, v7, v13}, Lcom/google/android/gms/internal/ads/zf;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/Pe;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    const/4 v1, 0x2

    .line 78
    if-ne v8, v1, :cond_1

    .line 79
    .line 80
    new-instance v8, Lcom/google/android/gms/internal/ads/We;

    .line 81
    .line 82
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/Oe;->l()LA2/i;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    move-object v1, v8

    .line 90
    move-object/from16 v2, p1

    .line 91
    .line 92
    move-object/from16 v3, p6

    .line 93
    .line 94
    move-object/from16 v4, p2

    .line 95
    .line 96
    move-object v5, v13

    .line 97
    move/from16 v6, p4

    .line 98
    .line 99
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/We;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/Ne;Lcom/google/android/gms/internal/ads/Oe;Lcom/google/android/gms/internal/ads/Pe;Z)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_1
    new-instance v8, Lcom/google/android/gms/internal/ads/Be;

    .line 104
    .line 105
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/Oe;->l()LA2/i;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v1}, LA2/i;->b()Z

    .line 110
    .line 111
    .line 112
    move-result v13

    .line 113
    new-instance v14, Lcom/google/android/gms/internal/ads/Pe;

    .line 114
    .line 115
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/Oe;->zzn()Lp3/a;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/Oe;->s()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/Oe;->zzk()Lcom/google/android/gms/internal/ads/U7;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    move-object v1, v14

    .line 128
    move-object/from16 v2, p1

    .line 129
    .line 130
    move-object/from16 v5, p5

    .line 131
    .line 132
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/Pe;-><init>(Landroid/content/Context;Lp3/a;Ljava/lang/String;Lcom/google/android/gms/internal/ads/W7;Lcom/google/android/gms/internal/ads/U7;)V

    .line 133
    .line 134
    .line 135
    move-object v1, v8

    .line 136
    move-object/from16 v3, p2

    .line 137
    .line 138
    move-object v4, v14

    .line 139
    move/from16 v5, p4

    .line 140
    .line 141
    move v6, v13

    .line 142
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/Be;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/Oe;Lcom/google/android/gms/internal/ads/Pe;ZZ)V

    .line 143
    .line 144
    .line 145
    :goto_0
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/Ge;->M:Lcom/google/android/gms/internal/ads/De;

    .line 146
    .line 147
    new-instance v2, Landroid/view/View;

    .line 148
    .line 149
    invoke-direct {v2, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 150
    .line 151
    .line 152
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/Ge;->I:Landroid/view/View;

    .line 153
    .line 154
    const/4 v3, 0x0

    .line 155
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 156
    .line 157
    .line 158
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 159
    .line 160
    const/16 v4, 0x11

    .line 161
    .line 162
    invoke-direct {v3, v12, v12, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v11, v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    .line 167
    .line 168
    sget-object v3, Lcom/google/android/gms/internal/ads/Q7;->D:Lcom/google/android/gms/internal/ads/J7;

    .line 169
    .line 170
    sget-object v4, Ll3/q;->d:Ll3/q;

    .line 171
    .line 172
    iget-object v5, v4, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 173
    .line 174
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    check-cast v3, Ljava/lang/Boolean;

    .line 179
    .line 180
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 181
    .line 182
    .line 183
    move-result v3

    .line 184
    if-eqz v3, :cond_2

    .line 185
    .line 186
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 187
    .line 188
    invoke-direct {v3, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v11, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v11, v2}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 195
    .line 196
    .line 197
    :cond_2
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->A:Lcom/google/android/gms/internal/ads/J7;

    .line 198
    .line 199
    iget-object v3, v4, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 200
    .line 201
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v2

    .line 205
    check-cast v2, Ljava/lang/Boolean;

    .line 206
    .line 207
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    if-eqz v2, :cond_3

    .line 212
    .line 213
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Ge;->k()V

    .line 214
    .line 215
    .line 216
    :cond_3
    new-instance v2, Landroid/widget/ImageView;

    .line 217
    .line 218
    invoke-direct {v2, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 219
    .line 220
    .line 221
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/Ge;->W:Landroid/widget/ImageView;

    .line 222
    .line 223
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->F:Lcom/google/android/gms/internal/ads/J7;

    .line 224
    .line 225
    iget-object v3, v4, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 226
    .line 227
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    check-cast v2, Ljava/lang/Long;

    .line 232
    .line 233
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 234
    .line 235
    .line 236
    move-result-wide v2

    .line 237
    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/Ge;->L:J

    .line 238
    .line 239
    sget-object v2, Lcom/google/android/gms/internal/ads/Q7;->C:Lcom/google/android/gms/internal/ads/J7;

    .line 240
    .line 241
    iget-object v3, v4, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 242
    .line 243
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    check-cast v2, Ljava/lang/Boolean;

    .line 248
    .line 249
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 250
    .line 251
    .line 252
    move-result v2

    .line 253
    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/Ge;->Q:Z

    .line 254
    .line 255
    if-eqz v9, :cond_5

    .line 256
    .line 257
    const/4 v3, 0x1

    .line 258
    if-eq v3, v2, :cond_4

    .line 259
    .line 260
    const-string v2, "0"

    .line 261
    .line 262
    goto :goto_1

    .line 263
    :cond_4
    const-string v2, "1"

    .line 264
    .line 265
    :goto_1
    const-string v3, "spinner_used"

    .line 266
    .line 267
    invoke-virtual {v9, v3, v2}, Lcom/google/android/gms/internal/ads/W7;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    :cond_5
    new-instance v2, Lcom/google/android/gms/internal/ads/Fe;

    .line 271
    .line 272
    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/Fe;-><init>(Lcom/google/android/gms/internal/ads/Ge;)V

    .line 273
    .line 274
    .line 275
    iput-object v2, v0, Lcom/google/android/gms/internal/ads/Ge;->K:Lcom/google/android/gms/internal/ads/Fe;

    .line 276
    .line 277
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/De;->v(Lcom/google/android/gms/internal/ads/Ce;)V

    .line 278
    .line 279
    .line 280
    return-void
.end method


# virtual methods
.method public final a(IIII)V
    .locals 3

    .line 1
    invoke-static {}, Lo3/I;->m()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "Set video bounds to x:"

    .line 8
    .line 9
    const-string v1, ";y:"

    .line 10
    .line 11
    const-string v2, ";w:"

    .line 12
    .line 13
    invoke-static {v0, p1, v1, p2, v2}, LA0/O;->D(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, ";h:"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Lo3/I;->k(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    if-eqz p3, :cond_2

    .line 36
    .line 37
    if-nez p4, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 41
    .line 42
    invoke-direct {v0, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 43
    .line 44
    .line 45
    const/4 p3, 0x0

    .line 46
    invoke-virtual {v0, p1, p2, p3, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Ge;->H:Landroid/widget/FrameLayout;

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 55
    .line 56
    .line 57
    :cond_2
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ge;->G:Lcom/google/android/gms/internal/ads/Oe;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Oe;->zzi()Landroid/app/Activity;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/Ge;->O:Z

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/Ge;->P:Z

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Oe;->zzi()Landroid/app/Activity;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/16 v1, 0x80

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Ge;->O:Z

    .line 33
    .line 34
    :cond_1
    :goto_0
    return-void
.end method

.method public final varargs c(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ge;->M:Lcom/google/android/gms/internal/ads/De;

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/De;->z()Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v2, v1

    .line 17
    :goto_0
    if-eqz v2, :cond_1

    .line 18
    .line 19
    const-string v3, "playerId"

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    :cond_1
    const-string v2, "event"

    .line 29
    .line 30
    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    array-length p1, p2

    .line 34
    const/4 v2, 0x0

    .line 35
    move-object v3, v1

    .line 36
    :goto_1
    if-ge v2, p1, :cond_3

    .line 37
    .line 38
    aget-object v4, p2, v2

    .line 39
    .line 40
    if-nez v3, :cond_2

    .line 41
    .line 42
    move-object v3, v4

    .line 43
    goto :goto_2

    .line 44
    :cond_2
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-object v3, v1

    .line 48
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/Ge;->G:Lcom/google/android/gms/internal/ads/Oe;

    .line 52
    .line 53
    const-string p2, "onVideoEvent"

    .line 54
    .line 55
    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/sa;->w(Ljava/lang/String;Ljava/util/Map;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->K1:Lcom/google/android/gms/internal/ads/J7;

    .line 2
    .line 3
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 4
    .line 5
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ge;->K:Lcom/google/android/gms/internal/ads/Fe;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Fe;->a()V

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    new-array v0, v0, [Ljava/lang/String;

    .line 26
    .line 27
    const-string v1, "ended"

    .line 28
    .line 29
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/Ge;->c(Ljava/lang/String;[Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Ge;->b()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final e()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/String;

    .line 3
    .line 4
    const-string v2, "pause"

    .line 5
    .line 6
    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/internal/ads/Ge;->c(Ljava/lang/String;[Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Ge;->b()V

    .line 10
    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Ge;->N:Z

    .line 13
    .line 14
    return-void
.end method

.method public final f()V
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->K1:Lcom/google/android/gms/internal/ads/J7;

    .line 2
    .line 3
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 4
    .line 5
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ge;->K:Lcom/google/android/gms/internal/ads/Fe;

    .line 21
    .line 22
    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/Fe;->H:Z

    .line 23
    .line 24
    sget-object v2, Lo3/O;->l:Lo3/J;

    .line 25
    .line 26
    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 27
    .line 28
    .line 29
    const-wide/16 v3, 0xfa

    .line 30
    .line 31
    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ge;->G:Lcom/google/android/gms/internal/ads/Oe;

    .line 35
    .line 36
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Oe;->zzi()Landroid/app/Activity;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    const/4 v3, 0x1

    .line 41
    if-nez v2, :cond_1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/Ge;->O:Z

    .line 45
    .line 46
    if-nez v2, :cond_3

    .line 47
    .line 48
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Oe;->zzi()Landroid/app/Activity;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 61
    .line 62
    const/16 v4, 0x80

    .line 63
    .line 64
    and-int/2addr v2, v4

    .line 65
    if-eqz v2, :cond_2

    .line 66
    .line 67
    const/4 v1, 0x1

    .line 68
    :cond_2
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/Ge;->P:Z

    .line 69
    .line 70
    if-nez v1, :cond_3

    .line 71
    .line 72
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/Oe;->zzi()Landroid/app/Activity;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0, v4}, Landroid/view/Window;->addFlags(I)V

    .line 81
    .line 82
    .line 83
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/Ge;->O:Z

    .line 84
    .line 85
    :cond_3
    :goto_0
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/Ge;->N:Z

    .line 86
    .line 87
    return-void
.end method

.method public final finalize()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ge;->K:Lcom/google/android/gms/internal/ads/Fe;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Fe;->a()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ge;->M:Lcom/google/android/gms/internal/ads/De;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    sget-object v1, Lcom/google/android/gms/internal/ads/se;->e:Lcom/google/android/gms/internal/ads/re;

    .line 11
    .line 12
    new-instance v2, Lcom/google/android/gms/internal/ads/Pf;

    .line 13
    .line 14
    const/16 v3, 0xc

    .line 15
    .line 16
    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/ads/Pf;-><init>(Ljava/lang/Object;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/re;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :goto_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 30
    .line 31
    .line 32
    throw v0
.end method

.method public final g()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ge;->M:Lcom/google/android/gms/internal/ads/De;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/Ge;->S:J

    .line 7
    .line 8
    const-wide/16 v3, 0x0

    .line 9
    .line 10
    cmp-long v5, v1, v3

    .line 11
    .line 12
    if-nez v5, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/De;->l()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    int-to-float v1, v1

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/De;->n()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/De;->m()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 28
    .line 29
    div-float/2addr v1, v3

    .line 30
    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    const-string v7, "videoHeight"

    .line 39
    .line 40
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v8

    .line 44
    const-string v3, "duration"

    .line 45
    .line 46
    const-string v5, "videoWidth"

    .line 47
    .line 48
    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const-string v1, "canplaythrough"

    .line 53
    .line 54
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/Ge;->c(Ljava/lang/String;[Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    :goto_0
    return-void
.end method

.method public final h()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ge;->I:Landroid/view/View;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    sget-object v0, Lo3/O;->l:Lo3/J;

    .line 8
    .line 9
    new-instance v1, Lcom/google/android/gms/internal/ads/Ee;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/ads/Ee;-><init>(Lcom/google/android/gms/internal/ads/Ge;I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final i()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Ge;->a0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ge;->V:Landroid/graphics/Bitmap;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ge;->W:Landroid/widget/ImageView;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ge;->V:Landroid/graphics/Bitmap;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ge;->H:Landroid/widget/FrameLayout;

    .line 27
    .line 28
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 29
    .line 30
    const/4 v3, -0x1

    .line 31
    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ge;->K:Lcom/google/android/gms/internal/ads/Fe;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/Fe;->a()V

    .line 43
    .line 44
    .line 45
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/Ge;->R:J

    .line 46
    .line 47
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/Ge;->S:J

    .line 48
    .line 49
    sget-object v0, Lo3/O;->l:Lo3/J;

    .line 50
    .line 51
    new-instance v1, Lcom/google/android/gms/internal/ads/Ee;

    .line 52
    .line 53
    const/4 v2, 0x2

    .line 54
    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/ads/Ee;-><init>(Lcom/google/android/gms/internal/ads/Ge;I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public final j(II)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Ge;->Q:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->E:Lcom/google/android/gms/internal/ads/J7;

    .line 7
    .line 8
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 9
    .line 10
    iget-object v2, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 11
    .line 12
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    check-cast v2, Ljava/lang/Integer;

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    div-int/2addr p1, v2

    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Ljava/lang/Integer;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    div-int/2addr p2, v0

    .line 41
    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ge;->V:Landroid/graphics/Bitmap;

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-ne v0, p1, :cond_2

    .line 54
    .line 55
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ge;->V:Landroid/graphics/Bitmap;

    .line 56
    .line 57
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eq v0, p2, :cond_1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    :goto_0
    return-void

    .line 65
    :cond_2
    :goto_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 66
    .line 67
    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ge;->V:Landroid/graphics/Bitmap;

    .line 72
    .line 73
    const/4 p1, 0x0

    .line 74
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/Ge;->a0:Z

    .line 75
    .line 76
    return-void
.end method

.method public final k()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ge;->M:Lcom/google/android/gms/internal/ads/De;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v2, Landroid/widget/TextView;

    .line 11
    .line 12
    invoke-direct {v2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    sget-object v1, Lk3/l;->A:Lk3/l;

    .line 16
    .line 17
    iget-object v1, v1, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/le;->b()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    const-string v1, "AdMob - "

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const v3, 0x7f1301a1

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/De;->r()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
    const/high16 v0, -0x10000

    .line 51
    .line 52
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 53
    .line 54
    .line 55
    const/16 v0, -0x100

    .line 56
    .line 57
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 58
    .line 59
    .line 60
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 61
    .line 62
    const/4 v1, -0x2

    .line 63
    const/16 v3, 0x11

    .line 64
    .line 65
    invoke-direct {v0, v1, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ge;->H:Landroid/widget/FrameLayout;

    .line 69
    .line 70
    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public final l()V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/Ge;->M:Lcom/google/android/gms/internal/ads/De;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_1

    .line 8
    .line 9
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/De;->j()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    int-to-long v2, v2

    .line 14
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/Ge;->R:J

    .line 15
    .line 16
    cmp-long v6, v4, v2

    .line 17
    .line 18
    if-eqz v6, :cond_2

    .line 19
    .line 20
    const-wide/16 v4, 0x0

    .line 21
    .line 22
    cmp-long v6, v2, v4

    .line 23
    .line 24
    if-lez v6, :cond_2

    .line 25
    .line 26
    long-to-float v4, v2

    .line 27
    sget-object v5, Lcom/google/android/gms/internal/ads/Q7;->I1:Lcom/google/android/gms/internal/ads/J7;

    .line 28
    .line 29
    sget-object v6, Ll3/q;->d:Ll3/q;

    .line 30
    .line 31
    iget-object v6, v6, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 32
    .line 33
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    check-cast v5, Ljava/lang/Boolean;

    .line 38
    .line 39
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    const/high16 v6, 0x447a0000    # 1000.0f

    .line 44
    .line 45
    div-float/2addr v4, v6

    .line 46
    const-string v6, "timeupdate"

    .line 47
    .line 48
    if-eqz v5, :cond_1

    .line 49
    .line 50
    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v8

    .line 54
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/De;->q()J

    .line 55
    .line 56
    .line 57
    move-result-wide v4

    .line 58
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v10

    .line 62
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/De;->o()J

    .line 63
    .line 64
    .line 65
    move-result-wide v4

    .line 66
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v12

    .line 70
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/De;->p()J

    .line 71
    .line 72
    .line 73
    move-result-wide v4

    .line 74
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v14

    .line 78
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/De;->k()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v16

    .line 86
    sget-object v1, Lk3/l;->A:Lk3/l;

    .line 87
    .line 88
    iget-object v1, v1, Lk3/l;->j:LP3/b;

    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 94
    .line 95
    .line 96
    move-result-wide v4

    .line 97
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v18

    .line 101
    const-string v15, "droppedFrames"

    .line 102
    .line 103
    const-string v17, "reportTime"

    .line 104
    .line 105
    const-string v7, "time"

    .line 106
    .line 107
    const-string v9, "totalBytes"

    .line 108
    .line 109
    const-string v11, "qoeCachedBytes"

    .line 110
    .line 111
    const-string v13, "qoeLoadedBytes"

    .line 112
    .line 113
    filled-new-array/range {v7 .. v18}, [Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v0, v6, v1}, Lcom/google/android/gms/internal/ads/Ge;->c(Ljava/lang/String;[Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_1
    const-string v1, "time"

    .line 122
    .line 123
    invoke-static {v4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    filled-new-array {v1, v4}, [Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v0, v6, v1}, Lcom/google/android/gms/internal/ads/Ge;->c(Ljava/lang/String;[Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    :goto_0
    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/Ge;->R:J

    .line 135
    .line 136
    :cond_2
    :goto_1
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Ge;->K:Lcom/google/android/gms/internal/ads/Fe;

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iput-boolean v0, v1, Lcom/google/android/gms/internal/ads/Fe;->H:Z

    .line 10
    .line 11
    sget-object v2, Lo3/O;->l:Lo3/J;

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    const-wide/16 v3, 0xfa

    .line 17
    .line 18
    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Fe;->a()V

    .line 23
    .line 24
    .line 25
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/Ge;->R:J

    .line 26
    .line 27
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/Ge;->S:J

    .line 28
    .line 29
    :goto_0
    sget-object v1, Lo3/O;->l:Lo3/J;

    .line 30
    .line 31
    new-instance v2, Lcom/google/android/gms/internal/ads/Fe;

    .line 32
    .line 33
    invoke-direct {v2, p0, p1, v0}, Lcom/google/android/gms/internal/ads/Fe;-><init>(Lcom/google/android/gms/internal/ads/Ge;ZI)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final onWindowVisibilityChanged(I)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x1

    .line 6
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Ge;->K:Lcom/google/android/gms/internal/ads/Fe;

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    iput-boolean v0, v2, Lcom/google/android/gms/internal/ads/Fe;->H:Z

    .line 11
    .line 12
    sget-object p1, Lo3/O;->l:Lo3/J;

    .line 13
    .line 14
    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    const-wide/16 v3, 0xfa

    .line 18
    .line 19
    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/Fe;->a()V

    .line 25
    .line 26
    .line 27
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/Ge;->R:J

    .line 28
    .line 29
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/Ge;->S:J

    .line 30
    .line 31
    :goto_0
    sget-object p1, Lo3/O;->l:Lo3/J;

    .line 32
    .line 33
    new-instance v2, Lcom/google/android/gms/internal/ads/Fe;

    .line 34
    .line 35
    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/gms/internal/ads/Fe;-><init>(Lcom/google/android/gms/internal/ads/Ge;ZI)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 39
    .line 40
    .line 41
    return-void
.end method
