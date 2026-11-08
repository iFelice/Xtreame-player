.class public final LD1/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD1/P;


# instance fields
.field public final a:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, LD1/f;->a:Landroid/content/res/Resources;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a(Lm0/t;)Ljava/lang/String;
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/String;

    .line 3
    .line 4
    iget-object v1, p1, Lm0/t;->d:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const/4 v3, 0x1

    .line 11
    const-string v4, ""

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    if-nez v2, :cond_2

    .line 15
    .line 16
    const-string v2, "und"

    .line 17
    .line 18
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    invoke-static {v1}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    sget-object v2, Lp0/M;->a:Ljava/lang/String;

    .line 30
    .line 31
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 32
    .line 33
    const/16 v6, 0x18

    .line 34
    .line 35
    if-lt v2, v6, :cond_1

    .line 36
    .line 37
    invoke-static {}, Lh2/a;->c()Ljava/util/Locale$Category;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {v2}, Lh2/a;->d(Ljava/util/Locale$Category;)Ljava/util/Locale;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    :goto_0
    invoke-virtual {v1, v2}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    if-eqz v6, :cond_3

    .line 59
    .line 60
    :cond_2
    :goto_1
    move-object v1, v4

    .line 61
    goto :goto_2

    .line 62
    :cond_3
    :try_start_0
    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->offsetByCodePoints(II)I

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    new-instance v7, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    invoke-virtual {v8, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    goto :goto_2

    .line 94
    :catch_0
    nop

    .line 95
    :goto_2
    aput-object v1, v0, v5

    .line 96
    .line 97
    invoke-virtual {p0, p1}, LD1/f;->b(Lm0/t;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    aput-object v1, v0, v3

    .line 102
    .line 103
    invoke-virtual {p0, v0}, LD1/f;->d([Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-eqz v1, :cond_5

    .line 112
    .line 113
    iget-object p1, p1, Lm0/t;->b:Ljava/lang/String;

    .line 114
    .line 115
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_4

    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_4
    move-object v4, p1

    .line 123
    :goto_3
    move-object v0, v4

    .line 124
    :cond_5
    return-object v0
.end method

.method public final b(Lm0/t;)Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p1, Lm0/t;->f:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iget-object v1, p0, LD1/f;->a:Landroid/content/res/Resources;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const v0, 0x7f1300cf

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string v0, ""

    .line 18
    .line 19
    :goto_0
    iget p1, p1, Lm0/t;->f:I

    .line 20
    .line 21
    and-int/lit8 v2, p1, 0x4

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    const v2, 0x7f1300d2

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    filled-new-array {v0, v2}, [Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p0, v0}, LD1/f;->d([Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    :cond_1
    and-int/lit8 v2, p1, 0x8

    .line 41
    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    const v2, 0x7f1300d1

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    filled-new-array {v0, v2}, [Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p0, v0}, LD1/f;->d([Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    :cond_2
    and-int/lit16 p1, p1, 0x440

    .line 60
    .line 61
    if-eqz p1, :cond_3

    .line 62
    .line 63
    const p1, 0x7f1300d0

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    filled-new-array {v0, p1}, [Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p0, p1}, LD1/f;->d([Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    :cond_3
    return-object v0
.end method

.method public final c(Lm0/t;)Ljava/lang/String;
    .locals 14

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    iget-object v3, p1, Lm0/t;->o:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {v3}, Lm0/O;->i(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    const/4 v4, -0x1

    .line 11
    iget v5, p1, Lm0/t;->G:I

    .line 12
    .line 13
    iget v6, p1, Lm0/t;->w:I

    .line 14
    .line 15
    iget v7, p1, Lm0/t;->v:I

    .line 16
    .line 17
    if-eq v3, v4, :cond_0

    .line 18
    .line 19
    goto :goto_2

    .line 20
    :cond_0
    iget-object v3, p1, Lm0/t;->k:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v3}, Lm0/O;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v8

    .line 26
    if-eqz v8, :cond_2

    .line 27
    .line 28
    :cond_1
    :goto_0
    const/4 v3, 0x2

    .line 29
    goto :goto_2

    .line 30
    :cond_2
    invoke-static {v3}, Lm0/O;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    if-eqz v3, :cond_4

    .line 35
    .line 36
    :cond_3
    :goto_1
    const/4 v3, 0x1

    .line 37
    goto :goto_2

    .line 38
    :cond_4
    if-ne v7, v4, :cond_1

    .line 39
    .line 40
    if-eq v6, v4, :cond_5

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_5
    if-ne v5, v4, :cond_3

    .line 44
    .line 45
    iget v3, p1, Lm0/t;->H:I

    .line 46
    .line 47
    if-eq v3, v4, :cond_6

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_6
    const/4 v3, -0x1

    .line 51
    :goto_2
    const v8, 0x7f1300cc

    .line 52
    .line 53
    .line 54
    const v9, 0x49742400    # 1000000.0f

    .line 55
    .line 56
    .line 57
    iget-object v10, p0, LD1/f;->a:Landroid/content/res/Resources;

    .line 58
    .line 59
    const-string v11, ""

    .line 60
    .line 61
    iget v12, p1, Lm0/t;->j:I

    .line 62
    .line 63
    const/4 v13, 0x3

    .line 64
    if-ne v3, v0, :cond_a

    .line 65
    .line 66
    new-array v3, v13, [Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {p0, p1}, LD1/f;->b(Lm0/t;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    aput-object v5, v3, v1

    .line 73
    .line 74
    if-eq v7, v4, :cond_8

    .line 75
    .line 76
    if-ne v6, v4, :cond_7

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_7
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    new-array v7, v0, [Ljava/lang/Object;

    .line 88
    .line 89
    aput-object v5, v7, v1

    .line 90
    .line 91
    aput-object v6, v7, v2

    .line 92
    .line 93
    const v5, 0x7f1300ce

    .line 94
    .line 95
    .line 96
    invoke-virtual {v10, v5, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    goto :goto_4

    .line 101
    :cond_8
    :goto_3
    move-object v5, v11

    .line 102
    :goto_4
    aput-object v5, v3, v2

    .line 103
    .line 104
    if-ne v12, v4, :cond_9

    .line 105
    .line 106
    goto :goto_5

    .line 107
    :cond_9
    int-to-float v4, v12

    .line 108
    div-float/2addr v4, v9

    .line 109
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    new-array v5, v2, [Ljava/lang/Object;

    .line 114
    .line 115
    aput-object v4, v5, v1

    .line 116
    .line 117
    invoke-virtual {v10, v8, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v11

    .line 121
    :goto_5
    aput-object v11, v3, v0

    .line 122
    .line 123
    invoke-virtual {p0, v3}, LD1/f;->d([Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    goto/16 :goto_9

    .line 128
    .line 129
    :cond_a
    if-ne v3, v2, :cond_12

    .line 130
    .line 131
    new-array v3, v13, [Ljava/lang/String;

    .line 132
    .line 133
    invoke-virtual {p0, p1}, LD1/f;->a(Lm0/t;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    aput-object v6, v3, v1

    .line 138
    .line 139
    if-eq v5, v4, :cond_10

    .line 140
    .line 141
    if-ge v5, v2, :cond_b

    .line 142
    .line 143
    goto :goto_6

    .line 144
    :cond_b
    if-eq v5, v2, :cond_f

    .line 145
    .line 146
    if-eq v5, v0, :cond_e

    .line 147
    .line 148
    const/4 v6, 0x6

    .line 149
    if-eq v5, v6, :cond_d

    .line 150
    .line 151
    const/4 v6, 0x7

    .line 152
    if-eq v5, v6, :cond_d

    .line 153
    .line 154
    const/16 v6, 0x8

    .line 155
    .line 156
    if-eq v5, v6, :cond_c

    .line 157
    .line 158
    const v5, 0x7f1300d7

    .line 159
    .line 160
    .line 161
    invoke-virtual {v10, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    goto :goto_7

    .line 166
    :cond_c
    const v5, 0x7f1300d9

    .line 167
    .line 168
    .line 169
    invoke-virtual {v10, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v5

    .line 173
    goto :goto_7

    .line 174
    :cond_d
    const v5, 0x7f1300d8

    .line 175
    .line 176
    .line 177
    invoke-virtual {v10, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    goto :goto_7

    .line 182
    :cond_e
    const v5, 0x7f1300d6

    .line 183
    .line 184
    .line 185
    invoke-virtual {v10, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v5

    .line 189
    goto :goto_7

    .line 190
    :cond_f
    const v5, 0x7f1300cd

    .line 191
    .line 192
    .line 193
    invoke-virtual {v10, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v5

    .line 197
    goto :goto_7

    .line 198
    :cond_10
    :goto_6
    move-object v5, v11

    .line 199
    :goto_7
    aput-object v5, v3, v2

    .line 200
    .line 201
    if-ne v12, v4, :cond_11

    .line 202
    .line 203
    goto :goto_8

    .line 204
    :cond_11
    int-to-float v4, v12

    .line 205
    div-float/2addr v4, v9

    .line 206
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 207
    .line 208
    .line 209
    move-result-object v4

    .line 210
    new-array v5, v2, [Ljava/lang/Object;

    .line 211
    .line 212
    aput-object v4, v5, v1

    .line 213
    .line 214
    invoke-virtual {v10, v8, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v11

    .line 218
    :goto_8
    aput-object v11, v3, v0

    .line 219
    .line 220
    invoke-virtual {p0, v3}, LD1/f;->d([Ljava/lang/String;)Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    goto :goto_9

    .line 225
    :cond_12
    invoke-virtual {p0, p1}, LD1/f;->a(Lm0/t;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    :goto_9
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 230
    .line 231
    .line 232
    move-result v3

    .line 233
    if-nez v3, :cond_13

    .line 234
    .line 235
    return-object v0

    .line 236
    :cond_13
    iget-object p1, p1, Lm0/t;->d:Ljava/lang/String;

    .line 237
    .line 238
    if-eqz p1, :cond_15

    .line 239
    .line 240
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 245
    .line 246
    .line 247
    move-result v0

    .line 248
    if-eqz v0, :cond_14

    .line 249
    .line 250
    goto :goto_a

    .line 251
    :cond_14
    const v0, 0x7f1300db

    .line 252
    .line 253
    .line 254
    new-array v2, v2, [Ljava/lang/Object;

    .line 255
    .line 256
    aput-object p1, v2, v1

    .line 257
    .line 258
    invoke-virtual {v10, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    goto :goto_b

    .line 263
    :cond_15
    :goto_a
    const p1, 0x7f1300da

    .line 264
    .line 265
    .line 266
    invoke-virtual {v10, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    :goto_b
    return-object p1
.end method

.method public final varargs d([Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    array-length v1, p1

    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    :goto_0
    if-ge v4, v1, :cond_2

    .line 8
    .line 9
    aget-object v5, p1, v4

    .line 10
    .line 11
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v6

    .line 15
    if-nez v6, :cond_1

    .line 16
    .line 17
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    if-eqz v6, :cond_0

    .line 22
    .line 23
    move-object v2, v5

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    const/4 v6, 0x2

    .line 26
    new-array v6, v6, [Ljava/lang/Object;

    .line 27
    .line 28
    aput-object v2, v6, v3

    .line 29
    .line 30
    aput-object v5, v6, v0

    .line 31
    .line 32
    iget-object v2, p0, LD1/f;->a:Landroid/content/res/Resources;

    .line 33
    .line 34
    const v5, 0x7f1300cb

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    :cond_1
    :goto_1
    add-int/2addr v4, v0

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    return-object v2
.end method
