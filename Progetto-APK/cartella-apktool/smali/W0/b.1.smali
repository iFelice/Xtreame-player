.class public final LW0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I


# virtual methods
.method public final a(I)Z
    .locals 8

    .line 1
    const/high16 v0, -0x200000

    .line 2
    .line 3
    and-int v1, p1, v0

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    if-ne v1, v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    if-nez v0, :cond_1

    .line 13
    .line 14
    return v2

    .line 15
    :cond_1
    ushr-int/lit8 v0, p1, 0x13

    .line 16
    .line 17
    const/4 v1, 0x3

    .line 18
    and-int/2addr v0, v1

    .line 19
    if-ne v0, v3, :cond_2

    .line 20
    .line 21
    return v2

    .line 22
    :cond_2
    ushr-int/lit8 v4, p1, 0x11

    .line 23
    .line 24
    and-int/2addr v4, v1

    .line 25
    if-nez v4, :cond_3

    .line 26
    .line 27
    return v2

    .line 28
    :cond_3
    ushr-int/lit8 v5, p1, 0xc

    .line 29
    .line 30
    const/16 v6, 0xf

    .line 31
    .line 32
    and-int/2addr v5, v6

    .line 33
    if-eqz v5, :cond_12

    .line 34
    .line 35
    if-ne v5, v6, :cond_4

    .line 36
    .line 37
    goto/16 :goto_6

    .line 38
    .line 39
    :cond_4
    ushr-int/lit8 v6, p1, 0xa

    .line 40
    .line 41
    and-int/2addr v6, v1

    .line 42
    if-ne v6, v1, :cond_5

    .line 43
    .line 44
    return v2

    .line 45
    :cond_5
    iput v0, p0, LW0/b;->a:I

    .line 46
    .line 47
    sget-object v2, LW0/a;->s:[Ljava/lang/String;

    .line 48
    .line 49
    rsub-int/lit8 v7, v4, 0x3

    .line 50
    .line 51
    aget-object v2, v2, v7

    .line 52
    .line 53
    iput-object v2, p0, LW0/b;->b:Ljava/lang/String;

    .line 54
    .line 55
    sget-object v2, LW0/a;->t:[I

    .line 56
    .line 57
    aget v2, v2, v6

    .line 58
    .line 59
    iput v2, p0, LW0/b;->d:I

    .line 60
    .line 61
    const/4 v6, 0x2

    .line 62
    if-ne v0, v6, :cond_6

    .line 63
    .line 64
    div-int/2addr v2, v6

    .line 65
    iput v2, p0, LW0/b;->d:I

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_6
    if-nez v0, :cond_7

    .line 69
    .line 70
    div-int/lit8 v2, v2, 0x4

    .line 71
    .line 72
    iput v2, p0, LW0/b;->d:I

    .line 73
    .line 74
    :cond_7
    :goto_1
    ushr-int/lit8 v2, p1, 0x9

    .line 75
    .line 76
    and-int/2addr v2, v3

    .line 77
    const/16 v7, 0x480

    .line 78
    .line 79
    if-eq v4, v3, :cond_9

    .line 80
    .line 81
    if-eq v4, v6, :cond_b

    .line 82
    .line 83
    if-ne v4, v1, :cond_8

    .line 84
    .line 85
    const/16 v7, 0x180

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 89
    .line 90
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 91
    .line 92
    .line 93
    throw p1

    .line 94
    :cond_9
    if-ne v0, v1, :cond_a

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_a
    const/16 v7, 0x240

    .line 98
    .line 99
    :cond_b
    :goto_2
    iput v7, p0, LW0/b;->g:I

    .line 100
    .line 101
    if-ne v4, v1, :cond_d

    .line 102
    .line 103
    if-ne v0, v1, :cond_c

    .line 104
    .line 105
    sget-object v0, LW0/a;->u:[I

    .line 106
    .line 107
    sub-int/2addr v5, v3

    .line 108
    aget v0, v0, v5

    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_c
    sget-object v0, LW0/a;->v:[I

    .line 112
    .line 113
    sub-int/2addr v5, v3

    .line 114
    aget v0, v0, v5

    .line 115
    .line 116
    :goto_3
    iput v0, p0, LW0/b;->f:I

    .line 117
    .line 118
    mul-int/lit8 v0, v0, 0xc

    .line 119
    .line 120
    iget v4, p0, LW0/b;->d:I

    .line 121
    .line 122
    div-int/2addr v0, v4

    .line 123
    add-int/2addr v0, v2

    .line 124
    mul-int/lit8 v0, v0, 0x4

    .line 125
    .line 126
    iput v0, p0, LW0/b;->c:I

    .line 127
    .line 128
    goto :goto_5

    .line 129
    :cond_d
    const/16 v7, 0x90

    .line 130
    .line 131
    if-ne v0, v1, :cond_f

    .line 132
    .line 133
    if-ne v4, v6, :cond_e

    .line 134
    .line 135
    sget-object v0, LW0/a;->w:[I

    .line 136
    .line 137
    sub-int/2addr v5, v3

    .line 138
    aget v0, v0, v5

    .line 139
    .line 140
    goto :goto_4

    .line 141
    :cond_e
    sget-object v0, LW0/a;->x:[I

    .line 142
    .line 143
    sub-int/2addr v5, v3

    .line 144
    aget v0, v0, v5

    .line 145
    .line 146
    :goto_4
    iput v0, p0, LW0/b;->f:I

    .line 147
    .line 148
    mul-int/lit16 v0, v0, 0x90

    .line 149
    .line 150
    iget v4, p0, LW0/b;->d:I

    .line 151
    .line 152
    div-int/2addr v0, v4

    .line 153
    add-int/2addr v0, v2

    .line 154
    iput v0, p0, LW0/b;->c:I

    .line 155
    .line 156
    goto :goto_5

    .line 157
    :cond_f
    sget-object v0, LW0/a;->y:[I

    .line 158
    .line 159
    sub-int/2addr v5, v3

    .line 160
    aget v0, v0, v5

    .line 161
    .line 162
    iput v0, p0, LW0/b;->f:I

    .line 163
    .line 164
    if-ne v4, v3, :cond_10

    .line 165
    .line 166
    const/16 v7, 0x48

    .line 167
    .line 168
    :cond_10
    mul-int v7, v7, v0

    .line 169
    .line 170
    iget v0, p0, LW0/b;->d:I

    .line 171
    .line 172
    div-int/2addr v7, v0

    .line 173
    add-int/2addr v7, v2

    .line 174
    iput v7, p0, LW0/b;->c:I

    .line 175
    .line 176
    :goto_5
    shr-int/lit8 p1, p1, 0x6

    .line 177
    .line 178
    and-int/2addr p1, v1

    .line 179
    if-ne p1, v1, :cond_11

    .line 180
    .line 181
    const/4 v6, 0x1

    .line 182
    :cond_11
    iput v6, p0, LW0/b;->e:I

    .line 183
    .line 184
    return v3

    .line 185
    :cond_12
    :goto_6
    return v2
.end method

.method public final b(I)Z
    .locals 9

    .line 1
    const/high16 v0, -0x200000

    .line 2
    .line 3
    and-int v1, p1, v0

    .line 4
    .line 5
    if-ne v1, v0, :cond_b

    .line 6
    .line 7
    ushr-int/lit8 v0, p1, 0x13

    .line 8
    .line 9
    const/4 v1, 0x3

    .line 10
    and-int/2addr v0, v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eq v0, v2, :cond_b

    .line 13
    .line 14
    ushr-int/lit8 v3, p1, 0x11

    .line 15
    .line 16
    and-int/2addr v3, v1

    .line 17
    if-eqz v3, :cond_b

    .line 18
    .line 19
    ushr-int/lit8 v4, p1, 0xc

    .line 20
    .line 21
    const/16 v5, 0xf

    .line 22
    .line 23
    and-int/2addr v4, v5

    .line 24
    if-eqz v4, :cond_b

    .line 25
    .line 26
    if-eq v4, v5, :cond_b

    .line 27
    .line 28
    ushr-int/lit8 v5, p1, 0xa

    .line 29
    .line 30
    and-int/2addr v5, v1

    .line 31
    if-eq v5, v1, :cond_b

    .line 32
    .line 33
    add-int/lit8 v4, v4, -0x1

    .line 34
    .line 35
    iput v0, p0, LW0/b;->a:I

    .line 36
    .line 37
    rsub-int/lit8 v6, v3, 0x3

    .line 38
    .line 39
    sget-object v7, Lcom/google/android/gms/internal/ads/nH;->s:[Ljava/lang/String;

    .line 40
    .line 41
    aget-object v6, v7, v6

    .line 42
    .line 43
    iput-object v6, p0, LW0/b;->b:Ljava/lang/String;

    .line 44
    .line 45
    sget-object v6, Lcom/google/android/gms/internal/ads/nH;->t:[I

    .line 46
    .line 47
    aget v5, v6, v5

    .line 48
    .line 49
    iput v5, p0, LW0/b;->d:I

    .line 50
    .line 51
    const/4 v6, 0x2

    .line 52
    if-ne v0, v6, :cond_0

    .line 53
    .line 54
    div-int/lit8 v5, v5, 0x2

    .line 55
    .line 56
    iput v5, p0, LW0/b;->d:I

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    if-nez v0, :cond_1

    .line 60
    .line 61
    div-int/lit8 v5, v5, 0x4

    .line 62
    .line 63
    iput v5, p0, LW0/b;->d:I

    .line 64
    .line 65
    :cond_1
    :goto_0
    ushr-int/lit8 v7, p1, 0x9

    .line 66
    .line 67
    and-int/2addr v7, v2

    .line 68
    const/16 v8, 0x480

    .line 69
    .line 70
    if-eq v3, v2, :cond_2

    .line 71
    .line 72
    if-eq v3, v6, :cond_4

    .line 73
    .line 74
    const/16 v8, 0x180

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    if-ne v0, v1, :cond_3

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    const/16 v8, 0x240

    .line 81
    .line 82
    :cond_4
    :goto_1
    iput v8, p0, LW0/b;->g:I

    .line 83
    .line 84
    if-ne v3, v1, :cond_6

    .line 85
    .line 86
    if-ne v0, v1, :cond_5

    .line 87
    .line 88
    sget-object v0, Lcom/google/android/gms/internal/ads/nH;->u:[I

    .line 89
    .line 90
    aget v0, v0, v4

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_5
    sget-object v0, Lcom/google/android/gms/internal/ads/nH;->v:[I

    .line 94
    .line 95
    aget v0, v0, v4

    .line 96
    .line 97
    :goto_2
    iput v0, p0, LW0/b;->f:I

    .line 98
    .line 99
    mul-int/lit8 v0, v0, 0xc

    .line 100
    .line 101
    div-int/2addr v0, v5

    .line 102
    add-int/2addr v0, v7

    .line 103
    mul-int/lit8 v0, v0, 0x4

    .line 104
    .line 105
    iput v0, p0, LW0/b;->c:I

    .line 106
    .line 107
    goto :goto_4

    .line 108
    :cond_6
    const/16 v8, 0x90

    .line 109
    .line 110
    if-ne v0, v1, :cond_8

    .line 111
    .line 112
    if-ne v3, v6, :cond_7

    .line 113
    .line 114
    sget-object v0, Lcom/google/android/gms/internal/ads/nH;->w:[I

    .line 115
    .line 116
    aget v0, v0, v4

    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_7
    sget-object v0, Lcom/google/android/gms/internal/ads/nH;->x:[I

    .line 120
    .line 121
    aget v0, v0, v4

    .line 122
    .line 123
    :goto_3
    iput v0, p0, LW0/b;->f:I

    .line 124
    .line 125
    invoke-static {v0, v8, v5, v7}, LA0/O;->v(IIII)I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    iput v0, p0, LW0/b;->c:I

    .line 130
    .line 131
    goto :goto_4

    .line 132
    :cond_8
    sget-object v0, Lcom/google/android/gms/internal/ads/nH;->y:[I

    .line 133
    .line 134
    aget v0, v0, v4

    .line 135
    .line 136
    iput v0, p0, LW0/b;->f:I

    .line 137
    .line 138
    if-ne v3, v2, :cond_9

    .line 139
    .line 140
    const/16 v8, 0x48

    .line 141
    .line 142
    :cond_9
    invoke-static {v8, v0, v5, v7}, LA0/O;->v(IIII)I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    iput v0, p0, LW0/b;->c:I

    .line 147
    .line 148
    :goto_4
    shr-int/lit8 p1, p1, 0x6

    .line 149
    .line 150
    and-int/2addr p1, v1

    .line 151
    if-ne p1, v1, :cond_a

    .line 152
    .line 153
    const/4 v6, 0x1

    .line 154
    :cond_a
    iput v6, p0, LW0/b;->e:I

    .line 155
    .line 156
    return v2

    .line 157
    :cond_b
    const/4 p1, 0x0

    .line 158
    return p1
.end method
