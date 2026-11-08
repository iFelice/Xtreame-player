.class public abstract Lcom/google/android/gms/internal/ads/sy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[B

.field public static final b:[F

.field public static final c:Ljava/lang/Object;

.field public static d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/sy;->a:[B

    const/16 v0, 0x11

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/gms/internal/ads/sy;->b:[F

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/sy;->c:Ljava/lang/Object;

    const/16 v0, 0xa

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/ads/sy;->d:[I

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f8ba2e9
        0x3f68ba2f
        0x3fba2e8c
        0x3f9b26ca
        0x400ba2e9
        0x3fe8ba2f
        0x403a2e8c
        0x401b26ca
        0x3fd1745d
        0x3fae8ba3
        0x3ff83e10
        0x3fcede62
        0x3faaaaab
        0x3fc00000    # 1.5f
        0x40000000    # 2.0f
    .end array-data
.end method

.method public static a([BII[Z)I
    .locals 8

    .line 1
    sub-int v0, p2, p1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v3, 0x0

    .line 10
    :goto_0
    invoke-static {v3}, Lo3/r;->M(Z)V

    .line 11
    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    return p2

    .line 16
    :cond_1
    aget-boolean v3, p3, v1

    .line 17
    .line 18
    if-eqz v3, :cond_2

    .line 19
    .line 20
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/sy;->g([Z)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 p1, p1, -0x3

    .line 24
    .line 25
    return p1

    .line 26
    :cond_2
    if-le v0, v2, :cond_4

    .line 27
    .line 28
    aget-boolean v3, p3, v2

    .line 29
    .line 30
    if-eqz v3, :cond_4

    .line 31
    .line 32
    aget-byte v3, p0, p1

    .line 33
    .line 34
    if-eq v3, v2, :cond_3

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_3
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/sy;->g([Z)V

    .line 38
    .line 39
    .line 40
    add-int/lit8 p1, p1, -0x2

    .line 41
    .line 42
    return p1

    .line 43
    :cond_4
    :goto_1
    const/4 v3, 0x2

    .line 44
    if-le v0, v3, :cond_6

    .line 45
    .line 46
    aget-boolean v4, p3, v3

    .line 47
    .line 48
    if-eqz v4, :cond_6

    .line 49
    .line 50
    aget-byte v4, p0, p1

    .line 51
    .line 52
    if-nez v4, :cond_6

    .line 53
    .line 54
    add-int/lit8 v4, p1, 0x1

    .line 55
    .line 56
    aget-byte v4, p0, v4

    .line 57
    .line 58
    if-eq v4, v2, :cond_5

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_5
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/sy;->g([Z)V

    .line 62
    .line 63
    .line 64
    add-int/lit8 p1, p1, -0x1

    .line 65
    .line 66
    return p1

    .line 67
    :cond_6
    :goto_2
    add-int/lit8 v4, p2, -0x1

    .line 68
    .line 69
    add-int/2addr p1, v3

    .line 70
    :goto_3
    if-ge p1, v4, :cond_a

    .line 71
    .line 72
    aget-byte v5, p0, p1

    .line 73
    .line 74
    and-int/lit16 v6, v5, 0xfe

    .line 75
    .line 76
    if-nez v6, :cond_9

    .line 77
    .line 78
    add-int/lit8 v6, p1, -0x2

    .line 79
    .line 80
    aget-byte v7, p0, v6

    .line 81
    .line 82
    if-nez v7, :cond_8

    .line 83
    .line 84
    add-int/lit8 p1, p1, -0x1

    .line 85
    .line 86
    aget-byte p1, p0, p1

    .line 87
    .line 88
    if-nez p1, :cond_8

    .line 89
    .line 90
    if-eq v5, v2, :cond_7

    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_7
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/sy;->g([Z)V

    .line 94
    .line 95
    .line 96
    return v6

    .line 97
    :cond_8
    :goto_4
    move p1, v6

    .line 98
    :cond_9
    add-int/lit8 p1, p1, 0x3

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_a
    if-le v0, v3, :cond_c

    .line 102
    .line 103
    add-int/lit8 p1, p2, -0x3

    .line 104
    .line 105
    aget-byte p1, p0, p1

    .line 106
    .line 107
    if-nez p1, :cond_b

    .line 108
    .line 109
    add-int/lit8 p1, p2, -0x2

    .line 110
    .line 111
    aget-byte p1, p0, p1

    .line 112
    .line 113
    if-nez p1, :cond_b

    .line 114
    .line 115
    aget-byte p1, p0, v4

    .line 116
    .line 117
    if-ne p1, v2, :cond_b

    .line 118
    .line 119
    :goto_5
    const/4 p1, 0x1

    .line 120
    goto :goto_6

    .line 121
    :cond_b
    const/4 p1, 0x0

    .line 122
    goto :goto_6

    .line 123
    :cond_c
    if-ne v0, v3, :cond_d

    .line 124
    .line 125
    aget-boolean p1, p3, v3

    .line 126
    .line 127
    if-eqz p1, :cond_b

    .line 128
    .line 129
    add-int/lit8 p1, p2, -0x2

    .line 130
    .line 131
    aget-byte p1, p0, p1

    .line 132
    .line 133
    if-nez p1, :cond_b

    .line 134
    .line 135
    aget-byte p1, p0, v4

    .line 136
    .line 137
    if-ne p1, v2, :cond_b

    .line 138
    .line 139
    goto :goto_5

    .line 140
    :cond_d
    aget-boolean p1, p3, v2

    .line 141
    .line 142
    if-eqz p1, :cond_b

    .line 143
    .line 144
    aget-byte p1, p0, v4

    .line 145
    .line 146
    if-ne p1, v2, :cond_b

    .line 147
    .line 148
    goto :goto_5

    .line 149
    :goto_6
    aput-boolean p1, p3, v1

    .line 150
    .line 151
    if-le v0, v2, :cond_f

    .line 152
    .line 153
    add-int/lit8 p1, p2, -0x2

    .line 154
    .line 155
    aget-byte p1, p0, p1

    .line 156
    .line 157
    if-nez p1, :cond_e

    .line 158
    .line 159
    aget-byte p1, p0, v4

    .line 160
    .line 161
    if-nez p1, :cond_e

    .line 162
    .line 163
    :goto_7
    const/4 p1, 0x1

    .line 164
    goto :goto_8

    .line 165
    :cond_e
    const/4 p1, 0x0

    .line 166
    goto :goto_8

    .line 167
    :cond_f
    aget-boolean p1, p3, v3

    .line 168
    .line 169
    if-eqz p1, :cond_e

    .line 170
    .line 171
    aget-byte p1, p0, v4

    .line 172
    .line 173
    if-nez p1, :cond_e

    .line 174
    .line 175
    goto :goto_7

    .line 176
    :goto_8
    aput-boolean p1, p3, v2

    .line 177
    .line 178
    aget-byte p0, p0, v4

    .line 179
    .line 180
    if-nez p0, :cond_10

    .line 181
    .line 182
    const/4 v1, 0x1

    .line 183
    :cond_10
    aput-boolean v1, p3, v3

    .line 184
    .line 185
    return p2
.end method

.method public static b([BI)I
    .locals 8

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/sy;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    :cond_0
    :goto_0
    if-lt v2, p1, :cond_2

    .line 8
    .line 9
    sub-int/2addr p1, v3

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    :goto_1
    if-ge v2, v3, :cond_1

    .line 14
    .line 15
    :try_start_0
    sget-object v6, Lcom/google/android/gms/internal/ads/sy;->d:[I

    .line 16
    .line 17
    aget v6, v6, v2

    .line 18
    .line 19
    sub-int/2addr v6, v4

    .line 20
    invoke-static {p0, v4, p0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    .line 22
    .line 23
    add-int/2addr v5, v6

    .line 24
    add-int/lit8 v7, v5, 0x1

    .line 25
    .line 26
    aput-byte v1, p0, v5

    .line 27
    .line 28
    add-int/lit8 v5, v5, 0x2

    .line 29
    .line 30
    aput-byte v1, p0, v7

    .line 31
    .line 32
    add-int/lit8 v6, v6, 0x3

    .line 33
    .line 34
    add-int/2addr v4, v6

    .line 35
    add-int/lit8 v2, v2, 0x1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_4

    .line 40
    :cond_1
    sub-int v1, p1, v5

    .line 41
    .line 42
    invoke-static {p0, v4, p0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    .line 44
    .line 45
    monitor-exit v0

    .line 46
    return p1

    .line 47
    :cond_2
    :goto_2
    add-int/lit8 v4, p1, -0x2

    .line 48
    .line 49
    if-ge v2, v4, :cond_4

    .line 50
    .line 51
    aget-byte v4, p0, v2

    .line 52
    .line 53
    add-int/lit8 v5, v2, 0x1

    .line 54
    .line 55
    if-nez v4, :cond_3

    .line 56
    .line 57
    aget-byte v4, p0, v5

    .line 58
    .line 59
    if-nez v4, :cond_3

    .line 60
    .line 61
    add-int/lit8 v4, v2, 0x2

    .line 62
    .line 63
    aget-byte v4, p0, v4

    .line 64
    .line 65
    const/4 v6, 0x3

    .line 66
    if-ne v4, v6, :cond_3

    .line 67
    .line 68
    goto :goto_3

    .line 69
    :cond_3
    move v2, v5

    .line 70
    goto :goto_2

    .line 71
    :cond_4
    move v2, p1

    .line 72
    :goto_3
    if-ge v2, p1, :cond_0

    .line 73
    .line 74
    sget-object v4, Lcom/google/android/gms/internal/ads/sy;->d:[I

    .line 75
    .line 76
    array-length v5, v4

    .line 77
    if-gt v5, v3, :cond_5

    .line 78
    .line 79
    add-int/2addr v5, v5

    .line 80
    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([II)[I

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    sput-object v4, Lcom/google/android/gms/internal/ads/sy;->d:[I

    .line 85
    .line 86
    :cond_5
    sget-object v4, Lcom/google/android/gms/internal/ads/sy;->d:[I

    .line 87
    .line 88
    add-int/lit8 v5, v3, 0x1

    .line 89
    .line 90
    aput v2, v4, v3

    .line 91
    .line 92
    add-int/lit8 v2, v2, 0x3

    .line 93
    .line 94
    move v3, v5

    .line 95
    goto :goto_0

    .line 96
    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    throw p0
.end method

.method public static c([BIILcom/google/android/gms/internal/ads/Ex;)Lcom/google/android/gms/internal/ads/Sw;
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    new-instance v4, Lcom/google/android/gms/internal/ads/f0;

    .line 10
    .line 11
    invoke-direct {v4, v0, v1, v2}, Lcom/google/android/gms/internal/ads/f0;-><init>([BII)V

    .line 12
    .line 13
    .line 14
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/sy;->i(Lcom/google/android/gms/internal/ads/f0;)LN/r;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    new-instance v5, Lcom/google/android/gms/internal/ads/f0;

    .line 19
    .line 20
    const/4 v6, 0x2

    .line 21
    add-int/2addr v1, v6

    .line 22
    invoke-direct {v5, v0, v1, v2}, Lcom/google/android/gms/internal/ads/f0;-><init>([BII)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x4

    .line 26
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/f0;->m(I)V

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x3

    .line 30
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/f0;->b(I)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    iget v7, v4, LN/r;->I:I

    .line 35
    .line 36
    const/4 v8, 0x1

    .line 37
    if-eqz v7, :cond_0

    .line 38
    .line 39
    const/4 v7, 0x7

    .line 40
    if-ne v2, v7, :cond_0

    .line 41
    .line 42
    const/4 v2, 0x7

    .line 43
    const/4 v7, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 v7, 0x0

    .line 46
    :goto_0
    const/4 v10, -0x1

    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    iget-object v11, v3, Lcom/google/android/gms/internal/ads/Ex;->a:Lcom/google/android/gms/internal/ads/uA;

    .line 50
    .line 51
    invoke-virtual {v11}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result v12

    .line 55
    if-nez v12, :cond_1

    .line 56
    .line 57
    iget v4, v4, LN/r;->I:I

    .line 58
    .line 59
    invoke-virtual {v11}, Ljava/util/AbstractCollection;->size()I

    .line 60
    .line 61
    .line 62
    move-result v12

    .line 63
    add-int/2addr v12, v10

    .line 64
    invoke-static {v4, v12}, Ljava/lang/Math;->min(II)I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    check-cast v4, Lcom/google/android/gms/internal/ads/Fv;

    .line 73
    .line 74
    iget v4, v4, Lcom/google/android/gms/internal/ads/Fv;->a:I

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    const/4 v4, 0x0

    .line 78
    :goto_1
    const/4 v11, 0x0

    .line 79
    if-nez v7, :cond_3

    .line 80
    .line 81
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/f0;->k()V

    .line 82
    .line 83
    .line 84
    invoke-static {v5, v8, v2, v11}, Lcom/google/android/gms/internal/ads/sy;->j(Lcom/google/android/gms/internal/ads/f0;ZILcom/google/android/gms/internal/ads/Wv;)Lcom/google/android/gms/internal/ads/Wv;

    .line 85
    .line 86
    .line 87
    move-result-object v11

    .line 88
    :cond_2
    :goto_2
    move-object v13, v11

    .line 89
    goto :goto_3

    .line 90
    :cond_3
    if-eqz v3, :cond_2

    .line 91
    .line 92
    iget-object v12, v3, Lcom/google/android/gms/internal/ads/Ex;->b:Lcom/google/android/gms/internal/ads/fw;

    .line 93
    .line 94
    iget-object v13, v12, Lcom/google/android/gms/internal/ads/fw;->b:[I

    .line 95
    .line 96
    aget v13, v13, v4

    .line 97
    .line 98
    iget-object v12, v12, Lcom/google/android/gms/internal/ads/fw;->a:Lcom/google/android/gms/internal/ads/uA;

    .line 99
    .line 100
    invoke-virtual {v12}, Ljava/util/AbstractCollection;->size()I

    .line 101
    .line 102
    .line 103
    move-result v14

    .line 104
    if-le v14, v13, :cond_2

    .line 105
    .line 106
    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v11

    .line 110
    check-cast v11, Lcom/google/android/gms/internal/ads/Wv;

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :goto_3
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 114
    .line 115
    .line 116
    const/16 v11, 0x8

    .line 117
    .line 118
    if-eqz v7, :cond_7

    .line 119
    .line 120
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 121
    .line 122
    .line 123
    move-result v12

    .line 124
    if-eqz v12, :cond_4

    .line 125
    .line 126
    invoke-virtual {v5, v11}, Lcom/google/android/gms/internal/ads/f0;->b(I)I

    .line 127
    .line 128
    .line 129
    move-result v12

    .line 130
    goto :goto_4

    .line 131
    :cond_4
    const/4 v12, -0x1

    .line 132
    :goto_4
    if-eqz v3, :cond_6

    .line 133
    .line 134
    iget-object v14, v3, Lcom/google/android/gms/internal/ads/Ex;->c:Lcom/google/android/gms/internal/ads/fw;

    .line 135
    .line 136
    if-eqz v14, :cond_6

    .line 137
    .line 138
    if-ne v12, v10, :cond_5

    .line 139
    .line 140
    iget-object v12, v14, Lcom/google/android/gms/internal/ads/fw;->b:[I

    .line 141
    .line 142
    aget v12, v12, v4

    .line 143
    .line 144
    :cond_5
    if-eq v12, v10, :cond_6

    .line 145
    .line 146
    iget-object v14, v14, Lcom/google/android/gms/internal/ads/fw;->a:Lcom/google/android/gms/internal/ads/uA;

    .line 147
    .line 148
    invoke-virtual {v14}, Ljava/util/AbstractCollection;->size()I

    .line 149
    .line 150
    .line 151
    move-result v15

    .line 152
    if-le v15, v12, :cond_6

    .line 153
    .line 154
    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v12

    .line 158
    check-cast v12, Lcom/google/android/gms/internal/ads/qw;

    .line 159
    .line 160
    iget v14, v12, Lcom/google/android/gms/internal/ads/qw;->a:I

    .line 161
    .line 162
    iget v14, v12, Lcom/google/android/gms/internal/ads/qw;->d:I

    .line 163
    .line 164
    iget v15, v12, Lcom/google/android/gms/internal/ads/qw;->e:I

    .line 165
    .line 166
    iget v10, v12, Lcom/google/android/gms/internal/ads/qw;->b:I

    .line 167
    .line 168
    iget v12, v12, Lcom/google/android/gms/internal/ads/qw;->c:I

    .line 169
    .line 170
    move/from16 v16, v14

    .line 171
    .line 172
    move v14, v10

    .line 173
    move v10, v12

    .line 174
    goto :goto_7

    .line 175
    :cond_6
    const/4 v10, 0x0

    .line 176
    const/4 v14, 0x0

    .line 177
    const/4 v15, 0x0

    .line 178
    const/16 v16, 0x0

    .line 179
    .line 180
    goto :goto_7

    .line 181
    :cond_7
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 182
    .line 183
    .line 184
    move-result v10

    .line 185
    if-ne v10, v1, :cond_8

    .line 186
    .line 187
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/f0;->k()V

    .line 188
    .line 189
    .line 190
    const/4 v10, 0x3

    .line 191
    :cond_8
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 192
    .line 193
    .line 194
    move-result v12

    .line 195
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 196
    .line 197
    .line 198
    move-result v14

    .line 199
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 200
    .line 201
    .line 202
    move-result v15

    .line 203
    if-eqz v15, :cond_c

    .line 204
    .line 205
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 206
    .line 207
    .line 208
    move-result v15

    .line 209
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 210
    .line 211
    .line 212
    move-result v16

    .line 213
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 214
    .line 215
    .line 216
    move-result v17

    .line 217
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 218
    .line 219
    .line 220
    move-result v18

    .line 221
    if-eq v10, v8, :cond_9

    .line 222
    .line 223
    if-ne v10, v6, :cond_a

    .line 224
    .line 225
    :cond_9
    const/16 v19, 0x2

    .line 226
    .line 227
    goto :goto_5

    .line 228
    :cond_a
    const/16 v19, 0x1

    .line 229
    .line 230
    :goto_5
    add-int v15, v15, v16

    .line 231
    .line 232
    mul-int v15, v15, v19

    .line 233
    .line 234
    sub-int/2addr v12, v15

    .line 235
    if-ne v10, v8, :cond_b

    .line 236
    .line 237
    const/4 v10, 0x2

    .line 238
    goto :goto_6

    .line 239
    :cond_b
    const/4 v10, 0x1

    .line 240
    :goto_6
    add-int v17, v17, v18

    .line 241
    .line 242
    mul-int v17, v17, v10

    .line 243
    .line 244
    sub-int v14, v14, v17

    .line 245
    .line 246
    :cond_c
    move v15, v14

    .line 247
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 248
    .line 249
    .line 250
    move-result v10

    .line 251
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 252
    .line 253
    .line 254
    move-result v14

    .line 255
    move/from16 v16, v12

    .line 256
    .line 257
    move/from16 v29, v14

    .line 258
    .line 259
    move v14, v10

    .line 260
    move/from16 v10, v29

    .line 261
    .line 262
    :goto_7
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 263
    .line 264
    .line 265
    move-result v12

    .line 266
    if-nez v7, :cond_f

    .line 267
    .line 268
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 269
    .line 270
    .line 271
    move-result v9

    .line 272
    if-eq v8, v9, :cond_d

    .line 273
    .line 274
    move v9, v2

    .line 275
    goto :goto_8

    .line 276
    :cond_d
    const/4 v9, 0x0

    .line 277
    :goto_8
    const/4 v11, -0x1

    .line 278
    :goto_9
    if-gt v9, v2, :cond_e

    .line 279
    .line 280
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 281
    .line 282
    .line 283
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 284
    .line 285
    .line 286
    move-result v6

    .line 287
    invoke-static {v6, v11}, Ljava/lang/Math;->max(II)I

    .line 288
    .line 289
    .line 290
    move-result v11

    .line 291
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 292
    .line 293
    .line 294
    add-int/lit8 v9, v9, 0x1

    .line 295
    .line 296
    const/4 v6, 0x2

    .line 297
    goto :goto_9

    .line 298
    :cond_e
    move/from16 v19, v11

    .line 299
    .line 300
    goto :goto_a

    .line 301
    :cond_f
    const/16 v19, -0x1

    .line 302
    .line 303
    :goto_a
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 304
    .line 305
    .line 306
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 307
    .line 308
    .line 309
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 310
    .line 311
    .line 312
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 313
    .line 314
    .line 315
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 316
    .line 317
    .line 318
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 319
    .line 320
    .line 321
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 322
    .line 323
    .line 324
    move-result v2

    .line 325
    if-eqz v2, :cond_10

    .line 326
    .line 327
    const/4 v2, 0x6

    .line 328
    if-eqz v7, :cond_11

    .line 329
    .line 330
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 331
    .line 332
    .line 333
    move-result v6

    .line 334
    if-eqz v6, :cond_11

    .line 335
    .line 336
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/f0;->m(I)V

    .line 337
    .line 338
    .line 339
    :cond_10
    const/4 v0, 0x2

    .line 340
    goto :goto_10

    .line 341
    :cond_11
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 342
    .line 343
    .line 344
    move-result v6

    .line 345
    if-eqz v6, :cond_10

    .line 346
    .line 347
    const/4 v6, 0x0

    .line 348
    :goto_b
    if-ge v6, v0, :cond_10

    .line 349
    .line 350
    const/4 v7, 0x0

    .line 351
    :goto_c
    if-ge v7, v2, :cond_16

    .line 352
    .line 353
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 354
    .line 355
    .line 356
    move-result v9

    .line 357
    if-nez v9, :cond_12

    .line 358
    .line 359
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 360
    .line 361
    .line 362
    goto :goto_e

    .line 363
    :cond_12
    add-int v9, v6, v6

    .line 364
    .line 365
    add-int/2addr v9, v0

    .line 366
    shl-int v9, v8, v9

    .line 367
    .line 368
    const/16 v11, 0x40

    .line 369
    .line 370
    invoke-static {v11, v9}, Ljava/lang/Math;->min(II)I

    .line 371
    .line 372
    .line 373
    move-result v9

    .line 374
    if-le v6, v8, :cond_13

    .line 375
    .line 376
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/f0;->c()I

    .line 377
    .line 378
    .line 379
    :cond_13
    const/4 v11, 0x0

    .line 380
    :goto_d
    if-ge v11, v9, :cond_14

    .line 381
    .line 382
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/f0;->c()I

    .line 383
    .line 384
    .line 385
    add-int/lit8 v11, v11, 0x1

    .line 386
    .line 387
    goto :goto_d

    .line 388
    :cond_14
    :goto_e
    if-ne v6, v1, :cond_15

    .line 389
    .line 390
    const/4 v9, 0x3

    .line 391
    goto :goto_f

    .line 392
    :cond_15
    const/4 v9, 0x1

    .line 393
    :goto_f
    add-int/2addr v7, v9

    .line 394
    goto :goto_c

    .line 395
    :cond_16
    add-int/lit8 v6, v6, 0x1

    .line 396
    .line 397
    goto :goto_b

    .line 398
    :goto_10
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/f0;->m(I)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 402
    .line 403
    .line 404
    move-result v0

    .line 405
    if-eqz v0, :cond_17

    .line 406
    .line 407
    const/16 v0, 0x8

    .line 408
    .line 409
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/f0;->m(I)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 413
    .line 414
    .line 415
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 416
    .line 417
    .line 418
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/f0;->k()V

    .line 419
    .line 420
    .line 421
    :cond_17
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 422
    .line 423
    .line 424
    move-result v0

    .line 425
    const/4 v2, 0x0

    .line 426
    new-array v6, v2, [I

    .line 427
    .line 428
    new-array v7, v2, [I

    .line 429
    .line 430
    const/4 v2, -0x1

    .line 431
    const/4 v9, 0x0

    .line 432
    const/4 v11, -0x1

    .line 433
    :goto_11
    if-ge v9, v0, :cond_29

    .line 434
    .line 435
    if-eqz v9, :cond_24

    .line 436
    .line 437
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 438
    .line 439
    .line 440
    move-result v18

    .line 441
    if-eqz v18, :cond_24

    .line 442
    .line 443
    add-int v1, v11, v2

    .line 444
    .line 445
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 446
    .line 447
    .line 448
    move-result v20

    .line 449
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 450
    .line 451
    .line 452
    move-result v21

    .line 453
    add-int/lit8 v21, v21, 0x1

    .line 454
    .line 455
    add-int v20, v20, v20

    .line 456
    .line 457
    rsub-int/lit8 v20, v20, 0x1

    .line 458
    .line 459
    add-int/lit8 v8, v1, 0x1

    .line 460
    .line 461
    move/from16 v23, v0

    .line 462
    .line 463
    new-array v0, v8, [Z

    .line 464
    .line 465
    move/from16 v24, v10

    .line 466
    .line 467
    const/4 v10, 0x0

    .line 468
    :goto_12
    if-gt v10, v1, :cond_19

    .line 469
    .line 470
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 471
    .line 472
    .line 473
    move-result v25

    .line 474
    if-nez v25, :cond_18

    .line 475
    .line 476
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 477
    .line 478
    .line 479
    move-result v25

    .line 480
    aput-boolean v25, v0, v10

    .line 481
    .line 482
    goto :goto_13

    .line 483
    :cond_18
    const/16 v22, 0x1

    .line 484
    .line 485
    aput-boolean v22, v0, v10

    .line 486
    .line 487
    :goto_13
    add-int/lit8 v10, v10, 0x1

    .line 488
    .line 489
    goto :goto_12

    .line 490
    :cond_19
    add-int/lit8 v10, v2, -0x1

    .line 491
    .line 492
    move/from16 v25, v10

    .line 493
    .line 494
    new-array v10, v8, [I

    .line 495
    .line 496
    new-array v8, v8, [I

    .line 497
    .line 498
    const/16 v26, 0x0

    .line 499
    .line 500
    :goto_14
    mul-int v27, v20, v21

    .line 501
    .line 502
    if-ltz v25, :cond_1b

    .line 503
    .line 504
    aget v28, v7, v25

    .line 505
    .line 506
    add-int v28, v28, v27

    .line 507
    .line 508
    if-gez v28, :cond_1a

    .line 509
    .line 510
    add-int v27, v11, v25

    .line 511
    .line 512
    aget-boolean v27, v0, v27

    .line 513
    .line 514
    if-eqz v27, :cond_1a

    .line 515
    .line 516
    add-int/lit8 v27, v26, 0x1

    .line 517
    .line 518
    aput v28, v10, v26

    .line 519
    .line 520
    move/from16 v26, v27

    .line 521
    .line 522
    :cond_1a
    add-int/lit8 v25, v25, -0x1

    .line 523
    .line 524
    goto :goto_14

    .line 525
    :cond_1b
    if-gez v27, :cond_1c

    .line 526
    .line 527
    aget-boolean v20, v0, v1

    .line 528
    .line 529
    if-eqz v20, :cond_1c

    .line 530
    .line 531
    add-int/lit8 v20, v26, 0x1

    .line 532
    .line 533
    aput v27, v10, v26

    .line 534
    .line 535
    move/from16 v26, v20

    .line 536
    .line 537
    :cond_1c
    move-object/from16 v21, v13

    .line 538
    .line 539
    move/from16 v20, v14

    .line 540
    .line 541
    move/from16 v14, v26

    .line 542
    .line 543
    const/4 v13, 0x0

    .line 544
    :goto_15
    if-ge v13, v11, :cond_1e

    .line 545
    .line 546
    aget v25, v6, v13

    .line 547
    .line 548
    add-int v25, v25, v27

    .line 549
    .line 550
    if-gez v25, :cond_1d

    .line 551
    .line 552
    aget-boolean v26, v0, v13

    .line 553
    .line 554
    if-eqz v26, :cond_1d

    .line 555
    .line 556
    add-int/lit8 v26, v14, 0x1

    .line 557
    .line 558
    aput v25, v10, v14

    .line 559
    .line 560
    move/from16 v14, v26

    .line 561
    .line 562
    :cond_1d
    add-int/lit8 v13, v13, 0x1

    .line 563
    .line 564
    goto :goto_15

    .line 565
    :cond_1e
    invoke-static {v10, v14}, Ljava/util/Arrays;->copyOf([II)[I

    .line 566
    .line 567
    .line 568
    move-result-object v10

    .line 569
    add-int/lit8 v13, v11, -0x1

    .line 570
    .line 571
    const/16 v25, 0x0

    .line 572
    .line 573
    :goto_16
    if-ltz v13, :cond_20

    .line 574
    .line 575
    aget v26, v6, v13

    .line 576
    .line 577
    add-int v26, v26, v27

    .line 578
    .line 579
    if-lez v26, :cond_1f

    .line 580
    .line 581
    aget-boolean v28, v0, v13

    .line 582
    .line 583
    if-eqz v28, :cond_1f

    .line 584
    .line 585
    add-int/lit8 v28, v25, 0x1

    .line 586
    .line 587
    aput v26, v8, v25

    .line 588
    .line 589
    move/from16 v25, v28

    .line 590
    .line 591
    :cond_1f
    add-int/lit8 v13, v13, -0x1

    .line 592
    .line 593
    goto :goto_16

    .line 594
    :cond_20
    if-lez v27, :cond_21

    .line 595
    .line 596
    aget-boolean v1, v0, v1

    .line 597
    .line 598
    if-eqz v1, :cond_21

    .line 599
    .line 600
    add-int/lit8 v1, v25, 0x1

    .line 601
    .line 602
    aput v27, v8, v25

    .line 603
    .line 604
    move/from16 v25, v1

    .line 605
    .line 606
    :cond_21
    move/from16 v1, v25

    .line 607
    .line 608
    const/4 v6, 0x0

    .line 609
    :goto_17
    if-ge v6, v2, :cond_23

    .line 610
    .line 611
    aget v13, v7, v6

    .line 612
    .line 613
    add-int v13, v13, v27

    .line 614
    .line 615
    if-lez v13, :cond_22

    .line 616
    .line 617
    add-int v25, v11, v6

    .line 618
    .line 619
    aget-boolean v25, v0, v25

    .line 620
    .line 621
    if-eqz v25, :cond_22

    .line 622
    .line 623
    add-int/lit8 v25, v1, 0x1

    .line 624
    .line 625
    aput v13, v8, v1

    .line 626
    .line 627
    move/from16 v1, v25

    .line 628
    .line 629
    :cond_22
    add-int/lit8 v6, v6, 0x1

    .line 630
    .line 631
    goto :goto_17

    .line 632
    :cond_23
    invoke-static {v8, v1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 633
    .line 634
    .line 635
    move-result-object v0

    .line 636
    move-object v7, v0

    .line 637
    move v2, v1

    .line 638
    move-object v6, v10

    .line 639
    move v11, v14

    .line 640
    goto :goto_1c

    .line 641
    :cond_24
    move/from16 v23, v0

    .line 642
    .line 643
    move/from16 v24, v10

    .line 644
    .line 645
    move-object/from16 v21, v13

    .line 646
    .line 647
    move/from16 v20, v14

    .line 648
    .line 649
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 650
    .line 651
    .line 652
    move-result v0

    .line 653
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 654
    .line 655
    .line 656
    move-result v1

    .line 657
    new-array v2, v0, [I

    .line 658
    .line 659
    const/4 v6, 0x0

    .line 660
    :goto_18
    if-ge v6, v0, :cond_26

    .line 661
    .line 662
    if-lez v6, :cond_25

    .line 663
    .line 664
    add-int/lit8 v7, v6, -0x1

    .line 665
    .line 666
    aget v7, v2, v7

    .line 667
    .line 668
    goto :goto_19

    .line 669
    :cond_25
    const/4 v7, 0x0

    .line 670
    :goto_19
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 671
    .line 672
    .line 673
    move-result v8

    .line 674
    const/4 v10, 0x1

    .line 675
    add-int/2addr v8, v10

    .line 676
    sub-int/2addr v7, v8

    .line 677
    aput v7, v2, v6

    .line 678
    .line 679
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/f0;->k()V

    .line 680
    .line 681
    .line 682
    add-int/lit8 v6, v6, 0x1

    .line 683
    .line 684
    goto :goto_18

    .line 685
    :cond_26
    new-array v6, v1, [I

    .line 686
    .line 687
    const/4 v7, 0x0

    .line 688
    :goto_1a
    if-ge v7, v1, :cond_28

    .line 689
    .line 690
    if-lez v7, :cond_27

    .line 691
    .line 692
    add-int/lit8 v8, v7, -0x1

    .line 693
    .line 694
    aget v8, v6, v8

    .line 695
    .line 696
    goto :goto_1b

    .line 697
    :cond_27
    const/4 v8, 0x0

    .line 698
    :goto_1b
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 699
    .line 700
    .line 701
    move-result v10

    .line 702
    const/4 v11, 0x1

    .line 703
    add-int/2addr v10, v11

    .line 704
    add-int/2addr v10, v8

    .line 705
    aput v10, v6, v7

    .line 706
    .line 707
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/f0;->k()V

    .line 708
    .line 709
    .line 710
    add-int/lit8 v7, v7, 0x1

    .line 711
    .line 712
    goto :goto_1a

    .line 713
    :cond_28
    move v11, v0

    .line 714
    move-object v7, v6

    .line 715
    move-object v6, v2

    .line 716
    move v2, v1

    .line 717
    :goto_1c
    add-int/lit8 v9, v9, 0x1

    .line 718
    .line 719
    move/from16 v14, v20

    .line 720
    .line 721
    move-object/from16 v13, v21

    .line 722
    .line 723
    move/from16 v0, v23

    .line 724
    .line 725
    move/from16 v10, v24

    .line 726
    .line 727
    const/4 v1, 0x3

    .line 728
    const/4 v8, 0x1

    .line 729
    goto/16 :goto_11

    .line 730
    .line 731
    :cond_29
    move/from16 v24, v10

    .line 732
    .line 733
    move-object/from16 v21, v13

    .line 734
    .line 735
    move/from16 v20, v14

    .line 736
    .line 737
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 738
    .line 739
    .line 740
    move-result v0

    .line 741
    if-eqz v0, :cond_2a

    .line 742
    .line 743
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 744
    .line 745
    .line 746
    move-result v0

    .line 747
    const/4 v9, 0x0

    .line 748
    :goto_1d
    if-ge v9, v0, :cond_2a

    .line 749
    .line 750
    add-int/lit8 v1, v12, 0x5

    .line 751
    .line 752
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/f0;->m(I)V

    .line 753
    .line 754
    .line 755
    add-int/lit8 v9, v9, 0x1

    .line 756
    .line 757
    goto :goto_1d

    .line 758
    :cond_2a
    const/4 v0, 0x2

    .line 759
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/f0;->m(I)V

    .line 760
    .line 761
    .line 762
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 763
    .line 764
    .line 765
    move-result v1

    .line 766
    const/high16 v2, 0x3f800000    # 1.0f

    .line 767
    .line 768
    if-eqz v1, :cond_35

    .line 769
    .line 770
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 771
    .line 772
    .line 773
    move-result v1

    .line 774
    if-eqz v1, :cond_2d

    .line 775
    .line 776
    const/16 v1, 0x8

    .line 777
    .line 778
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/f0;->b(I)I

    .line 779
    .line 780
    .line 781
    move-result v6

    .line 782
    const/16 v1, 0xff

    .line 783
    .line 784
    if-ne v6, v1, :cond_2b

    .line 785
    .line 786
    const/16 v1, 0x10

    .line 787
    .line 788
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/f0;->b(I)I

    .line 789
    .line 790
    .line 791
    move-result v6

    .line 792
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/f0;->b(I)I

    .line 793
    .line 794
    .line 795
    move-result v1

    .line 796
    if-eqz v6, :cond_2d

    .line 797
    .line 798
    if-eqz v1, :cond_2d

    .line 799
    .line 800
    int-to-float v2, v6

    .line 801
    int-to-float v1, v1

    .line 802
    div-float/2addr v2, v1

    .line 803
    goto :goto_1e

    .line 804
    :cond_2b
    const/16 v1, 0x11

    .line 805
    .line 806
    if-ge v6, v1, :cond_2c

    .line 807
    .line 808
    sget-object v1, Lcom/google/android/gms/internal/ads/sy;->b:[F

    .line 809
    .line 810
    aget v2, v1, v6

    .line 811
    .line 812
    goto :goto_1e

    .line 813
    :cond_2c
    const-string v1, "Unexpected aspect_ratio_idc value: "

    .line 814
    .line 815
    const-string v7, "NalUnitUtil"

    .line 816
    .line 817
    invoke-static {v1, v6, v7}, La/r;->p(Ljava/lang/String;ILjava/lang/String;)V

    .line 818
    .line 819
    .line 820
    :cond_2d
    :goto_1e
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 821
    .line 822
    .line 823
    move-result v1

    .line 824
    if-eqz v1, :cond_2e

    .line 825
    .line 826
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/f0;->k()V

    .line 827
    .line 828
    .line 829
    :cond_2e
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 830
    .line 831
    .line 832
    move-result v1

    .line 833
    if-eqz v1, :cond_31

    .line 834
    .line 835
    const/4 v1, 0x3

    .line 836
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/f0;->m(I)V

    .line 837
    .line 838
    .line 839
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 840
    .line 841
    .line 842
    move-result v1

    .line 843
    const/4 v3, 0x1

    .line 844
    if-eq v3, v1, :cond_2f

    .line 845
    .line 846
    const/4 v6, 0x2

    .line 847
    goto :goto_1f

    .line 848
    :cond_2f
    const/4 v6, 0x1

    .line 849
    :goto_1f
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 850
    .line 851
    .line 852
    move-result v0

    .line 853
    if-eqz v0, :cond_30

    .line 854
    .line 855
    const/16 v0, 0x8

    .line 856
    .line 857
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/f0;->b(I)I

    .line 858
    .line 859
    .line 860
    move-result v1

    .line 861
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/f0;->b(I)I

    .line 862
    .line 863
    .line 864
    move-result v3

    .line 865
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/f0;->m(I)V

    .line 866
    .line 867
    .line 868
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/rL;->a(I)I

    .line 869
    .line 870
    .line 871
    move-result v10

    .line 872
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/rL;->b(I)I

    .line 873
    .line 874
    .line 875
    move-result v0

    .line 876
    goto :goto_21

    .line 877
    :cond_30
    const/4 v0, -0x1

    .line 878
    :goto_20
    const/4 v10, -0x1

    .line 879
    goto :goto_21

    .line 880
    :cond_31
    if-eqz v3, :cond_32

    .line 881
    .line 882
    iget-object v0, v3, Lcom/google/android/gms/internal/ads/Ex;->d:Lcom/google/android/gms/internal/ads/fw;

    .line 883
    .line 884
    if-eqz v0, :cond_32

    .line 885
    .line 886
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/fw;->b:[I

    .line 887
    .line 888
    aget v1, v1, v4

    .line 889
    .line 890
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/fw;->a:Lcom/google/android/gms/internal/ads/uA;

    .line 891
    .line 892
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    .line 893
    .line 894
    .line 895
    move-result v3

    .line 896
    if-le v3, v1, :cond_32

    .line 897
    .line 898
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 899
    .line 900
    .line 901
    move-result-object v0

    .line 902
    check-cast v0, Lcom/google/android/gms/internal/ads/gx;

    .line 903
    .line 904
    iget v10, v0, Lcom/google/android/gms/internal/ads/gx;->a:I

    .line 905
    .line 906
    iget v1, v0, Lcom/google/android/gms/internal/ads/gx;->b:I

    .line 907
    .line 908
    iget v0, v0, Lcom/google/android/gms/internal/ads/gx;->c:I

    .line 909
    .line 910
    move v6, v1

    .line 911
    goto :goto_21

    .line 912
    :cond_32
    const/4 v0, -0x1

    .line 913
    const/4 v6, -0x1

    .line 914
    goto :goto_20

    .line 915
    :goto_21
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 916
    .line 917
    .line 918
    move-result v1

    .line 919
    if-eqz v1, :cond_33

    .line 920
    .line 921
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 922
    .line 923
    .line 924
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 925
    .line 926
    .line 927
    :cond_33
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/f0;->k()V

    .line 928
    .line 929
    .line 930
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 931
    .line 932
    .line 933
    move-result v1

    .line 934
    if-eqz v1, :cond_34

    .line 935
    .line 936
    add-int/2addr v15, v15

    .line 937
    :cond_34
    move/from16 v22, v0

    .line 938
    .line 939
    move/from16 v18, v2

    .line 940
    .line 941
    move/from16 v17, v15

    .line 942
    .line 943
    goto :goto_22

    .line 944
    :cond_35
    move/from16 v17, v15

    .line 945
    .line 946
    const/4 v6, -0x1

    .line 947
    const/4 v10, -0x1

    .line 948
    const/high16 v18, 0x3f800000    # 1.0f

    .line 949
    .line 950
    const/16 v22, -0x1

    .line 951
    .line 952
    :goto_22
    new-instance v0, Lcom/google/android/gms/internal/ads/Sw;

    .line 953
    .line 954
    move-object v12, v0

    .line 955
    move-object/from16 v13, v21

    .line 956
    .line 957
    move/from16 v14, v20

    .line 958
    .line 959
    move/from16 v15, v24

    .line 960
    .line 961
    move/from16 v20, v10

    .line 962
    .line 963
    move/from16 v21, v6

    .line 964
    .line 965
    invoke-direct/range {v12 .. v22}, Lcom/google/android/gms/internal/ads/Sw;-><init>(Lcom/google/android/gms/internal/ads/Wv;IIIIFIIII)V

    .line 966
    .line 967
    .line 968
    return-object v0
.end method

.method public static d(I[BI)Lcom/google/android/gms/internal/ads/Ex;
    .locals 35

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/f0;

    .line 2
    .line 3
    move/from16 v1, p0

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    move/from16 v3, p2

    .line 8
    .line 9
    invoke-direct {v0, v2, v1, v3}, Lcom/google/android/gms/internal/ads/f0;-><init>([BII)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/sy;->i(Lcom/google/android/gms/internal/ads/f0;)LN/r;

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x4

    .line 16
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/f0;->m(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const/4 v4, 0x6

    .line 28
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/f0;->b(I)I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    add-int/lit8 v6, v5, 0x1

    .line 33
    .line 34
    const/4 v7, 0x3

    .line 35
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/f0;->b(I)I

    .line 36
    .line 37
    .line 38
    move-result v8

    .line 39
    const/16 v9, 0x11

    .line 40
    .line 41
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/f0;->m(I)V

    .line 42
    .line 43
    .line 44
    const/4 v9, 0x1

    .line 45
    const/4 v10, 0x0

    .line 46
    invoke-static {v0, v9, v8, v10}, Lcom/google/android/gms/internal/ads/sy;->j(Lcom/google/android/gms/internal/ads/f0;ZILcom/google/android/gms/internal/ads/Wv;)Lcom/google/android/gms/internal/ads/Wv;

    .line 47
    .line 48
    .line 49
    move-result-object v11

    .line 50
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 51
    .line 52
    .line 53
    move-result v12

    .line 54
    const/4 v13, 0x0

    .line 55
    if-eq v9, v12, :cond_0

    .line 56
    .line 57
    move v12, v8

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    const/4 v12, 0x0

    .line 60
    :goto_0
    if-gt v12, v8, :cond_1

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 69
    .line 70
    .line 71
    add-int/lit8 v12, v12, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/f0;->b(I)I

    .line 75
    .line 76
    .line 77
    move-result v12

    .line 78
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 79
    .line 80
    .line 81
    move-result v14

    .line 82
    add-int/2addr v14, v9

    .line 83
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/uA;->w(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/PA;

    .line 84
    .line 85
    .line 86
    move-result-object v15

    .line 87
    new-instance v4, Lcom/google/android/gms/internal/ads/fw;

    .line 88
    .line 89
    new-array v7, v9, [I

    .line 90
    .line 91
    invoke-direct {v4, v15, v7, v13}, Lcom/google/android/gms/internal/ads/fw;-><init>(Lcom/google/android/gms/internal/ads/PA;[II)V

    .line 92
    .line 93
    .line 94
    const/4 v7, 0x2

    .line 95
    if-lt v6, v7, :cond_2

    .line 96
    .line 97
    if-lt v14, v7, :cond_2

    .line 98
    .line 99
    const/4 v15, 0x1

    .line 100
    goto :goto_1

    .line 101
    :cond_2
    const/4 v15, 0x0

    .line 102
    :goto_1
    if-eqz v2, :cond_3

    .line 103
    .line 104
    if-eqz v3, :cond_3

    .line 105
    .line 106
    const/4 v2, 0x1

    .line 107
    goto :goto_2

    .line 108
    :cond_3
    const/4 v2, 0x0

    .line 109
    :goto_2
    add-int/lit8 v3, v12, 0x1

    .line 110
    .line 111
    if-eqz v15, :cond_4

    .line 112
    .line 113
    if-eqz v2, :cond_4

    .line 114
    .line 115
    if-ge v3, v6, :cond_5

    .line 116
    .line 117
    :cond_4
    move-object v1, v10

    .line 118
    goto/16 :goto_57

    .line 119
    .line 120
    :cond_5
    filled-new-array {v14, v3}, [I

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 125
    .line 126
    invoke-static {v15, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    check-cast v2, [[I

    .line 131
    .line 132
    new-array v15, v14, [I

    .line 133
    .line 134
    new-array v7, v14, [I

    .line 135
    .line 136
    aget-object v16, v2, v13

    .line 137
    .line 138
    aput v13, v16, v13

    .line 139
    .line 140
    aput v9, v15, v13

    .line 141
    .line 142
    aput v13, v7, v13

    .line 143
    .line 144
    :goto_3
    if-ge v9, v14, :cond_8

    .line 145
    .line 146
    const/16 v18, 0x0

    .line 147
    .line 148
    :goto_4
    if-gt v13, v12, :cond_7

    .line 149
    .line 150
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 151
    .line 152
    .line 153
    move-result v19

    .line 154
    if-eqz v19, :cond_6

    .line 155
    .line 156
    aget-object v19, v2, v9

    .line 157
    .line 158
    add-int/lit8 v20, v18, 0x1

    .line 159
    .line 160
    aput v13, v19, v18

    .line 161
    .line 162
    aput v13, v7, v9

    .line 163
    .line 164
    move/from16 v18, v20

    .line 165
    .line 166
    :cond_6
    aput v18, v15, v9

    .line 167
    .line 168
    add-int/lit8 v13, v13, 0x1

    .line 169
    .line 170
    goto :goto_4

    .line 171
    :cond_7
    add-int/lit8 v9, v9, 0x1

    .line 172
    .line 173
    const/4 v13, 0x0

    .line 174
    goto :goto_3

    .line 175
    :cond_8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 176
    .line 177
    .line 178
    move-result v9

    .line 179
    const/16 v13, 0x8

    .line 180
    .line 181
    if-eqz v9, :cond_17

    .line 182
    .line 183
    const/16 v9, 0x40

    .line 184
    .line 185
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/f0;->m(I)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 189
    .line 190
    .line 191
    move-result v9

    .line 192
    if-eqz v9, :cond_9

    .line 193
    .line 194
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 195
    .line 196
    .line 197
    :cond_9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 198
    .line 199
    .line 200
    move-result v9

    .line 201
    const/4 v10, 0x0

    .line 202
    :goto_5
    if-ge v10, v9, :cond_17

    .line 203
    .line 204
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 205
    .line 206
    .line 207
    if-eqz v10, :cond_c

    .line 208
    .line 209
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 210
    .line 211
    .line 212
    move-result v19

    .line 213
    if-eqz v19, :cond_a

    .line 214
    .line 215
    goto :goto_6

    .line 216
    :cond_a
    const/16 v19, 0x0

    .line 217
    .line 218
    const/16 v20, 0x0

    .line 219
    .line 220
    :cond_b
    const/16 v21, 0x0

    .line 221
    .line 222
    goto :goto_7

    .line 223
    :cond_c
    :goto_6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 224
    .line 225
    .line 226
    move-result v19

    .line 227
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 228
    .line 229
    .line 230
    move-result v20

    .line 231
    if-nez v19, :cond_d

    .line 232
    .line 233
    if-eqz v20, :cond_b

    .line 234
    .line 235
    :cond_d
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 236
    .line 237
    .line 238
    move-result v21

    .line 239
    if-eqz v21, :cond_e

    .line 240
    .line 241
    const/16 v1, 0x13

    .line 242
    .line 243
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/f0;->m(I)V

    .line 244
    .line 245
    .line 246
    :cond_e
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/f0;->m(I)V

    .line 247
    .line 248
    .line 249
    if-eqz v21, :cond_f

    .line 250
    .line 251
    const/4 v1, 0x4

    .line 252
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/f0;->m(I)V

    .line 253
    .line 254
    .line 255
    :cond_f
    const/16 v1, 0xf

    .line 256
    .line 257
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/f0;->m(I)V

    .line 258
    .line 259
    .line 260
    :goto_7
    const/4 v1, 0x0

    .line 261
    :goto_8
    if-gt v1, v8, :cond_16

    .line 262
    .line 263
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 264
    .line 265
    .line 266
    move-result v22

    .line 267
    if-nez v22, :cond_11

    .line 268
    .line 269
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 270
    .line 271
    .line 272
    move-result v22

    .line 273
    if-eqz v22, :cond_10

    .line 274
    .line 275
    goto :goto_9

    .line 276
    :cond_10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 277
    .line 278
    .line 279
    move-result v22

    .line 280
    if-eqz v22, :cond_12

    .line 281
    .line 282
    move/from16 v22, v9

    .line 283
    .line 284
    const/4 v13, 0x0

    .line 285
    goto :goto_a

    .line 286
    :cond_11
    :goto_9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 287
    .line 288
    .line 289
    :cond_12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 290
    .line 291
    .line 292
    move-result v22

    .line 293
    move/from16 v13, v22

    .line 294
    .line 295
    move/from16 v22, v9

    .line 296
    .line 297
    :goto_a
    add-int v9, v19, v20

    .line 298
    .line 299
    move-object/from16 v23, v7

    .line 300
    .line 301
    const/4 v7, 0x0

    .line 302
    :goto_b
    if-ge v7, v9, :cond_15

    .line 303
    .line 304
    move/from16 v24, v9

    .line 305
    .line 306
    const/4 v9, 0x0

    .line 307
    :goto_c
    if-gt v9, v13, :cond_14

    .line 308
    .line 309
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 310
    .line 311
    .line 312
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 313
    .line 314
    .line 315
    if-eqz v21, :cond_13

    .line 316
    .line 317
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 318
    .line 319
    .line 320
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 321
    .line 322
    .line 323
    :cond_13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->k()V

    .line 324
    .line 325
    .line 326
    add-int/lit8 v9, v9, 0x1

    .line 327
    .line 328
    goto :goto_c

    .line 329
    :cond_14
    add-int/lit8 v7, v7, 0x1

    .line 330
    .line 331
    move/from16 v9, v24

    .line 332
    .line 333
    goto :goto_b

    .line 334
    :cond_15
    add-int/lit8 v1, v1, 0x1

    .line 335
    .line 336
    move/from16 v9, v22

    .line 337
    .line 338
    move-object/from16 v7, v23

    .line 339
    .line 340
    const/16 v13, 0x8

    .line 341
    .line 342
    goto :goto_8

    .line 343
    :cond_16
    move-object/from16 v23, v7

    .line 344
    .line 345
    move/from16 v22, v9

    .line 346
    .line 347
    add-int/lit8 v10, v10, 0x1

    .line 348
    .line 349
    const/4 v1, 0x4

    .line 350
    const/16 v13, 0x8

    .line 351
    .line 352
    goto/16 :goto_5

    .line 353
    .line 354
    :cond_17
    move-object/from16 v23, v7

    .line 355
    .line 356
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 357
    .line 358
    .line 359
    move-result v1

    .line 360
    if-nez v1, :cond_18

    .line 361
    .line 362
    new-instance v0, Lcom/google/android/gms/internal/ads/Ex;

    .line 363
    .line 364
    const/4 v1, 0x0

    .line 365
    invoke-direct {v0, v1, v4, v1, v1}, Lcom/google/android/gms/internal/ads/Ex;-><init>(Lcom/google/android/gms/internal/ads/PA;Lcom/google/android/gms/internal/ads/fw;Lcom/google/android/gms/internal/ads/fw;Lcom/google/android/gms/internal/ads/fw;)V

    .line 366
    .line 367
    .line 368
    goto/16 :goto_58

    .line 369
    .line 370
    :cond_18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->h()V

    .line 371
    .line 372
    .line 373
    const/4 v1, 0x0

    .line 374
    invoke-static {v0, v1, v8, v11}, Lcom/google/android/gms/internal/ads/sy;->j(Lcom/google/android/gms/internal/ads/f0;ZILcom/google/android/gms/internal/ads/Wv;)Lcom/google/android/gms/internal/ads/Wv;

    .line 375
    .line 376
    .line 377
    move-result-object v7

    .line 378
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 379
    .line 380
    .line 381
    move-result v1

    .line 382
    const/16 v9, 0x10

    .line 383
    .line 384
    new-array v10, v9, [Z

    .line 385
    .line 386
    move-object/from16 v19, v7

    .line 387
    .line 388
    const/4 v7, 0x0

    .line 389
    const/4 v13, 0x0

    .line 390
    :goto_d
    if-ge v13, v9, :cond_1a

    .line 391
    .line 392
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 393
    .line 394
    .line 395
    move-result v20

    .line 396
    aput-boolean v20, v10, v13

    .line 397
    .line 398
    if-eqz v20, :cond_19

    .line 399
    .line 400
    add-int/lit8 v7, v7, 0x1

    .line 401
    .line 402
    :cond_19
    add-int/lit8 v13, v13, 0x1

    .line 403
    .line 404
    goto :goto_d

    .line 405
    :cond_1a
    if-eqz v7, :cond_1b

    .line 406
    .line 407
    const/4 v13, 0x1

    .line 408
    aget-boolean v20, v10, v13

    .line 409
    .line 410
    if-nez v20, :cond_1c

    .line 411
    .line 412
    :cond_1b
    const/4 v1, 0x0

    .line 413
    goto/16 :goto_56

    .line 414
    .line 415
    :cond_1c
    add-int/lit8 v13, v7, 0x1

    .line 416
    .line 417
    new-array v9, v7, [I

    .line 418
    .line 419
    move-object/from16 v22, v2

    .line 420
    .line 421
    move-object/from16 v21, v11

    .line 422
    .line 423
    const/4 v11, 0x0

    .line 424
    :goto_e
    sub-int v2, v7, v1

    .line 425
    .line 426
    if-ge v11, v2, :cond_1d

    .line 427
    .line 428
    const/4 v2, 0x3

    .line 429
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/f0;->b(I)I

    .line 430
    .line 431
    .line 432
    move-result v24

    .line 433
    aput v24, v9, v11

    .line 434
    .line 435
    add-int/lit8 v11, v11, 0x1

    .line 436
    .line 437
    goto :goto_e

    .line 438
    :cond_1d
    new-array v2, v13, [I

    .line 439
    .line 440
    if-eqz v1, :cond_20

    .line 441
    .line 442
    const/4 v11, 0x1

    .line 443
    :goto_f
    if-ge v11, v7, :cond_1f

    .line 444
    .line 445
    const/4 v13, 0x0

    .line 446
    :goto_10
    if-ge v13, v11, :cond_1e

    .line 447
    .line 448
    aget v24, v2, v11

    .line 449
    .line 450
    aget v25, v9, v13

    .line 451
    .line 452
    const/16 v16, 0x1

    .line 453
    .line 454
    add-int/lit8 v25, v25, 0x1

    .line 455
    .line 456
    add-int v25, v25, v24

    .line 457
    .line 458
    aput v25, v2, v11

    .line 459
    .line 460
    add-int/lit8 v13, v13, 0x1

    .line 461
    .line 462
    goto :goto_10

    .line 463
    :cond_1e
    add-int/lit8 v11, v11, 0x1

    .line 464
    .line 465
    goto :goto_f

    .line 466
    :cond_1f
    const/4 v11, 0x6

    .line 467
    aput v11, v2, v7

    .line 468
    .line 469
    :cond_20
    filled-new-array {v6, v7}, [I

    .line 470
    .line 471
    .line 472
    move-result-object v11

    .line 473
    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 474
    .line 475
    invoke-static {v13, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 476
    .line 477
    .line 478
    move-result-object v11

    .line 479
    check-cast v11, [[I

    .line 480
    .line 481
    new-array v13, v6, [I

    .line 482
    .line 483
    const/16 v17, 0x0

    .line 484
    .line 485
    aput v17, v13, v17

    .line 486
    .line 487
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 488
    .line 489
    .line 490
    move-result v24

    .line 491
    move/from16 v26, v8

    .line 492
    .line 493
    move-object/from16 v25, v15

    .line 494
    .line 495
    const/4 v15, 0x1

    .line 496
    :goto_11
    if-ge v15, v6, :cond_25

    .line 497
    .line 498
    if-eqz v24, :cond_21

    .line 499
    .line 500
    const/4 v8, 0x6

    .line 501
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/f0;->b(I)I

    .line 502
    .line 503
    .line 504
    move-result v28

    .line 505
    aput v28, v13, v15

    .line 506
    .line 507
    goto :goto_12

    .line 508
    :cond_21
    const/4 v8, 0x6

    .line 509
    aput v15, v13, v15

    .line 510
    .line 511
    :goto_12
    if-nez v1, :cond_23

    .line 512
    .line 513
    const/4 v8, 0x0

    .line 514
    :goto_13
    if-ge v8, v7, :cond_22

    .line 515
    .line 516
    aget-object v27, v11, v15

    .line 517
    .line 518
    aget v28, v9, v8

    .line 519
    .line 520
    move/from16 v29, v1

    .line 521
    .line 522
    const/16 v16, 0x1

    .line 523
    .line 524
    add-int/lit8 v1, v28, 0x1

    .line 525
    .line 526
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/f0;->b(I)I

    .line 527
    .line 528
    .line 529
    move-result v1

    .line 530
    aput v1, v27, v8

    .line 531
    .line 532
    add-int/lit8 v8, v8, 0x1

    .line 533
    .line 534
    move/from16 v1, v29

    .line 535
    .line 536
    goto :goto_13

    .line 537
    :cond_22
    move/from16 v29, v1

    .line 538
    .line 539
    goto :goto_15

    .line 540
    :cond_23
    move/from16 v29, v1

    .line 541
    .line 542
    const/4 v1, 0x0

    .line 543
    :goto_14
    if-ge v1, v7, :cond_24

    .line 544
    .line 545
    aget-object v8, v11, v15

    .line 546
    .line 547
    aget v28, v13, v15

    .line 548
    .line 549
    add-int/lit8 v30, v1, 0x1

    .line 550
    .line 551
    aget v31, v2, v30

    .line 552
    .line 553
    const/16 v16, 0x1

    .line 554
    .line 555
    shl-int v31, v16, v31

    .line 556
    .line 557
    const/16 v27, -0x1

    .line 558
    .line 559
    add-int/lit8 v31, v31, -0x1

    .line 560
    .line 561
    and-int v28, v28, v31

    .line 562
    .line 563
    aget v31, v2, v1

    .line 564
    .line 565
    shr-int v28, v28, v31

    .line 566
    .line 567
    aput v28, v8, v1

    .line 568
    .line 569
    move/from16 v1, v30

    .line 570
    .line 571
    goto :goto_14

    .line 572
    :cond_24
    :goto_15
    add-int/lit8 v15, v15, 0x1

    .line 573
    .line 574
    move/from16 v1, v29

    .line 575
    .line 576
    goto :goto_11

    .line 577
    :cond_25
    new-array v1, v3, [I

    .line 578
    .line 579
    const/4 v2, 0x1

    .line 580
    const/4 v7, 0x0

    .line 581
    :goto_16
    if-ge v7, v6, :cond_2c

    .line 582
    .line 583
    aget v8, v13, v7

    .line 584
    .line 585
    const/4 v9, -0x1

    .line 586
    aput v9, v1, v8

    .line 587
    .line 588
    const/4 v8, 0x0

    .line 589
    const/4 v9, 0x0

    .line 590
    :goto_17
    const/16 v15, 0x10

    .line 591
    .line 592
    if-ge v8, v15, :cond_28

    .line 593
    .line 594
    aget-boolean v15, v10, v8

    .line 595
    .line 596
    if-eqz v15, :cond_27

    .line 597
    .line 598
    const/4 v15, 0x1

    .line 599
    if-ne v8, v15, :cond_26

    .line 600
    .line 601
    aget v8, v13, v7

    .line 602
    .line 603
    aget-object v16, v11, v7

    .line 604
    .line 605
    aget v16, v16, v9

    .line 606
    .line 607
    aput v16, v1, v8

    .line 608
    .line 609
    const/16 v16, 0x1

    .line 610
    .line 611
    goto :goto_18

    .line 612
    :cond_26
    move/from16 v16, v8

    .line 613
    .line 614
    :goto_18
    add-int/lit8 v9, v9, 0x1

    .line 615
    .line 616
    move/from16 v8, v16

    .line 617
    .line 618
    goto :goto_19

    .line 619
    :cond_27
    const/4 v15, 0x1

    .line 620
    :goto_19
    add-int/2addr v8, v15

    .line 621
    goto :goto_17

    .line 622
    :cond_28
    if-lez v7, :cond_2b

    .line 623
    .line 624
    const/4 v8, 0x0

    .line 625
    :goto_1a
    if-ge v8, v7, :cond_2a

    .line 626
    .line 627
    aget v9, v13, v7

    .line 628
    .line 629
    aget v9, v1, v9

    .line 630
    .line 631
    aget v15, v13, v8

    .line 632
    .line 633
    aget v15, v1, v15

    .line 634
    .line 635
    if-ne v9, v15, :cond_29

    .line 636
    .line 637
    goto :goto_1b

    .line 638
    :cond_29
    add-int/lit8 v8, v8, 0x1

    .line 639
    .line 640
    goto :goto_1a

    .line 641
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    .line 642
    .line 643
    :cond_2b
    :goto_1b
    add-int/lit8 v7, v7, 0x1

    .line 644
    .line 645
    goto :goto_16

    .line 646
    :cond_2c
    const/4 v7, 0x4

    .line 647
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/f0;->b(I)I

    .line 648
    .line 649
    .line 650
    move-result v8

    .line 651
    const/4 v7, 0x2

    .line 652
    if-lt v2, v7, :cond_81

    .line 653
    .line 654
    if-nez v8, :cond_2d

    .line 655
    .line 656
    goto/16 :goto_55

    .line 657
    .line 658
    :cond_2d
    new-array v7, v2, [I

    .line 659
    .line 660
    const/4 v9, 0x0

    .line 661
    :goto_1c
    if-ge v9, v2, :cond_2e

    .line 662
    .line 663
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/f0;->b(I)I

    .line 664
    .line 665
    .line 666
    move-result v10

    .line 667
    aput v10, v7, v9

    .line 668
    .line 669
    add-int/lit8 v9, v9, 0x1

    .line 670
    .line 671
    goto :goto_1c

    .line 672
    :cond_2e
    new-array v8, v3, [I

    .line 673
    .line 674
    const/4 v9, 0x0

    .line 675
    :goto_1d
    if-ge v9, v6, :cond_2f

    .line 676
    .line 677
    aget v10, v13, v9

    .line 678
    .line 679
    invoke-static {v10, v12}, Ljava/lang/Math;->min(II)I

    .line 680
    .line 681
    .line 682
    move-result v10

    .line 683
    aput v9, v8, v10

    .line 684
    .line 685
    add-int/lit8 v9, v9, 0x1

    .line 686
    .line 687
    goto :goto_1d

    .line 688
    :cond_2f
    new-instance v9, Lcom/google/android/gms/internal/ads/rA;

    .line 689
    .line 690
    invoke-direct {v9}, Lcom/google/android/gms/internal/ads/rA;-><init>()V

    .line 691
    .line 692
    .line 693
    const/4 v10, 0x0

    .line 694
    :goto_1e
    if-gt v10, v12, :cond_31

    .line 695
    .line 696
    aget v11, v1, v10

    .line 697
    .line 698
    move-object/from16 v24, v1

    .line 699
    .line 700
    const/4 v15, -0x1

    .line 701
    add-int/lit8 v1, v2, -0x1

    .line 702
    .line 703
    invoke-static {v11, v1}, Ljava/lang/Math;->min(II)I

    .line 704
    .line 705
    .line 706
    move-result v1

    .line 707
    if-ltz v1, :cond_30

    .line 708
    .line 709
    aget v1, v7, v1

    .line 710
    .line 711
    goto :goto_1f

    .line 712
    :cond_30
    const/4 v1, -0x1

    .line 713
    :goto_1f
    new-instance v11, Lcom/google/android/gms/internal/ads/Fv;

    .line 714
    .line 715
    aget v15, v8, v10

    .line 716
    .line 717
    invoke-direct {v11, v15, v1}, Lcom/google/android/gms/internal/ads/Fv;-><init>(II)V

    .line 718
    .line 719
    .line 720
    invoke-virtual {v9, v11}, Lcom/google/android/gms/internal/ads/rA;->g(Ljava/lang/Object;)V

    .line 721
    .line 722
    .line 723
    add-int/lit8 v10, v10, 0x1

    .line 724
    .line 725
    move-object/from16 v1, v24

    .line 726
    .line 727
    goto :goto_1e

    .line 728
    :cond_31
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/rA;->h()Lcom/google/android/gms/internal/ads/PA;

    .line 729
    .line 730
    .line 731
    move-result-object v1

    .line 732
    const/4 v2, 0x0

    .line 733
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/PA;->get(I)Ljava/lang/Object;

    .line 734
    .line 735
    .line 736
    move-result-object v7

    .line 737
    check-cast v7, Lcom/google/android/gms/internal/ads/Fv;

    .line 738
    .line 739
    iget v2, v7, Lcom/google/android/gms/internal/ads/Fv;->b:I

    .line 740
    .line 741
    const/4 v7, -0x1

    .line 742
    if-ne v2, v7, :cond_32

    .line 743
    .line 744
    new-instance v0, Lcom/google/android/gms/internal/ads/Ex;

    .line 745
    .line 746
    const/4 v1, 0x0

    .line 747
    invoke-direct {v0, v1, v4, v1, v1}, Lcom/google/android/gms/internal/ads/Ex;-><init>(Lcom/google/android/gms/internal/ads/PA;Lcom/google/android/gms/internal/ads/fw;Lcom/google/android/gms/internal/ads/fw;Lcom/google/android/gms/internal/ads/fw;)V

    .line 748
    .line 749
    .line 750
    goto/16 :goto_58

    .line 751
    .line 752
    :cond_32
    const/4 v2, 0x1

    .line 753
    :goto_20
    if-gt v2, v12, :cond_34

    .line 754
    .line 755
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/PA;->get(I)Ljava/lang/Object;

    .line 756
    .line 757
    .line 758
    move-result-object v8

    .line 759
    check-cast v8, Lcom/google/android/gms/internal/ads/Fv;

    .line 760
    .line 761
    iget v8, v8, Lcom/google/android/gms/internal/ads/Fv;->b:I

    .line 762
    .line 763
    if-eq v8, v7, :cond_33

    .line 764
    .line 765
    goto :goto_21

    .line 766
    :cond_33
    add-int/lit8 v2, v2, 0x1

    .line 767
    .line 768
    goto :goto_20

    .line 769
    :cond_34
    const/4 v2, -0x1

    .line 770
    :goto_21
    if-ne v2, v7, :cond_35

    .line 771
    .line 772
    new-instance v0, Lcom/google/android/gms/internal/ads/Ex;

    .line 773
    .line 774
    const/4 v1, 0x0

    .line 775
    invoke-direct {v0, v1, v4, v1, v1}, Lcom/google/android/gms/internal/ads/Ex;-><init>(Lcom/google/android/gms/internal/ads/PA;Lcom/google/android/gms/internal/ads/fw;Lcom/google/android/gms/internal/ads/fw;Lcom/google/android/gms/internal/ads/fw;)V

    .line 776
    .line 777
    .line 778
    goto/16 :goto_58

    .line 779
    .line 780
    :cond_35
    filled-new-array {v6, v6}, [I

    .line 781
    .line 782
    .line 783
    move-result-object v7

    .line 784
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 785
    .line 786
    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 787
    .line 788
    .line 789
    move-result-object v7

    .line 790
    check-cast v7, [[Z

    .line 791
    .line 792
    filled-new-array {v6, v6}, [I

    .line 793
    .line 794
    .line 795
    move-result-object v9

    .line 796
    invoke-static {v8, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 797
    .line 798
    .line 799
    move-result-object v8

    .line 800
    check-cast v8, [[Z

    .line 801
    .line 802
    const/4 v9, 0x1

    .line 803
    :goto_22
    if-ge v9, v6, :cond_37

    .line 804
    .line 805
    const/4 v10, 0x0

    .line 806
    :goto_23
    if-ge v10, v9, :cond_36

    .line 807
    .line 808
    aget-object v11, v7, v9

    .line 809
    .line 810
    aget-object v12, v8, v9

    .line 811
    .line 812
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 813
    .line 814
    .line 815
    move-result v15

    .line 816
    aput-boolean v15, v12, v10

    .line 817
    .line 818
    aput-boolean v15, v11, v10

    .line 819
    .line 820
    add-int/lit8 v10, v10, 0x1

    .line 821
    .line 822
    goto :goto_23

    .line 823
    :cond_36
    add-int/lit8 v9, v9, 0x1

    .line 824
    .line 825
    goto :goto_22

    .line 826
    :cond_37
    const/4 v9, 0x1

    .line 827
    :goto_24
    if-ge v9, v6, :cond_3b

    .line 828
    .line 829
    const/4 v10, 0x0

    .line 830
    :goto_25
    if-ge v10, v5, :cond_3a

    .line 831
    .line 832
    const/4 v11, 0x0

    .line 833
    :goto_26
    if-ge v11, v9, :cond_39

    .line 834
    .line 835
    aget-object v12, v8, v9

    .line 836
    .line 837
    aget-boolean v15, v12, v11

    .line 838
    .line 839
    if-eqz v15, :cond_38

    .line 840
    .line 841
    aget-object v15, v8, v11

    .line 842
    .line 843
    aget-boolean v15, v15, v10

    .line 844
    .line 845
    if-eqz v15, :cond_38

    .line 846
    .line 847
    const/4 v15, 0x1

    .line 848
    aput-boolean v15, v12, v10

    .line 849
    .line 850
    goto :goto_27

    .line 851
    :cond_38
    add-int/lit8 v11, v11, 0x1

    .line 852
    .line 853
    goto :goto_26

    .line 854
    :cond_39
    :goto_27
    add-int/lit8 v10, v10, 0x1

    .line 855
    .line 856
    goto :goto_25

    .line 857
    :cond_3a
    add-int/lit8 v9, v9, 0x1

    .line 858
    .line 859
    goto :goto_24

    .line 860
    :cond_3b
    new-array v9, v3, [I

    .line 861
    .line 862
    const/4 v10, 0x0

    .line 863
    :goto_28
    if-ge v10, v6, :cond_3d

    .line 864
    .line 865
    const/4 v11, 0x0

    .line 866
    const/4 v12, 0x0

    .line 867
    :goto_29
    if-ge v11, v10, :cond_3c

    .line 868
    .line 869
    aget-object v15, v7, v10

    .line 870
    .line 871
    aget-boolean v15, v15, v11

    .line 872
    .line 873
    add-int/2addr v12, v15

    .line 874
    add-int/lit8 v11, v11, 0x1

    .line 875
    .line 876
    goto :goto_29

    .line 877
    :cond_3c
    aget v11, v13, v10

    .line 878
    .line 879
    aput v12, v9, v11

    .line 880
    .line 881
    add-int/lit8 v10, v10, 0x1

    .line 882
    .line 883
    goto :goto_28

    .line 884
    :cond_3d
    const/4 v10, 0x0

    .line 885
    const/4 v11, 0x0

    .line 886
    :goto_2a
    if-ge v10, v6, :cond_3f

    .line 887
    .line 888
    aget v12, v13, v10

    .line 889
    .line 890
    aget v12, v9, v12

    .line 891
    .line 892
    if-nez v12, :cond_3e

    .line 893
    .line 894
    add-int/lit8 v11, v11, 0x1

    .line 895
    .line 896
    :cond_3e
    add-int/lit8 v10, v10, 0x1

    .line 897
    .line 898
    goto :goto_2a

    .line 899
    :cond_3f
    const/4 v10, 0x1

    .line 900
    if-le v11, v10, :cond_40

    .line 901
    .line 902
    new-instance v0, Lcom/google/android/gms/internal/ads/Ex;

    .line 903
    .line 904
    const/4 v1, 0x0

    .line 905
    invoke-direct {v0, v1, v4, v1, v1}, Lcom/google/android/gms/internal/ads/Ex;-><init>(Lcom/google/android/gms/internal/ads/PA;Lcom/google/android/gms/internal/ads/fw;Lcom/google/android/gms/internal/ads/fw;Lcom/google/android/gms/internal/ads/fw;)V

    .line 906
    .line 907
    .line 908
    goto/16 :goto_58

    .line 909
    .line 910
    :cond_40
    new-array v10, v6, [I

    .line 911
    .line 912
    new-array v11, v14, [I

    .line 913
    .line 914
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 915
    .line 916
    .line 917
    move-result v12

    .line 918
    if-eqz v12, :cond_42

    .line 919
    .line 920
    const/4 v12, 0x0

    .line 921
    :goto_2b
    if-ge v12, v6, :cond_41

    .line 922
    .line 923
    const/4 v15, 0x3

    .line 924
    invoke-virtual {v0, v15}, Lcom/google/android/gms/internal/ads/f0;->b(I)I

    .line 925
    .line 926
    .line 927
    move-result v24

    .line 928
    aput v24, v10, v12

    .line 929
    .line 930
    add-int/lit8 v12, v12, 0x1

    .line 931
    .line 932
    goto :goto_2b

    .line 933
    :cond_41
    move/from16 v12, v26

    .line 934
    .line 935
    :goto_2c
    const/4 v15, 0x0

    .line 936
    goto :goto_2d

    .line 937
    :cond_42
    move/from16 v12, v26

    .line 938
    .line 939
    const/4 v15, 0x0

    .line 940
    invoke-static {v10, v15, v6, v12}, Ljava/util/Arrays;->fill([IIII)V

    .line 941
    .line 942
    .line 943
    goto :goto_2c

    .line 944
    :goto_2d
    if-ge v15, v14, :cond_44

    .line 945
    .line 946
    move-object/from16 p0, v8

    .line 947
    .line 948
    move-object/from16 v26, v9

    .line 949
    .line 950
    move-object/from16 v24, v13

    .line 951
    .line 952
    const/4 v9, 0x0

    .line 953
    const/4 v13, 0x0

    .line 954
    :goto_2e
    aget v8, v25, v15

    .line 955
    .line 956
    if-ge v13, v8, :cond_43

    .line 957
    .line 958
    aget-object v8, v22, v15

    .line 959
    .line 960
    aget v8, v8, v13

    .line 961
    .line 962
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/PA;->get(I)Ljava/lang/Object;

    .line 963
    .line 964
    .line 965
    move-result-object v8

    .line 966
    check-cast v8, Lcom/google/android/gms/internal/ads/Fv;

    .line 967
    .line 968
    iget v8, v8, Lcom/google/android/gms/internal/ads/Fv;->a:I

    .line 969
    .line 970
    aget v8, v10, v8

    .line 971
    .line 972
    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    .line 973
    .line 974
    .line 975
    move-result v9

    .line 976
    add-int/lit8 v13, v13, 0x1

    .line 977
    .line 978
    goto :goto_2e

    .line 979
    :cond_43
    add-int/lit8 v9, v9, 0x1

    .line 980
    .line 981
    aput v9, v11, v15

    .line 982
    .line 983
    add-int/lit8 v15, v15, 0x1

    .line 984
    .line 985
    move-object/from16 v8, p0

    .line 986
    .line 987
    move-object/from16 v13, v24

    .line 988
    .line 989
    move-object/from16 v9, v26

    .line 990
    .line 991
    goto :goto_2d

    .line 992
    :cond_44
    move-object/from16 p0, v8

    .line 993
    .line 994
    move-object/from16 v26, v9

    .line 995
    .line 996
    move-object/from16 v24, v13

    .line 997
    .line 998
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 999
    .line 1000
    .line 1001
    move-result v8

    .line 1002
    if-eqz v8, :cond_47

    .line 1003
    .line 1004
    const/4 v8, 0x0

    .line 1005
    :goto_2f
    if-ge v8, v5, :cond_47

    .line 1006
    .line 1007
    add-int/lit8 v9, v8, 0x1

    .line 1008
    .line 1009
    move v10, v9

    .line 1010
    :goto_30
    if-ge v10, v6, :cond_46

    .line 1011
    .line 1012
    aget-object v13, v7, v10

    .line 1013
    .line 1014
    aget-boolean v13, v13, v8

    .line 1015
    .line 1016
    if-eqz v13, :cond_45

    .line 1017
    .line 1018
    const/4 v13, 0x3

    .line 1019
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/f0;->m(I)V

    .line 1020
    .line 1021
    .line 1022
    :cond_45
    add-int/lit8 v10, v10, 0x1

    .line 1023
    .line 1024
    goto :goto_30

    .line 1025
    :cond_46
    move v8, v9

    .line 1026
    goto :goto_2f

    .line 1027
    :cond_47
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->k()V

    .line 1028
    .line 1029
    .line 1030
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 1031
    .line 1032
    .line 1033
    move-result v5

    .line 1034
    const/4 v8, 0x1

    .line 1035
    add-int/2addr v5, v8

    .line 1036
    new-instance v9, Lcom/google/android/gms/internal/ads/rA;

    .line 1037
    .line 1038
    invoke-direct {v9}, Lcom/google/android/gms/internal/ads/rA;-><init>()V

    .line 1039
    .line 1040
    .line 1041
    move-object/from16 v10, v21

    .line 1042
    .line 1043
    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/rA;->g(Ljava/lang/Object;)V

    .line 1044
    .line 1045
    .line 1046
    if-le v5, v8, :cond_48

    .line 1047
    .line 1048
    move-object/from16 v8, v19

    .line 1049
    .line 1050
    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/rA;->g(Ljava/lang/Object;)V

    .line 1051
    .line 1052
    .line 1053
    move-object v10, v8

    .line 1054
    const/4 v8, 0x2

    .line 1055
    :goto_31
    if-ge v8, v5, :cond_48

    .line 1056
    .line 1057
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 1058
    .line 1059
    .line 1060
    move-result v13

    .line 1061
    invoke-static {v0, v13, v12, v10}, Lcom/google/android/gms/internal/ads/sy;->j(Lcom/google/android/gms/internal/ads/f0;ZILcom/google/android/gms/internal/ads/Wv;)Lcom/google/android/gms/internal/ads/Wv;

    .line 1062
    .line 1063
    .line 1064
    move-result-object v10

    .line 1065
    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/rA;->g(Ljava/lang/Object;)V

    .line 1066
    .line 1067
    .line 1068
    add-int/lit8 v8, v8, 0x1

    .line 1069
    .line 1070
    goto :goto_31

    .line 1071
    :cond_48
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/rA;->h()Lcom/google/android/gms/internal/ads/PA;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v8

    .line 1075
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 1076
    .line 1077
    .line 1078
    move-result v9

    .line 1079
    add-int/2addr v9, v14

    .line 1080
    if-le v9, v14, :cond_49

    .line 1081
    .line 1082
    new-instance v0, Lcom/google/android/gms/internal/ads/Ex;

    .line 1083
    .line 1084
    const/4 v1, 0x0

    .line 1085
    invoke-direct {v0, v1, v4, v1, v1}, Lcom/google/android/gms/internal/ads/Ex;-><init>(Lcom/google/android/gms/internal/ads/PA;Lcom/google/android/gms/internal/ads/fw;Lcom/google/android/gms/internal/ads/fw;Lcom/google/android/gms/internal/ads/fw;)V

    .line 1086
    .line 1087
    .line 1088
    goto/16 :goto_58

    .line 1089
    .line 1090
    :cond_49
    const/4 v10, 0x2

    .line 1091
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/f0;->b(I)I

    .line 1092
    .line 1093
    .line 1094
    move-result v12

    .line 1095
    filled-new-array {v9, v3}, [I

    .line 1096
    .line 1097
    .line 1098
    move-result-object v10

    .line 1099
    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 1100
    .line 1101
    invoke-static {v13, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v10

    .line 1105
    check-cast v10, [[Z

    .line 1106
    .line 1107
    new-array v13, v9, [I

    .line 1108
    .line 1109
    new-array v15, v9, [I

    .line 1110
    .line 1111
    move-object/from16 v19, v8

    .line 1112
    .line 1113
    const/4 v8, 0x0

    .line 1114
    :goto_32
    if-ge v8, v14, :cond_4e

    .line 1115
    .line 1116
    move/from16 v21, v14

    .line 1117
    .line 1118
    const/4 v14, 0x0

    .line 1119
    aput v14, v13, v8

    .line 1120
    .line 1121
    aget v14, v23, v8

    .line 1122
    .line 1123
    aput v14, v15, v8

    .line 1124
    .line 1125
    if-nez v12, :cond_4a

    .line 1126
    .line 1127
    aget-object v14, v10, v8

    .line 1128
    .line 1129
    move-object/from16 v27, v7

    .line 1130
    .line 1131
    aget v7, v25, v8

    .line 1132
    .line 1133
    move/from16 v29, v6

    .line 1134
    .line 1135
    move-object/from16 v28, v11

    .line 1136
    .line 1137
    const/4 v6, 0x0

    .line 1138
    const/4 v11, 0x1

    .line 1139
    invoke-static {v14, v6, v7, v11}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 1140
    .line 1141
    .line 1142
    aget v6, v25, v8

    .line 1143
    .line 1144
    aput v6, v13, v8

    .line 1145
    .line 1146
    goto :goto_35

    .line 1147
    :cond_4a
    move/from16 v29, v6

    .line 1148
    .line 1149
    move-object/from16 v27, v7

    .line 1150
    .line 1151
    move-object/from16 v28, v11

    .line 1152
    .line 1153
    const/4 v11, 0x1

    .line 1154
    if-ne v12, v11, :cond_4d

    .line 1155
    .line 1156
    const/4 v6, 0x0

    .line 1157
    :goto_33
    aget v7, v25, v8

    .line 1158
    .line 1159
    if-ge v6, v7, :cond_4c

    .line 1160
    .line 1161
    aget-object v7, v10, v8

    .line 1162
    .line 1163
    aget-object v11, v22, v8

    .line 1164
    .line 1165
    aget v11, v11, v6

    .line 1166
    .line 1167
    if-ne v11, v14, :cond_4b

    .line 1168
    .line 1169
    const/4 v11, 0x1

    .line 1170
    goto :goto_34

    .line 1171
    :cond_4b
    const/4 v11, 0x0

    .line 1172
    :goto_34
    aput-boolean v11, v7, v6

    .line 1173
    .line 1174
    add-int/lit8 v6, v6, 0x1

    .line 1175
    .line 1176
    goto :goto_33

    .line 1177
    :cond_4c
    const/4 v6, 0x1

    .line 1178
    aput v6, v13, v8

    .line 1179
    .line 1180
    goto :goto_35

    .line 1181
    :cond_4d
    const/4 v6, 0x1

    .line 1182
    const/4 v7, 0x0

    .line 1183
    aget-object v11, v10, v7

    .line 1184
    .line 1185
    aput-boolean v6, v11, v7

    .line 1186
    .line 1187
    aput v6, v13, v7

    .line 1188
    .line 1189
    :goto_35
    add-int/lit8 v8, v8, 0x1

    .line 1190
    .line 1191
    move/from16 v14, v21

    .line 1192
    .line 1193
    move-object/from16 v7, v27

    .line 1194
    .line 1195
    move-object/from16 v11, v28

    .line 1196
    .line 1197
    move/from16 v6, v29

    .line 1198
    .line 1199
    goto :goto_32

    .line 1200
    :cond_4e
    move/from16 v29, v6

    .line 1201
    .line 1202
    move-object/from16 v27, v7

    .line 1203
    .line 1204
    move-object/from16 v28, v11

    .line 1205
    .line 1206
    move/from16 v21, v14

    .line 1207
    .line 1208
    new-array v6, v3, [I

    .line 1209
    .line 1210
    filled-new-array {v9, v3}, [I

    .line 1211
    .line 1212
    .line 1213
    move-result-object v3

    .line 1214
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 1215
    .line 1216
    invoke-static {v7, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 1217
    .line 1218
    .line 1219
    move-result-object v3

    .line 1220
    check-cast v3, [[Z

    .line 1221
    .line 1222
    const/4 v7, 0x0

    .line 1223
    const/4 v8, 0x1

    .line 1224
    :goto_36
    if-ge v8, v9, :cond_5b

    .line 1225
    .line 1226
    const/4 v11, 0x2

    .line 1227
    if-ne v12, v11, :cond_50

    .line 1228
    .line 1229
    const/4 v11, 0x0

    .line 1230
    :goto_37
    aget v14, v25, v8

    .line 1231
    .line 1232
    if-ge v11, v14, :cond_50

    .line 1233
    .line 1234
    aget-object v14, v10, v8

    .line 1235
    .line 1236
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 1237
    .line 1238
    .line 1239
    move-result v23

    .line 1240
    aput-boolean v23, v14, v11

    .line 1241
    .line 1242
    aget v14, v13, v8

    .line 1243
    .line 1244
    aget-object v23, v10, v8

    .line 1245
    .line 1246
    aget-boolean v23, v23, v11

    .line 1247
    .line 1248
    add-int v14, v14, v23

    .line 1249
    .line 1250
    aput v14, v13, v8

    .line 1251
    .line 1252
    if-eqz v23, :cond_4f

    .line 1253
    .line 1254
    aget-object v14, v22, v8

    .line 1255
    .line 1256
    aget v14, v14, v11

    .line 1257
    .line 1258
    aput v14, v15, v8

    .line 1259
    .line 1260
    :cond_4f
    add-int/lit8 v11, v11, 0x1

    .line 1261
    .line 1262
    goto :goto_37

    .line 1263
    :cond_50
    if-nez v7, :cond_53

    .line 1264
    .line 1265
    aget-object v7, v22, v8

    .line 1266
    .line 1267
    const/4 v11, 0x0

    .line 1268
    aget v7, v7, v11

    .line 1269
    .line 1270
    if-nez v7, :cond_52

    .line 1271
    .line 1272
    aget-object v7, v10, v8

    .line 1273
    .line 1274
    aget-boolean v7, v7, v11

    .line 1275
    .line 1276
    if-eqz v7, :cond_52

    .line 1277
    .line 1278
    const/4 v7, 0x0

    .line 1279
    const/4 v11, 0x1

    .line 1280
    :goto_38
    aget v14, v25, v8

    .line 1281
    .line 1282
    if-ge v11, v14, :cond_53

    .line 1283
    .line 1284
    aget-object v14, v22, v8

    .line 1285
    .line 1286
    aget v14, v14, v11

    .line 1287
    .line 1288
    if-ne v14, v2, :cond_51

    .line 1289
    .line 1290
    aget-object v14, v10, v8

    .line 1291
    .line 1292
    aget-boolean v14, v14, v2

    .line 1293
    .line 1294
    if-eqz v14, :cond_51

    .line 1295
    .line 1296
    move v7, v8

    .line 1297
    :cond_51
    add-int/lit8 v11, v11, 0x1

    .line 1298
    .line 1299
    goto :goto_38

    .line 1300
    :cond_52
    const/4 v7, 0x0

    .line 1301
    :cond_53
    const/4 v11, 0x0

    .line 1302
    :goto_39
    aget v14, v25, v8

    .line 1303
    .line 1304
    if-ge v11, v14, :cond_59

    .line 1305
    .line 1306
    const/4 v14, 0x1

    .line 1307
    if-le v5, v14, :cond_57

    .line 1308
    .line 1309
    aget-object v14, v3, v8

    .line 1310
    .line 1311
    aget-object v23, v10, v8

    .line 1312
    .line 1313
    aget-boolean v23, v23, v11

    .line 1314
    .line 1315
    aput-boolean v23, v14, v11

    .line 1316
    .line 1317
    move v14, v9

    .line 1318
    move-object/from16 v23, v10

    .line 1319
    .line 1320
    int-to-double v9, v5

    .line 1321
    move/from16 v30, v2

    .line 1322
    .line 1323
    sget-object v2, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    .line 1324
    .line 1325
    invoke-static {v9, v10, v2}, Lcom/google/android/gms/internal/ads/mB;->a(DLjava/math/RoundingMode;)I

    .line 1326
    .line 1327
    .line 1328
    move-result v2

    .line 1329
    aget-object v9, v3, v8

    .line 1330
    .line 1331
    aget-boolean v9, v9, v11

    .line 1332
    .line 1333
    if-nez v9, :cond_55

    .line 1334
    .line 1335
    aget-object v9, v22, v8

    .line 1336
    .line 1337
    aget v9, v9, v11

    .line 1338
    .line 1339
    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/PA;->get(I)Ljava/lang/Object;

    .line 1340
    .line 1341
    .line 1342
    move-result-object v9

    .line 1343
    check-cast v9, Lcom/google/android/gms/internal/ads/Fv;

    .line 1344
    .line 1345
    const/4 v10, 0x0

    .line 1346
    :goto_3a
    if-ge v10, v11, :cond_55

    .line 1347
    .line 1348
    aget-object v31, v22, v8

    .line 1349
    .line 1350
    move/from16 v32, v5

    .line 1351
    .line 1352
    aget v5, v31, v10

    .line 1353
    .line 1354
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/PA;->get(I)Ljava/lang/Object;

    .line 1355
    .line 1356
    .line 1357
    move-result-object v5

    .line 1358
    check-cast v5, Lcom/google/android/gms/internal/ads/Fv;

    .line 1359
    .line 1360
    iget v5, v5, Lcom/google/android/gms/internal/ads/Fv;->a:I

    .line 1361
    .line 1362
    move/from16 v31, v12

    .line 1363
    .line 1364
    iget v12, v9, Lcom/google/android/gms/internal/ads/Fv;->a:I

    .line 1365
    .line 1366
    aget-object v12, p0, v12

    .line 1367
    .line 1368
    aget-boolean v5, v12, v5

    .line 1369
    .line 1370
    if-eqz v5, :cond_54

    .line 1371
    .line 1372
    aget-object v5, v3, v8

    .line 1373
    .line 1374
    const/4 v9, 0x1

    .line 1375
    aput-boolean v9, v5, v11

    .line 1376
    .line 1377
    goto :goto_3b

    .line 1378
    :cond_54
    add-int/lit8 v10, v10, 0x1

    .line 1379
    .line 1380
    move/from16 v12, v31

    .line 1381
    .line 1382
    move/from16 v5, v32

    .line 1383
    .line 1384
    goto :goto_3a

    .line 1385
    :cond_55
    move/from16 v32, v5

    .line 1386
    .line 1387
    move/from16 v31, v12

    .line 1388
    .line 1389
    :goto_3b
    aget-object v5, v3, v8

    .line 1390
    .line 1391
    aget-boolean v5, v5, v11

    .line 1392
    .line 1393
    if-eqz v5, :cond_58

    .line 1394
    .line 1395
    if-lez v7, :cond_56

    .line 1396
    .line 1397
    if-ne v8, v7, :cond_56

    .line 1398
    .line 1399
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/f0;->b(I)I

    .line 1400
    .line 1401
    .line 1402
    move-result v2

    .line 1403
    aput v2, v6, v11

    .line 1404
    .line 1405
    goto :goto_3c

    .line 1406
    :cond_56
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/f0;->m(I)V

    .line 1407
    .line 1408
    .line 1409
    goto :goto_3c

    .line 1410
    :cond_57
    move/from16 v30, v2

    .line 1411
    .line 1412
    move/from16 v32, v5

    .line 1413
    .line 1414
    move v14, v9

    .line 1415
    move-object/from16 v23, v10

    .line 1416
    .line 1417
    move/from16 v31, v12

    .line 1418
    .line 1419
    :cond_58
    :goto_3c
    add-int/lit8 v11, v11, 0x1

    .line 1420
    .line 1421
    move v9, v14

    .line 1422
    move-object/from16 v10, v23

    .line 1423
    .line 1424
    move/from16 v2, v30

    .line 1425
    .line 1426
    move/from16 v12, v31

    .line 1427
    .line 1428
    move/from16 v5, v32

    .line 1429
    .line 1430
    goto/16 :goto_39

    .line 1431
    .line 1432
    :cond_59
    move/from16 v30, v2

    .line 1433
    .line 1434
    move/from16 v32, v5

    .line 1435
    .line 1436
    move v14, v9

    .line 1437
    move-object/from16 v23, v10

    .line 1438
    .line 1439
    move/from16 v31, v12

    .line 1440
    .line 1441
    aget v2, v13, v8

    .line 1442
    .line 1443
    const/4 v5, 0x1

    .line 1444
    if-ne v2, v5, :cond_5a

    .line 1445
    .line 1446
    aget v2, v15, v8

    .line 1447
    .line 1448
    aget v2, v26, v2

    .line 1449
    .line 1450
    if-lez v2, :cond_5a

    .line 1451
    .line 1452
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->k()V

    .line 1453
    .line 1454
    .line 1455
    :cond_5a
    add-int/lit8 v8, v8, 0x1

    .line 1456
    .line 1457
    move v9, v14

    .line 1458
    move-object/from16 v10, v23

    .line 1459
    .line 1460
    move/from16 v2, v30

    .line 1461
    .line 1462
    move/from16 v12, v31

    .line 1463
    .line 1464
    move/from16 v5, v32

    .line 1465
    .line 1466
    goto/16 :goto_36

    .line 1467
    .line 1468
    :cond_5b
    move v14, v9

    .line 1469
    if-nez v7, :cond_5c

    .line 1470
    .line 1471
    new-instance v0, Lcom/google/android/gms/internal/ads/Ex;

    .line 1472
    .line 1473
    const/4 v1, 0x0

    .line 1474
    invoke-direct {v0, v1, v4, v1, v1}, Lcom/google/android/gms/internal/ads/Ex;-><init>(Lcom/google/android/gms/internal/ads/PA;Lcom/google/android/gms/internal/ads/fw;Lcom/google/android/gms/internal/ads/fw;Lcom/google/android/gms/internal/ads/fw;)V

    .line 1475
    .line 1476
    .line 1477
    goto/16 :goto_58

    .line 1478
    .line 1479
    :cond_5c
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 1480
    .line 1481
    .line 1482
    move-result v2

    .line 1483
    add-int/lit8 v4, v2, 0x1

    .line 1484
    .line 1485
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/uA;->r(I)Lcom/google/android/gms/internal/ads/rA;

    .line 1486
    .line 1487
    .line 1488
    move-result-object v5

    .line 1489
    move/from16 v7, v29

    .line 1490
    .line 1491
    new-array v8, v7, [I

    .line 1492
    .line 1493
    const/4 v9, 0x0

    .line 1494
    :goto_3d
    if-ge v9, v4, :cond_63

    .line 1495
    .line 1496
    const/16 v10, 0x10

    .line 1497
    .line 1498
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/f0;->b(I)I

    .line 1499
    .line 1500
    .line 1501
    move-result v11

    .line 1502
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/f0;->b(I)I

    .line 1503
    .line 1504
    .line 1505
    move-result v12

    .line 1506
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 1507
    .line 1508
    .line 1509
    move-result v13

    .line 1510
    if-eqz v13, :cond_5e

    .line 1511
    .line 1512
    const/4 v13, 0x2

    .line 1513
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/f0;->b(I)I

    .line 1514
    .line 1515
    .line 1516
    move-result v15

    .line 1517
    const/4 v13, 0x3

    .line 1518
    if-ne v15, v13, :cond_5d

    .line 1519
    .line 1520
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->k()V

    .line 1521
    .line 1522
    .line 1523
    :cond_5d
    const/4 v13, 0x4

    .line 1524
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/f0;->b(I)I

    .line 1525
    .line 1526
    .line 1527
    move-result v20

    .line 1528
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/f0;->b(I)I

    .line 1529
    .line 1530
    .line 1531
    move-result v22

    .line 1532
    move/from16 v31, v20

    .line 1533
    .line 1534
    move/from16 v32, v22

    .line 1535
    .line 1536
    goto :goto_3e

    .line 1537
    :cond_5e
    const/4 v15, 0x0

    .line 1538
    const/16 v31, 0x0

    .line 1539
    .line 1540
    const/16 v32, 0x0

    .line 1541
    .line 1542
    :goto_3e
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 1543
    .line 1544
    .line 1545
    move-result v13

    .line 1546
    if-eqz v13, :cond_62

    .line 1547
    .line 1548
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 1549
    .line 1550
    .line 1551
    move-result v13

    .line 1552
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 1553
    .line 1554
    .line 1555
    move-result v20

    .line 1556
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 1557
    .line 1558
    .line 1559
    move-result v22

    .line 1560
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 1561
    .line 1562
    .line 1563
    move-result v23

    .line 1564
    const/4 v10, 0x1

    .line 1565
    if-eq v15, v10, :cond_5f

    .line 1566
    .line 1567
    const/4 v10, 0x2

    .line 1568
    if-ne v15, v10, :cond_60

    .line 1569
    .line 1570
    :cond_5f
    const/4 v10, 0x2

    .line 1571
    goto :goto_3f

    .line 1572
    :cond_60
    const/4 v10, 0x1

    .line 1573
    :goto_3f
    add-int v13, v13, v20

    .line 1574
    .line 1575
    mul-int v13, v13, v10

    .line 1576
    .line 1577
    sub-int/2addr v11, v13

    .line 1578
    const/4 v10, 0x1

    .line 1579
    if-ne v15, v10, :cond_61

    .line 1580
    .line 1581
    const/4 v10, 0x2

    .line 1582
    goto :goto_40

    .line 1583
    :cond_61
    const/4 v10, 0x1

    .line 1584
    :goto_40
    add-int v22, v22, v23

    .line 1585
    .line 1586
    mul-int v22, v22, v10

    .line 1587
    .line 1588
    sub-int v12, v12, v22

    .line 1589
    .line 1590
    :cond_62
    move/from16 v33, v11

    .line 1591
    .line 1592
    move/from16 v34, v12

    .line 1593
    .line 1594
    new-instance v10, Lcom/google/android/gms/internal/ads/qw;

    .line 1595
    .line 1596
    move-object/from16 v29, v10

    .line 1597
    .line 1598
    move/from16 v30, v15

    .line 1599
    .line 1600
    invoke-direct/range {v29 .. v34}, Lcom/google/android/gms/internal/ads/qw;-><init>(IIIII)V

    .line 1601
    .line 1602
    .line 1603
    invoke-virtual {v5, v10}, Lcom/google/android/gms/internal/ads/rA;->g(Ljava/lang/Object;)V

    .line 1604
    .line 1605
    .line 1606
    add-int/lit8 v9, v9, 0x1

    .line 1607
    .line 1608
    goto :goto_3d

    .line 1609
    :cond_63
    const/4 v9, 0x1

    .line 1610
    if-le v4, v9, :cond_64

    .line 1611
    .line 1612
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 1613
    .line 1614
    .line 1615
    move-result v9

    .line 1616
    if-eqz v9, :cond_64

    .line 1617
    .line 1618
    int-to-double v9, v4

    .line 1619
    sget-object v2, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    .line 1620
    .line 1621
    invoke-static {v9, v10, v2}, Lcom/google/android/gms/internal/ads/mB;->a(DLjava/math/RoundingMode;)I

    .line 1622
    .line 1623
    .line 1624
    move-result v2

    .line 1625
    const/4 v4, 0x1

    .line 1626
    :goto_41
    if-ge v4, v7, :cond_65

    .line 1627
    .line 1628
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/f0;->b(I)I

    .line 1629
    .line 1630
    .line 1631
    move-result v9

    .line 1632
    aput v9, v8, v4

    .line 1633
    .line 1634
    add-int/lit8 v4, v4, 0x1

    .line 1635
    .line 1636
    goto :goto_41

    .line 1637
    :cond_64
    const/4 v4, 0x1

    .line 1638
    :goto_42
    if-ge v4, v7, :cond_65

    .line 1639
    .line 1640
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    .line 1641
    .line 1642
    .line 1643
    move-result v9

    .line 1644
    aput v9, v8, v4

    .line 1645
    .line 1646
    add-int/lit8 v4, v4, 0x1

    .line 1647
    .line 1648
    goto :goto_42

    .line 1649
    :cond_65
    new-instance v2, Lcom/google/android/gms/internal/ads/fw;

    .line 1650
    .line 1651
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/rA;->h()Lcom/google/android/gms/internal/ads/PA;

    .line 1652
    .line 1653
    .line 1654
    move-result-object v4

    .line 1655
    const/4 v5, 0x1

    .line 1656
    invoke-direct {v2, v4, v8, v5}, Lcom/google/android/gms/internal/ads/fw;-><init>(Lcom/google/android/gms/internal/ads/PA;[II)V

    .line 1657
    .line 1658
    .line 1659
    const/4 v4, 0x2

    .line 1660
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/f0;->m(I)V

    .line 1661
    .line 1662
    .line 1663
    const/4 v4, 0x1

    .line 1664
    :goto_43
    if-ge v4, v7, :cond_67

    .line 1665
    .line 1666
    aget v5, v24, v4

    .line 1667
    .line 1668
    aget v5, v26, v5

    .line 1669
    .line 1670
    if-nez v5, :cond_66

    .line 1671
    .line 1672
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->k()V

    .line 1673
    .line 1674
    .line 1675
    :cond_66
    add-int/lit8 v4, v4, 0x1

    .line 1676
    .line 1677
    goto :goto_43

    .line 1678
    :cond_67
    move v9, v14

    .line 1679
    const/4 v4, 0x1

    .line 1680
    :goto_44
    if-ge v4, v9, :cond_6d

    .line 1681
    .line 1682
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 1683
    .line 1684
    .line 1685
    move-result v5

    .line 1686
    const/4 v8, 0x0

    .line 1687
    :goto_45
    aget v10, v28, v4

    .line 1688
    .line 1689
    if-ge v8, v10, :cond_6c

    .line 1690
    .line 1691
    if-lez v8, :cond_68

    .line 1692
    .line 1693
    if-eqz v5, :cond_68

    .line 1694
    .line 1695
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 1696
    .line 1697
    .line 1698
    move-result v10

    .line 1699
    if-eqz v10, :cond_6b

    .line 1700
    .line 1701
    goto :goto_46

    .line 1702
    :cond_68
    if-nez v8, :cond_6b

    .line 1703
    .line 1704
    :goto_46
    const/4 v10, 0x0

    .line 1705
    :goto_47
    aget v11, v25, v4

    .line 1706
    .line 1707
    if-ge v10, v11, :cond_6a

    .line 1708
    .line 1709
    aget-object v11, v3, v4

    .line 1710
    .line 1711
    aget-boolean v11, v11, v10

    .line 1712
    .line 1713
    if-eqz v11, :cond_69

    .line 1714
    .line 1715
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 1716
    .line 1717
    .line 1718
    :cond_69
    add-int/lit8 v10, v10, 0x1

    .line 1719
    .line 1720
    goto :goto_47

    .line 1721
    :cond_6a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 1722
    .line 1723
    .line 1724
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 1725
    .line 1726
    .line 1727
    :cond_6b
    add-int/lit8 v8, v8, 0x1

    .line 1728
    .line 1729
    goto :goto_45

    .line 1730
    :cond_6c
    add-int/lit8 v4, v4, 0x1

    .line 1731
    .line 1732
    goto :goto_44

    .line 1733
    :cond_6d
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 1734
    .line 1735
    .line 1736
    move-result v3

    .line 1737
    const/4 v4, 0x2

    .line 1738
    add-int/2addr v3, v4

    .line 1739
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 1740
    .line 1741
    .line 1742
    move-result v4

    .line 1743
    if-eqz v4, :cond_6e

    .line 1744
    .line 1745
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/f0;->m(I)V

    .line 1746
    .line 1747
    .line 1748
    goto :goto_4a

    .line 1749
    :cond_6e
    const/4 v4, 0x1

    .line 1750
    :goto_48
    if-ge v4, v7, :cond_71

    .line 1751
    .line 1752
    const/4 v5, 0x0

    .line 1753
    :goto_49
    if-ge v5, v4, :cond_70

    .line 1754
    .line 1755
    aget-object v8, v27, v4

    .line 1756
    .line 1757
    aget-boolean v8, v8, v5

    .line 1758
    .line 1759
    if-eqz v8, :cond_6f

    .line 1760
    .line 1761
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/f0;->m(I)V

    .line 1762
    .line 1763
    .line 1764
    :cond_6f
    add-int/lit8 v5, v5, 0x1

    .line 1765
    .line 1766
    goto :goto_49

    .line 1767
    :cond_70
    add-int/lit8 v4, v4, 0x1

    .line 1768
    .line 1769
    goto :goto_48

    .line 1770
    :cond_71
    :goto_4a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 1771
    .line 1772
    .line 1773
    move-result v3

    .line 1774
    const/4 v4, 0x1

    .line 1775
    :goto_4b
    if-gt v4, v3, :cond_72

    .line 1776
    .line 1777
    const/16 v5, 0x8

    .line 1778
    .line 1779
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/f0;->m(I)V

    .line 1780
    .line 1781
    .line 1782
    add-int/lit8 v4, v4, 0x1

    .line 1783
    .line 1784
    goto :goto_4b

    .line 1785
    :cond_72
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 1786
    .line 1787
    .line 1788
    move-result v3

    .line 1789
    if-eqz v3, :cond_80

    .line 1790
    .line 1791
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->h()V

    .line 1792
    .line 1793
    .line 1794
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 1795
    .line 1796
    .line 1797
    move-result v3

    .line 1798
    if-nez v3, :cond_73

    .line 1799
    .line 1800
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 1801
    .line 1802
    .line 1803
    move-result v3

    .line 1804
    if-eqz v3, :cond_74

    .line 1805
    .line 1806
    :cond_73
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->k()V

    .line 1807
    .line 1808
    .line 1809
    :cond_74
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 1810
    .line 1811
    .line 1812
    move-result v3

    .line 1813
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 1814
    .line 1815
    .line 1816
    move-result v4

    .line 1817
    if-nez v3, :cond_75

    .line 1818
    .line 1819
    if-eqz v4, :cond_7b

    .line 1820
    .line 1821
    :cond_75
    move/from16 v14, v21

    .line 1822
    .line 1823
    const/4 v5, 0x0

    .line 1824
    :goto_4c
    if-ge v5, v14, :cond_7b

    .line 1825
    .line 1826
    const/4 v8, 0x0

    .line 1827
    :goto_4d
    aget v9, v28, v5

    .line 1828
    .line 1829
    if-ge v8, v9, :cond_7a

    .line 1830
    .line 1831
    if-eqz v3, :cond_76

    .line 1832
    .line 1833
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 1834
    .line 1835
    .line 1836
    move-result v9

    .line 1837
    goto :goto_4e

    .line 1838
    :cond_76
    const/4 v9, 0x0

    .line 1839
    :goto_4e
    if-eqz v4, :cond_77

    .line 1840
    .line 1841
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 1842
    .line 1843
    .line 1844
    move-result v10

    .line 1845
    goto :goto_4f

    .line 1846
    :cond_77
    const/4 v10, 0x0

    .line 1847
    :goto_4f
    if-eqz v9, :cond_78

    .line 1848
    .line 1849
    const/16 v9, 0x20

    .line 1850
    .line 1851
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/f0;->m(I)V

    .line 1852
    .line 1853
    .line 1854
    :cond_78
    if-eqz v10, :cond_79

    .line 1855
    .line 1856
    const/16 v9, 0x12

    .line 1857
    .line 1858
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/f0;->m(I)V

    .line 1859
    .line 1860
    .line 1861
    :cond_79
    add-int/lit8 v8, v8, 0x1

    .line 1862
    .line 1863
    goto :goto_4d

    .line 1864
    :cond_7a
    add-int/lit8 v5, v5, 0x1

    .line 1865
    .line 1866
    goto :goto_4c

    .line 1867
    :cond_7b
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 1868
    .line 1869
    .line 1870
    move-result v3

    .line 1871
    if-eqz v3, :cond_7c

    .line 1872
    .line 1873
    const/4 v4, 0x4

    .line 1874
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/f0;->b(I)I

    .line 1875
    .line 1876
    .line 1877
    move-result v5

    .line 1878
    const/4 v4, 0x1

    .line 1879
    add-int/2addr v5, v4

    .line 1880
    goto :goto_50

    .line 1881
    :cond_7c
    const/4 v4, 0x1

    .line 1882
    move v5, v7

    .line 1883
    :goto_50
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/uA;->r(I)Lcom/google/android/gms/internal/ads/rA;

    .line 1884
    .line 1885
    .line 1886
    move-result-object v8

    .line 1887
    new-array v9, v7, [I

    .line 1888
    .line 1889
    const/4 v10, 0x0

    .line 1890
    :goto_51
    if-ge v10, v5, :cond_7e

    .line 1891
    .line 1892
    const/4 v11, 0x3

    .line 1893
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/f0;->m(I)V

    .line 1894
    .line 1895
    .line 1896
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 1897
    .line 1898
    .line 1899
    move-result v12

    .line 1900
    if-eq v4, v12, :cond_7d

    .line 1901
    .line 1902
    const/16 v4, 0x8

    .line 1903
    .line 1904
    const/4 v13, 0x2

    .line 1905
    goto :goto_52

    .line 1906
    :cond_7d
    const/16 v4, 0x8

    .line 1907
    .line 1908
    const/4 v13, 0x1

    .line 1909
    :goto_52
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/f0;->b(I)I

    .line 1910
    .line 1911
    .line 1912
    move-result v12

    .line 1913
    invoke-static {v12}, Lcom/google/android/gms/internal/ads/rL;->a(I)I

    .line 1914
    .line 1915
    .line 1916
    move-result v12

    .line 1917
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/f0;->b(I)I

    .line 1918
    .line 1919
    .line 1920
    move-result v14

    .line 1921
    invoke-static {v14}, Lcom/google/android/gms/internal/ads/rL;->b(I)I

    .line 1922
    .line 1923
    .line 1924
    move-result v14

    .line 1925
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/f0;->m(I)V

    .line 1926
    .line 1927
    .line 1928
    new-instance v15, Lcom/google/android/gms/internal/ads/gx;

    .line 1929
    .line 1930
    invoke-direct {v15, v12, v13, v14}, Lcom/google/android/gms/internal/ads/gx;-><init>(III)V

    .line 1931
    .line 1932
    .line 1933
    invoke-virtual {v8, v15}, Lcom/google/android/gms/internal/ads/rA;->g(Ljava/lang/Object;)V

    .line 1934
    .line 1935
    .line 1936
    add-int/lit8 v10, v10, 0x1

    .line 1937
    .line 1938
    const/4 v4, 0x1

    .line 1939
    goto :goto_51

    .line 1940
    :cond_7e
    if-eqz v3, :cond_7f

    .line 1941
    .line 1942
    const/4 v3, 0x1

    .line 1943
    if-le v5, v3, :cond_7f

    .line 1944
    .line 1945
    const/4 v3, 0x0

    .line 1946
    :goto_53
    if-ge v3, v7, :cond_7f

    .line 1947
    .line 1948
    const/4 v4, 0x4

    .line 1949
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/f0;->b(I)I

    .line 1950
    .line 1951
    .line 1952
    move-result v5

    .line 1953
    aput v5, v9, v3

    .line 1954
    .line 1955
    add-int/lit8 v3, v3, 0x1

    .line 1956
    .line 1957
    goto :goto_53

    .line 1958
    :cond_7f
    new-instance v10, Lcom/google/android/gms/internal/ads/fw;

    .line 1959
    .line 1960
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/rA;->h()Lcom/google/android/gms/internal/ads/PA;

    .line 1961
    .line 1962
    .line 1963
    move-result-object v0

    .line 1964
    const/4 v3, 0x2

    .line 1965
    invoke-direct {v10, v0, v9, v3}, Lcom/google/android/gms/internal/ads/fw;-><init>(Lcom/google/android/gms/internal/ads/PA;[II)V

    .line 1966
    .line 1967
    .line 1968
    goto :goto_54

    .line 1969
    :cond_80
    const/4 v10, 0x0

    .line 1970
    :goto_54
    new-instance v0, Lcom/google/android/gms/internal/ads/Ex;

    .line 1971
    .line 1972
    new-instance v3, Lcom/google/android/gms/internal/ads/fw;

    .line 1973
    .line 1974
    move-object/from16 v5, v19

    .line 1975
    .line 1976
    const/4 v4, 0x0

    .line 1977
    invoke-direct {v3, v5, v6, v4}, Lcom/google/android/gms/internal/ads/fw;-><init>(Lcom/google/android/gms/internal/ads/PA;[II)V

    .line 1978
    .line 1979
    .line 1980
    invoke-direct {v0, v1, v3, v2, v10}, Lcom/google/android/gms/internal/ads/Ex;-><init>(Lcom/google/android/gms/internal/ads/PA;Lcom/google/android/gms/internal/ads/fw;Lcom/google/android/gms/internal/ads/fw;Lcom/google/android/gms/internal/ads/fw;)V

    .line 1981
    .line 1982
    .line 1983
    goto :goto_58

    .line 1984
    :cond_81
    :goto_55
    new-instance v0, Lcom/google/android/gms/internal/ads/Ex;

    .line 1985
    .line 1986
    const/4 v1, 0x0

    .line 1987
    invoke-direct {v0, v1, v4, v1, v1}, Lcom/google/android/gms/internal/ads/Ex;-><init>(Lcom/google/android/gms/internal/ads/PA;Lcom/google/android/gms/internal/ads/fw;Lcom/google/android/gms/internal/ads/fw;Lcom/google/android/gms/internal/ads/fw;)V

    .line 1988
    .line 1989
    .line 1990
    goto :goto_58

    .line 1991
    :goto_56
    new-instance v0, Lcom/google/android/gms/internal/ads/Ex;

    .line 1992
    .line 1993
    invoke-direct {v0, v1, v4, v1, v1}, Lcom/google/android/gms/internal/ads/Ex;-><init>(Lcom/google/android/gms/internal/ads/PA;Lcom/google/android/gms/internal/ads/fw;Lcom/google/android/gms/internal/ads/fw;Lcom/google/android/gms/internal/ads/fw;)V

    .line 1994
    .line 1995
    .line 1996
    goto :goto_58

    .line 1997
    :goto_57
    new-instance v0, Lcom/google/android/gms/internal/ads/Ex;

    .line 1998
    .line 1999
    invoke-direct {v0, v1, v4, v1, v1}, Lcom/google/android/gms/internal/ads/Ex;-><init>(Lcom/google/android/gms/internal/ads/PA;Lcom/google/android/gms/internal/ads/fw;Lcom/google/android/gms/internal/ads/fw;Lcom/google/android/gms/internal/ads/fw;)V

    .line 2000
    .line 2001
    .line 2002
    :goto_58
    return-object v0
.end method

.method public static e(I[BI)Lcom/google/android/gms/internal/ads/dy;
    .locals 23

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/f0;

    .line 2
    .line 3
    move/from16 v1, p0

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    move/from16 v3, p2

    .line 8
    .line 9
    invoke-direct {v0, v2, v1, v3}, Lcom/google/android/gms/internal/ads/f0;-><init>([BII)V

    .line 10
    .line 11
    .line 12
    const/16 v1, 0x8

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/f0;->b(I)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/f0;->b(I)I

    .line 19
    .line 20
    .line 21
    move-result v5

    .line 22
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/f0;->b(I)I

    .line 23
    .line 24
    .line 25
    move-result v6

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 27
    .line 28
    .line 29
    move-result v7

    .line 30
    const/16 v3, 0x56

    .line 31
    .line 32
    const/16 v4, 0x2c

    .line 33
    .line 34
    const/16 v8, 0x7a

    .line 35
    .line 36
    const/16 v9, 0x6e

    .line 37
    .line 38
    const/16 v10, 0xf4

    .line 39
    .line 40
    const/4 v11, 0x3

    .line 41
    const/16 v12, 0x10

    .line 42
    .line 43
    const/4 v14, 0x1

    .line 44
    const/16 v15, 0x64

    .line 45
    .line 46
    if-eq v2, v15, :cond_1

    .line 47
    .line 48
    if-eq v2, v9, :cond_1

    .line 49
    .line 50
    if-eq v2, v8, :cond_1

    .line 51
    .line 52
    if-eq v2, v10, :cond_1

    .line 53
    .line 54
    if-eq v2, v4, :cond_1

    .line 55
    .line 56
    const/16 v13, 0x53

    .line 57
    .line 58
    if-eq v2, v13, :cond_1

    .line 59
    .line 60
    if-eq v2, v3, :cond_1

    .line 61
    .line 62
    const/16 v13, 0x76

    .line 63
    .line 64
    if-eq v2, v13, :cond_1

    .line 65
    .line 66
    const/16 v13, 0x80

    .line 67
    .line 68
    if-eq v2, v13, :cond_1

    .line 69
    .line 70
    const/16 v13, 0x8a

    .line 71
    .line 72
    if-ne v2, v13, :cond_0

    .line 73
    .line 74
    const/16 v2, 0x8a

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    const/4 v13, 0x1

    .line 78
    const/16 v16, 0x0

    .line 79
    .line 80
    const/16 v17, 0x0

    .line 81
    .line 82
    goto :goto_6

    .line 83
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 84
    .line 85
    .line 86
    move-result v13

    .line 87
    if-ne v13, v11, :cond_2

    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 90
    .line 91
    .line 92
    const/4 v1, 0x3

    .line 93
    goto :goto_1

    .line 94
    :cond_2
    move v1, v13

    .line 95
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 96
    .line 97
    .line 98
    move-result v16

    .line 99
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 100
    .line 101
    .line 102
    move-result v17

    .line 103
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->k()V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 107
    .line 108
    .line 109
    move-result v18

    .line 110
    if-eqz v18, :cond_8

    .line 111
    .line 112
    if-eq v1, v11, :cond_3

    .line 113
    .line 114
    const/16 v1, 0x8

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_3
    const/16 v1, 0xc

    .line 118
    .line 119
    :goto_2
    const/4 v10, 0x0

    .line 120
    :goto_3
    if-ge v10, v1, :cond_8

    .line 121
    .line 122
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 123
    .line 124
    .line 125
    move-result v18

    .line 126
    if-eqz v18, :cond_7

    .line 127
    .line 128
    const/4 v8, 0x6

    .line 129
    if-ge v10, v8, :cond_4

    .line 130
    .line 131
    const/16 v8, 0x10

    .line 132
    .line 133
    goto :goto_4

    .line 134
    :cond_4
    const/16 v8, 0x40

    .line 135
    .line 136
    :goto_4
    const/4 v9, 0x0

    .line 137
    const/16 v19, 0x8

    .line 138
    .line 139
    const/16 v20, 0x8

    .line 140
    .line 141
    :goto_5
    if-ge v9, v8, :cond_7

    .line 142
    .line 143
    if-eqz v19, :cond_5

    .line 144
    .line 145
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->c()I

    .line 146
    .line 147
    .line 148
    move-result v19

    .line 149
    add-int v15, v19, v20

    .line 150
    .line 151
    add-int/lit16 v15, v15, 0x100

    .line 152
    .line 153
    rem-int/lit16 v15, v15, 0x100

    .line 154
    .line 155
    move/from16 v19, v15

    .line 156
    .line 157
    :cond_5
    if-eqz v19, :cond_6

    .line 158
    .line 159
    move/from16 v20, v19

    .line 160
    .line 161
    :cond_6
    add-int/lit8 v9, v9, 0x1

    .line 162
    .line 163
    const/16 v15, 0x64

    .line 164
    .line 165
    goto :goto_5

    .line 166
    :cond_7
    add-int/lit8 v10, v10, 0x1

    .line 167
    .line 168
    const/16 v8, 0x7a

    .line 169
    .line 170
    const/16 v9, 0x6e

    .line 171
    .line 172
    const/16 v15, 0x64

    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_8
    :goto_6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    if-nez v1, :cond_9

    .line 183
    .line 184
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 185
    .line 186
    .line 187
    goto :goto_8

    .line 188
    :cond_9
    if-ne v1, v14, :cond_a

    .line 189
    .line 190
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->c()I

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->c()I

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    int-to-long v8, v1

    .line 204
    const/4 v1, 0x0

    .line 205
    :goto_7
    int-to-long v3, v1

    .line 206
    cmp-long v19, v3, v8

    .line 207
    .line 208
    if-gez v19, :cond_a

    .line 209
    .line 210
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 211
    .line 212
    .line 213
    add-int/lit8 v1, v1, 0x1

    .line 214
    .line 215
    goto :goto_7

    .line 216
    :cond_a
    :goto_8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->k()V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    add-int/2addr v1, v14

    .line 227
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 228
    .line 229
    .line 230
    move-result v3

    .line 231
    add-int/2addr v3, v14

    .line 232
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 233
    .line 234
    .line 235
    move-result v4

    .line 236
    rsub-int/lit8 v8, v4, 0x2

    .line 237
    .line 238
    if-nez v4, :cond_b

    .line 239
    .line 240
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->k()V

    .line 241
    .line 242
    .line 243
    :cond_b
    mul-int v3, v3, v8

    .line 244
    .line 245
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->k()V

    .line 246
    .line 247
    .line 248
    mul-int/lit8 v1, v1, 0x10

    .line 249
    .line 250
    mul-int/lit8 v3, v3, 0x10

    .line 251
    .line 252
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 253
    .line 254
    .line 255
    move-result v4

    .line 256
    const/4 v9, 0x2

    .line 257
    if-eqz v4, :cond_f

    .line 258
    .line 259
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 260
    .line 261
    .line 262
    move-result v4

    .line 263
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 264
    .line 265
    .line 266
    move-result v19

    .line 267
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 268
    .line 269
    .line 270
    move-result v20

    .line 271
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 272
    .line 273
    .line 274
    move-result v21

    .line 275
    if-nez v13, :cond_c

    .line 276
    .line 277
    const/16 v22, 0x1

    .line 278
    .line 279
    goto :goto_b

    .line 280
    :cond_c
    if-ne v13, v11, :cond_d

    .line 281
    .line 282
    const/16 v22, 0x1

    .line 283
    .line 284
    goto :goto_9

    .line 285
    :cond_d
    const/16 v22, 0x2

    .line 286
    .line 287
    :goto_9
    if-ne v13, v14, :cond_e

    .line 288
    .line 289
    const/4 v13, 0x2

    .line 290
    goto :goto_a

    .line 291
    :cond_e
    const/4 v13, 0x1

    .line 292
    :goto_a
    mul-int v8, v8, v13

    .line 293
    .line 294
    :goto_b
    add-int v4, v4, v19

    .line 295
    .line 296
    mul-int v4, v4, v22

    .line 297
    .line 298
    sub-int/2addr v1, v4

    .line 299
    add-int v20, v20, v21

    .line 300
    .line 301
    mul-int v20, v20, v8

    .line 302
    .line 303
    sub-int v3, v3, v20

    .line 304
    .line 305
    :cond_f
    move v8, v1

    .line 306
    move v1, v3

    .line 307
    const/16 v3, 0x2c

    .line 308
    .line 309
    if-eq v2, v3, :cond_11

    .line 310
    .line 311
    const/16 v3, 0x56

    .line 312
    .line 313
    if-eq v2, v3, :cond_11

    .line 314
    .line 315
    const/16 v3, 0x64

    .line 316
    .line 317
    if-eq v2, v3, :cond_11

    .line 318
    .line 319
    const/16 v3, 0x6e

    .line 320
    .line 321
    if-eq v2, v3, :cond_11

    .line 322
    .line 323
    const/16 v3, 0x7a

    .line 324
    .line 325
    if-eq v2, v3, :cond_11

    .line 326
    .line 327
    const/16 v3, 0xf4

    .line 328
    .line 329
    if-ne v2, v3, :cond_10

    .line 330
    .line 331
    const/16 v10, 0xf4

    .line 332
    .line 333
    goto :goto_d

    .line 334
    :cond_10
    move v4, v2

    .line 335
    :goto_c
    const/16 v13, 0x10

    .line 336
    .line 337
    goto :goto_e

    .line 338
    :cond_11
    move v10, v2

    .line 339
    :goto_d
    and-int/lit8 v2, v5, 0x10

    .line 340
    .line 341
    if-eqz v2, :cond_12

    .line 342
    .line 343
    move v4, v10

    .line 344
    const/4 v13, 0x0

    .line 345
    goto :goto_e

    .line 346
    :cond_12
    move v4, v10

    .line 347
    goto :goto_c

    .line 348
    :goto_e
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 349
    .line 350
    .line 351
    move-result v2

    .line 352
    const/high16 v3, 0x3f800000    # 1.0f

    .line 353
    .line 354
    const/4 v10, -0x1

    .line 355
    if-eqz v2, :cond_21

    .line 356
    .line 357
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 358
    .line 359
    .line 360
    move-result v2

    .line 361
    if-eqz v2, :cond_15

    .line 362
    .line 363
    const/16 v2, 0x8

    .line 364
    .line 365
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/f0;->b(I)I

    .line 366
    .line 367
    .line 368
    move-result v15

    .line 369
    const/16 v2, 0xff

    .line 370
    .line 371
    if-ne v15, v2, :cond_13

    .line 372
    .line 373
    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/f0;->b(I)I

    .line 374
    .line 375
    .line 376
    move-result v2

    .line 377
    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/f0;->b(I)I

    .line 378
    .line 379
    .line 380
    move-result v12

    .line 381
    if-eqz v2, :cond_15

    .line 382
    .line 383
    if-eqz v12, :cond_15

    .line 384
    .line 385
    int-to-float v2, v2

    .line 386
    int-to-float v3, v12

    .line 387
    div-float v3, v2, v3

    .line 388
    .line 389
    goto :goto_f

    .line 390
    :cond_13
    const/16 v2, 0x11

    .line 391
    .line 392
    if-ge v15, v2, :cond_14

    .line 393
    .line 394
    sget-object v2, Lcom/google/android/gms/internal/ads/sy;->b:[F

    .line 395
    .line 396
    aget v3, v2, v15

    .line 397
    .line 398
    goto :goto_f

    .line 399
    :cond_14
    const-string v2, "Unexpected aspect_ratio_idc value: "

    .line 400
    .line 401
    const-string v12, "NalUnitUtil"

    .line 402
    .line 403
    invoke-static {v2, v15, v12}, La/r;->p(Ljava/lang/String;ILjava/lang/String;)V

    .line 404
    .line 405
    .line 406
    :cond_15
    :goto_f
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 407
    .line 408
    .line 409
    move-result v2

    .line 410
    if-eqz v2, :cond_16

    .line 411
    .line 412
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->k()V

    .line 413
    .line 414
    .line 415
    :cond_16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 416
    .line 417
    .line 418
    move-result v2

    .line 419
    if-eqz v2, :cond_19

    .line 420
    .line 421
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/f0;->m(I)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 425
    .line 426
    .line 427
    move-result v2

    .line 428
    if-eq v14, v2, :cond_17

    .line 429
    .line 430
    const/4 v14, 0x2

    .line 431
    :cond_17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 432
    .line 433
    .line 434
    move-result v2

    .line 435
    if-eqz v2, :cond_18

    .line 436
    .line 437
    const/16 v2, 0x8

    .line 438
    .line 439
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/f0;->b(I)I

    .line 440
    .line 441
    .line 442
    move-result v9

    .line 443
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/f0;->b(I)I

    .line 444
    .line 445
    .line 446
    move-result v10

    .line 447
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/f0;->m(I)V

    .line 448
    .line 449
    .line 450
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/rL;->a(I)I

    .line 451
    .line 452
    .line 453
    move-result v2

    .line 454
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/rL;->b(I)I

    .line 455
    .line 456
    .line 457
    move-result v10

    .line 458
    move v9, v10

    .line 459
    move v10, v14

    .line 460
    goto :goto_10

    .line 461
    :cond_18
    move v10, v14

    .line 462
    :cond_19
    const/4 v2, -0x1

    .line 463
    const/4 v9, -0x1

    .line 464
    :goto_10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 465
    .line 466
    .line 467
    move-result v11

    .line 468
    if-eqz v11, :cond_1a

    .line 469
    .line 470
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 471
    .line 472
    .line 473
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 474
    .line 475
    .line 476
    :cond_1a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 477
    .line 478
    .line 479
    move-result v11

    .line 480
    if-eqz v11, :cond_1b

    .line 481
    .line 482
    const/16 v11, 0x41

    .line 483
    .line 484
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/f0;->m(I)V

    .line 485
    .line 486
    .line 487
    :cond_1b
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 488
    .line 489
    .line 490
    move-result v11

    .line 491
    if-eqz v11, :cond_1c

    .line 492
    .line 493
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/sy;->k(Lcom/google/android/gms/internal/ads/f0;)V

    .line 494
    .line 495
    .line 496
    :cond_1c
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 497
    .line 498
    .line 499
    move-result v12

    .line 500
    if-eqz v12, :cond_1d

    .line 501
    .line 502
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/sy;->k(Lcom/google/android/gms/internal/ads/f0;)V

    .line 503
    .line 504
    .line 505
    :cond_1d
    if-nez v11, :cond_1e

    .line 506
    .line 507
    if-eqz v12, :cond_1f

    .line 508
    .line 509
    :cond_1e
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->k()V

    .line 510
    .line 511
    .line 512
    :cond_1f
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->k()V

    .line 513
    .line 514
    .line 515
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 516
    .line 517
    .line 518
    move-result v11

    .line 519
    if-eqz v11, :cond_20

    .line 520
    .line 521
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->k()V

    .line 522
    .line 523
    .line 524
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 525
    .line 526
    .line 527
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 528
    .line 529
    .line 530
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 531
    .line 532
    .line 533
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 534
    .line 535
    .line 536
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 537
    .line 538
    .line 539
    move-result v11

    .line 540
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 541
    .line 542
    .line 543
    move v13, v2

    .line 544
    move v15, v9

    .line 545
    move v14, v10

    .line 546
    move v0, v11

    .line 547
    :goto_11
    move v10, v3

    .line 548
    goto :goto_12

    .line 549
    :cond_20
    move v15, v9

    .line 550
    move v14, v10

    .line 551
    move v0, v13

    .line 552
    move v13, v2

    .line 553
    goto :goto_11

    .line 554
    :cond_21
    move v0, v13

    .line 555
    const/high16 v10, 0x3f800000    # 1.0f

    .line 556
    .line 557
    const/4 v13, -0x1

    .line 558
    const/4 v14, -0x1

    .line 559
    const/4 v15, -0x1

    .line 560
    :goto_12
    new-instance v2, Lcom/google/android/gms/internal/ads/dy;

    .line 561
    .line 562
    move-object v3, v2

    .line 563
    move v9, v1

    .line 564
    move/from16 v11, v16

    .line 565
    .line 566
    move/from16 v12, v17

    .line 567
    .line 568
    move/from16 v16, v0

    .line 569
    .line 570
    invoke-direct/range {v3 .. v16}, Lcom/google/android/gms/internal/ads/dy;-><init>(IIIIIIFIIIIII)V

    .line 571
    .line 572
    .line 573
    return-object v2
.end method

.method public static f(Ljava/util/List;)Ljava/lang/String;
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    const/4 v3, 0x0

    .line 8
    if-ge v1, v2, :cond_5

    .line 9
    .line 10
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    check-cast v2, [B

    .line 15
    .line 16
    array-length v4, v2

    .line 17
    const/4 v5, 0x3

    .line 18
    if-le v4, v5, :cond_4

    .line 19
    .line 20
    new-array v6, v5, [Z

    .line 21
    .line 22
    new-instance v7, Lcom/google/android/gms/internal/ads/rA;

    .line 23
    .line 24
    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/rA;-><init>()V

    .line 25
    .line 26
    .line 27
    const/4 v8, 0x0

    .line 28
    :goto_1
    array-length v9, v2

    .line 29
    if-ge v8, v9, :cond_1

    .line 30
    .line 31
    invoke-static {v2, v8, v9, v6}, Lcom/google/android/gms/internal/ads/sy;->a([BII[Z)I

    .line 32
    .line 33
    .line 34
    move-result v8

    .line 35
    if-eq v8, v9, :cond_0

    .line 36
    .line 37
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v9

    .line 41
    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/ads/rA;->g(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    add-int/lit8 v8, v8, 0x3

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/rA;->h()Lcom/google/android/gms/internal/ads/PA;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    const/4 v7, 0x0

    .line 52
    :goto_2
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/PA;->size()I

    .line 53
    .line 54
    .line 55
    move-result v8

    .line 56
    if-ge v7, v8, :cond_4

    .line 57
    .line 58
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/PA;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    check-cast v8, Ljava/lang/Integer;

    .line 63
    .line 64
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    add-int/2addr v8, v5

    .line 69
    if-ge v8, v4, :cond_3

    .line 70
    .line 71
    new-instance v8, Lcom/google/android/gms/internal/ads/f0;

    .line 72
    .line 73
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/PA;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v9

    .line 77
    check-cast v9, Ljava/lang/Integer;

    .line 78
    .line 79
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 80
    .line 81
    .line 82
    move-result v9

    .line 83
    add-int/2addr v9, v5

    .line 84
    invoke-direct {v8, v2, v9, v4}, Lcom/google/android/gms/internal/ads/f0;-><init>([BII)V

    .line 85
    .line 86
    .line 87
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/sy;->i(Lcom/google/android/gms/internal/ads/f0;)LN/r;

    .line 88
    .line 89
    .line 90
    move-result-object v9

    .line 91
    iget v10, v9, LN/r;->H:I

    .line 92
    .line 93
    const/16 v11, 0x21

    .line 94
    .line 95
    if-ne v10, v11, :cond_3

    .line 96
    .line 97
    iget v9, v9, LN/r;->I:I

    .line 98
    .line 99
    if-eqz v9, :cond_2

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_2
    const/4 p0, 0x4

    .line 103
    invoke-virtual {v8, p0}, Lcom/google/android/gms/internal/ads/f0;->m(I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v8, v5}, Lcom/google/android/gms/internal/ads/f0;->b(I)I

    .line 107
    .line 108
    .line 109
    move-result p0

    .line 110
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/f0;->k()V

    .line 111
    .line 112
    .line 113
    const/4 v0, 0x1

    .line 114
    invoke-static {v8, v0, p0, v3}, Lcom/google/android/gms/internal/ads/sy;->j(Lcom/google/android/gms/internal/ads/f0;ZILcom/google/android/gms/internal/ads/Wv;)Lcom/google/android/gms/internal/ads/Wv;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    iget v2, p0, Lcom/google/android/gms/internal/ads/Wv;->c:I

    .line 119
    .line 120
    iget v3, p0, Lcom/google/android/gms/internal/ads/Wv;->d:I

    .line 121
    .line 122
    iget v0, p0, Lcom/google/android/gms/internal/ads/Wv;->a:I

    .line 123
    .line 124
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/Wv;->b:Z

    .line 125
    .line 126
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Wv;->e:[I

    .line 127
    .line 128
    iget v5, p0, Lcom/google/android/gms/internal/ads/Wv;->f:I

    .line 129
    .line 130
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/el;->a(IZII[II)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    return-object p0

    .line 135
    :cond_3
    :goto_3
    add-int/lit8 v7, v7, 0x1

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 139
    .line 140
    goto/16 :goto_0

    .line 141
    .line 142
    :cond_5
    return-object v3
.end method

.method public static g([Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    aput-boolean v0, p0, v0

    const/4 v1, 0x1

    aput-boolean v0, p0, v1

    const/4 v1, 0x2

    aput-boolean v0, p0, v1

    return-void
.end method

.method public static h(B)Z
    .locals 3

    .line 1
    and-int/lit8 v0, p0, 0x60

    shr-int/lit8 v0, v0, 0x5

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    and-int/lit8 p0, p0, 0x1f

    const/4 v0, 0x0

    if-ne p0, v1, :cond_1

    return v0

    :cond_1
    const/16 v2, 0x9

    if-ne p0, v2, :cond_2

    return v0

    :cond_2
    const/16 v2, 0xe

    if-ne p0, v2, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method public static i(Lcom/google/android/gms/internal/ads/f0;)LN/r;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/f0;->k()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x6

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/f0;->b(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/f0;->b(I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x3

    .line 14
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/f0;->b(I)I

    .line 15
    .line 16
    .line 17
    new-instance p0, LN/r;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-direct {p0, v1, v0, v2}, LN/r;-><init>(IILA0/O;)V

    .line 21
    .line 22
    .line 23
    return-object p0
.end method

.method public static j(Lcom/google/android/gms/internal/ads/f0;ZILcom/google/android/gms/internal/ads/Wv;)Lcom/google/android/gms/internal/ads/Wv;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    const/4 v3, 0x6

    .line 8
    new-array v4, v3, [I

    .line 9
    .line 10
    const/16 v5, 0x8

    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    if-eqz p1, :cond_3

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/f0;->b(I)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 21
    .line 22
    .line 23
    move-result v7

    .line 24
    const/4 v8, 0x5

    .line 25
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/f0;->b(I)I

    .line 26
    .line 27
    .line 28
    move-result v8

    .line 29
    const/4 v9, 0x0

    .line 30
    const/4 v10, 0x0

    .line 31
    :goto_0
    const/16 v11, 0x20

    .line 32
    .line 33
    if-ge v9, v11, :cond_1

    .line 34
    .line 35
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 36
    .line 37
    .line 38
    move-result v11

    .line 39
    if-eqz v11, :cond_0

    .line 40
    .line 41
    const/4 v11, 0x1

    .line 42
    shl-int/2addr v11, v9

    .line 43
    or-int/2addr v10, v11

    .line 44
    :cond_0
    add-int/lit8 v9, v9, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 v9, 0x0

    .line 48
    :goto_1
    if-ge v9, v3, :cond_2

    .line 49
    .line 50
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/f0;->b(I)I

    .line 51
    .line 52
    .line 53
    move-result v11

    .line 54
    aput v11, v4, v9

    .line 55
    .line 56
    add-int/lit8 v9, v9, 0x1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    move v12, v2

    .line 60
    :goto_2
    move-object/from16 v16, v4

    .line 61
    .line 62
    move v13, v7

    .line 63
    move v14, v8

    .line 64
    move v15, v10

    .line 65
    goto :goto_3

    .line 66
    :cond_3
    if-eqz v2, :cond_4

    .line 67
    .line 68
    iget v3, v2, Lcom/google/android/gms/internal/ads/Wv;->a:I

    .line 69
    .line 70
    iget-boolean v7, v2, Lcom/google/android/gms/internal/ads/Wv;->b:Z

    .line 71
    .line 72
    iget v8, v2, Lcom/google/android/gms/internal/ads/Wv;->c:I

    .line 73
    .line 74
    iget v10, v2, Lcom/google/android/gms/internal/ads/Wv;->d:I

    .line 75
    .line 76
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/Wv;->e:[I

    .line 77
    .line 78
    move v12, v3

    .line 79
    goto :goto_2

    .line 80
    :cond_4
    move-object/from16 v16, v4

    .line 81
    .line 82
    const/4 v12, 0x0

    .line 83
    const/4 v13, 0x0

    .line 84
    const/4 v14, 0x0

    .line 85
    const/4 v15, 0x0

    .line 86
    :goto_3
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/f0;->b(I)I

    .line 87
    .line 88
    .line 89
    move-result v17

    .line 90
    const/4 v2, 0x0

    .line 91
    :goto_4
    if-ge v6, v1, :cond_7

    .line 92
    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-eqz v3, :cond_5

    .line 98
    .line 99
    add-int/lit8 v2, v2, 0x58

    .line 100
    .line 101
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/f0;->p()Z

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    if-eqz v3, :cond_6

    .line 106
    .line 107
    add-int/lit8 v2, v2, 0x8

    .line 108
    .line 109
    :cond_6
    add-int/lit8 v6, v6, 0x1

    .line 110
    .line 111
    goto :goto_4

    .line 112
    :cond_7
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/f0;->m(I)V

    .line 113
    .line 114
    .line 115
    if-lez v1, :cond_8

    .line 116
    .line 117
    sub-int/2addr v5, v1

    .line 118
    add-int/2addr v5, v5

    .line 119
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/f0;->m(I)V

    .line 120
    .line 121
    .line 122
    :cond_8
    new-instance v0, Lcom/google/android/gms/internal/ads/Wv;

    .line 123
    .line 124
    move-object v11, v0

    .line 125
    invoke-direct/range {v11 .. v17}, Lcom/google/android/gms/internal/ads/Wv;-><init>(IZII[II)V

    .line 126
    .line 127
    .line 128
    return-object v0
.end method

.method public static k(Lcom/google/android/gms/internal/ads/f0;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/f0;->m(I)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/f0;->e()I

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/f0;->k()V

    .line 22
    .line 23
    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/16 v0, 0x14

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/f0;->m(I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
