.class public abstract LC5/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq5/k;


# direct methods
.method public static f([I[IF)F
    .locals 9

    .line 1
    array-length v0, p0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    const/4 v4, 0x0

    .line 6
    :goto_0
    if-ge v2, v0, :cond_0

    .line 7
    .line 8
    aget v5, p0, v2

    .line 9
    .line 10
    add-int/2addr v3, v5

    .line 11
    aget v5, p1, v2

    .line 12
    .line 13
    add-int/2addr v4, v5

    .line 14
    add-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 18
    .line 19
    if-ge v3, v4, :cond_1

    .line 20
    .line 21
    return v2

    .line 22
    :cond_1
    int-to-float v3, v3

    .line 23
    int-to-float v4, v4

    .line 24
    div-float v4, v3, v4

    .line 25
    .line 26
    mul-float p2, p2, v4

    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    :goto_1
    if-ge v1, v0, :cond_4

    .line 30
    .line 31
    aget v6, p0, v1

    .line 32
    .line 33
    aget v7, p1, v1

    .line 34
    .line 35
    int-to-float v7, v7

    .line 36
    mul-float v7, v7, v4

    .line 37
    .line 38
    int-to-float v6, v6

    .line 39
    cmpl-float v8, v6, v7

    .line 40
    .line 41
    if-lez v8, :cond_2

    .line 42
    .line 43
    sub-float/2addr v6, v7

    .line 44
    goto :goto_2

    .line 45
    :cond_2
    sub-float v6, v7, v6

    .line 46
    .line 47
    :goto_2
    cmpl-float v7, v6, p2

    .line 48
    .line 49
    if-lez v7, :cond_3

    .line 50
    .line 51
    return v2

    .line 52
    :cond_3
    add-float/2addr v5, v6

    .line 53
    add-int/lit8 v1, v1, 0x1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_4
    div-float/2addr v5, v3

    .line 57
    return v5
.end method

.method public static g(ILw5/a;[I)V
    .locals 6

    .line 1
    array-length v0, p2

    .line 2
    const/4 v1, 0x0

    .line 3
    invoke-static {p2, v1, v0, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 4
    .line 5
    .line 6
    iget v2, p1, Lw5/a;->H:I

    .line 7
    .line 8
    if-ge p0, v2, :cond_4

    .line 9
    .line 10
    invoke-virtual {p1, p0}, Lw5/a;->d(I)Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    const/4 v4, 0x1

    .line 15
    xor-int/2addr v3, v4

    .line 16
    :goto_0
    if-ge p0, v2, :cond_1

    .line 17
    .line 18
    invoke-virtual {p1, p0}, Lw5/a;->d(I)Z

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    if-eq v5, v3, :cond_0

    .line 23
    .line 24
    aget v5, p2, v1

    .line 25
    .line 26
    add-int/2addr v5, v4

    .line 27
    aput v5, p2, v1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    if-eq v1, v0, :cond_1

    .line 33
    .line 34
    aput v4, p2, v1

    .line 35
    .line 36
    xor-int/lit8 v3, v3, 0x1

    .line 37
    .line 38
    :goto_1
    add-int/lit8 p0, p0, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    if-eq v1, v0, :cond_3

    .line 42
    .line 43
    sub-int/2addr v0, v4

    .line 44
    if-ne v1, v0, :cond_2

    .line 45
    .line 46
    if-ne p0, v2, :cond_2

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    sget-object p0, Lq5/i;->I:Lq5/i;

    .line 50
    .line 51
    throw p0

    .line 52
    :cond_3
    :goto_2
    return-void

    .line 53
    :cond_4
    sget-object p0, Lq5/i;->I:Lq5/i;

    .line 54
    .line 55
    throw p0
.end method

.method public static h(ILw5/a;[I)V
    .locals 3

    .line 1
    array-length v0, p2

    .line 2
    invoke-virtual {p1, p0}, Lw5/a;->d(I)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    :cond_0
    :goto_0
    if-lez p0, :cond_1

    .line 7
    .line 8
    if-ltz v0, :cond_1

    .line 9
    .line 10
    add-int/lit8 p0, p0, -0x1

    .line 11
    .line 12
    invoke-virtual {p1, p0}, Lw5/a;->d(I)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eq v2, v1, :cond_0

    .line 17
    .line 18
    add-int/lit8 v0, v0, -0x1

    .line 19
    .line 20
    xor-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    if-gez v0, :cond_2

    .line 24
    .line 25
    add-int/lit8 p0, p0, 0x1

    .line 26
    .line 27
    invoke-static {p0, p1, p2}, LC5/j;->g(ILw5/a;[I)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    sget-object p0, Lq5/i;->I:Lq5/i;

    .line 32
    .line 33
    throw p0
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public b(Lm2/l;)Lq5/m;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, LC5/j;->c(Lm2/l;Ljava/util/Map;)Lq5/m;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public c(Lm2/l;Ljava/util/Map;)Lq5/m;
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, LC5/j;->e(Lm2/l;Ljava/util/Map;)Lq5/m;

    .line 2
    .line 3
    .line 4
    move-result-object p1
    :try_end_0
    .catch Lq5/i; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p1

    .line 6
    :catch_0
    move-exception v0

    .line 7
    if-eqz p2, :cond_2

    .line 8
    .line 9
    sget-object v1, Lq5/c;->J:Lq5/c;

    .line 10
    .line 11
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    iget-object v1, p1, Lm2/l;->H:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Lc1/d;

    .line 20
    .line 21
    iget-object v1, v1, Lc1/d;->G:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v1, Lq5/g;

    .line 24
    .line 25
    invoke-virtual {v1}, Lq5/g;->c()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    iget-object v0, p1, Lm2/l;->H:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v0, Lc1/d;

    .line 34
    .line 35
    iget-object v0, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v0, Lq5/g;

    .line 38
    .line 39
    invoke-virtual {v0}, Lq5/g;->d()Lq5/g;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    new-instance v1, Lm2/l;

    .line 44
    .line 45
    iget-object p1, p1, Lm2/l;->H:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p1, Lc1/d;

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Lc1/d;->f(Lq5/g;)Lw5/e;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-direct {v1, p1}, Lm2/l;-><init>(Lc1/d;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v1, p2}, LC5/j;->e(Lm2/l;Ljava/util/Map;)Lq5/m;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iget-object p2, p1, Lq5/m;->e:Ljava/util/Map;

    .line 61
    .line 62
    sget-object v0, Lq5/n;->G:Lq5/n;

    .line 63
    .line 64
    const/16 v2, 0x10e

    .line 65
    .line 66
    if-eqz p2, :cond_0

    .line 67
    .line 68
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_0

    .line 73
    .line 74
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    check-cast p2, Ljava/lang/Integer;

    .line 79
    .line 80
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    add-int/2addr p2, v2

    .line 85
    rem-int/lit16 v2, p2, 0x168

    .line 86
    .line 87
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-virtual {p1, v0, p2}, Lq5/m;->b(Lq5/n;Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    iget-object p2, p1, Lq5/m;->c:[Lq5/o;

    .line 95
    .line 96
    if-eqz p2, :cond_1

    .line 97
    .line 98
    iget-object v0, v1, Lm2/l;->H:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v0, Lc1/d;

    .line 101
    .line 102
    iget-object v0, v0, Lc1/d;->G:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v0, Lq5/g;

    .line 105
    .line 106
    iget v0, v0, Lq5/g;->b:I

    .line 107
    .line 108
    const/4 v1, 0x0

    .line 109
    :goto_0
    array-length v2, p2

    .line 110
    if-ge v1, v2, :cond_1

    .line 111
    .line 112
    new-instance v2, Lq5/o;

    .line 113
    .line 114
    int-to-float v3, v0

    .line 115
    aget-object v4, p2, v1

    .line 116
    .line 117
    iget v5, v4, Lq5/o;->b:F

    .line 118
    .line 119
    sub-float/2addr v3, v5

    .line 120
    const/high16 v5, 0x3f800000    # 1.0f

    .line 121
    .line 122
    sub-float/2addr v3, v5

    .line 123
    iget v4, v4, Lq5/o;->a:F

    .line 124
    .line 125
    invoke-direct {v2, v3, v4}, Lq5/o;-><init>(FF)V

    .line 126
    .line 127
    .line 128
    aput-object v2, p2, v1

    .line 129
    .line 130
    add-int/lit8 v1, v1, 0x1

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_1
    return-object p1

    .line 134
    :cond_2
    throw v0
.end method

.method public abstract d(ILw5/a;Ljava/util/Map;)Lq5/m;
.end method

.method public final e(Lm2/l;Ljava/util/Map;)Lq5/m;
    .locals 18

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    iget-object v2, v0, Lm2/l;->H:Ljava/lang/Object;

    .line 6
    .line 7
    move-object v3, v2

    .line 8
    check-cast v3, Lc1/d;

    .line 9
    .line 10
    iget-object v3, v3, Lc1/d;->G:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v3, Lq5/g;

    .line 13
    .line 14
    iget v3, v3, Lq5/g;->a:I

    .line 15
    .line 16
    check-cast v2, Lc1/d;

    .line 17
    .line 18
    iget-object v2, v2, Lc1/d;->G:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v2, Lq5/g;

    .line 21
    .line 22
    iget v2, v2, Lq5/g;->b:I

    .line 23
    .line 24
    new-instance v4, Lw5/a;

    .line 25
    .line 26
    invoke-direct {v4, v3}, Lw5/a;-><init>(I)V

    .line 27
    .line 28
    .line 29
    const/4 v5, 0x1

    .line 30
    const/4 v6, 0x0

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    sget-object v7, Lq5/c;->J:Lq5/c;

    .line 34
    .line 35
    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    if-eqz v7, :cond_0

    .line 40
    .line 41
    const/4 v7, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 v7, 0x0

    .line 44
    :goto_0
    if-eqz v7, :cond_1

    .line 45
    .line 46
    const/16 v8, 0x8

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    const/4 v8, 0x5

    .line 50
    :goto_1
    shr-int v8, v2, v8

    .line 51
    .line 52
    invoke-static {v5, v8}, Ljava/lang/Math;->max(II)I

    .line 53
    .line 54
    .line 55
    move-result v8

    .line 56
    if-eqz v7, :cond_2

    .line 57
    .line 58
    move v7, v2

    .line 59
    goto :goto_2

    .line 60
    :cond_2
    const/16 v7, 0xf

    .line 61
    .line 62
    :goto_2
    div-int/lit8 v9, v2, 0x2

    .line 63
    .line 64
    const/4 v10, 0x0

    .line 65
    :goto_3
    if-ge v10, v7, :cond_7

    .line 66
    .line 67
    add-int/lit8 v11, v10, 0x1

    .line 68
    .line 69
    div-int/lit8 v12, v11, 0x2

    .line 70
    .line 71
    and-int/lit8 v10, v10, 0x1

    .line 72
    .line 73
    if-nez v10, :cond_3

    .line 74
    .line 75
    goto :goto_4

    .line 76
    :cond_3
    neg-int v12, v12

    .line 77
    :goto_4
    mul-int v12, v12, v8

    .line 78
    .line 79
    add-int/2addr v12, v9

    .line 80
    if-ltz v12, :cond_7

    .line 81
    .line 82
    if-ge v12, v2, :cond_7

    .line 83
    .line 84
    :try_start_0
    iget-object v10, v0, Lm2/l;->H:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v10, Lc1/d;

    .line 87
    .line 88
    invoke-virtual {v10, v12, v4}, Lc1/d;->h(ILw5/a;)Lw5/a;

    .line 89
    .line 90
    .line 91
    move-result-object v4
    :try_end_0
    .catch Lq5/i; {:try_start_0 .. :try_end_0} :catch_3

    .line 92
    const/4 v10, 0x0

    .line 93
    :goto_5
    const/4 v13, 0x2

    .line 94
    if-ge v10, v13, :cond_6

    .line 95
    .line 96
    if-ne v10, v5, :cond_4

    .line 97
    .line 98
    invoke-virtual {v4}, Lw5/a;->i()V

    .line 99
    .line 100
    .line 101
    if-eqz v1, :cond_4

    .line 102
    .line 103
    sget-object v13, Lq5/c;->P:Lq5/c;

    .line 104
    .line 105
    invoke-interface {v1, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v14

    .line 109
    if-eqz v14, :cond_4

    .line 110
    .line 111
    new-instance v14, Ljava/util/EnumMap;

    .line 112
    .line 113
    const-class v15, Lq5/c;

    .line 114
    .line 115
    invoke-direct {v14, v15}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v14, v1}, Ljava/util/EnumMap;->putAll(Ljava/util/Map;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v14, v13}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-object/from16 v13, p0

    .line 125
    .line 126
    move-object v1, v14

    .line 127
    goto :goto_6

    .line 128
    :cond_4
    move-object/from16 v13, p0

    .line 129
    .line 130
    :goto_6
    :try_start_1
    invoke-virtual {v13, v12, v4, v1}, LC5/j;->d(ILw5/a;Ljava/util/Map;)Lq5/m;

    .line 131
    .line 132
    .line 133
    move-result-object v14

    .line 134
    if-ne v10, v5, :cond_5

    .line 135
    .line 136
    sget-object v15, Lq5/n;->G:Lq5/n;

    .line 137
    .line 138
    const/16 v16, 0xb4

    .line 139
    .line 140
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    .line 142
    .line 143
    move-result-object v5

    .line 144
    invoke-virtual {v14, v15, v5}, Lq5/m;->b(Lq5/n;Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    iget-object v5, v14, Lq5/m;->c:[Lq5/o;

    .line 148
    .line 149
    if-eqz v5, :cond_5

    .line 150
    .line 151
    new-instance v15, Lq5/o;
    :try_end_1
    .catch Lq5/l; {:try_start_1 .. :try_end_1} :catch_1

    .line 152
    .line 153
    int-to-float v0, v3

    .line 154
    move-object/from16 v16, v1

    .line 155
    .line 156
    :try_start_2
    aget-object v1, v5, v6

    .line 157
    .line 158
    iget v6, v1, Lq5/o;->a:F

    .line 159
    .line 160
    sub-float v6, v0, v6

    .line 161
    .line 162
    const/high16 v17, 0x3f800000    # 1.0f

    .line 163
    .line 164
    sub-float v6, v6, v17

    .line 165
    .line 166
    iget v1, v1, Lq5/o;->b:F

    .line 167
    .line 168
    invoke-direct {v15, v6, v1}, Lq5/o;-><init>(FF)V

    .line 169
    .line 170
    .line 171
    const/4 v6, 0x0

    .line 172
    aput-object v15, v5, v6

    .line 173
    .line 174
    new-instance v1, Lq5/o;

    .line 175
    .line 176
    const/4 v15, 0x1

    .line 177
    aget-object v6, v5, v15

    .line 178
    .line 179
    iget v15, v6, Lq5/o;->a:F

    .line 180
    .line 181
    sub-float/2addr v0, v15

    .line 182
    sub-float v0, v0, v17

    .line 183
    .line 184
    iget v6, v6, Lq5/o;->b:F

    .line 185
    .line 186
    invoke-direct {v1, v0, v6}, Lq5/o;-><init>(FF)V
    :try_end_2
    .catch Lq5/l; {:try_start_2 .. :try_end_2} :catch_0

    .line 187
    .line 188
    .line 189
    const/4 v0, 0x1

    .line 190
    :try_start_3
    aput-object v1, v5, v0
    :try_end_3
    .catch Lq5/l; {:try_start_3 .. :try_end_3} :catch_2

    .line 191
    .line 192
    goto :goto_8

    .line 193
    :catch_0
    :goto_7
    const/4 v0, 0x1

    .line 194
    goto :goto_9

    .line 195
    :catch_1
    move-object/from16 v16, v1

    .line 196
    .line 197
    goto :goto_7

    .line 198
    :cond_5
    :goto_8
    return-object v14

    .line 199
    :catch_2
    :goto_9
    add-int/lit8 v10, v10, 0x1

    .line 200
    .line 201
    move-object/from16 v0, p1

    .line 202
    .line 203
    move-object/from16 v1, v16

    .line 204
    .line 205
    const/4 v5, 0x1

    .line 206
    const/4 v6, 0x0

    .line 207
    goto :goto_5

    .line 208
    :cond_6
    move-object/from16 v13, p0

    .line 209
    .line 210
    const/4 v0, 0x1

    .line 211
    goto :goto_a

    .line 212
    :catch_3
    move-object/from16 v13, p0

    .line 213
    .line 214
    const/4 v0, 0x1

    .line 215
    nop

    .line 216
    :goto_a
    move-object/from16 v0, p1

    .line 217
    .line 218
    move v10, v11

    .line 219
    const/4 v5, 0x1

    .line 220
    const/4 v6, 0x0

    .line 221
    goto/16 :goto_3

    .line 222
    .line 223
    :cond_7
    move-object/from16 v13, p0

    .line 224
    .line 225
    sget-object v0, Lq5/i;->I:Lq5/i;

    .line 226
    .line 227
    throw v0
.end method
