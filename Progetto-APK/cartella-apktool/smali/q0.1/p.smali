.class public abstract Lq0/p;
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

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, Lq0/p;->a:[B

    .line 8
    .line 9
    const/16 v0, 0x11

    .line 10
    .line 11
    new-array v0, v0, [F

    .line 12
    .line 13
    fill-array-data v0, :array_1

    .line 14
    .line 15
    .line 16
    sput-object v0, Lq0/p;->b:[F

    .line 17
    .line 18
    new-instance v0, Ljava/lang/Object;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lq0/p;->c:Ljava/lang/Object;

    .line 24
    .line 25
    const/16 v0, 0xa

    .line 26
    .line 27
    new-array v0, v0, [I

    .line 28
    .line 29
    sput-object v0, Lq0/p;->d:[I

    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data

    .line 34
    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
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

.method public static a([Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    aput-boolean v0, p0, v0

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    aput-boolean v0, p0, v1

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    aput-boolean v0, p0, v1

    .line 9
    .line 10
    return-void
.end method

.method public static b([BII[Z)I
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
    invoke-static {v3}, Lcom/google/android/gms/internal/measurement/H1;->i(Z)V

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
    invoke-static {p3}, Lq0/p;->a([Z)V

    .line 21
    .line 22
    .line 23
    add-int/lit8 p1, p1, -0x3

    .line 24
    .line 25
    return p1

    .line 26
    :cond_2
    const/4 v3, 0x2

    .line 27
    if-le v0, v2, :cond_3

    .line 28
    .line 29
    aget-boolean v4, p3, v2

    .line 30
    .line 31
    if-eqz v4, :cond_3

    .line 32
    .line 33
    aget-byte v4, p0, p1

    .line 34
    .line 35
    if-ne v4, v2, :cond_3

    .line 36
    .line 37
    invoke-static {p3}, Lq0/p;->a([Z)V

    .line 38
    .line 39
    .line 40
    sub-int/2addr p1, v3

    .line 41
    return p1

    .line 42
    :cond_3
    if-le v0, v3, :cond_4

    .line 43
    .line 44
    aget-boolean v4, p3, v3

    .line 45
    .line 46
    if-eqz v4, :cond_4

    .line 47
    .line 48
    aget-byte v4, p0, p1

    .line 49
    .line 50
    if-nez v4, :cond_4

    .line 51
    .line 52
    add-int/lit8 v4, p1, 0x1

    .line 53
    .line 54
    aget-byte v4, p0, v4

    .line 55
    .line 56
    if-ne v4, v2, :cond_4

    .line 57
    .line 58
    invoke-static {p3}, Lq0/p;->a([Z)V

    .line 59
    .line 60
    .line 61
    sub-int/2addr p1, v2

    .line 62
    return p1

    .line 63
    :cond_4
    add-int/lit8 v4, p2, -0x1

    .line 64
    .line 65
    add-int/2addr p1, v3

    .line 66
    :goto_1
    if-ge p1, v4, :cond_7

    .line 67
    .line 68
    aget-byte v5, p0, p1

    .line 69
    .line 70
    and-int/lit16 v6, v5, 0xfe

    .line 71
    .line 72
    if-eqz v6, :cond_5

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_5
    add-int/lit8 v6, p1, -0x2

    .line 76
    .line 77
    aget-byte v7, p0, v6

    .line 78
    .line 79
    if-nez v7, :cond_6

    .line 80
    .line 81
    add-int/lit8 v7, p1, -0x1

    .line 82
    .line 83
    aget-byte v7, p0, v7

    .line 84
    .line 85
    if-nez v7, :cond_6

    .line 86
    .line 87
    if-ne v5, v2, :cond_6

    .line 88
    .line 89
    invoke-static {p3}, Lq0/p;->a([Z)V

    .line 90
    .line 91
    .line 92
    return v6

    .line 93
    :cond_6
    add-int/lit8 p1, p1, -0x2

    .line 94
    .line 95
    :goto_2
    add-int/lit8 p1, p1, 0x3

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_7
    if-le v0, v3, :cond_9

    .line 99
    .line 100
    add-int/lit8 p1, p2, -0x3

    .line 101
    .line 102
    aget-byte p1, p0, p1

    .line 103
    .line 104
    if-nez p1, :cond_8

    .line 105
    .line 106
    add-int/lit8 p1, p2, -0x2

    .line 107
    .line 108
    aget-byte p1, p0, p1

    .line 109
    .line 110
    if-nez p1, :cond_8

    .line 111
    .line 112
    aget-byte p1, p0, v4

    .line 113
    .line 114
    if-ne p1, v2, :cond_8

    .line 115
    .line 116
    :goto_3
    const/4 p1, 0x1

    .line 117
    goto :goto_4

    .line 118
    :cond_8
    const/4 p1, 0x0

    .line 119
    goto :goto_4

    .line 120
    :cond_9
    if-ne v0, v3, :cond_a

    .line 121
    .line 122
    aget-boolean p1, p3, v3

    .line 123
    .line 124
    if-eqz p1, :cond_8

    .line 125
    .line 126
    add-int/lit8 p1, p2, -0x2

    .line 127
    .line 128
    aget-byte p1, p0, p1

    .line 129
    .line 130
    if-nez p1, :cond_8

    .line 131
    .line 132
    aget-byte p1, p0, v4

    .line 133
    .line 134
    if-ne p1, v2, :cond_8

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_a
    aget-boolean p1, p3, v2

    .line 138
    .line 139
    if-eqz p1, :cond_8

    .line 140
    .line 141
    aget-byte p1, p0, v4

    .line 142
    .line 143
    if-ne p1, v2, :cond_8

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :goto_4
    aput-boolean p1, p3, v1

    .line 147
    .line 148
    if-le v0, v2, :cond_c

    .line 149
    .line 150
    add-int/lit8 p1, p2, -0x2

    .line 151
    .line 152
    aget-byte p1, p0, p1

    .line 153
    .line 154
    if-nez p1, :cond_b

    .line 155
    .line 156
    aget-byte p1, p0, v4

    .line 157
    .line 158
    if-nez p1, :cond_b

    .line 159
    .line 160
    :goto_5
    const/4 p1, 0x1

    .line 161
    goto :goto_6

    .line 162
    :cond_b
    const/4 p1, 0x0

    .line 163
    goto :goto_6

    .line 164
    :cond_c
    aget-boolean p1, p3, v3

    .line 165
    .line 166
    if-eqz p1, :cond_b

    .line 167
    .line 168
    aget-byte p1, p0, v4

    .line 169
    .line 170
    if-nez p1, :cond_b

    .line 171
    .line 172
    goto :goto_5

    .line 173
    :goto_6
    aput-boolean p1, p3, v2

    .line 174
    .line 175
    aget-byte p0, p0, v4

    .line 176
    .line 177
    if-nez p0, :cond_d

    .line 178
    .line 179
    const/4 v1, 0x1

    .line 180
    :cond_d
    aput-boolean v1, p3, v3

    .line 181
    .line 182
    return p2
.end method

.method public static c(Ljava/util/List;)Ljava/lang/String;
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
    if-ge v1, v2, :cond_4

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
    if-le v4, v5, :cond_3

    .line 19
    .line 20
    new-array v6, v5, [Z

    .line 21
    .line 22
    invoke-static {}, Lz4/H;->q()Lz4/E;

    .line 23
    .line 24
    .line 25
    move-result-object v7

    .line 26
    const/4 v8, 0x0

    .line 27
    :goto_1
    array-length v9, v2

    .line 28
    if-ge v8, v9, :cond_1

    .line 29
    .line 30
    array-length v9, v2

    .line 31
    invoke-static {v2, v8, v9, v6}, Lq0/p;->b([BII[Z)I

    .line 32
    .line 33
    .line 34
    move-result v8

    .line 35
    array-length v9, v2

    .line 36
    if-eq v8, v9, :cond_0

    .line 37
    .line 38
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v9

    .line 42
    invoke-virtual {v7, v9}, Lz4/B;->g0(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    add-int/lit8 v8, v8, 0x3

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    invoke-virtual {v7}, Lz4/E;->m0()Lz4/d0;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    const/4 v7, 0x0

    .line 53
    :goto_2
    invoke-virtual {v6}, Lz4/d0;->size()I

    .line 54
    .line 55
    .line 56
    move-result v8

    .line 57
    if-ge v7, v8, :cond_3

    .line 58
    .line 59
    invoke-virtual {v6, v7}, Lz4/d0;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    check-cast v8, Ljava/lang/Integer;

    .line 64
    .line 65
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 66
    .line 67
    .line 68
    move-result v8

    .line 69
    add-int/2addr v8, v5

    .line 70
    if-ge v8, v4, :cond_2

    .line 71
    .line 72
    new-instance v8, Lp0/D;

    .line 73
    .line 74
    invoke-virtual {v6, v7}, Lz4/d0;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v9

    .line 78
    check-cast v9, Ljava/lang/Integer;

    .line 79
    .line 80
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 81
    .line 82
    .line 83
    move-result v9

    .line 84
    add-int/2addr v9, v5

    .line 85
    invoke-direct {v8, v2, v9, v4}, Lp0/D;-><init>([BII)V

    .line 86
    .line 87
    .line 88
    invoke-static {v8}, Lq0/p;->f(Lp0/D;)LA2/i;

    .line 89
    .line 90
    .line 91
    move-result-object v9

    .line 92
    iget v10, v9, LA2/i;->a:I

    .line 93
    .line 94
    const/16 v11, 0x21

    .line 95
    .line 96
    if-ne v10, v11, :cond_2

    .line 97
    .line 98
    iget v9, v9, LA2/i;->b:I

    .line 99
    .line 100
    if-nez v9, :cond_2

    .line 101
    .line 102
    const/4 p0, 0x4

    .line 103
    invoke-virtual {v8, p0}, Lp0/D;->u(I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v8, v5}, Lp0/D;->i(I)I

    .line 107
    .line 108
    .line 109
    move-result p0

    .line 110
    invoke-virtual {v8}, Lp0/D;->t()V

    .line 111
    .line 112
    .line 113
    const/4 v0, 0x1

    .line 114
    invoke-static {v8, v0, p0, v3}, Lq0/p;->g(Lp0/D;ZILq0/i;)Lq0/i;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    iget-object v4, p0, Lq0/i;->e:[I

    .line 119
    .line 120
    iget v5, p0, Lq0/i;->f:I

    .line 121
    .line 122
    iget v0, p0, Lq0/i;->a:I

    .line 123
    .line 124
    iget-boolean v1, p0, Lq0/i;->b:Z

    .line 125
    .line 126
    iget v2, p0, Lq0/i;->c:I

    .line 127
    .line 128
    iget v3, p0, Lq0/i;->d:I

    .line 129
    .line 130
    invoke-static/range {v0 .. v5}, Lp0/g;->a(IZII[II)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p0

    .line 134
    return-object p0

    .line 135
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 139
    .line 140
    goto/16 :goto_0

    .line 141
    .line 142
    :cond_4
    return-object v3
.end method

.method public static d([BILm0/t;)Z
    .locals 6

    .line 1
    iget-object v0, p2, Lm0/t;->o:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "video/avc"

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x4

    .line 10
    const/16 v2, 0xe

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x1

    .line 14
    if-eqz v0, :cond_4

    .line 15
    .line 16
    aget-byte p0, p0, v1

    .line 17
    .line 18
    and-int/lit8 p1, p0, 0x60

    .line 19
    .line 20
    shr-int/lit8 p1, p1, 0x5

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    :cond_0
    const/4 v3, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    and-int/lit8 p0, p0, 0x1f

    .line 27
    .line 28
    if-ne p0, v4, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const/16 p1, 0x9

    .line 32
    .line 33
    if-ne p0, p1, :cond_3

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_3
    if-ne p0, v2, :cond_0

    .line 37
    .line 38
    :goto_0
    return v3

    .line 39
    :cond_4
    iget-object v0, p2, Lm0/t;->o:Ljava/lang/String;

    .line 40
    .line 41
    const-string v5, "video/hevc"

    .line 42
    .line 43
    invoke-static {v0, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_7

    .line 48
    .line 49
    new-instance v0, Lp0/D;

    .line 50
    .line 51
    add-int/2addr p1, v1

    .line 52
    invoke-direct {v0, p0, v1, p1}, Lp0/D;-><init>([BII)V

    .line 53
    .line 54
    .line 55
    invoke-static {v0}, Lq0/p;->f(Lp0/D;)LA2/i;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    iget p1, p0, LA2/i;->a:I

    .line 60
    .line 61
    const/16 v0, 0x23

    .line 62
    .line 63
    if-ne p1, v0, :cond_5

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_5
    if-gt p1, v2, :cond_6

    .line 67
    .line 68
    rem-int/lit8 p1, p1, 0x2

    .line 69
    .line 70
    if-nez p1, :cond_6

    .line 71
    .line 72
    iget p0, p0, LA2/i;->c:I

    .line 73
    .line 74
    iget p1, p2, Lm0/t;->F:I

    .line 75
    .line 76
    sub-int/2addr p1, v4

    .line 77
    if-ne p0, p1, :cond_6

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_6
    const/4 v3, 0x1

    .line 81
    :goto_1
    return v3

    .line 82
    :cond_7
    return v4
.end method

.method public static e(Lm0/t;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lm0/t;->o:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "video/avc"

    .line 4
    .line 5
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    iget-object v0, p0, Lm0/t;->o:Ljava/lang/String;

    .line 14
    .line 15
    const-string v1, "video/hevc"

    .line 16
    .line 17
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    iget-object p0, p0, Lm0/t;->k:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {p0, v1}, Lm0/O;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 p0, 0x0

    .line 33
    return p0

    .line 34
    :cond_2
    :goto_0
    const/4 p0, 0x2

    .line 35
    return p0
.end method

.method public static f(Lp0/D;)LA2/i;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lp0/D;->t()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x6

    .line 5
    invoke-virtual {p0, v0}, Lp0/D;->i(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0, v0}, Lp0/D;->i(I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x3

    .line 14
    invoke-virtual {p0, v2}, Lp0/D;->i(I)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    add-int/lit8 p0, p0, -0x1

    .line 19
    .line 20
    new-instance v2, LA2/i;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-direct {v2, v1, v0, p0, v3}, LA2/i;-><init>(IIII)V

    .line 24
    .line 25
    .line 26
    return-object v2
.end method

.method public static g(Lp0/D;ZILq0/i;)Lq0/i;
    .locals 19

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
    const/4 v5, 0x2

    .line 11
    const/16 v6, 0x8

    .line 12
    .line 13
    const/4 v7, 0x0

    .line 14
    if-eqz p1, :cond_3

    .line 15
    .line 16
    invoke-virtual {v0, v5}, Lp0/D;->i(I)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-virtual/range {p0 .. p0}, Lp0/D;->h()Z

    .line 21
    .line 22
    .line 23
    move-result v8

    .line 24
    const/4 v9, 0x5

    .line 25
    invoke-virtual {v0, v9}, Lp0/D;->i(I)I

    .line 26
    .line 27
    .line 28
    move-result v9

    .line 29
    const/4 v10, 0x0

    .line 30
    const/4 v11, 0x0

    .line 31
    :goto_0
    const/16 v12, 0x20

    .line 32
    .line 33
    if-ge v10, v12, :cond_1

    .line 34
    .line 35
    invoke-virtual/range {p0 .. p0}, Lp0/D;->h()Z

    .line 36
    .line 37
    .line 38
    move-result v12

    .line 39
    if-eqz v12, :cond_0

    .line 40
    .line 41
    const/4 v12, 0x1

    .line 42
    shl-int/2addr v12, v10

    .line 43
    or-int/2addr v11, v12

    .line 44
    :cond_0
    add-int/lit8 v10, v10, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/4 v10, 0x0

    .line 48
    :goto_1
    if-ge v10, v3, :cond_2

    .line 49
    .line 50
    invoke-virtual {v0, v6}, Lp0/D;->i(I)I

    .line 51
    .line 52
    .line 53
    move-result v12

    .line 54
    aput v12, v4, v10

    .line 55
    .line 56
    add-int/lit8 v10, v10, 0x1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    move v13, v2

    .line 60
    :goto_2
    move-object/from16 v17, v4

    .line 61
    .line 62
    move v14, v8

    .line 63
    move v15, v9

    .line 64
    move/from16 v16, v11

    .line 65
    .line 66
    goto :goto_3

    .line 67
    :cond_3
    if-eqz v2, :cond_4

    .line 68
    .line 69
    iget v3, v2, Lq0/i;->a:I

    .line 70
    .line 71
    iget-boolean v8, v2, Lq0/i;->b:Z

    .line 72
    .line 73
    iget v9, v2, Lq0/i;->c:I

    .line 74
    .line 75
    iget v11, v2, Lq0/i;->d:I

    .line 76
    .line 77
    iget-object v4, v2, Lq0/i;->e:[I

    .line 78
    .line 79
    move v13, v3

    .line 80
    goto :goto_2

    .line 81
    :cond_4
    move-object/from16 v17, v4

    .line 82
    .line 83
    const/4 v13, 0x0

    .line 84
    const/4 v14, 0x0

    .line 85
    const/4 v15, 0x0

    .line 86
    const/16 v16, 0x0

    .line 87
    .line 88
    :goto_3
    invoke-virtual {v0, v6}, Lp0/D;->i(I)I

    .line 89
    .line 90
    .line 91
    move-result v18

    .line 92
    const/4 v2, 0x0

    .line 93
    :goto_4
    if-ge v7, v1, :cond_7

    .line 94
    .line 95
    invoke-virtual/range {p0 .. p0}, Lp0/D;->h()Z

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    if-eqz v3, :cond_5

    .line 100
    .line 101
    add-int/lit8 v2, v2, 0x58

    .line 102
    .line 103
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lp0/D;->h()Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-eqz v3, :cond_6

    .line 108
    .line 109
    add-int/lit8 v2, v2, 0x8

    .line 110
    .line 111
    :cond_6
    add-int/lit8 v7, v7, 0x1

    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_7
    invoke-virtual {v0, v2}, Lp0/D;->u(I)V

    .line 115
    .line 116
    .line 117
    if-lez v1, :cond_8

    .line 118
    .line 119
    sub-int/2addr v6, v1

    .line 120
    mul-int/lit8 v6, v6, 0x2

    .line 121
    .line 122
    invoke-virtual {v0, v6}, Lp0/D;->u(I)V

    .line 123
    .line 124
    .line 125
    :cond_8
    new-instance v0, Lq0/i;

    .line 126
    .line 127
    move-object v12, v0

    .line 128
    invoke-direct/range {v12 .. v18}, Lq0/i;-><init>(IZII[II)V

    .line 129
    .line 130
    .line 131
    return-object v0
.end method

.method public static h(I[BI)LF2/G;
    .locals 9

    .line 1
    add-int/lit8 p0, p0, 0x2

    .line 2
    .line 3
    add-int/lit8 p2, p2, -0x1

    .line 4
    .line 5
    :goto_0
    aget-byte v0, p1, p2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    if-le p2, p0, :cond_0

    .line 10
    .line 11
    add-int/lit8 p2, p2, -0x1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_e

    .line 16
    .line 17
    if-gt p2, p0, :cond_1

    .line 18
    .line 19
    goto/16 :goto_8

    .line 20
    .line 21
    :cond_1
    new-instance v0, Lp0/D;

    .line 22
    .line 23
    add-int/lit8 p2, p2, 0x1

    .line 24
    .line 25
    invoke-direct {v0, p1, p0, p2}, Lp0/D;-><init>([BII)V

    .line 26
    .line 27
    .line 28
    :goto_1
    const/16 p0, 0x10

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Lp0/D;->d(I)Z

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    if-eqz p0, :cond_e

    .line 35
    .line 36
    const/16 p0, 0x8

    .line 37
    .line 38
    invoke-virtual {v0, p0}, Lp0/D;->i(I)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    const/4 p2, 0x0

    .line 43
    const/4 v2, 0x0

    .line 44
    :goto_2
    const/16 v3, 0xff

    .line 45
    .line 46
    if-ne p1, v3, :cond_2

    .line 47
    .line 48
    add-int/lit16 v2, v2, 0xff

    .line 49
    .line 50
    invoke-virtual {v0, p0}, Lp0/D;->i(I)I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    goto :goto_2

    .line 55
    :cond_2
    add-int/2addr v2, p1

    .line 56
    invoke-virtual {v0, p0}, Lp0/D;->i(I)I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    const/4 v4, 0x0

    .line 61
    :goto_3
    if-ne p1, v3, :cond_3

    .line 62
    .line 63
    add-int/lit16 v4, v4, 0xff

    .line 64
    .line 65
    invoke-virtual {v0, p0}, Lp0/D;->i(I)I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    goto :goto_3

    .line 70
    :cond_3
    add-int/2addr v4, p1

    .line 71
    if-eqz v4, :cond_e

    .line 72
    .line 73
    invoke-virtual {v0, v4}, Lp0/D;->d(I)Z

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    if-nez p0, :cond_4

    .line 78
    .line 79
    goto/16 :goto_8

    .line 80
    .line 81
    :cond_4
    const/16 p0, 0xb0

    .line 82
    .line 83
    if-ne v2, p0, :cond_d

    .line 84
    .line 85
    invoke-virtual {v0}, Lp0/D;->m()I

    .line 86
    .line 87
    .line 88
    move-result p0

    .line 89
    invoke-virtual {v0}, Lp0/D;->h()Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_5

    .line 94
    .line 95
    invoke-virtual {v0}, Lp0/D;->m()I

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    goto :goto_4

    .line 100
    :cond_5
    const/4 v2, 0x0

    .line 101
    :goto_4
    invoke-virtual {v0}, Lp0/D;->m()I

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    const/4 v4, -0x1

    .line 106
    const/4 v5, 0x0

    .line 107
    :goto_5
    if-gt v5, v3, :cond_c

    .line 108
    .line 109
    invoke-virtual {v0}, Lp0/D;->m()I

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    invoke-virtual {v0}, Lp0/D;->m()I

    .line 114
    .line 115
    .line 116
    const/4 v6, 0x6

    .line 117
    invoke-virtual {v0, v6}, Lp0/D;->i(I)I

    .line 118
    .line 119
    .line 120
    move-result v7

    .line 121
    const/16 v8, 0x3f

    .line 122
    .line 123
    if-ne v7, v8, :cond_6

    .line 124
    .line 125
    return-object v1

    .line 126
    :cond_6
    if-nez v7, :cond_7

    .line 127
    .line 128
    add-int/lit8 v7, p0, -0x1e

    .line 129
    .line 130
    invoke-static {p2, v7}, Ljava/lang/Math;->max(II)I

    .line 131
    .line 132
    .line 133
    move-result v7

    .line 134
    goto :goto_6

    .line 135
    :cond_7
    add-int/2addr v7, p0

    .line 136
    add-int/lit8 v7, v7, -0x1f

    .line 137
    .line 138
    invoke-static {p2, v7}, Ljava/lang/Math;->max(II)I

    .line 139
    .line 140
    .line 141
    move-result v7

    .line 142
    :goto_6
    invoke-virtual {v0, v7}, Lp0/D;->i(I)I

    .line 143
    .line 144
    .line 145
    if-eqz p1, :cond_a

    .line 146
    .line 147
    invoke-virtual {v0, v6}, Lp0/D;->i(I)I

    .line 148
    .line 149
    .line 150
    move-result v6

    .line 151
    if-ne v6, v8, :cond_8

    .line 152
    .line 153
    return-object v1

    .line 154
    :cond_8
    if-nez v6, :cond_9

    .line 155
    .line 156
    add-int/lit8 v6, v2, -0x1e

    .line 157
    .line 158
    invoke-static {p2, v6}, Ljava/lang/Math;->max(II)I

    .line 159
    .line 160
    .line 161
    move-result v6

    .line 162
    goto :goto_7

    .line 163
    :cond_9
    add-int/2addr v6, v2

    .line 164
    add-int/lit8 v6, v6, -0x1f

    .line 165
    .line 166
    invoke-static {p2, v6}, Ljava/lang/Math;->max(II)I

    .line 167
    .line 168
    .line 169
    move-result v6

    .line 170
    :goto_7
    invoke-virtual {v0, v6}, Lp0/D;->i(I)I

    .line 171
    .line 172
    .line 173
    :cond_a
    invoke-virtual {v0}, Lp0/D;->h()Z

    .line 174
    .line 175
    .line 176
    move-result v6

    .line 177
    if-eqz v6, :cond_b

    .line 178
    .line 179
    const/16 v6, 0xa

    .line 180
    .line 181
    invoke-virtual {v0, v6}, Lp0/D;->u(I)V

    .line 182
    .line 183
    .line 184
    :cond_b
    add-int/lit8 v5, v5, 0x1

    .line 185
    .line 186
    goto :goto_5

    .line 187
    :cond_c
    new-instance p0, LF2/G;

    .line 188
    .line 189
    invoke-direct {p0, v4}, LF2/G;-><init>(I)V

    .line 190
    .line 191
    .line 192
    return-object p0

    .line 193
    :cond_d
    mul-int/lit8 v4, v4, 0x8

    .line 194
    .line 195
    invoke-virtual {v0, v4}, Lp0/D;->u(I)V

    .line 196
    .line 197
    .line 198
    goto/16 :goto_1

    .line 199
    .line 200
    :cond_e
    :goto_8
    return-object v1
.end method

.method public static i([BIILq0/m;)Lq0/k;
    .locals 33

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
    new-instance v4, Lp0/D;

    .line 10
    .line 11
    invoke-direct {v4, v0, v1, v2}, Lp0/D;-><init>([BII)V

    .line 12
    .line 13
    .line 14
    invoke-static {v4}, Lq0/p;->f(Lp0/D;)LA2/i;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    const/4 v5, 0x2

    .line 19
    add-int/2addr v1, v5

    .line 20
    new-instance v6, Lp0/D;

    .line 21
    .line 22
    invoke-direct {v6, v0, v1, v2}, Lp0/D;-><init>([BII)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x4

    .line 26
    invoke-virtual {v6, v0}, Lp0/D;->u(I)V

    .line 27
    .line 28
    .line 29
    const/4 v1, 0x3

    .line 30
    invoke-virtual {v6, v1}, Lp0/D;->i(I)I

    .line 31
    .line 32
    .line 33
    move-result v8

    .line 34
    iget v2, v4, LA2/i;->b:I

    .line 35
    .line 36
    const/4 v7, 0x1

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    const/4 v2, 0x7

    .line 40
    if-ne v8, v2, :cond_0

    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/4 v2, 0x0

    .line 45
    :goto_0
    if-eqz v3, :cond_1

    .line 46
    .line 47
    iget-object v10, v3, Lq0/m;->a:Lz4/H;

    .line 48
    .line 49
    invoke-virtual {v10}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 50
    .line 51
    .line 52
    move-result v11

    .line 53
    if-nez v11, :cond_1

    .line 54
    .line 55
    iget v4, v4, LA2/i;->b:I

    .line 56
    .line 57
    invoke-virtual {v10}, Ljava/util/AbstractCollection;->size()I

    .line 58
    .line 59
    .line 60
    move-result v11

    .line 61
    sub-int/2addr v11, v7

    .line 62
    invoke-static {v4, v11}, Ljava/lang/Math;->min(II)I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    check-cast v4, Lq0/h;

    .line 71
    .line 72
    iget v4, v4, Lq0/h;->a:I

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_1
    const/4 v4, 0x0

    .line 76
    :goto_1
    const/4 v10, 0x0

    .line 77
    if-nez v2, :cond_2

    .line 78
    .line 79
    invoke-virtual {v6}, Lp0/D;->t()V

    .line 80
    .line 81
    .line 82
    invoke-static {v6, v7, v8, v10}, Lq0/p;->g(Lp0/D;ZILq0/i;)Lq0/i;

    .line 83
    .line 84
    .line 85
    move-result-object v10

    .line 86
    goto :goto_2

    .line 87
    :cond_2
    if-eqz v3, :cond_3

    .line 88
    .line 89
    iget-object v11, v3, Lq0/m;->b:LF/i;

    .line 90
    .line 91
    iget-object v12, v11, LF/i;->H:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v12, [I

    .line 94
    .line 95
    aget v12, v12, v4

    .line 96
    .line 97
    iget-object v13, v11, LF/i;->I:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v13, Lz4/H;

    .line 100
    .line 101
    invoke-virtual {v13}, Ljava/util/AbstractCollection;->size()I

    .line 102
    .line 103
    .line 104
    move-result v13

    .line 105
    if-le v13, v12, :cond_3

    .line 106
    .line 107
    iget-object v10, v11, LF/i;->I:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast v10, Lz4/H;

    .line 110
    .line 111
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v10

    .line 115
    check-cast v10, Lq0/i;

    .line 116
    .line 117
    :cond_3
    :goto_2
    invoke-virtual {v6}, Lp0/D;->o()I

    .line 118
    .line 119
    .line 120
    const/4 v11, -0x1

    .line 121
    const/16 v12, 0x8

    .line 122
    .line 123
    if-eqz v2, :cond_7

    .line 124
    .line 125
    invoke-virtual {v6}, Lp0/D;->h()Z

    .line 126
    .line 127
    .line 128
    move-result v13

    .line 129
    if-eqz v13, :cond_4

    .line 130
    .line 131
    invoke-virtual {v6, v12}, Lp0/D;->i(I)I

    .line 132
    .line 133
    .line 134
    move-result v13

    .line 135
    goto :goto_3

    .line 136
    :cond_4
    const/4 v13, -0x1

    .line 137
    :goto_3
    if-eqz v3, :cond_6

    .line 138
    .line 139
    iget-object v14, v3, Lq0/m;->c:Lm2/c;

    .line 140
    .line 141
    if-eqz v14, :cond_6

    .line 142
    .line 143
    if-ne v13, v11, :cond_5

    .line 144
    .line 145
    iget-object v13, v14, Lm2/c;->I:Ljava/lang/Object;

    .line 146
    .line 147
    check-cast v13, [I

    .line 148
    .line 149
    aget v13, v13, v4

    .line 150
    .line 151
    :cond_5
    if-eq v13, v11, :cond_6

    .line 152
    .line 153
    iget-object v15, v14, Lm2/c;->H:Ljava/lang/Object;

    .line 154
    .line 155
    check-cast v15, Lz4/H;

    .line 156
    .line 157
    invoke-virtual {v15}, Ljava/util/AbstractCollection;->size()I

    .line 158
    .line 159
    .line 160
    move-result v15

    .line 161
    if-le v15, v13, :cond_6

    .line 162
    .line 163
    iget-object v14, v14, Lm2/c;->H:Ljava/lang/Object;

    .line 164
    .line 165
    check-cast v14, Lz4/H;

    .line 166
    .line 167
    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v13

    .line 171
    check-cast v13, Lq0/j;

    .line 172
    .line 173
    iget v14, v13, Lq0/j;->a:I

    .line 174
    .line 175
    iget v14, v13, Lq0/j;->d:I

    .line 176
    .line 177
    iget v15, v13, Lq0/j;->e:I

    .line 178
    .line 179
    iget v11, v13, Lq0/j;->b:I

    .line 180
    .line 181
    iget v13, v13, Lq0/j;->c:I

    .line 182
    .line 183
    move/from16 v16, v11

    .line 184
    .line 185
    move v11, v13

    .line 186
    move v13, v15

    .line 187
    move/from16 v17, v13

    .line 188
    .line 189
    move v15, v14

    .line 190
    goto :goto_8

    .line 191
    :cond_6
    const/4 v11, 0x0

    .line 192
    const/4 v13, 0x0

    .line 193
    const/4 v14, 0x0

    .line 194
    const/4 v15, 0x0

    .line 195
    const/16 v16, 0x0

    .line 196
    .line 197
    const/16 v17, 0x0

    .line 198
    .line 199
    goto :goto_8

    .line 200
    :cond_7
    invoke-virtual {v6}, Lp0/D;->o()I

    .line 201
    .line 202
    .line 203
    move-result v11

    .line 204
    if-ne v11, v1, :cond_8

    .line 205
    .line 206
    invoke-virtual {v6}, Lp0/D;->t()V

    .line 207
    .line 208
    .line 209
    :cond_8
    invoke-virtual {v6}, Lp0/D;->o()I

    .line 210
    .line 211
    .line 212
    move-result v13

    .line 213
    invoke-virtual {v6}, Lp0/D;->o()I

    .line 214
    .line 215
    .line 216
    move-result v14

    .line 217
    invoke-virtual {v6}, Lp0/D;->h()Z

    .line 218
    .line 219
    .line 220
    move-result v15

    .line 221
    if-eqz v15, :cond_c

    .line 222
    .line 223
    invoke-virtual {v6}, Lp0/D;->o()I

    .line 224
    .line 225
    .line 226
    move-result v15

    .line 227
    invoke-virtual {v6}, Lp0/D;->o()I

    .line 228
    .line 229
    .line 230
    move-result v16

    .line 231
    invoke-virtual {v6}, Lp0/D;->o()I

    .line 232
    .line 233
    .line 234
    move-result v17

    .line 235
    invoke-virtual {v6}, Lp0/D;->o()I

    .line 236
    .line 237
    .line 238
    move-result v18

    .line 239
    if-eq v11, v7, :cond_a

    .line 240
    .line 241
    if-ne v11, v5, :cond_9

    .line 242
    .line 243
    goto :goto_4

    .line 244
    :cond_9
    const/16 v19, 0x1

    .line 245
    .line 246
    goto :goto_5

    .line 247
    :cond_a
    :goto_4
    const/16 v19, 0x2

    .line 248
    .line 249
    :goto_5
    add-int v15, v15, v16

    .line 250
    .line 251
    mul-int v15, v15, v19

    .line 252
    .line 253
    sub-int v15, v13, v15

    .line 254
    .line 255
    if-ne v11, v7, :cond_b

    .line 256
    .line 257
    const/4 v11, 0x2

    .line 258
    goto :goto_6

    .line 259
    :cond_b
    const/4 v11, 0x1

    .line 260
    :goto_6
    add-int v17, v17, v18

    .line 261
    .line 262
    mul-int v17, v17, v11

    .line 263
    .line 264
    sub-int v11, v14, v17

    .line 265
    .line 266
    goto :goto_7

    .line 267
    :cond_c
    move v15, v13

    .line 268
    move v11, v14

    .line 269
    :goto_7
    invoke-virtual {v6}, Lp0/D;->o()I

    .line 270
    .line 271
    .line 272
    move-result v16

    .line 273
    invoke-virtual {v6}, Lp0/D;->o()I

    .line 274
    .line 275
    .line 276
    move-result v17

    .line 277
    move/from16 v32, v13

    .line 278
    .line 279
    move v13, v11

    .line 280
    move/from16 v11, v17

    .line 281
    .line 282
    move/from16 v17, v14

    .line 283
    .line 284
    move v14, v15

    .line 285
    move/from16 v15, v32

    .line 286
    .line 287
    :goto_8
    invoke-virtual {v6}, Lp0/D;->o()I

    .line 288
    .line 289
    .line 290
    move-result v18

    .line 291
    if-nez v2, :cond_f

    .line 292
    .line 293
    invoke-virtual {v6}, Lp0/D;->h()Z

    .line 294
    .line 295
    .line 296
    move-result v19

    .line 297
    if-eqz v19, :cond_d

    .line 298
    .line 299
    const/16 v19, 0x0

    .line 300
    .line 301
    goto :goto_9

    .line 302
    :cond_d
    move/from16 v19, v8

    .line 303
    .line 304
    :goto_9
    move/from16 v9, v19

    .line 305
    .line 306
    const/4 v12, -0x1

    .line 307
    :goto_a
    if-gt v9, v8, :cond_e

    .line 308
    .line 309
    invoke-virtual {v6}, Lp0/D;->o()I

    .line 310
    .line 311
    .line 312
    invoke-virtual {v6}, Lp0/D;->o()I

    .line 313
    .line 314
    .line 315
    move-result v5

    .line 316
    invoke-static {v5, v12}, Ljava/lang/Math;->max(II)I

    .line 317
    .line 318
    .line 319
    move-result v12

    .line 320
    invoke-virtual {v6}, Lp0/D;->o()I

    .line 321
    .line 322
    .line 323
    add-int/lit8 v9, v9, 0x1

    .line 324
    .line 325
    const/4 v5, 0x2

    .line 326
    goto :goto_a

    .line 327
    :cond_e
    move v5, v12

    .line 328
    goto :goto_b

    .line 329
    :cond_f
    const/4 v5, -0x1

    .line 330
    :goto_b
    invoke-virtual {v6}, Lp0/D;->o()I

    .line 331
    .line 332
    .line 333
    invoke-virtual {v6}, Lp0/D;->o()I

    .line 334
    .line 335
    .line 336
    invoke-virtual {v6}, Lp0/D;->o()I

    .line 337
    .line 338
    .line 339
    invoke-virtual {v6}, Lp0/D;->o()I

    .line 340
    .line 341
    .line 342
    invoke-virtual {v6}, Lp0/D;->o()I

    .line 343
    .line 344
    .line 345
    invoke-virtual {v6}, Lp0/D;->o()I

    .line 346
    .line 347
    .line 348
    invoke-virtual {v6}, Lp0/D;->h()Z

    .line 349
    .line 350
    .line 351
    move-result v9

    .line 352
    if-eqz v9, :cond_10

    .line 353
    .line 354
    const/4 v9, 0x6

    .line 355
    if-eqz v2, :cond_11

    .line 356
    .line 357
    invoke-virtual {v6}, Lp0/D;->h()Z

    .line 358
    .line 359
    .line 360
    move-result v2

    .line 361
    if-eqz v2, :cond_11

    .line 362
    .line 363
    invoke-virtual {v6, v9}, Lp0/D;->u(I)V

    .line 364
    .line 365
    .line 366
    :cond_10
    const/4 v0, 0x2

    .line 367
    goto :goto_11

    .line 368
    :cond_11
    invoke-virtual {v6}, Lp0/D;->h()Z

    .line 369
    .line 370
    .line 371
    move-result v2

    .line 372
    if-eqz v2, :cond_10

    .line 373
    .line 374
    const/4 v2, 0x0

    .line 375
    :goto_c
    if-ge v2, v0, :cond_10

    .line 376
    .line 377
    const/4 v12, 0x0

    .line 378
    :goto_d
    if-ge v12, v9, :cond_16

    .line 379
    .line 380
    invoke-virtual {v6}, Lp0/D;->h()Z

    .line 381
    .line 382
    .line 383
    move-result v20

    .line 384
    if-nez v20, :cond_12

    .line 385
    .line 386
    invoke-virtual {v6}, Lp0/D;->m()I

    .line 387
    .line 388
    .line 389
    goto :goto_f

    .line 390
    :cond_12
    shl-int/lit8 v20, v2, 0x1

    .line 391
    .line 392
    add-int/lit8 v20, v20, 0x4

    .line 393
    .line 394
    shl-int v0, v7, v20

    .line 395
    .line 396
    const/16 v9, 0x40

    .line 397
    .line 398
    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    .line 399
    .line 400
    .line 401
    move-result v0

    .line 402
    if-le v2, v7, :cond_13

    .line 403
    .line 404
    invoke-virtual {v6}, Lp0/D;->n()I

    .line 405
    .line 406
    .line 407
    :cond_13
    const/4 v9, 0x0

    .line 408
    :goto_e
    if-ge v9, v0, :cond_14

    .line 409
    .line 410
    invoke-virtual {v6}, Lp0/D;->n()I

    .line 411
    .line 412
    .line 413
    add-int/lit8 v9, v9, 0x1

    .line 414
    .line 415
    goto :goto_e

    .line 416
    :cond_14
    :goto_f
    if-ne v2, v1, :cond_15

    .line 417
    .line 418
    const/4 v0, 0x3

    .line 419
    goto :goto_10

    .line 420
    :cond_15
    const/4 v0, 0x1

    .line 421
    :goto_10
    add-int/2addr v12, v0

    .line 422
    const/4 v0, 0x4

    .line 423
    const/4 v9, 0x6

    .line 424
    goto :goto_d

    .line 425
    :cond_16
    add-int/lit8 v2, v2, 0x1

    .line 426
    .line 427
    const/4 v0, 0x4

    .line 428
    const/4 v9, 0x6

    .line 429
    goto :goto_c

    .line 430
    :goto_11
    invoke-virtual {v6, v0}, Lp0/D;->u(I)V

    .line 431
    .line 432
    .line 433
    invoke-virtual {v6}, Lp0/D;->h()Z

    .line 434
    .line 435
    .line 436
    move-result v0

    .line 437
    if-eqz v0, :cond_17

    .line 438
    .line 439
    const/16 v0, 0x8

    .line 440
    .line 441
    invoke-virtual {v6, v0}, Lp0/D;->u(I)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {v6}, Lp0/D;->o()I

    .line 445
    .line 446
    .line 447
    invoke-virtual {v6}, Lp0/D;->o()I

    .line 448
    .line 449
    .line 450
    invoke-virtual {v6}, Lp0/D;->t()V

    .line 451
    .line 452
    .line 453
    :cond_17
    invoke-virtual {v6}, Lp0/D;->m()I

    .line 454
    .line 455
    .line 456
    move-result v0

    .line 457
    const/4 v2, 0x0

    .line 458
    new-array v9, v2, [I

    .line 459
    .line 460
    new-array v12, v2, [I

    .line 461
    .line 462
    const/4 v1, -0x1

    .line 463
    const/4 v7, -0x1

    .line 464
    :goto_12
    if-ge v2, v0, :cond_29

    .line 465
    .line 466
    if-eqz v2, :cond_24

    .line 467
    .line 468
    invoke-virtual {v6}, Lp0/D;->h()Z

    .line 469
    .line 470
    .line 471
    move-result v22

    .line 472
    if-eqz v22, :cond_24

    .line 473
    .line 474
    move/from16 v22, v0

    .line 475
    .line 476
    add-int v0, v1, v7

    .line 477
    .line 478
    invoke-virtual {v6}, Lp0/D;->h()Z

    .line 479
    .line 480
    .line 481
    move-result v23

    .line 482
    invoke-virtual {v6}, Lp0/D;->m()I

    .line 483
    .line 484
    .line 485
    move-result v24

    .line 486
    const/16 v21, 0x1

    .line 487
    .line 488
    add-int/lit8 v24, v24, 0x1

    .line 489
    .line 490
    const/16 v19, 0x2

    .line 491
    .line 492
    mul-int/lit8 v23, v23, 0x2

    .line 493
    .line 494
    rsub-int/lit8 v23, v23, 0x1

    .line 495
    .line 496
    mul-int v23, v23, v24

    .line 497
    .line 498
    move/from16 v24, v5

    .line 499
    .line 500
    add-int/lit8 v5, v0, 0x1

    .line 501
    .line 502
    move/from16 v25, v15

    .line 503
    .line 504
    new-array v15, v5, [Z

    .line 505
    .line 506
    move/from16 v26, v14

    .line 507
    .line 508
    const/4 v14, 0x0

    .line 509
    :goto_13
    if-gt v14, v0, :cond_19

    .line 510
    .line 511
    invoke-virtual {v6}, Lp0/D;->h()Z

    .line 512
    .line 513
    .line 514
    move-result v27

    .line 515
    if-nez v27, :cond_18

    .line 516
    .line 517
    invoke-virtual {v6}, Lp0/D;->h()Z

    .line 518
    .line 519
    .line 520
    move-result v27

    .line 521
    aput-boolean v27, v15, v14

    .line 522
    .line 523
    goto :goto_14

    .line 524
    :cond_18
    const/16 v21, 0x1

    .line 525
    .line 526
    aput-boolean v21, v15, v14

    .line 527
    .line 528
    :goto_14
    add-int/lit8 v14, v14, 0x1

    .line 529
    .line 530
    goto :goto_13

    .line 531
    :cond_19
    new-array v14, v5, [I

    .line 532
    .line 533
    new-array v5, v5, [I

    .line 534
    .line 535
    add-int/lit8 v27, v7, -0x1

    .line 536
    .line 537
    const/16 v28, 0x0

    .line 538
    .line 539
    :goto_15
    if-ltz v27, :cond_1b

    .line 540
    .line 541
    aget v29, v12, v27

    .line 542
    .line 543
    add-int v29, v29, v23

    .line 544
    .line 545
    if-gez v29, :cond_1a

    .line 546
    .line 547
    add-int v30, v1, v27

    .line 548
    .line 549
    aget-boolean v30, v15, v30

    .line 550
    .line 551
    if-eqz v30, :cond_1a

    .line 552
    .line 553
    add-int/lit8 v30, v28, 0x1

    .line 554
    .line 555
    aput v29, v14, v28

    .line 556
    .line 557
    move/from16 v28, v30

    .line 558
    .line 559
    :cond_1a
    add-int/lit8 v27, v27, -0x1

    .line 560
    .line 561
    goto :goto_15

    .line 562
    :cond_1b
    if-gez v23, :cond_1c

    .line 563
    .line 564
    aget-boolean v27, v15, v0

    .line 565
    .line 566
    if-eqz v27, :cond_1c

    .line 567
    .line 568
    add-int/lit8 v27, v28, 0x1

    .line 569
    .line 570
    aput v23, v14, v28

    .line 571
    .line 572
    move/from16 v28, v27

    .line 573
    .line 574
    :cond_1c
    move/from16 v27, v11

    .line 575
    .line 576
    move/from16 v11, v28

    .line 577
    .line 578
    move-object/from16 v28, v10

    .line 579
    .line 580
    const/4 v10, 0x0

    .line 581
    :goto_16
    if-ge v10, v1, :cond_1e

    .line 582
    .line 583
    aget v29, v9, v10

    .line 584
    .line 585
    add-int v29, v29, v23

    .line 586
    .line 587
    if-gez v29, :cond_1d

    .line 588
    .line 589
    aget-boolean v30, v15, v10

    .line 590
    .line 591
    if-eqz v30, :cond_1d

    .line 592
    .line 593
    add-int/lit8 v30, v11, 0x1

    .line 594
    .line 595
    aput v29, v14, v11

    .line 596
    .line 597
    move/from16 v11, v30

    .line 598
    .line 599
    :cond_1d
    add-int/lit8 v10, v10, 0x1

    .line 600
    .line 601
    goto :goto_16

    .line 602
    :cond_1e
    invoke-static {v14, v11}, Ljava/util/Arrays;->copyOf([II)[I

    .line 603
    .line 604
    .line 605
    move-result-object v10

    .line 606
    add-int/lit8 v14, v1, -0x1

    .line 607
    .line 608
    const/16 v29, 0x0

    .line 609
    .line 610
    :goto_17
    if-ltz v14, :cond_20

    .line 611
    .line 612
    aget v30, v9, v14

    .line 613
    .line 614
    add-int v30, v30, v23

    .line 615
    .line 616
    if-lez v30, :cond_1f

    .line 617
    .line 618
    aget-boolean v31, v15, v14

    .line 619
    .line 620
    if-eqz v31, :cond_1f

    .line 621
    .line 622
    add-int/lit8 v31, v29, 0x1

    .line 623
    .line 624
    aput v30, v5, v29

    .line 625
    .line 626
    move/from16 v29, v31

    .line 627
    .line 628
    :cond_1f
    add-int/lit8 v14, v14, -0x1

    .line 629
    .line 630
    goto :goto_17

    .line 631
    :cond_20
    if-lez v23, :cond_21

    .line 632
    .line 633
    aget-boolean v0, v15, v0

    .line 634
    .line 635
    if-eqz v0, :cond_21

    .line 636
    .line 637
    add-int/lit8 v0, v29, 0x1

    .line 638
    .line 639
    aput v23, v5, v29

    .line 640
    .line 641
    move/from16 v29, v0

    .line 642
    .line 643
    :cond_21
    move/from16 v0, v29

    .line 644
    .line 645
    const/4 v9, 0x0

    .line 646
    :goto_18
    if-ge v9, v7, :cond_23

    .line 647
    .line 648
    aget v14, v12, v9

    .line 649
    .line 650
    add-int v14, v14, v23

    .line 651
    .line 652
    if-lez v14, :cond_22

    .line 653
    .line 654
    add-int v29, v1, v9

    .line 655
    .line 656
    aget-boolean v29, v15, v29

    .line 657
    .line 658
    if-eqz v29, :cond_22

    .line 659
    .line 660
    add-int/lit8 v29, v0, 0x1

    .line 661
    .line 662
    aput v14, v5, v0

    .line 663
    .line 664
    move/from16 v0, v29

    .line 665
    .line 666
    :cond_22
    add-int/lit8 v9, v9, 0x1

    .line 667
    .line 668
    goto :goto_18

    .line 669
    :cond_23
    invoke-static {v5, v0}, Ljava/util/Arrays;->copyOf([II)[I

    .line 670
    .line 671
    .line 672
    move-result-object v1

    .line 673
    move v7, v0

    .line 674
    move-object v0, v1

    .line 675
    move-object v9, v10

    .line 676
    move v1, v11

    .line 677
    const/4 v12, 0x1

    .line 678
    goto :goto_1d

    .line 679
    :cond_24
    move/from16 v22, v0

    .line 680
    .line 681
    move/from16 v24, v5

    .line 682
    .line 683
    move-object/from16 v28, v10

    .line 684
    .line 685
    move/from16 v27, v11

    .line 686
    .line 687
    move/from16 v26, v14

    .line 688
    .line 689
    move/from16 v25, v15

    .line 690
    .line 691
    invoke-virtual {v6}, Lp0/D;->m()I

    .line 692
    .line 693
    .line 694
    move-result v0

    .line 695
    invoke-virtual {v6}, Lp0/D;->m()I

    .line 696
    .line 697
    .line 698
    move-result v1

    .line 699
    new-array v5, v0, [I

    .line 700
    .line 701
    const/4 v7, 0x0

    .line 702
    :goto_19
    if-ge v7, v0, :cond_26

    .line 703
    .line 704
    if-lez v7, :cond_25

    .line 705
    .line 706
    add-int/lit8 v9, v7, -0x1

    .line 707
    .line 708
    aget v9, v5, v9

    .line 709
    .line 710
    goto :goto_1a

    .line 711
    :cond_25
    const/4 v9, 0x0

    .line 712
    :goto_1a
    invoke-virtual {v6}, Lp0/D;->m()I

    .line 713
    .line 714
    .line 715
    move-result v10

    .line 716
    const/4 v11, 0x1

    .line 717
    add-int/2addr v10, v11

    .line 718
    sub-int/2addr v9, v10

    .line 719
    aput v9, v5, v7

    .line 720
    .line 721
    invoke-virtual {v6}, Lp0/D;->t()V

    .line 722
    .line 723
    .line 724
    add-int/lit8 v7, v7, 0x1

    .line 725
    .line 726
    goto :goto_19

    .line 727
    :cond_26
    new-array v7, v1, [I

    .line 728
    .line 729
    const/4 v9, 0x0

    .line 730
    :goto_1b
    if-ge v9, v1, :cond_28

    .line 731
    .line 732
    if-lez v9, :cond_27

    .line 733
    .line 734
    add-int/lit8 v10, v9, -0x1

    .line 735
    .line 736
    aget v10, v7, v10

    .line 737
    .line 738
    goto :goto_1c

    .line 739
    :cond_27
    const/4 v10, 0x0

    .line 740
    :goto_1c
    invoke-virtual {v6}, Lp0/D;->m()I

    .line 741
    .line 742
    .line 743
    move-result v11

    .line 744
    const/4 v12, 0x1

    .line 745
    add-int/2addr v11, v12

    .line 746
    add-int/2addr v11, v10

    .line 747
    aput v11, v7, v9

    .line 748
    .line 749
    invoke-virtual {v6}, Lp0/D;->t()V

    .line 750
    .line 751
    .line 752
    add-int/lit8 v9, v9, 0x1

    .line 753
    .line 754
    goto :goto_1b

    .line 755
    :cond_28
    const/4 v12, 0x1

    .line 756
    move-object v9, v5

    .line 757
    move/from16 v32, v1

    .line 758
    .line 759
    move v1, v0

    .line 760
    move-object v0, v7

    .line 761
    move/from16 v7, v32

    .line 762
    .line 763
    :goto_1d
    add-int/lit8 v2, v2, 0x1

    .line 764
    .line 765
    move-object v12, v0

    .line 766
    move/from16 v0, v22

    .line 767
    .line 768
    move/from16 v5, v24

    .line 769
    .line 770
    move/from16 v15, v25

    .line 771
    .line 772
    move/from16 v14, v26

    .line 773
    .line 774
    move/from16 v11, v27

    .line 775
    .line 776
    move-object/from16 v10, v28

    .line 777
    .line 778
    goto/16 :goto_12

    .line 779
    .line 780
    :cond_29
    move/from16 v24, v5

    .line 781
    .line 782
    move-object/from16 v28, v10

    .line 783
    .line 784
    move/from16 v27, v11

    .line 785
    .line 786
    move/from16 v26, v14

    .line 787
    .line 788
    move/from16 v25, v15

    .line 789
    .line 790
    const/4 v12, 0x1

    .line 791
    invoke-virtual {v6}, Lp0/D;->h()Z

    .line 792
    .line 793
    .line 794
    move-result v0

    .line 795
    if-eqz v0, :cond_2a

    .line 796
    .line 797
    invoke-virtual {v6}, Lp0/D;->o()I

    .line 798
    .line 799
    .line 800
    move-result v0

    .line 801
    const/4 v9, 0x0

    .line 802
    :goto_1e
    if-ge v9, v0, :cond_2a

    .line 803
    .line 804
    add-int/lit8 v1, v18, 0x5

    .line 805
    .line 806
    invoke-virtual {v6, v1}, Lp0/D;->u(I)V

    .line 807
    .line 808
    .line 809
    add-int/lit8 v9, v9, 0x1

    .line 810
    .line 811
    goto :goto_1e

    .line 812
    :cond_2a
    const/4 v0, 0x2

    .line 813
    invoke-virtual {v6, v0}, Lp0/D;->u(I)V

    .line 814
    .line 815
    .line 816
    invoke-virtual {v6}, Lp0/D;->h()Z

    .line 817
    .line 818
    .line 819
    move-result v1

    .line 820
    const/high16 v2, 0x3f800000    # 1.0f

    .line 821
    .line 822
    if-eqz v1, :cond_35

    .line 823
    .line 824
    invoke-virtual {v6}, Lp0/D;->h()Z

    .line 825
    .line 826
    .line 827
    move-result v1

    .line 828
    if-eqz v1, :cond_2d

    .line 829
    .line 830
    const/16 v1, 0x8

    .line 831
    .line 832
    invoke-virtual {v6, v1}, Lp0/D;->i(I)I

    .line 833
    .line 834
    .line 835
    move-result v5

    .line 836
    const/16 v1, 0xff

    .line 837
    .line 838
    if-ne v5, v1, :cond_2b

    .line 839
    .line 840
    const/16 v1, 0x10

    .line 841
    .line 842
    invoke-virtual {v6, v1}, Lp0/D;->i(I)I

    .line 843
    .line 844
    .line 845
    move-result v5

    .line 846
    invoke-virtual {v6, v1}, Lp0/D;->i(I)I

    .line 847
    .line 848
    .line 849
    move-result v1

    .line 850
    if-eqz v5, :cond_2d

    .line 851
    .line 852
    if-eqz v1, :cond_2d

    .line 853
    .line 854
    int-to-float v2, v5

    .line 855
    int-to-float v1, v1

    .line 856
    div-float/2addr v2, v1

    .line 857
    goto :goto_1f

    .line 858
    :cond_2b
    const/16 v1, 0x11

    .line 859
    .line 860
    if-ge v5, v1, :cond_2c

    .line 861
    .line 862
    sget-object v1, Lq0/p;->b:[F

    .line 863
    .line 864
    aget v2, v1, v5

    .line 865
    .line 866
    goto :goto_1f

    .line 867
    :cond_2c
    const-string v1, "Unexpected aspect_ratio_idc value: "

    .line 868
    .line 869
    const-string v7, "NalUnitUtil"

    .line 870
    .line 871
    invoke-static {v1, v5, v7}, Lcom/google/protobuf/U2;->v(Ljava/lang/String;ILjava/lang/String;)V

    .line 872
    .line 873
    .line 874
    :cond_2d
    :goto_1f
    invoke-virtual {v6}, Lp0/D;->h()Z

    .line 875
    .line 876
    .line 877
    move-result v1

    .line 878
    if-eqz v1, :cond_2e

    .line 879
    .line 880
    invoke-virtual {v6}, Lp0/D;->t()V

    .line 881
    .line 882
    .line 883
    :cond_2e
    invoke-virtual {v6}, Lp0/D;->h()Z

    .line 884
    .line 885
    .line 886
    move-result v1

    .line 887
    if-eqz v1, :cond_31

    .line 888
    .line 889
    const/4 v1, 0x3

    .line 890
    invoke-virtual {v6, v1}, Lp0/D;->u(I)V

    .line 891
    .line 892
    .line 893
    invoke-virtual {v6}, Lp0/D;->h()Z

    .line 894
    .line 895
    .line 896
    move-result v1

    .line 897
    if-eqz v1, :cond_2f

    .line 898
    .line 899
    const/4 v5, 0x1

    .line 900
    goto :goto_20

    .line 901
    :cond_2f
    const/4 v5, 0x2

    .line 902
    :goto_20
    invoke-virtual {v6}, Lp0/D;->h()Z

    .line 903
    .line 904
    .line 905
    move-result v0

    .line 906
    if-eqz v0, :cond_30

    .line 907
    .line 908
    const/16 v0, 0x8

    .line 909
    .line 910
    invoke-virtual {v6, v0}, Lp0/D;->i(I)I

    .line 911
    .line 912
    .line 913
    move-result v1

    .line 914
    invoke-virtual {v6, v0}, Lp0/D;->i(I)I

    .line 915
    .line 916
    .line 917
    move-result v3

    .line 918
    invoke-virtual {v6, v0}, Lp0/D;->u(I)V

    .line 919
    .line 920
    .line 921
    invoke-static {v1}, Lm0/i;->h(I)I

    .line 922
    .line 923
    .line 924
    move-result v11

    .line 925
    invoke-static {v3}, Lm0/i;->i(I)I

    .line 926
    .line 927
    .line 928
    move-result v0

    .line 929
    goto :goto_22

    .line 930
    :cond_30
    const/4 v0, -0x1

    .line 931
    :goto_21
    const/4 v11, -0x1

    .line 932
    goto :goto_22

    .line 933
    :cond_31
    if-eqz v3, :cond_32

    .line 934
    .line 935
    iget-object v0, v3, Lq0/m;->d:Lm2/e;

    .line 936
    .line 937
    if-eqz v0, :cond_32

    .line 938
    .line 939
    iget-object v1, v0, Lm2/e;->I:Ljava/lang/Object;

    .line 940
    .line 941
    check-cast v1, [I

    .line 942
    .line 943
    aget v1, v1, v4

    .line 944
    .line 945
    iget-object v3, v0, Lm2/e;->H:Ljava/lang/Object;

    .line 946
    .line 947
    check-cast v3, Lz4/H;

    .line 948
    .line 949
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    .line 950
    .line 951
    .line 952
    move-result v3

    .line 953
    if-le v3, v1, :cond_32

    .line 954
    .line 955
    iget-object v0, v0, Lm2/e;->H:Ljava/lang/Object;

    .line 956
    .line 957
    check-cast v0, Lz4/H;

    .line 958
    .line 959
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 960
    .line 961
    .line 962
    move-result-object v0

    .line 963
    check-cast v0, Lq0/l;

    .line 964
    .line 965
    iget v11, v0, Lq0/l;->a:I

    .line 966
    .line 967
    iget v1, v0, Lq0/l;->b:I

    .line 968
    .line 969
    iget v0, v0, Lq0/l;->c:I

    .line 970
    .line 971
    move v5, v1

    .line 972
    goto :goto_22

    .line 973
    :cond_32
    const/4 v0, -0x1

    .line 974
    const/4 v5, -0x1

    .line 975
    goto :goto_21

    .line 976
    :goto_22
    invoke-virtual {v6}, Lp0/D;->h()Z

    .line 977
    .line 978
    .line 979
    move-result v1

    .line 980
    if-eqz v1, :cond_33

    .line 981
    .line 982
    invoke-virtual {v6}, Lp0/D;->o()I

    .line 983
    .line 984
    .line 985
    invoke-virtual {v6}, Lp0/D;->o()I

    .line 986
    .line 987
    .line 988
    :cond_33
    invoke-virtual {v6}, Lp0/D;->t()V

    .line 989
    .line 990
    .line 991
    invoke-virtual {v6}, Lp0/D;->h()Z

    .line 992
    .line 993
    .line 994
    move-result v1

    .line 995
    if-eqz v1, :cond_34

    .line 996
    .line 997
    mul-int/lit8 v13, v13, 0x2

    .line 998
    .line 999
    :cond_34
    move/from16 v20, v0

    .line 1000
    .line 1001
    move/from16 v19, v5

    .line 1002
    .line 1003
    move/from16 v18, v11

    .line 1004
    .line 1005
    goto :goto_23

    .line 1006
    :cond_35
    const/16 v18, -0x1

    .line 1007
    .line 1008
    const/16 v19, -0x1

    .line 1009
    .line 1010
    const/16 v20, -0x1

    .line 1011
    .line 1012
    :goto_23
    new-instance v0, Lq0/k;

    .line 1013
    .line 1014
    move-object v7, v0

    .line 1015
    move-object/from16 v9, v28

    .line 1016
    .line 1017
    move/from16 v10, v16

    .line 1018
    .line 1019
    move/from16 v11, v27

    .line 1020
    .line 1021
    move/from16 v12, v26

    .line 1022
    .line 1023
    move/from16 v14, v25

    .line 1024
    .line 1025
    move/from16 v15, v17

    .line 1026
    .line 1027
    move/from16 v16, v2

    .line 1028
    .line 1029
    move/from16 v17, v24

    .line 1030
    .line 1031
    invoke-direct/range {v7 .. v20}, Lq0/k;-><init>(ILq0/i;IIIIIIFIIII)V

    .line 1032
    .line 1033
    .line 1034
    return-object v0
.end method

.method public static j(I[BI)Lq0/m;
    .locals 36

    .line 1
    new-instance v0, Lp0/D;

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
    invoke-direct {v0, v2, v1, v3}, Lp0/D;-><init>([BII)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lq0/p;->f(Lp0/D;)LA2/i;

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x4

    .line 16
    invoke-virtual {v0, v1}, Lp0/D;->u(I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lp0/D;->h()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {v0}, Lp0/D;->h()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const/4 v4, 0x6

    .line 28
    invoke-virtual {v0, v4}, Lp0/D;->i(I)I

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
    invoke-virtual {v0, v7}, Lp0/D;->i(I)I

    .line 36
    .line 37
    .line 38
    move-result v8

    .line 39
    const/16 v9, 0x11

    .line 40
    .line 41
    invoke-virtual {v0, v9}, Lp0/D;->u(I)V

    .line 42
    .line 43
    .line 44
    const/4 v9, 0x1

    .line 45
    const/4 v10, 0x0

    .line 46
    invoke-static {v0, v9, v8, v10}, Lq0/p;->g(Lp0/D;ZILq0/i;)Lq0/i;

    .line 47
    .line 48
    .line 49
    move-result-object v11

    .line 50
    invoke-virtual {v0}, Lp0/D;->h()Z

    .line 51
    .line 52
    .line 53
    move-result v12

    .line 54
    const/4 v13, 0x0

    .line 55
    if-eqz v12, :cond_0

    .line 56
    .line 57
    const/4 v12, 0x0

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    move v12, v8

    .line 60
    :goto_0
    if-gt v12, v8, :cond_1

    .line 61
    .line 62
    invoke-virtual {v0}, Lp0/D;->o()I

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Lp0/D;->o()I

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Lp0/D;->o()I

    .line 69
    .line 70
    .line 71
    add-int/lit8 v12, v12, 0x1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {v0, v4}, Lp0/D;->i(I)I

    .line 75
    .line 76
    .line 77
    move-result v12

    .line 78
    invoke-virtual {v0}, Lp0/D;->o()I

    .line 79
    .line 80
    .line 81
    move-result v14

    .line 82
    add-int/2addr v14, v9

    .line 83
    invoke-static {v11}, Lz4/H;->x(Ljava/lang/Object;)Lz4/d0;

    .line 84
    .line 85
    .line 86
    move-result-object v15

    .line 87
    new-instance v4, LF/i;

    .line 88
    .line 89
    new-array v7, v9, [I

    .line 90
    .line 91
    invoke-direct {v4, v15, v7}, LF/i;-><init>(Lz4/d0;[I)V

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
    if-lt v3, v6, :cond_4

    .line 112
    .line 113
    const/16 v16, 0x1

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_4
    const/16 v16, 0x0

    .line 117
    .line 118
    :goto_3
    if-eqz v15, :cond_5

    .line 119
    .line 120
    if-eqz v2, :cond_5

    .line 121
    .line 122
    if-nez v16, :cond_6

    .line 123
    .line 124
    :cond_5
    move-object v1, v10

    .line 125
    goto/16 :goto_59

    .line 126
    .line 127
    :cond_6
    filled-new-array {v14, v3}, [I

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 132
    .line 133
    invoke-static {v15, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    check-cast v2, [[I

    .line 138
    .line 139
    new-array v15, v14, [I

    .line 140
    .line 141
    new-array v7, v14, [I

    .line 142
    .line 143
    aget-object v16, v2, v13

    .line 144
    .line 145
    aput v13, v16, v13

    .line 146
    .line 147
    aput v9, v15, v13

    .line 148
    .line 149
    aput v13, v7, v13

    .line 150
    .line 151
    :goto_4
    if-ge v9, v14, :cond_9

    .line 152
    .line 153
    const/16 v18, 0x0

    .line 154
    .line 155
    :goto_5
    if-gt v13, v12, :cond_8

    .line 156
    .line 157
    invoke-virtual {v0}, Lp0/D;->h()Z

    .line 158
    .line 159
    .line 160
    move-result v19

    .line 161
    if-eqz v19, :cond_7

    .line 162
    .line 163
    aget-object v19, v2, v9

    .line 164
    .line 165
    add-int/lit8 v20, v18, 0x1

    .line 166
    .line 167
    aput v13, v19, v18

    .line 168
    .line 169
    aput v13, v7, v9

    .line 170
    .line 171
    move/from16 v18, v20

    .line 172
    .line 173
    :cond_7
    aput v18, v15, v9

    .line 174
    .line 175
    add-int/lit8 v13, v13, 0x1

    .line 176
    .line 177
    goto :goto_5

    .line 178
    :cond_8
    add-int/lit8 v9, v9, 0x1

    .line 179
    .line 180
    const/4 v13, 0x0

    .line 181
    goto :goto_4

    .line 182
    :cond_9
    invoke-virtual {v0}, Lp0/D;->h()Z

    .line 183
    .line 184
    .line 185
    move-result v9

    .line 186
    const/16 v13, 0x8

    .line 187
    .line 188
    if-eqz v9, :cond_18

    .line 189
    .line 190
    const/16 v9, 0x40

    .line 191
    .line 192
    invoke-virtual {v0, v9}, Lp0/D;->u(I)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0}, Lp0/D;->h()Z

    .line 196
    .line 197
    .line 198
    move-result v9

    .line 199
    if-eqz v9, :cond_a

    .line 200
    .line 201
    invoke-virtual {v0}, Lp0/D;->o()I

    .line 202
    .line 203
    .line 204
    :cond_a
    invoke-virtual {v0}, Lp0/D;->o()I

    .line 205
    .line 206
    .line 207
    move-result v9

    .line 208
    const/4 v10, 0x0

    .line 209
    :goto_6
    if-ge v10, v9, :cond_18

    .line 210
    .line 211
    invoke-virtual {v0}, Lp0/D;->o()I

    .line 212
    .line 213
    .line 214
    if-eqz v10, :cond_d

    .line 215
    .line 216
    invoke-virtual {v0}, Lp0/D;->h()Z

    .line 217
    .line 218
    .line 219
    move-result v19

    .line 220
    if-eqz v19, :cond_b

    .line 221
    .line 222
    goto :goto_7

    .line 223
    :cond_b
    const/16 v19, 0x0

    .line 224
    .line 225
    const/16 v20, 0x0

    .line 226
    .line 227
    :cond_c
    const/16 v21, 0x0

    .line 228
    .line 229
    goto :goto_8

    .line 230
    :cond_d
    :goto_7
    invoke-virtual {v0}, Lp0/D;->h()Z

    .line 231
    .line 232
    .line 233
    move-result v19

    .line 234
    invoke-virtual {v0}, Lp0/D;->h()Z

    .line 235
    .line 236
    .line 237
    move-result v20

    .line 238
    if-nez v19, :cond_e

    .line 239
    .line 240
    if-eqz v20, :cond_c

    .line 241
    .line 242
    :cond_e
    invoke-virtual {v0}, Lp0/D;->h()Z

    .line 243
    .line 244
    .line 245
    move-result v21

    .line 246
    if-eqz v21, :cond_f

    .line 247
    .line 248
    const/16 v1, 0x13

    .line 249
    .line 250
    invoke-virtual {v0, v1}, Lp0/D;->u(I)V

    .line 251
    .line 252
    .line 253
    :cond_f
    invoke-virtual {v0, v13}, Lp0/D;->u(I)V

    .line 254
    .line 255
    .line 256
    if-eqz v21, :cond_10

    .line 257
    .line 258
    const/4 v1, 0x4

    .line 259
    invoke-virtual {v0, v1}, Lp0/D;->u(I)V

    .line 260
    .line 261
    .line 262
    :cond_10
    const/16 v1, 0xf

    .line 263
    .line 264
    invoke-virtual {v0, v1}, Lp0/D;->u(I)V

    .line 265
    .line 266
    .line 267
    :goto_8
    const/4 v1, 0x0

    .line 268
    :goto_9
    if-gt v1, v8, :cond_17

    .line 269
    .line 270
    invoke-virtual {v0}, Lp0/D;->h()Z

    .line 271
    .line 272
    .line 273
    move-result v22

    .line 274
    if-nez v22, :cond_11

    .line 275
    .line 276
    invoke-virtual {v0}, Lp0/D;->h()Z

    .line 277
    .line 278
    .line 279
    move-result v22

    .line 280
    :cond_11
    if-eqz v22, :cond_12

    .line 281
    .line 282
    invoke-virtual {v0}, Lp0/D;->m()I

    .line 283
    .line 284
    .line 285
    goto :goto_a

    .line 286
    :cond_12
    invoke-virtual {v0}, Lp0/D;->h()Z

    .line 287
    .line 288
    .line 289
    move-result v22

    .line 290
    if-nez v22, :cond_13

    .line 291
    .line 292
    :goto_a
    invoke-virtual {v0}, Lp0/D;->m()I

    .line 293
    .line 294
    .line 295
    move-result v22

    .line 296
    move/from16 v23, v9

    .line 297
    .line 298
    move/from16 v13, v22

    .line 299
    .line 300
    goto :goto_b

    .line 301
    :cond_13
    move/from16 v23, v9

    .line 302
    .line 303
    const/4 v13, 0x0

    .line 304
    :goto_b
    add-int v9, v19, v20

    .line 305
    .line 306
    move-object/from16 v24, v7

    .line 307
    .line 308
    const/4 v7, 0x0

    .line 309
    :goto_c
    if-ge v7, v9, :cond_16

    .line 310
    .line 311
    move/from16 v25, v9

    .line 312
    .line 313
    const/4 v9, 0x0

    .line 314
    :goto_d
    if-gt v9, v13, :cond_15

    .line 315
    .line 316
    invoke-virtual {v0}, Lp0/D;->m()I

    .line 317
    .line 318
    .line 319
    invoke-virtual {v0}, Lp0/D;->m()I

    .line 320
    .line 321
    .line 322
    if-eqz v21, :cond_14

    .line 323
    .line 324
    invoke-virtual {v0}, Lp0/D;->m()I

    .line 325
    .line 326
    .line 327
    invoke-virtual {v0}, Lp0/D;->m()I

    .line 328
    .line 329
    .line 330
    :cond_14
    invoke-virtual {v0}, Lp0/D;->t()V

    .line 331
    .line 332
    .line 333
    add-int/lit8 v9, v9, 0x1

    .line 334
    .line 335
    goto :goto_d

    .line 336
    :cond_15
    add-int/lit8 v7, v7, 0x1

    .line 337
    .line 338
    move/from16 v9, v25

    .line 339
    .line 340
    goto :goto_c

    .line 341
    :cond_16
    add-int/lit8 v1, v1, 0x1

    .line 342
    .line 343
    move/from16 v9, v23

    .line 344
    .line 345
    move-object/from16 v7, v24

    .line 346
    .line 347
    const/16 v13, 0x8

    .line 348
    .line 349
    goto :goto_9

    .line 350
    :cond_17
    move-object/from16 v24, v7

    .line 351
    .line 352
    move/from16 v23, v9

    .line 353
    .line 354
    add-int/lit8 v10, v10, 0x1

    .line 355
    .line 356
    const/4 v1, 0x4

    .line 357
    const/16 v13, 0x8

    .line 358
    .line 359
    goto/16 :goto_6

    .line 360
    .line 361
    :cond_18
    move-object/from16 v24, v7

    .line 362
    .line 363
    invoke-virtual {v0}, Lp0/D;->h()Z

    .line 364
    .line 365
    .line 366
    move-result v1

    .line 367
    if-nez v1, :cond_19

    .line 368
    .line 369
    new-instance v0, Lq0/m;

    .line 370
    .line 371
    const/4 v1, 0x0

    .line 372
    invoke-direct {v0, v1, v4, v1, v1}, Lq0/m;-><init>(Lz4/d0;LF/i;Lm2/c;Lm2/e;)V

    .line 373
    .line 374
    .line 375
    goto/16 :goto_5a

    .line 376
    .line 377
    :cond_19
    invoke-virtual {v0}, Lp0/D;->c()V

    .line 378
    .line 379
    .line 380
    const/4 v1, 0x0

    .line 381
    invoke-static {v0, v1, v8, v11}, Lq0/p;->g(Lp0/D;ZILq0/i;)Lq0/i;

    .line 382
    .line 383
    .line 384
    move-result-object v7

    .line 385
    invoke-virtual {v0}, Lp0/D;->h()Z

    .line 386
    .line 387
    .line 388
    move-result v1

    .line 389
    const/16 v9, 0x10

    .line 390
    .line 391
    new-array v10, v9, [Z

    .line 392
    .line 393
    move-object/from16 v19, v7

    .line 394
    .line 395
    const/4 v7, 0x0

    .line 396
    const/4 v13, 0x0

    .line 397
    :goto_e
    if-ge v13, v9, :cond_1b

    .line 398
    .line 399
    invoke-virtual {v0}, Lp0/D;->h()Z

    .line 400
    .line 401
    .line 402
    move-result v20

    .line 403
    aput-boolean v20, v10, v13

    .line 404
    .line 405
    if-eqz v20, :cond_1a

    .line 406
    .line 407
    add-int/lit8 v7, v7, 0x1

    .line 408
    .line 409
    :cond_1a
    add-int/lit8 v13, v13, 0x1

    .line 410
    .line 411
    goto :goto_e

    .line 412
    :cond_1b
    if-eqz v7, :cond_1c

    .line 413
    .line 414
    const/4 v13, 0x1

    .line 415
    aget-boolean v20, v10, v13

    .line 416
    .line 417
    if-nez v20, :cond_1d

    .line 418
    .line 419
    :cond_1c
    const/4 v1, 0x0

    .line 420
    goto/16 :goto_58

    .line 421
    .line 422
    :cond_1d
    new-array v13, v7, [I

    .line 423
    .line 424
    move-object/from16 v21, v11

    .line 425
    .line 426
    const/4 v9, 0x0

    .line 427
    :goto_f
    sub-int v11, v7, v1

    .line 428
    .line 429
    if-ge v9, v11, :cond_1e

    .line 430
    .line 431
    const/4 v11, 0x3

    .line 432
    invoke-virtual {v0, v11}, Lp0/D;->i(I)I

    .line 433
    .line 434
    .line 435
    move-result v23

    .line 436
    aput v23, v13, v9

    .line 437
    .line 438
    add-int/lit8 v9, v9, 0x1

    .line 439
    .line 440
    goto :goto_f

    .line 441
    :cond_1e
    add-int/lit8 v9, v7, 0x1

    .line 442
    .line 443
    new-array v9, v9, [I

    .line 444
    .line 445
    if-eqz v1, :cond_21

    .line 446
    .line 447
    const/4 v11, 0x1

    .line 448
    :goto_10
    if-ge v11, v7, :cond_20

    .line 449
    .line 450
    move-object/from16 v23, v2

    .line 451
    .line 452
    const/4 v2, 0x0

    .line 453
    :goto_11
    if-ge v2, v11, :cond_1f

    .line 454
    .line 455
    aget v25, v9, v11

    .line 456
    .line 457
    aget v26, v13, v2

    .line 458
    .line 459
    const/16 v16, 0x1

    .line 460
    .line 461
    add-int/lit8 v26, v26, 0x1

    .line 462
    .line 463
    add-int v26, v26, v25

    .line 464
    .line 465
    aput v26, v9, v11

    .line 466
    .line 467
    add-int/lit8 v2, v2, 0x1

    .line 468
    .line 469
    goto :goto_11

    .line 470
    :cond_1f
    add-int/lit8 v11, v11, 0x1

    .line 471
    .line 472
    move-object/from16 v2, v23

    .line 473
    .line 474
    goto :goto_10

    .line 475
    :cond_20
    move-object/from16 v23, v2

    .line 476
    .line 477
    const/4 v2, 0x6

    .line 478
    aput v2, v9, v7

    .line 479
    .line 480
    goto :goto_12

    .line 481
    :cond_21
    move-object/from16 v23, v2

    .line 482
    .line 483
    :goto_12
    filled-new-array {v6, v7}, [I

    .line 484
    .line 485
    .line 486
    move-result-object v2

    .line 487
    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 488
    .line 489
    invoke-static {v11, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 490
    .line 491
    .line 492
    move-result-object v2

    .line 493
    check-cast v2, [[I

    .line 494
    .line 495
    new-array v11, v6, [I

    .line 496
    .line 497
    const/16 v17, 0x0

    .line 498
    .line 499
    aput v17, v11, v17

    .line 500
    .line 501
    invoke-virtual {v0}, Lp0/D;->h()Z

    .line 502
    .line 503
    .line 504
    move-result v25

    .line 505
    move-object/from16 v26, v15

    .line 506
    .line 507
    const/4 v15, 0x1

    .line 508
    :goto_13
    if-ge v15, v6, :cond_26

    .line 509
    .line 510
    if-eqz v25, :cond_22

    .line 511
    .line 512
    move/from16 v27, v8

    .line 513
    .line 514
    const/4 v8, 0x6

    .line 515
    invoke-virtual {v0, v8}, Lp0/D;->i(I)I

    .line 516
    .line 517
    .line 518
    move-result v28

    .line 519
    aput v28, v11, v15

    .line 520
    .line 521
    goto :goto_14

    .line 522
    :cond_22
    move/from16 v27, v8

    .line 523
    .line 524
    const/4 v8, 0x6

    .line 525
    aput v15, v11, v15

    .line 526
    .line 527
    :goto_14
    if-nez v1, :cond_24

    .line 528
    .line 529
    const/4 v8, 0x0

    .line 530
    :goto_15
    if-ge v8, v7, :cond_23

    .line 531
    .line 532
    aget-object v28, v2, v15

    .line 533
    .line 534
    aget v29, v13, v8

    .line 535
    .line 536
    move/from16 v30, v1

    .line 537
    .line 538
    const/16 v16, 0x1

    .line 539
    .line 540
    add-int/lit8 v1, v29, 0x1

    .line 541
    .line 542
    invoke-virtual {v0, v1}, Lp0/D;->i(I)I

    .line 543
    .line 544
    .line 545
    move-result v1

    .line 546
    aput v1, v28, v8

    .line 547
    .line 548
    add-int/lit8 v8, v8, 0x1

    .line 549
    .line 550
    move/from16 v1, v30

    .line 551
    .line 552
    goto :goto_15

    .line 553
    :cond_23
    move/from16 v30, v1

    .line 554
    .line 555
    goto :goto_17

    .line 556
    :cond_24
    move/from16 v30, v1

    .line 557
    .line 558
    const/4 v1, 0x0

    .line 559
    :goto_16
    if-ge v1, v7, :cond_25

    .line 560
    .line 561
    aget-object v8, v2, v15

    .line 562
    .line 563
    aget v28, v11, v15

    .line 564
    .line 565
    add-int/lit8 v29, v1, 0x1

    .line 566
    .line 567
    aget v31, v9, v29

    .line 568
    .line 569
    const/16 v16, 0x1

    .line 570
    .line 571
    shl-int v31, v16, v31

    .line 572
    .line 573
    add-int/lit8 v31, v31, -0x1

    .line 574
    .line 575
    and-int v28, v28, v31

    .line 576
    .line 577
    aget v31, v9, v1

    .line 578
    .line 579
    shr-int v28, v28, v31

    .line 580
    .line 581
    aput v28, v8, v1

    .line 582
    .line 583
    move/from16 v1, v29

    .line 584
    .line 585
    goto :goto_16

    .line 586
    :cond_25
    :goto_17
    add-int/lit8 v15, v15, 0x1

    .line 587
    .line 588
    move/from16 v8, v27

    .line 589
    .line 590
    move/from16 v1, v30

    .line 591
    .line 592
    goto :goto_13

    .line 593
    :cond_26
    move/from16 v27, v8

    .line 594
    .line 595
    new-array v1, v3, [I

    .line 596
    .line 597
    const/4 v7, 0x1

    .line 598
    const/4 v8, 0x0

    .line 599
    :goto_18
    const/4 v9, -0x1

    .line 600
    if-ge v8, v6, :cond_2d

    .line 601
    .line 602
    aget v13, v11, v8

    .line 603
    .line 604
    aput v9, v1, v13

    .line 605
    .line 606
    const/4 v9, 0x0

    .line 607
    const/4 v13, 0x0

    .line 608
    :goto_19
    const/16 v15, 0x10

    .line 609
    .line 610
    if-ge v9, v15, :cond_29

    .line 611
    .line 612
    aget-boolean v15, v10, v9

    .line 613
    .line 614
    if-eqz v15, :cond_28

    .line 615
    .line 616
    const/4 v15, 0x1

    .line 617
    if-ne v9, v15, :cond_27

    .line 618
    .line 619
    aget v15, v11, v8

    .line 620
    .line 621
    aget-object v25, v2, v8

    .line 622
    .line 623
    aget v25, v25, v13

    .line 624
    .line 625
    aput v25, v1, v15

    .line 626
    .line 627
    :cond_27
    add-int/lit8 v13, v13, 0x1

    .line 628
    .line 629
    :cond_28
    add-int/lit8 v9, v9, 0x1

    .line 630
    .line 631
    goto :goto_19

    .line 632
    :cond_29
    if-lez v8, :cond_2c

    .line 633
    .line 634
    const/4 v9, 0x0

    .line 635
    :goto_1a
    if-ge v9, v8, :cond_2b

    .line 636
    .line 637
    aget v13, v11, v8

    .line 638
    .line 639
    aget v13, v1, v13

    .line 640
    .line 641
    aget v15, v11, v9

    .line 642
    .line 643
    aget v15, v1, v15

    .line 644
    .line 645
    if-ne v13, v15, :cond_2a

    .line 646
    .line 647
    goto :goto_1b

    .line 648
    :cond_2a
    add-int/lit8 v9, v9, 0x1

    .line 649
    .line 650
    goto :goto_1a

    .line 651
    :cond_2b
    add-int/lit8 v7, v7, 0x1

    .line 652
    .line 653
    :cond_2c
    :goto_1b
    add-int/lit8 v8, v8, 0x1

    .line 654
    .line 655
    goto :goto_18

    .line 656
    :cond_2d
    const/4 v8, 0x4

    .line 657
    invoke-virtual {v0, v8}, Lp0/D;->i(I)I

    .line 658
    .line 659
    .line 660
    move-result v2

    .line 661
    const/4 v8, 0x2

    .line 662
    if-lt v7, v8, :cond_81

    .line 663
    .line 664
    if-nez v2, :cond_2e

    .line 665
    .line 666
    goto/16 :goto_57

    .line 667
    .line 668
    :cond_2e
    new-array v8, v7, [I

    .line 669
    .line 670
    const/4 v10, 0x0

    .line 671
    :goto_1c
    if-ge v10, v7, :cond_2f

    .line 672
    .line 673
    invoke-virtual {v0, v2}, Lp0/D;->i(I)I

    .line 674
    .line 675
    .line 676
    move-result v13

    .line 677
    aput v13, v8, v10

    .line 678
    .line 679
    add-int/lit8 v10, v10, 0x1

    .line 680
    .line 681
    goto :goto_1c

    .line 682
    :cond_2f
    new-array v2, v3, [I

    .line 683
    .line 684
    const/4 v10, 0x0

    .line 685
    :goto_1d
    if-ge v10, v6, :cond_30

    .line 686
    .line 687
    aget v13, v11, v10

    .line 688
    .line 689
    invoke-static {v13, v12}, Ljava/lang/Math;->min(II)I

    .line 690
    .line 691
    .line 692
    move-result v13

    .line 693
    aput v10, v2, v13

    .line 694
    .line 695
    add-int/lit8 v10, v10, 0x1

    .line 696
    .line 697
    goto :goto_1d

    .line 698
    :cond_30
    invoke-static {}, Lz4/H;->q()Lz4/E;

    .line 699
    .line 700
    .line 701
    move-result-object v10

    .line 702
    const/4 v13, 0x0

    .line 703
    :goto_1e
    if-gt v13, v12, :cond_32

    .line 704
    .line 705
    aget v15, v1, v13

    .line 706
    .line 707
    const/16 v16, 0x1

    .line 708
    .line 709
    add-int/lit8 v9, v7, -0x1

    .line 710
    .line 711
    invoke-static {v15, v9}, Ljava/lang/Math;->min(II)I

    .line 712
    .line 713
    .line 714
    move-result v9

    .line 715
    if-ltz v9, :cond_31

    .line 716
    .line 717
    aget v9, v8, v9

    .line 718
    .line 719
    goto :goto_1f

    .line 720
    :cond_31
    const/4 v9, -0x1

    .line 721
    :goto_1f
    new-instance v15, Lq0/h;

    .line 722
    .line 723
    move-object/from16 v25, v1

    .line 724
    .line 725
    aget v1, v2, v13

    .line 726
    .line 727
    invoke-direct {v15, v1, v9}, Lq0/h;-><init>(II)V

    .line 728
    .line 729
    .line 730
    invoke-virtual {v10, v15}, Lz4/E;->i0(Ljava/lang/Object;)V

    .line 731
    .line 732
    .line 733
    add-int/lit8 v13, v13, 0x1

    .line 734
    .line 735
    move-object/from16 v1, v25

    .line 736
    .line 737
    const/4 v9, -0x1

    .line 738
    goto :goto_1e

    .line 739
    :cond_32
    invoke-virtual {v10}, Lz4/E;->m0()Lz4/d0;

    .line 740
    .line 741
    .line 742
    move-result-object v1

    .line 743
    const/4 v2, 0x0

    .line 744
    invoke-virtual {v1, v2}, Lz4/d0;->get(I)Ljava/lang/Object;

    .line 745
    .line 746
    .line 747
    move-result-object v7

    .line 748
    check-cast v7, Lq0/h;

    .line 749
    .line 750
    iget v2, v7, Lq0/h;->b:I

    .line 751
    .line 752
    const/4 v7, -0x1

    .line 753
    if-ne v2, v7, :cond_33

    .line 754
    .line 755
    new-instance v0, Lq0/m;

    .line 756
    .line 757
    const/4 v1, 0x0

    .line 758
    invoke-direct {v0, v1, v4, v1, v1}, Lq0/m;-><init>(Lz4/d0;LF/i;Lm2/c;Lm2/e;)V

    .line 759
    .line 760
    .line 761
    goto/16 :goto_5a

    .line 762
    .line 763
    :cond_33
    const/4 v2, 0x1

    .line 764
    :goto_20
    if-gt v2, v12, :cond_35

    .line 765
    .line 766
    invoke-virtual {v1, v2}, Lz4/d0;->get(I)Ljava/lang/Object;

    .line 767
    .line 768
    .line 769
    move-result-object v8

    .line 770
    check-cast v8, Lq0/h;

    .line 771
    .line 772
    iget v8, v8, Lq0/h;->b:I

    .line 773
    .line 774
    if-eq v8, v7, :cond_34

    .line 775
    .line 776
    goto :goto_21

    .line 777
    :cond_34
    add-int/lit8 v2, v2, 0x1

    .line 778
    .line 779
    goto :goto_20

    .line 780
    :cond_35
    const/4 v2, -0x1

    .line 781
    :goto_21
    if-ne v2, v7, :cond_36

    .line 782
    .line 783
    new-instance v0, Lq0/m;

    .line 784
    .line 785
    const/4 v1, 0x0

    .line 786
    invoke-direct {v0, v1, v4, v1, v1}, Lq0/m;-><init>(Lz4/d0;LF/i;Lm2/c;Lm2/e;)V

    .line 787
    .line 788
    .line 789
    goto/16 :goto_5a

    .line 790
    .line 791
    :cond_36
    filled-new-array {v6, v6}, [I

    .line 792
    .line 793
    .line 794
    move-result-object v7

    .line 795
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 796
    .line 797
    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 798
    .line 799
    .line 800
    move-result-object v7

    .line 801
    check-cast v7, [[Z

    .line 802
    .line 803
    filled-new-array {v6, v6}, [I

    .line 804
    .line 805
    .line 806
    move-result-object v9

    .line 807
    invoke-static {v8, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 808
    .line 809
    .line 810
    move-result-object v8

    .line 811
    check-cast v8, [[Z

    .line 812
    .line 813
    const/4 v9, 0x1

    .line 814
    :goto_22
    if-ge v9, v6, :cond_38

    .line 815
    .line 816
    const/4 v10, 0x0

    .line 817
    :goto_23
    if-ge v10, v9, :cond_37

    .line 818
    .line 819
    aget-object v12, v7, v9

    .line 820
    .line 821
    aget-object v13, v8, v9

    .line 822
    .line 823
    invoke-virtual {v0}, Lp0/D;->h()Z

    .line 824
    .line 825
    .line 826
    move-result v15

    .line 827
    aput-boolean v15, v13, v10

    .line 828
    .line 829
    aput-boolean v15, v12, v10

    .line 830
    .line 831
    add-int/lit8 v10, v10, 0x1

    .line 832
    .line 833
    goto :goto_23

    .line 834
    :cond_37
    add-int/lit8 v9, v9, 0x1

    .line 835
    .line 836
    goto :goto_22

    .line 837
    :cond_38
    const/4 v9, 0x1

    .line 838
    :goto_24
    if-ge v9, v6, :cond_3c

    .line 839
    .line 840
    const/4 v10, 0x0

    .line 841
    :goto_25
    if-ge v10, v5, :cond_3b

    .line 842
    .line 843
    const/4 v12, 0x0

    .line 844
    :goto_26
    if-ge v12, v9, :cond_3a

    .line 845
    .line 846
    aget-object v13, v8, v9

    .line 847
    .line 848
    aget-boolean v15, v13, v12

    .line 849
    .line 850
    if-eqz v15, :cond_39

    .line 851
    .line 852
    aget-object v15, v8, v12

    .line 853
    .line 854
    aget-boolean v15, v15, v10

    .line 855
    .line 856
    if-eqz v15, :cond_39

    .line 857
    .line 858
    const/4 v15, 0x1

    .line 859
    aput-boolean v15, v13, v10

    .line 860
    .line 861
    goto :goto_27

    .line 862
    :cond_39
    add-int/lit8 v12, v12, 0x1

    .line 863
    .line 864
    goto :goto_26

    .line 865
    :cond_3a
    :goto_27
    add-int/lit8 v10, v10, 0x1

    .line 866
    .line 867
    goto :goto_25

    .line 868
    :cond_3b
    add-int/lit8 v9, v9, 0x1

    .line 869
    .line 870
    goto :goto_24

    .line 871
    :cond_3c
    new-array v9, v3, [I

    .line 872
    .line 873
    const/4 v10, 0x0

    .line 874
    :goto_28
    if-ge v10, v6, :cond_3e

    .line 875
    .line 876
    const/4 v12, 0x0

    .line 877
    const/4 v13, 0x0

    .line 878
    :goto_29
    if-ge v12, v10, :cond_3d

    .line 879
    .line 880
    aget-object v15, v7, v10

    .line 881
    .line 882
    aget-boolean v15, v15, v12

    .line 883
    .line 884
    add-int/2addr v13, v15

    .line 885
    add-int/lit8 v12, v12, 0x1

    .line 886
    .line 887
    goto :goto_29

    .line 888
    :cond_3d
    aget v12, v11, v10

    .line 889
    .line 890
    aput v13, v9, v12

    .line 891
    .line 892
    add-int/lit8 v10, v10, 0x1

    .line 893
    .line 894
    goto :goto_28

    .line 895
    :cond_3e
    const/4 v10, 0x0

    .line 896
    const/4 v12, 0x0

    .line 897
    :goto_2a
    if-ge v10, v6, :cond_40

    .line 898
    .line 899
    aget v13, v11, v10

    .line 900
    .line 901
    aget v13, v9, v13

    .line 902
    .line 903
    if-nez v13, :cond_3f

    .line 904
    .line 905
    add-int/lit8 v12, v12, 0x1

    .line 906
    .line 907
    :cond_3f
    add-int/lit8 v10, v10, 0x1

    .line 908
    .line 909
    goto :goto_2a

    .line 910
    :cond_40
    const/4 v10, 0x1

    .line 911
    if-le v12, v10, :cond_41

    .line 912
    .line 913
    new-instance v0, Lq0/m;

    .line 914
    .line 915
    const/4 v1, 0x0

    .line 916
    invoke-direct {v0, v1, v4, v1, v1}, Lq0/m;-><init>(Lz4/d0;LF/i;Lm2/c;Lm2/e;)V

    .line 917
    .line 918
    .line 919
    goto/16 :goto_5a

    .line 920
    .line 921
    :cond_41
    new-array v10, v6, [I

    .line 922
    .line 923
    new-array v12, v14, [I

    .line 924
    .line 925
    invoke-virtual {v0}, Lp0/D;->h()Z

    .line 926
    .line 927
    .line 928
    move-result v13

    .line 929
    if-eqz v13, :cond_43

    .line 930
    .line 931
    const/4 v13, 0x0

    .line 932
    :goto_2b
    if-ge v13, v6, :cond_42

    .line 933
    .line 934
    const/4 v15, 0x3

    .line 935
    invoke-virtual {v0, v15}, Lp0/D;->i(I)I

    .line 936
    .line 937
    .line 938
    move-result v25

    .line 939
    aput v25, v10, v13

    .line 940
    .line 941
    add-int/lit8 v13, v13, 0x1

    .line 942
    .line 943
    goto :goto_2b

    .line 944
    :cond_42
    move/from16 v13, v27

    .line 945
    .line 946
    goto :goto_2c

    .line 947
    :cond_43
    move/from16 v13, v27

    .line 948
    .line 949
    const/4 v15, 0x0

    .line 950
    invoke-static {v10, v15, v6, v13}, Ljava/util/Arrays;->fill([IIII)V

    .line 951
    .line 952
    .line 953
    :goto_2c
    const/4 v15, 0x0

    .line 954
    :goto_2d
    if-ge v15, v14, :cond_45

    .line 955
    .line 956
    move-object/from16 p0, v8

    .line 957
    .line 958
    move-object/from16 v27, v9

    .line 959
    .line 960
    move-object/from16 v25, v11

    .line 961
    .line 962
    const/4 v9, 0x0

    .line 963
    const/4 v11, 0x0

    .line 964
    :goto_2e
    aget v8, v26, v15

    .line 965
    .line 966
    if-ge v11, v8, :cond_44

    .line 967
    .line 968
    aget-object v8, v23, v15

    .line 969
    .line 970
    aget v8, v8, v11

    .line 971
    .line 972
    invoke-virtual {v1, v8}, Lz4/d0;->get(I)Ljava/lang/Object;

    .line 973
    .line 974
    .line 975
    move-result-object v8

    .line 976
    check-cast v8, Lq0/h;

    .line 977
    .line 978
    iget v8, v8, Lq0/h;->a:I

    .line 979
    .line 980
    aget v8, v10, v8

    .line 981
    .line 982
    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    .line 983
    .line 984
    .line 985
    move-result v9

    .line 986
    add-int/lit8 v11, v11, 0x1

    .line 987
    .line 988
    goto :goto_2e

    .line 989
    :cond_44
    add-int/lit8 v9, v9, 0x1

    .line 990
    .line 991
    aput v9, v12, v15

    .line 992
    .line 993
    add-int/lit8 v15, v15, 0x1

    .line 994
    .line 995
    move-object/from16 v8, p0

    .line 996
    .line 997
    move-object/from16 v11, v25

    .line 998
    .line 999
    move-object/from16 v9, v27

    .line 1000
    .line 1001
    goto :goto_2d

    .line 1002
    :cond_45
    move-object/from16 p0, v8

    .line 1003
    .line 1004
    move-object/from16 v27, v9

    .line 1005
    .line 1006
    move-object/from16 v25, v11

    .line 1007
    .line 1008
    invoke-virtual {v0}, Lp0/D;->h()Z

    .line 1009
    .line 1010
    .line 1011
    move-result v8

    .line 1012
    if-eqz v8, :cond_48

    .line 1013
    .line 1014
    const/4 v8, 0x0

    .line 1015
    :goto_2f
    if-ge v8, v5, :cond_48

    .line 1016
    .line 1017
    add-int/lit8 v9, v8, 0x1

    .line 1018
    .line 1019
    move v10, v9

    .line 1020
    :goto_30
    if-ge v10, v6, :cond_47

    .line 1021
    .line 1022
    aget-object v11, v7, v10

    .line 1023
    .line 1024
    aget-boolean v11, v11, v8

    .line 1025
    .line 1026
    if-eqz v11, :cond_46

    .line 1027
    .line 1028
    const/4 v11, 0x3

    .line 1029
    invoke-virtual {v0, v11}, Lp0/D;->u(I)V

    .line 1030
    .line 1031
    .line 1032
    :cond_46
    add-int/lit8 v10, v10, 0x1

    .line 1033
    .line 1034
    goto :goto_30

    .line 1035
    :cond_47
    move v8, v9

    .line 1036
    goto :goto_2f

    .line 1037
    :cond_48
    invoke-virtual {v0}, Lp0/D;->t()V

    .line 1038
    .line 1039
    .line 1040
    invoke-virtual {v0}, Lp0/D;->o()I

    .line 1041
    .line 1042
    .line 1043
    move-result v5

    .line 1044
    const/4 v8, 0x1

    .line 1045
    add-int/2addr v5, v8

    .line 1046
    invoke-static {}, Lz4/H;->q()Lz4/E;

    .line 1047
    .line 1048
    .line 1049
    move-result-object v9

    .line 1050
    move-object/from16 v10, v21

    .line 1051
    .line 1052
    invoke-virtual {v9, v10}, Lz4/E;->i0(Ljava/lang/Object;)V

    .line 1053
    .line 1054
    .line 1055
    if-le v5, v8, :cond_49

    .line 1056
    .line 1057
    move-object/from16 v8, v19

    .line 1058
    .line 1059
    invoke-virtual {v9, v8}, Lz4/E;->i0(Ljava/lang/Object;)V

    .line 1060
    .line 1061
    .line 1062
    move-object v10, v8

    .line 1063
    const/4 v8, 0x2

    .line 1064
    :goto_31
    if-ge v8, v5, :cond_49

    .line 1065
    .line 1066
    invoke-virtual {v0}, Lp0/D;->h()Z

    .line 1067
    .line 1068
    .line 1069
    move-result v11

    .line 1070
    invoke-static {v0, v11, v13, v10}, Lq0/p;->g(Lp0/D;ZILq0/i;)Lq0/i;

    .line 1071
    .line 1072
    .line 1073
    move-result-object v10

    .line 1074
    invoke-virtual {v9, v10}, Lz4/E;->i0(Ljava/lang/Object;)V

    .line 1075
    .line 1076
    .line 1077
    add-int/lit8 v8, v8, 0x1

    .line 1078
    .line 1079
    goto :goto_31

    .line 1080
    :cond_49
    invoke-virtual {v9}, Lz4/E;->m0()Lz4/d0;

    .line 1081
    .line 1082
    .line 1083
    move-result-object v8

    .line 1084
    invoke-virtual {v0}, Lp0/D;->o()I

    .line 1085
    .line 1086
    .line 1087
    move-result v9

    .line 1088
    add-int/2addr v9, v14

    .line 1089
    if-le v9, v14, :cond_4a

    .line 1090
    .line 1091
    new-instance v0, Lq0/m;

    .line 1092
    .line 1093
    const/4 v1, 0x0

    .line 1094
    invoke-direct {v0, v1, v4, v1, v1}, Lq0/m;-><init>(Lz4/d0;LF/i;Lm2/c;Lm2/e;)V

    .line 1095
    .line 1096
    .line 1097
    goto/16 :goto_5a

    .line 1098
    .line 1099
    :cond_4a
    const/4 v10, 0x2

    .line 1100
    invoke-virtual {v0, v10}, Lp0/D;->i(I)I

    .line 1101
    .line 1102
    .line 1103
    move-result v11

    .line 1104
    filled-new-array {v9, v3}, [I

    .line 1105
    .line 1106
    .line 1107
    move-result-object v10

    .line 1108
    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 1109
    .line 1110
    invoke-static {v13, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 1111
    .line 1112
    .line 1113
    move-result-object v10

    .line 1114
    check-cast v10, [[Z

    .line 1115
    .line 1116
    new-array v13, v9, [I

    .line 1117
    .line 1118
    new-array v15, v9, [I

    .line 1119
    .line 1120
    move-object/from16 v19, v8

    .line 1121
    .line 1122
    const/4 v8, 0x0

    .line 1123
    :goto_32
    if-ge v8, v14, :cond_4f

    .line 1124
    .line 1125
    move/from16 v21, v14

    .line 1126
    .line 1127
    const/4 v14, 0x0

    .line 1128
    aput v14, v13, v8

    .line 1129
    .line 1130
    aget v17, v24, v8

    .line 1131
    .line 1132
    aput v17, v15, v8

    .line 1133
    .line 1134
    if-nez v11, :cond_4b

    .line 1135
    .line 1136
    move-object/from16 v28, v7

    .line 1137
    .line 1138
    aget-object v7, v10, v8

    .line 1139
    .line 1140
    move-object/from16 v29, v12

    .line 1141
    .line 1142
    aget v12, v26, v8

    .line 1143
    .line 1144
    move/from16 v30, v6

    .line 1145
    .line 1146
    const/4 v6, 0x1

    .line 1147
    invoke-static {v7, v14, v12, v6}, Ljava/util/Arrays;->fill([ZIIZ)V

    .line 1148
    .line 1149
    .line 1150
    aget v7, v26, v8

    .line 1151
    .line 1152
    aput v7, v13, v8

    .line 1153
    .line 1154
    goto :goto_35

    .line 1155
    :cond_4b
    move/from16 v30, v6

    .line 1156
    .line 1157
    move-object/from16 v28, v7

    .line 1158
    .line 1159
    move-object/from16 v29, v12

    .line 1160
    .line 1161
    const/4 v6, 0x1

    .line 1162
    if-ne v11, v6, :cond_4e

    .line 1163
    .line 1164
    aget v6, v24, v8

    .line 1165
    .line 1166
    const/4 v7, 0x0

    .line 1167
    :goto_33
    aget v12, v26, v8

    .line 1168
    .line 1169
    if-ge v7, v12, :cond_4d

    .line 1170
    .line 1171
    aget-object v12, v10, v8

    .line 1172
    .line 1173
    aget-object v14, v23, v8

    .line 1174
    .line 1175
    aget v14, v14, v7

    .line 1176
    .line 1177
    if-ne v14, v6, :cond_4c

    .line 1178
    .line 1179
    const/4 v14, 0x1

    .line 1180
    goto :goto_34

    .line 1181
    :cond_4c
    const/4 v14, 0x0

    .line 1182
    :goto_34
    aput-boolean v14, v12, v7

    .line 1183
    .line 1184
    add-int/lit8 v7, v7, 0x1

    .line 1185
    .line 1186
    goto :goto_33

    .line 1187
    :cond_4d
    const/4 v7, 0x1

    .line 1188
    aput v7, v13, v8

    .line 1189
    .line 1190
    goto :goto_35

    .line 1191
    :cond_4e
    const/4 v6, 0x0

    .line 1192
    const/4 v7, 0x1

    .line 1193
    aget-object v12, v10, v6

    .line 1194
    .line 1195
    aput-boolean v7, v12, v6

    .line 1196
    .line 1197
    aput v7, v13, v6

    .line 1198
    .line 1199
    :goto_35
    add-int/lit8 v8, v8, 0x1

    .line 1200
    .line 1201
    move/from16 v14, v21

    .line 1202
    .line 1203
    move-object/from16 v7, v28

    .line 1204
    .line 1205
    move-object/from16 v12, v29

    .line 1206
    .line 1207
    move/from16 v6, v30

    .line 1208
    .line 1209
    goto :goto_32

    .line 1210
    :cond_4f
    move/from16 v30, v6

    .line 1211
    .line 1212
    move-object/from16 v28, v7

    .line 1213
    .line 1214
    move-object/from16 v29, v12

    .line 1215
    .line 1216
    move/from16 v21, v14

    .line 1217
    .line 1218
    new-array v6, v3, [I

    .line 1219
    .line 1220
    filled-new-array {v9, v3}, [I

    .line 1221
    .line 1222
    .line 1223
    move-result-object v3

    .line 1224
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 1225
    .line 1226
    invoke-static {v7, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 1227
    .line 1228
    .line 1229
    move-result-object v3

    .line 1230
    check-cast v3, [[Z

    .line 1231
    .line 1232
    const/4 v7, 0x0

    .line 1233
    const/4 v8, 0x1

    .line 1234
    :goto_36
    if-ge v8, v9, :cond_5b

    .line 1235
    .line 1236
    const/4 v12, 0x2

    .line 1237
    if-ne v11, v12, :cond_51

    .line 1238
    .line 1239
    const/4 v12, 0x0

    .line 1240
    :goto_37
    aget v14, v26, v8

    .line 1241
    .line 1242
    if-ge v12, v14, :cond_51

    .line 1243
    .line 1244
    aget-object v14, v10, v8

    .line 1245
    .line 1246
    invoke-virtual {v0}, Lp0/D;->h()Z

    .line 1247
    .line 1248
    .line 1249
    move-result v24

    .line 1250
    aput-boolean v24, v14, v12

    .line 1251
    .line 1252
    aget v14, v13, v8

    .line 1253
    .line 1254
    aget-object v24, v10, v8

    .line 1255
    .line 1256
    aget-boolean v24, v24, v12

    .line 1257
    .line 1258
    add-int v14, v14, v24

    .line 1259
    .line 1260
    aput v14, v13, v8

    .line 1261
    .line 1262
    if-eqz v24, :cond_50

    .line 1263
    .line 1264
    aget-object v14, v23, v8

    .line 1265
    .line 1266
    aget v14, v14, v12

    .line 1267
    .line 1268
    aput v14, v15, v8

    .line 1269
    .line 1270
    :cond_50
    add-int/lit8 v12, v12, 0x1

    .line 1271
    .line 1272
    goto :goto_37

    .line 1273
    :cond_51
    if-nez v7, :cond_53

    .line 1274
    .line 1275
    aget-object v12, v23, v8

    .line 1276
    .line 1277
    const/4 v14, 0x0

    .line 1278
    aget v12, v12, v14

    .line 1279
    .line 1280
    if-nez v12, :cond_53

    .line 1281
    .line 1282
    aget-object v12, v10, v8

    .line 1283
    .line 1284
    aget-boolean v12, v12, v14

    .line 1285
    .line 1286
    if-eqz v12, :cond_53

    .line 1287
    .line 1288
    const/4 v12, 0x1

    .line 1289
    :goto_38
    aget v14, v26, v8

    .line 1290
    .line 1291
    if-ge v12, v14, :cond_53

    .line 1292
    .line 1293
    aget-object v14, v23, v8

    .line 1294
    .line 1295
    aget v14, v14, v12

    .line 1296
    .line 1297
    if-ne v14, v2, :cond_52

    .line 1298
    .line 1299
    aget-object v14, v10, v8

    .line 1300
    .line 1301
    aget-boolean v14, v14, v2

    .line 1302
    .line 1303
    if-eqz v14, :cond_52

    .line 1304
    .line 1305
    move v7, v8

    .line 1306
    :cond_52
    add-int/lit8 v12, v12, 0x1

    .line 1307
    .line 1308
    goto :goto_38

    .line 1309
    :cond_53
    const/4 v12, 0x0

    .line 1310
    :goto_39
    aget v14, v26, v8

    .line 1311
    .line 1312
    if-ge v12, v14, :cond_59

    .line 1313
    .line 1314
    const/4 v14, 0x1

    .line 1315
    if-le v5, v14, :cond_57

    .line 1316
    .line 1317
    aget-object v14, v3, v8

    .line 1318
    .line 1319
    aget-object v24, v10, v8

    .line 1320
    .line 1321
    aget-boolean v24, v24, v12

    .line 1322
    .line 1323
    aput-boolean v24, v14, v12

    .line 1324
    .line 1325
    move-object/from16 v24, v10

    .line 1326
    .line 1327
    move v14, v11

    .line 1328
    int-to-double v10, v5

    .line 1329
    move/from16 v31, v2

    .line 1330
    .line 1331
    sget-object v2, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    .line 1332
    .line 1333
    invoke-static {v10, v11, v2}, LB4/c;->c(DLjava/math/RoundingMode;)I

    .line 1334
    .line 1335
    .line 1336
    move-result v2

    .line 1337
    aget-object v10, v3, v8

    .line 1338
    .line 1339
    aget-boolean v10, v10, v12

    .line 1340
    .line 1341
    if-nez v10, :cond_55

    .line 1342
    .line 1343
    aget-object v10, v23, v8

    .line 1344
    .line 1345
    aget v10, v10, v12

    .line 1346
    .line 1347
    invoke-virtual {v1, v10}, Lz4/d0;->get(I)Ljava/lang/Object;

    .line 1348
    .line 1349
    .line 1350
    move-result-object v10

    .line 1351
    check-cast v10, Lq0/h;

    .line 1352
    .line 1353
    const/4 v11, 0x0

    .line 1354
    :goto_3a
    if-ge v11, v12, :cond_55

    .line 1355
    .line 1356
    aget-object v32, v23, v8

    .line 1357
    .line 1358
    move/from16 v33, v5

    .line 1359
    .line 1360
    aget v5, v32, v11

    .line 1361
    .line 1362
    invoke-virtual {v1, v5}, Lz4/d0;->get(I)Ljava/lang/Object;

    .line 1363
    .line 1364
    .line 1365
    move-result-object v5

    .line 1366
    check-cast v5, Lq0/h;

    .line 1367
    .line 1368
    move/from16 v32, v14

    .line 1369
    .line 1370
    iget v14, v10, Lq0/h;->a:I

    .line 1371
    .line 1372
    aget-object v14, p0, v14

    .line 1373
    .line 1374
    iget v5, v5, Lq0/h;->a:I

    .line 1375
    .line 1376
    aget-boolean v5, v14, v5

    .line 1377
    .line 1378
    if-eqz v5, :cond_54

    .line 1379
    .line 1380
    aget-object v5, v3, v8

    .line 1381
    .line 1382
    const/4 v10, 0x1

    .line 1383
    aput-boolean v10, v5, v12

    .line 1384
    .line 1385
    goto :goto_3b

    .line 1386
    :cond_54
    add-int/lit8 v11, v11, 0x1

    .line 1387
    .line 1388
    move/from16 v14, v32

    .line 1389
    .line 1390
    move/from16 v5, v33

    .line 1391
    .line 1392
    goto :goto_3a

    .line 1393
    :cond_55
    move/from16 v33, v5

    .line 1394
    .line 1395
    move/from16 v32, v14

    .line 1396
    .line 1397
    :goto_3b
    aget-object v5, v3, v8

    .line 1398
    .line 1399
    aget-boolean v5, v5, v12

    .line 1400
    .line 1401
    if-eqz v5, :cond_58

    .line 1402
    .line 1403
    if-lez v7, :cond_56

    .line 1404
    .line 1405
    if-ne v8, v7, :cond_56

    .line 1406
    .line 1407
    invoke-virtual {v0, v2}, Lp0/D;->i(I)I

    .line 1408
    .line 1409
    .line 1410
    move-result v2

    .line 1411
    aput v2, v6, v12

    .line 1412
    .line 1413
    goto :goto_3c

    .line 1414
    :cond_56
    invoke-virtual {v0, v2}, Lp0/D;->u(I)V

    .line 1415
    .line 1416
    .line 1417
    goto :goto_3c

    .line 1418
    :cond_57
    move/from16 v31, v2

    .line 1419
    .line 1420
    move/from16 v33, v5

    .line 1421
    .line 1422
    move-object/from16 v24, v10

    .line 1423
    .line 1424
    move/from16 v32, v11

    .line 1425
    .line 1426
    :cond_58
    :goto_3c
    add-int/lit8 v12, v12, 0x1

    .line 1427
    .line 1428
    move-object/from16 v10, v24

    .line 1429
    .line 1430
    move/from16 v2, v31

    .line 1431
    .line 1432
    move/from16 v11, v32

    .line 1433
    .line 1434
    move/from16 v5, v33

    .line 1435
    .line 1436
    goto :goto_39

    .line 1437
    :cond_59
    move/from16 v31, v2

    .line 1438
    .line 1439
    move/from16 v33, v5

    .line 1440
    .line 1441
    move-object/from16 v24, v10

    .line 1442
    .line 1443
    move/from16 v32, v11

    .line 1444
    .line 1445
    aget v2, v13, v8

    .line 1446
    .line 1447
    const/4 v5, 0x1

    .line 1448
    if-ne v2, v5, :cond_5a

    .line 1449
    .line 1450
    aget v2, v15, v8

    .line 1451
    .line 1452
    aget v2, v27, v2

    .line 1453
    .line 1454
    if-lez v2, :cond_5a

    .line 1455
    .line 1456
    invoke-virtual {v0}, Lp0/D;->t()V

    .line 1457
    .line 1458
    .line 1459
    :cond_5a
    add-int/lit8 v8, v8, 0x1

    .line 1460
    .line 1461
    move-object/from16 v10, v24

    .line 1462
    .line 1463
    move/from16 v2, v31

    .line 1464
    .line 1465
    move/from16 v11, v32

    .line 1466
    .line 1467
    move/from16 v5, v33

    .line 1468
    .line 1469
    goto/16 :goto_36

    .line 1470
    .line 1471
    :cond_5b
    if-nez v7, :cond_5c

    .line 1472
    .line 1473
    new-instance v0, Lq0/m;

    .line 1474
    .line 1475
    const/4 v1, 0x0

    .line 1476
    invoke-direct {v0, v1, v4, v1, v1}, Lq0/m;-><init>(Lz4/d0;LF/i;Lm2/c;Lm2/e;)V

    .line 1477
    .line 1478
    .line 1479
    goto/16 :goto_5a

    .line 1480
    .line 1481
    :cond_5c
    invoke-virtual {v0}, Lp0/D;->m()I

    .line 1482
    .line 1483
    .line 1484
    move-result v2

    .line 1485
    add-int/lit8 v4, v2, 0x1

    .line 1486
    .line 1487
    invoke-static {v4}, Lz4/H;->r(I)Lz4/E;

    .line 1488
    .line 1489
    .line 1490
    move-result-object v5

    .line 1491
    move/from16 v7, v30

    .line 1492
    .line 1493
    new-array v8, v7, [I

    .line 1494
    .line 1495
    const/4 v10, 0x0

    .line 1496
    :goto_3d
    if-ge v10, v4, :cond_63

    .line 1497
    .line 1498
    const/16 v11, 0x10

    .line 1499
    .line 1500
    invoke-virtual {v0, v11}, Lp0/D;->i(I)I

    .line 1501
    .line 1502
    .line 1503
    move-result v12

    .line 1504
    invoke-virtual {v0, v11}, Lp0/D;->i(I)I

    .line 1505
    .line 1506
    .line 1507
    move-result v13

    .line 1508
    invoke-virtual {v0}, Lp0/D;->h()Z

    .line 1509
    .line 1510
    .line 1511
    move-result v14

    .line 1512
    if-eqz v14, :cond_5e

    .line 1513
    .line 1514
    const/4 v14, 0x2

    .line 1515
    invoke-virtual {v0, v14}, Lp0/D;->i(I)I

    .line 1516
    .line 1517
    .line 1518
    move-result v15

    .line 1519
    const/4 v14, 0x3

    .line 1520
    if-ne v15, v14, :cond_5d

    .line 1521
    .line 1522
    invoke-virtual {v0}, Lp0/D;->t()V

    .line 1523
    .line 1524
    .line 1525
    :cond_5d
    const/4 v14, 0x4

    .line 1526
    invoke-virtual {v0, v14}, Lp0/D;->i(I)I

    .line 1527
    .line 1528
    .line 1529
    move-result v20

    .line 1530
    invoke-virtual {v0, v14}, Lp0/D;->i(I)I

    .line 1531
    .line 1532
    .line 1533
    move-result v23

    .line 1534
    move/from16 v32, v20

    .line 1535
    .line 1536
    move/from16 v33, v23

    .line 1537
    .line 1538
    goto :goto_3e

    .line 1539
    :cond_5e
    const/4 v15, 0x0

    .line 1540
    const/16 v32, 0x0

    .line 1541
    .line 1542
    const/16 v33, 0x0

    .line 1543
    .line 1544
    :goto_3e
    invoke-virtual {v0}, Lp0/D;->h()Z

    .line 1545
    .line 1546
    .line 1547
    move-result v14

    .line 1548
    if-eqz v14, :cond_62

    .line 1549
    .line 1550
    invoke-virtual {v0}, Lp0/D;->m()I

    .line 1551
    .line 1552
    .line 1553
    move-result v14

    .line 1554
    invoke-virtual {v0}, Lp0/D;->m()I

    .line 1555
    .line 1556
    .line 1557
    move-result v20

    .line 1558
    invoke-virtual {v0}, Lp0/D;->m()I

    .line 1559
    .line 1560
    .line 1561
    move-result v23

    .line 1562
    invoke-virtual {v0}, Lp0/D;->m()I

    .line 1563
    .line 1564
    .line 1565
    move-result v24

    .line 1566
    const/4 v11, 0x1

    .line 1567
    if-eq v15, v11, :cond_60

    .line 1568
    .line 1569
    const/4 v11, 0x2

    .line 1570
    if-ne v15, v11, :cond_5f

    .line 1571
    .line 1572
    goto :goto_3f

    .line 1573
    :cond_5f
    const/4 v11, 0x1

    .line 1574
    goto :goto_40

    .line 1575
    :cond_60
    :goto_3f
    const/4 v11, 0x2

    .line 1576
    :goto_40
    add-int v14, v14, v20

    .line 1577
    .line 1578
    mul-int v14, v14, v11

    .line 1579
    .line 1580
    sub-int/2addr v12, v14

    .line 1581
    const/4 v11, 0x1

    .line 1582
    if-ne v15, v11, :cond_61

    .line 1583
    .line 1584
    const/4 v11, 0x2

    .line 1585
    goto :goto_41

    .line 1586
    :cond_61
    const/4 v11, 0x1

    .line 1587
    :goto_41
    add-int v23, v23, v24

    .line 1588
    .line 1589
    mul-int v23, v23, v11

    .line 1590
    .line 1591
    sub-int v13, v13, v23

    .line 1592
    .line 1593
    :cond_62
    move/from16 v34, v12

    .line 1594
    .line 1595
    move/from16 v35, v13

    .line 1596
    .line 1597
    new-instance v11, Lq0/j;

    .line 1598
    .line 1599
    move-object/from16 v30, v11

    .line 1600
    .line 1601
    move/from16 v31, v15

    .line 1602
    .line 1603
    invoke-direct/range {v30 .. v35}, Lq0/j;-><init>(IIIII)V

    .line 1604
    .line 1605
    .line 1606
    invoke-virtual {v5, v11}, Lz4/B;->g0(Ljava/lang/Object;)V

    .line 1607
    .line 1608
    .line 1609
    add-int/lit8 v10, v10, 0x1

    .line 1610
    .line 1611
    goto :goto_3d

    .line 1612
    :cond_63
    const/4 v10, 0x1

    .line 1613
    if-le v4, v10, :cond_64

    .line 1614
    .line 1615
    invoke-virtual {v0}, Lp0/D;->h()Z

    .line 1616
    .line 1617
    .line 1618
    move-result v10

    .line 1619
    if-eqz v10, :cond_64

    .line 1620
    .line 1621
    int-to-double v10, v4

    .line 1622
    sget-object v2, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    .line 1623
    .line 1624
    invoke-static {v10, v11, v2}, LB4/c;->c(DLjava/math/RoundingMode;)I

    .line 1625
    .line 1626
    .line 1627
    move-result v2

    .line 1628
    const/4 v4, 0x1

    .line 1629
    :goto_42
    if-ge v4, v7, :cond_65

    .line 1630
    .line 1631
    invoke-virtual {v0, v2}, Lp0/D;->i(I)I

    .line 1632
    .line 1633
    .line 1634
    move-result v10

    .line 1635
    aput v10, v8, v4

    .line 1636
    .line 1637
    add-int/lit8 v4, v4, 0x1

    .line 1638
    .line 1639
    goto :goto_42

    .line 1640
    :cond_64
    const/4 v4, 0x1

    .line 1641
    :goto_43
    if-ge v4, v7, :cond_65

    .line 1642
    .line 1643
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    .line 1644
    .line 1645
    .line 1646
    move-result v10

    .line 1647
    aput v10, v8, v4

    .line 1648
    .line 1649
    add-int/lit8 v4, v4, 0x1

    .line 1650
    .line 1651
    goto :goto_43

    .line 1652
    :cond_65
    new-instance v2, Lm2/c;

    .line 1653
    .line 1654
    invoke-virtual {v5}, Lz4/E;->m0()Lz4/d0;

    .line 1655
    .line 1656
    .line 1657
    move-result-object v4

    .line 1658
    invoke-direct {v2, v4, v8}, Lm2/c;-><init>(Lz4/d0;[I)V

    .line 1659
    .line 1660
    .line 1661
    const/4 v4, 0x2

    .line 1662
    invoke-virtual {v0, v4}, Lp0/D;->u(I)V

    .line 1663
    .line 1664
    .line 1665
    const/4 v4, 0x1

    .line 1666
    :goto_44
    if-ge v4, v7, :cond_67

    .line 1667
    .line 1668
    aget v5, v25, v4

    .line 1669
    .line 1670
    aget v5, v27, v5

    .line 1671
    .line 1672
    if-nez v5, :cond_66

    .line 1673
    .line 1674
    invoke-virtual {v0}, Lp0/D;->t()V

    .line 1675
    .line 1676
    .line 1677
    :cond_66
    add-int/lit8 v4, v4, 0x1

    .line 1678
    .line 1679
    goto :goto_44

    .line 1680
    :cond_67
    const/4 v4, 0x1

    .line 1681
    :goto_45
    if-ge v4, v9, :cond_6d

    .line 1682
    .line 1683
    invoke-virtual {v0}, Lp0/D;->h()Z

    .line 1684
    .line 1685
    .line 1686
    move-result v5

    .line 1687
    const/4 v8, 0x0

    .line 1688
    :goto_46
    aget v10, v29, v4

    .line 1689
    .line 1690
    if-ge v8, v10, :cond_6c

    .line 1691
    .line 1692
    if-lez v8, :cond_68

    .line 1693
    .line 1694
    if-eqz v5, :cond_68

    .line 1695
    .line 1696
    invoke-virtual {v0}, Lp0/D;->h()Z

    .line 1697
    .line 1698
    .line 1699
    move-result v10

    .line 1700
    if-eqz v10, :cond_6b

    .line 1701
    .line 1702
    goto :goto_47

    .line 1703
    :cond_68
    if-nez v8, :cond_6b

    .line 1704
    .line 1705
    :goto_47
    const/4 v10, 0x0

    .line 1706
    :goto_48
    aget v11, v26, v4

    .line 1707
    .line 1708
    if-ge v10, v11, :cond_6a

    .line 1709
    .line 1710
    aget-object v11, v3, v4

    .line 1711
    .line 1712
    aget-boolean v11, v11, v10

    .line 1713
    .line 1714
    if-eqz v11, :cond_69

    .line 1715
    .line 1716
    invoke-virtual {v0}, Lp0/D;->m()I

    .line 1717
    .line 1718
    .line 1719
    :cond_69
    add-int/lit8 v10, v10, 0x1

    .line 1720
    .line 1721
    goto :goto_48

    .line 1722
    :cond_6a
    invoke-virtual {v0}, Lp0/D;->m()I

    .line 1723
    .line 1724
    .line 1725
    invoke-virtual {v0}, Lp0/D;->m()I

    .line 1726
    .line 1727
    .line 1728
    :cond_6b
    add-int/lit8 v8, v8, 0x1

    .line 1729
    .line 1730
    goto :goto_46

    .line 1731
    :cond_6c
    add-int/lit8 v4, v4, 0x1

    .line 1732
    .line 1733
    goto :goto_45

    .line 1734
    :cond_6d
    invoke-virtual {v0}, Lp0/D;->m()I

    .line 1735
    .line 1736
    .line 1737
    move-result v3

    .line 1738
    const/4 v13, 0x2

    .line 1739
    add-int/2addr v3, v13

    .line 1740
    invoke-virtual {v0}, Lp0/D;->h()Z

    .line 1741
    .line 1742
    .line 1743
    move-result v4

    .line 1744
    if-eqz v4, :cond_6e

    .line 1745
    .line 1746
    invoke-virtual {v0, v3}, Lp0/D;->u(I)V

    .line 1747
    .line 1748
    .line 1749
    goto :goto_4b

    .line 1750
    :cond_6e
    const/4 v4, 0x1

    .line 1751
    :goto_49
    if-ge v4, v7, :cond_71

    .line 1752
    .line 1753
    const/4 v5, 0x0

    .line 1754
    :goto_4a
    if-ge v5, v4, :cond_70

    .line 1755
    .line 1756
    aget-object v8, v28, v4

    .line 1757
    .line 1758
    aget-boolean v8, v8, v5

    .line 1759
    .line 1760
    if-eqz v8, :cond_6f

    .line 1761
    .line 1762
    invoke-virtual {v0, v3}, Lp0/D;->u(I)V

    .line 1763
    .line 1764
    .line 1765
    :cond_6f
    add-int/lit8 v5, v5, 0x1

    .line 1766
    .line 1767
    goto :goto_4a

    .line 1768
    :cond_70
    add-int/lit8 v4, v4, 0x1

    .line 1769
    .line 1770
    goto :goto_49

    .line 1771
    :cond_71
    :goto_4b
    invoke-virtual {v0}, Lp0/D;->m()I

    .line 1772
    .line 1773
    .line 1774
    move-result v3

    .line 1775
    const/4 v4, 0x1

    .line 1776
    :goto_4c
    if-gt v4, v3, :cond_72

    .line 1777
    .line 1778
    const/16 v5, 0x8

    .line 1779
    .line 1780
    invoke-virtual {v0, v5}, Lp0/D;->u(I)V

    .line 1781
    .line 1782
    .line 1783
    add-int/lit8 v4, v4, 0x1

    .line 1784
    .line 1785
    goto :goto_4c

    .line 1786
    :cond_72
    invoke-virtual {v0}, Lp0/D;->h()Z

    .line 1787
    .line 1788
    .line 1789
    move-result v3

    .line 1790
    if-eqz v3, :cond_80

    .line 1791
    .line 1792
    invoke-virtual {v0}, Lp0/D;->c()V

    .line 1793
    .line 1794
    .line 1795
    invoke-virtual {v0}, Lp0/D;->h()Z

    .line 1796
    .line 1797
    .line 1798
    move-result v3

    .line 1799
    if-nez v3, :cond_73

    .line 1800
    .line 1801
    invoke-virtual {v0}, Lp0/D;->h()Z

    .line 1802
    .line 1803
    .line 1804
    move-result v3

    .line 1805
    if-eqz v3, :cond_74

    .line 1806
    .line 1807
    :cond_73
    invoke-virtual {v0}, Lp0/D;->t()V

    .line 1808
    .line 1809
    .line 1810
    :cond_74
    invoke-virtual {v0}, Lp0/D;->h()Z

    .line 1811
    .line 1812
    .line 1813
    move-result v3

    .line 1814
    invoke-virtual {v0}, Lp0/D;->h()Z

    .line 1815
    .line 1816
    .line 1817
    move-result v4

    .line 1818
    if-nez v3, :cond_75

    .line 1819
    .line 1820
    if-eqz v4, :cond_7b

    .line 1821
    .line 1822
    :cond_75
    move/from16 v14, v21

    .line 1823
    .line 1824
    const/4 v5, 0x0

    .line 1825
    :goto_4d
    if-ge v5, v14, :cond_7b

    .line 1826
    .line 1827
    const/4 v8, 0x0

    .line 1828
    :goto_4e
    aget v9, v29, v5

    .line 1829
    .line 1830
    if-ge v8, v9, :cond_7a

    .line 1831
    .line 1832
    if-eqz v3, :cond_76

    .line 1833
    .line 1834
    invoke-virtual {v0}, Lp0/D;->h()Z

    .line 1835
    .line 1836
    .line 1837
    move-result v9

    .line 1838
    goto :goto_4f

    .line 1839
    :cond_76
    const/4 v9, 0x0

    .line 1840
    :goto_4f
    if-eqz v4, :cond_77

    .line 1841
    .line 1842
    invoke-virtual {v0}, Lp0/D;->h()Z

    .line 1843
    .line 1844
    .line 1845
    move-result v10

    .line 1846
    goto :goto_50

    .line 1847
    :cond_77
    const/4 v10, 0x0

    .line 1848
    :goto_50
    if-eqz v9, :cond_78

    .line 1849
    .line 1850
    const/16 v9, 0x20

    .line 1851
    .line 1852
    invoke-virtual {v0, v9}, Lp0/D;->u(I)V

    .line 1853
    .line 1854
    .line 1855
    :cond_78
    if-eqz v10, :cond_79

    .line 1856
    .line 1857
    const/16 v9, 0x12

    .line 1858
    .line 1859
    invoke-virtual {v0, v9}, Lp0/D;->u(I)V

    .line 1860
    .line 1861
    .line 1862
    :cond_79
    add-int/lit8 v8, v8, 0x1

    .line 1863
    .line 1864
    goto :goto_4e

    .line 1865
    :cond_7a
    add-int/lit8 v5, v5, 0x1

    .line 1866
    .line 1867
    goto :goto_4d

    .line 1868
    :cond_7b
    invoke-virtual {v0}, Lp0/D;->h()Z

    .line 1869
    .line 1870
    .line 1871
    move-result v3

    .line 1872
    if-eqz v3, :cond_7c

    .line 1873
    .line 1874
    const/4 v4, 0x4

    .line 1875
    invoke-virtual {v0, v4}, Lp0/D;->i(I)I

    .line 1876
    .line 1877
    .line 1878
    move-result v5

    .line 1879
    const/4 v4, 0x1

    .line 1880
    add-int/2addr v5, v4

    .line 1881
    goto :goto_51

    .line 1882
    :cond_7c
    move v5, v7

    .line 1883
    :goto_51
    invoke-static {v5}, Lz4/H;->r(I)Lz4/E;

    .line 1884
    .line 1885
    .line 1886
    move-result-object v4

    .line 1887
    new-array v8, v7, [I

    .line 1888
    .line 1889
    const/4 v9, 0x0

    .line 1890
    :goto_52
    if-ge v9, v5, :cond_7e

    .line 1891
    .line 1892
    const/4 v10, 0x3

    .line 1893
    invoke-virtual {v0, v10}, Lp0/D;->u(I)V

    .line 1894
    .line 1895
    .line 1896
    invoke-virtual {v0}, Lp0/D;->h()Z

    .line 1897
    .line 1898
    .line 1899
    move-result v11

    .line 1900
    if-eqz v11, :cond_7d

    .line 1901
    .line 1902
    const/4 v11, 0x1

    .line 1903
    :goto_53
    const/16 v12, 0x8

    .line 1904
    .line 1905
    goto :goto_54

    .line 1906
    :cond_7d
    const/4 v11, 0x2

    .line 1907
    goto :goto_53

    .line 1908
    :goto_54
    invoke-virtual {v0, v12}, Lp0/D;->i(I)I

    .line 1909
    .line 1910
    .line 1911
    move-result v14

    .line 1912
    invoke-static {v14}, Lm0/i;->h(I)I

    .line 1913
    .line 1914
    .line 1915
    move-result v14

    .line 1916
    invoke-virtual {v0, v12}, Lp0/D;->i(I)I

    .line 1917
    .line 1918
    .line 1919
    move-result v15

    .line 1920
    invoke-static {v15}, Lm0/i;->i(I)I

    .line 1921
    .line 1922
    .line 1923
    move-result v15

    .line 1924
    invoke-virtual {v0, v12}, Lp0/D;->u(I)V

    .line 1925
    .line 1926
    .line 1927
    new-instance v10, Lq0/l;

    .line 1928
    .line 1929
    invoke-direct {v10, v14, v11, v15}, Lq0/l;-><init>(III)V

    .line 1930
    .line 1931
    .line 1932
    invoke-virtual {v4, v10}, Lz4/B;->g0(Ljava/lang/Object;)V

    .line 1933
    .line 1934
    .line 1935
    add-int/lit8 v9, v9, 0x1

    .line 1936
    .line 1937
    goto :goto_52

    .line 1938
    :cond_7e
    if-eqz v3, :cond_7f

    .line 1939
    .line 1940
    const/4 v3, 0x1

    .line 1941
    if-le v5, v3, :cond_7f

    .line 1942
    .line 1943
    const/4 v13, 0x0

    .line 1944
    :goto_55
    if-ge v13, v7, :cond_7f

    .line 1945
    .line 1946
    const/4 v3, 0x4

    .line 1947
    invoke-virtual {v0, v3}, Lp0/D;->i(I)I

    .line 1948
    .line 1949
    .line 1950
    move-result v5

    .line 1951
    aput v5, v8, v13

    .line 1952
    .line 1953
    add-int/lit8 v13, v13, 0x1

    .line 1954
    .line 1955
    goto :goto_55

    .line 1956
    :cond_7f
    new-instance v10, Lm2/e;

    .line 1957
    .line 1958
    invoke-virtual {v4}, Lz4/E;->m0()Lz4/d0;

    .line 1959
    .line 1960
    .line 1961
    move-result-object v0

    .line 1962
    invoke-direct {v10, v0, v8}, Lm2/e;-><init>(Lz4/d0;[I)V

    .line 1963
    .line 1964
    .line 1965
    goto :goto_56

    .line 1966
    :cond_80
    const/4 v10, 0x0

    .line 1967
    :goto_56
    new-instance v0, Lq0/m;

    .line 1968
    .line 1969
    new-instance v3, LF/i;

    .line 1970
    .line 1971
    move-object/from16 v4, v19

    .line 1972
    .line 1973
    invoke-direct {v3, v4, v6}, LF/i;-><init>(Lz4/d0;[I)V

    .line 1974
    .line 1975
    .line 1976
    invoke-direct {v0, v1, v3, v2, v10}, Lq0/m;-><init>(Lz4/d0;LF/i;Lm2/c;Lm2/e;)V

    .line 1977
    .line 1978
    .line 1979
    goto :goto_5a

    .line 1980
    :cond_81
    :goto_57
    new-instance v0, Lq0/m;

    .line 1981
    .line 1982
    const/4 v1, 0x0

    .line 1983
    invoke-direct {v0, v1, v4, v1, v1}, Lq0/m;-><init>(Lz4/d0;LF/i;Lm2/c;Lm2/e;)V

    .line 1984
    .line 1985
    .line 1986
    goto :goto_5a

    .line 1987
    :goto_58
    new-instance v0, Lq0/m;

    .line 1988
    .line 1989
    invoke-direct {v0, v1, v4, v1, v1}, Lq0/m;-><init>(Lz4/d0;LF/i;Lm2/c;Lm2/e;)V

    .line 1990
    .line 1991
    .line 1992
    goto :goto_5a

    .line 1993
    :goto_59
    new-instance v0, Lq0/m;

    .line 1994
    .line 1995
    invoke-direct {v0, v1, v4, v1, v1}, Lq0/m;-><init>(Lz4/d0;LF/i;Lm2/c;Lm2/e;)V

    .line 1996
    .line 1997
    .line 1998
    :goto_5a
    return-object v0
.end method

.method public static k(I[BI)Lq0/o;
    .locals 30

    .line 1
    const/4 v0, 0x1

    .line 2
    add-int/lit8 v1, p0, 0x1

    .line 3
    .line 4
    new-instance v2, Lp0/D;

    .line 5
    .line 6
    move-object/from16 v3, p1

    .line 7
    .line 8
    move/from16 v4, p2

    .line 9
    .line 10
    invoke-direct {v2, v3, v1, v4}, Lp0/D;-><init>([BII)V

    .line 11
    .line 12
    .line 13
    const/16 v1, 0x8

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Lp0/D;->i(I)I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    invoke-virtual {v2, v1}, Lp0/D;->i(I)I

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    invoke-virtual {v2, v1}, Lp0/D;->i(I)I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    invoke-virtual {v2}, Lp0/D;->m()I

    .line 28
    .line 29
    .line 30
    move-result v7

    .line 31
    const/16 v3, 0x10

    .line 32
    .line 33
    const/16 v8, 0x56

    .line 34
    .line 35
    const/16 v9, 0x2c

    .line 36
    .line 37
    const/16 v10, 0xf4

    .line 38
    .line 39
    const/16 v11, 0x7a

    .line 40
    .line 41
    const/16 v12, 0x6e

    .line 42
    .line 43
    const/16 v13, 0x64

    .line 44
    .line 45
    const/4 v14, 0x3

    .line 46
    if-eq v4, v13, :cond_1

    .line 47
    .line 48
    if-eq v4, v12, :cond_1

    .line 49
    .line 50
    if-eq v4, v11, :cond_1

    .line 51
    .line 52
    if-eq v4, v10, :cond_1

    .line 53
    .line 54
    if-eq v4, v9, :cond_1

    .line 55
    .line 56
    const/16 v15, 0x53

    .line 57
    .line 58
    if-eq v4, v15, :cond_1

    .line 59
    .line 60
    if-eq v4, v8, :cond_1

    .line 61
    .line 62
    const/16 v15, 0x76

    .line 63
    .line 64
    if-eq v4, v15, :cond_1

    .line 65
    .line 66
    const/16 v15, 0x80

    .line 67
    .line 68
    if-eq v4, v15, :cond_1

    .line 69
    .line 70
    const/16 v15, 0x8a

    .line 71
    .line 72
    if-ne v4, v15, :cond_0

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    const/4 v11, 0x0

    .line 76
    const/4 v12, 0x0

    .line 77
    const/4 v13, 0x0

    .line 78
    const/4 v15, 0x1

    .line 79
    goto/16 :goto_7

    .line 80
    .line 81
    :cond_1
    :goto_0
    invoke-virtual {v2}, Lp0/D;->m()I

    .line 82
    .line 83
    .line 84
    move-result v15

    .line 85
    if-ne v15, v14, :cond_2

    .line 86
    .line 87
    invoke-virtual {v2}, Lp0/D;->h()Z

    .line 88
    .line 89
    .line 90
    move-result v16

    .line 91
    goto :goto_1

    .line 92
    :cond_2
    const/16 v16, 0x0

    .line 93
    .line 94
    :goto_1
    invoke-virtual {v2}, Lp0/D;->m()I

    .line 95
    .line 96
    .line 97
    move-result v17

    .line 98
    invoke-virtual {v2}, Lp0/D;->m()I

    .line 99
    .line 100
    .line 101
    move-result v18

    .line 102
    invoke-virtual {v2}, Lp0/D;->t()V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2}, Lp0/D;->h()Z

    .line 106
    .line 107
    .line 108
    move-result v19

    .line 109
    if-eqz v19, :cond_8

    .line 110
    .line 111
    if-eq v15, v14, :cond_3

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_3
    const/16 v19, 0xc

    .line 115
    .line 116
    const/16 v1, 0xc

    .line 117
    .line 118
    :goto_2
    const/4 v10, 0x0

    .line 119
    :goto_3
    if-ge v10, v1, :cond_8

    .line 120
    .line 121
    invoke-virtual {v2}, Lp0/D;->h()Z

    .line 122
    .line 123
    .line 124
    move-result v19

    .line 125
    if-eqz v19, :cond_7

    .line 126
    .line 127
    const/4 v11, 0x6

    .line 128
    if-ge v10, v11, :cond_4

    .line 129
    .line 130
    const/16 v11, 0x10

    .line 131
    .line 132
    goto :goto_4

    .line 133
    :cond_4
    const/16 v11, 0x40

    .line 134
    .line 135
    :goto_4
    const/4 v12, 0x0

    .line 136
    const/16 v20, 0x8

    .line 137
    .line 138
    const/16 v21, 0x8

    .line 139
    .line 140
    :goto_5
    if-ge v12, v11, :cond_7

    .line 141
    .line 142
    if-eqz v20, :cond_5

    .line 143
    .line 144
    invoke-virtual {v2}, Lp0/D;->n()I

    .line 145
    .line 146
    .line 147
    move-result v20

    .line 148
    add-int v13, v20, v21

    .line 149
    .line 150
    add-int/lit16 v13, v13, 0x100

    .line 151
    .line 152
    rem-int/lit16 v13, v13, 0x100

    .line 153
    .line 154
    move/from16 v20, v13

    .line 155
    .line 156
    :cond_5
    if-nez v20, :cond_6

    .line 157
    .line 158
    goto :goto_6

    .line 159
    :cond_6
    move/from16 v21, v20

    .line 160
    .line 161
    :goto_6
    add-int/lit8 v12, v12, 0x1

    .line 162
    .line 163
    const/16 v13, 0x64

    .line 164
    .line 165
    goto :goto_5

    .line 166
    :cond_7
    add-int/lit8 v10, v10, 0x1

    .line 167
    .line 168
    const/16 v11, 0x7a

    .line 169
    .line 170
    const/16 v12, 0x6e

    .line 171
    .line 172
    const/16 v13, 0x64

    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_8
    move/from16 v13, v16

    .line 176
    .line 177
    move/from16 v11, v17

    .line 178
    .line 179
    move/from16 v12, v18

    .line 180
    .line 181
    :goto_7
    invoke-virtual {v2}, Lp0/D;->m()I

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    add-int/lit8 v1, v1, 0x4

    .line 186
    .line 187
    invoke-virtual {v2}, Lp0/D;->m()I

    .line 188
    .line 189
    .line 190
    move-result v10

    .line 191
    if-nez v10, :cond_9

    .line 192
    .line 193
    invoke-virtual {v2}, Lp0/D;->m()I

    .line 194
    .line 195
    .line 196
    move-result v16

    .line 197
    add-int/lit8 v16, v16, 0x4

    .line 198
    .line 199
    move/from16 v20, v10

    .line 200
    .line 201
    move/from16 v23, v15

    .line 202
    .line 203
    move/from16 v24, v16

    .line 204
    .line 205
    :goto_8
    const/16 v25, 0x0

    .line 206
    .line 207
    goto :goto_a

    .line 208
    :cond_9
    if-ne v10, v0, :cond_b

    .line 209
    .line 210
    invoke-virtual {v2}, Lp0/D;->h()Z

    .line 211
    .line 212
    .line 213
    move-result v16

    .line 214
    invoke-virtual {v2}, Lp0/D;->n()I

    .line 215
    .line 216
    .line 217
    invoke-virtual {v2}, Lp0/D;->n()I

    .line 218
    .line 219
    .line 220
    invoke-virtual {v2}, Lp0/D;->m()I

    .line 221
    .line 222
    .line 223
    move-result v8

    .line 224
    move/from16 v20, v10

    .line 225
    .line 226
    int-to-long v9, v8

    .line 227
    move/from16 v23, v15

    .line 228
    .line 229
    const/4 v8, 0x0

    .line 230
    :goto_9
    int-to-long v14, v8

    .line 231
    cmp-long v24, v14, v9

    .line 232
    .line 233
    if-gez v24, :cond_a

    .line 234
    .line 235
    invoke-virtual {v2}, Lp0/D;->m()I

    .line 236
    .line 237
    .line 238
    add-int/lit8 v8, v8, 0x1

    .line 239
    .line 240
    goto :goto_9

    .line 241
    :cond_a
    move/from16 v25, v16

    .line 242
    .line 243
    const/16 v24, 0x0

    .line 244
    .line 245
    goto :goto_a

    .line 246
    :cond_b
    move/from16 v20, v10

    .line 247
    .line 248
    move/from16 v23, v15

    .line 249
    .line 250
    const/16 v24, 0x0

    .line 251
    .line 252
    goto :goto_8

    .line 253
    :goto_a
    invoke-virtual {v2}, Lp0/D;->m()I

    .line 254
    .line 255
    .line 256
    invoke-virtual {v2}, Lp0/D;->t()V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v2}, Lp0/D;->m()I

    .line 260
    .line 261
    .line 262
    move-result v8

    .line 263
    add-int/2addr v8, v0

    .line 264
    invoke-virtual {v2}, Lp0/D;->m()I

    .line 265
    .line 266
    .line 267
    move-result v9

    .line 268
    add-int/2addr v9, v0

    .line 269
    invoke-virtual {v2}, Lp0/D;->h()Z

    .line 270
    .line 271
    .line 272
    move-result v14

    .line 273
    rsub-int/lit8 v10, v14, 0x2

    .line 274
    .line 275
    mul-int v9, v9, v10

    .line 276
    .line 277
    if-nez v14, :cond_c

    .line 278
    .line 279
    invoke-virtual {v2}, Lp0/D;->t()V

    .line 280
    .line 281
    .line 282
    :cond_c
    invoke-virtual {v2}, Lp0/D;->t()V

    .line 283
    .line 284
    .line 285
    mul-int/lit8 v8, v8, 0x10

    .line 286
    .line 287
    mul-int/lit8 v9, v9, 0x10

    .line 288
    .line 289
    invoke-virtual {v2}, Lp0/D;->h()Z

    .line 290
    .line 291
    .line 292
    move-result v15

    .line 293
    const/16 v16, 0x2

    .line 294
    .line 295
    if-eqz v15, :cond_10

    .line 296
    .line 297
    invoke-virtual {v2}, Lp0/D;->m()I

    .line 298
    .line 299
    .line 300
    move-result v15

    .line 301
    invoke-virtual {v2}, Lp0/D;->m()I

    .line 302
    .line 303
    .line 304
    move-result v26

    .line 305
    invoke-virtual {v2}, Lp0/D;->m()I

    .line 306
    .line 307
    .line 308
    move-result v27

    .line 309
    invoke-virtual {v2}, Lp0/D;->m()I

    .line 310
    .line 311
    .line 312
    move-result v28

    .line 313
    if-nez v23, :cond_d

    .line 314
    .line 315
    const/4 v3, 0x1

    .line 316
    const/16 v29, 0x1

    .line 317
    .line 318
    goto :goto_d

    .line 319
    :cond_d
    move/from16 v0, v23

    .line 320
    .line 321
    const/4 v3, 0x3

    .line 322
    if-ne v0, v3, :cond_e

    .line 323
    .line 324
    const/4 v3, 0x1

    .line 325
    const/16 v29, 0x1

    .line 326
    .line 327
    goto :goto_b

    .line 328
    :cond_e
    const/4 v3, 0x1

    .line 329
    const/16 v29, 0x2

    .line 330
    .line 331
    :goto_b
    if-ne v0, v3, :cond_f

    .line 332
    .line 333
    const/4 v0, 0x2

    .line 334
    goto :goto_c

    .line 335
    :cond_f
    const/4 v0, 0x1

    .line 336
    :goto_c
    mul-int v10, v10, v0

    .line 337
    .line 338
    :goto_d
    add-int v15, v15, v26

    .line 339
    .line 340
    mul-int v15, v15, v29

    .line 341
    .line 342
    sub-int/2addr v8, v15

    .line 343
    add-int v27, v27, v28

    .line 344
    .line 345
    mul-int v27, v27, v10

    .line 346
    .line 347
    sub-int v9, v9, v27

    .line 348
    .line 349
    :goto_e
    const/16 v0, 0x2c

    .line 350
    .line 351
    goto :goto_f

    .line 352
    :cond_10
    const/4 v3, 0x1

    .line 353
    goto :goto_e

    .line 354
    :goto_f
    if-eq v4, v0, :cond_11

    .line 355
    .line 356
    const/16 v0, 0x56

    .line 357
    .line 358
    if-eq v4, v0, :cond_11

    .line 359
    .line 360
    const/16 v0, 0x64

    .line 361
    .line 362
    if-eq v4, v0, :cond_11

    .line 363
    .line 364
    const/16 v0, 0x6e

    .line 365
    .line 366
    if-eq v4, v0, :cond_11

    .line 367
    .line 368
    const/16 v0, 0x7a

    .line 369
    .line 370
    if-eq v4, v0, :cond_11

    .line 371
    .line 372
    const/16 v0, 0xf4

    .line 373
    .line 374
    if-ne v4, v0, :cond_12

    .line 375
    .line 376
    :cond_11
    and-int/lit8 v0, v5, 0x10

    .line 377
    .line 378
    if-eqz v0, :cond_12

    .line 379
    .line 380
    const/4 v15, 0x0

    .line 381
    goto :goto_10

    .line 382
    :cond_12
    const/16 v15, 0x10

    .line 383
    .line 384
    :goto_10
    invoke-virtual {v2}, Lp0/D;->h()Z

    .line 385
    .line 386
    .line 387
    move-result v0

    .line 388
    const/high16 v17, 0x3f800000    # 1.0f

    .line 389
    .line 390
    if-eqz v0, :cond_21

    .line 391
    .line 392
    invoke-virtual {v2}, Lp0/D;->h()Z

    .line 393
    .line 394
    .line 395
    move-result v0

    .line 396
    if-eqz v0, :cond_15

    .line 397
    .line 398
    const/16 v0, 0x8

    .line 399
    .line 400
    invoke-virtual {v2, v0}, Lp0/D;->i(I)I

    .line 401
    .line 402
    .line 403
    move-result v3

    .line 404
    const/16 v0, 0xff

    .line 405
    .line 406
    if-ne v3, v0, :cond_13

    .line 407
    .line 408
    const/16 v0, 0x10

    .line 409
    .line 410
    invoke-virtual {v2, v0}, Lp0/D;->i(I)I

    .line 411
    .line 412
    .line 413
    move-result v3

    .line 414
    invoke-virtual {v2, v0}, Lp0/D;->i(I)I

    .line 415
    .line 416
    .line 417
    move-result v0

    .line 418
    if-eqz v3, :cond_15

    .line 419
    .line 420
    if-eqz v0, :cond_15

    .line 421
    .line 422
    int-to-float v3, v3

    .line 423
    int-to-float v0, v0

    .line 424
    div-float v17, v3, v0

    .line 425
    .line 426
    goto :goto_11

    .line 427
    :cond_13
    const/16 v0, 0x11

    .line 428
    .line 429
    if-ge v3, v0, :cond_14

    .line 430
    .line 431
    sget-object v0, Lq0/p;->b:[F

    .line 432
    .line 433
    aget v17, v0, v3

    .line 434
    .line 435
    goto :goto_11

    .line 436
    :cond_14
    const-string v0, "Unexpected aspect_ratio_idc value: "

    .line 437
    .line 438
    const-string v10, "NalUnitUtil"

    .line 439
    .line 440
    invoke-static {v0, v3, v10}, Lcom/google/protobuf/U2;->v(Ljava/lang/String;ILjava/lang/String;)V

    .line 441
    .line 442
    .line 443
    :cond_15
    :goto_11
    invoke-virtual {v2}, Lp0/D;->h()Z

    .line 444
    .line 445
    .line 446
    move-result v0

    .line 447
    if-eqz v0, :cond_16

    .line 448
    .line 449
    invoke-virtual {v2}, Lp0/D;->t()V

    .line 450
    .line 451
    .line 452
    :cond_16
    invoke-virtual {v2}, Lp0/D;->h()Z

    .line 453
    .line 454
    .line 455
    move-result v0

    .line 456
    if-eqz v0, :cond_19

    .line 457
    .line 458
    const/4 v0, 0x3

    .line 459
    invoke-virtual {v2, v0}, Lp0/D;->u(I)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v2}, Lp0/D;->h()Z

    .line 463
    .line 464
    .line 465
    move-result v0

    .line 466
    if-eqz v0, :cond_17

    .line 467
    .line 468
    const/4 v0, 0x1

    .line 469
    goto :goto_12

    .line 470
    :cond_17
    const/4 v0, 0x2

    .line 471
    :goto_12
    invoke-virtual {v2}, Lp0/D;->h()Z

    .line 472
    .line 473
    .line 474
    move-result v3

    .line 475
    if-eqz v3, :cond_18

    .line 476
    .line 477
    const/16 v3, 0x8

    .line 478
    .line 479
    invoke-virtual {v2, v3}, Lp0/D;->i(I)I

    .line 480
    .line 481
    .line 482
    move-result v10

    .line 483
    invoke-virtual {v2, v3}, Lp0/D;->i(I)I

    .line 484
    .line 485
    .line 486
    move-result v16

    .line 487
    invoke-virtual {v2, v3}, Lp0/D;->u(I)V

    .line 488
    .line 489
    .line 490
    invoke-static {v10}, Lm0/i;->h(I)I

    .line 491
    .line 492
    .line 493
    move-result v10

    .line 494
    invoke-static/range {v16 .. v16}, Lm0/i;->i(I)I

    .line 495
    .line 496
    .line 497
    move-result v3

    .line 498
    goto :goto_14

    .line 499
    :cond_18
    :goto_13
    const/4 v3, -0x1

    .line 500
    const/4 v10, -0x1

    .line 501
    goto :goto_14

    .line 502
    :cond_19
    const/4 v0, -0x1

    .line 503
    goto :goto_13

    .line 504
    :goto_14
    invoke-virtual {v2}, Lp0/D;->h()Z

    .line 505
    .line 506
    .line 507
    move-result v16

    .line 508
    if-eqz v16, :cond_1a

    .line 509
    .line 510
    invoke-virtual {v2}, Lp0/D;->m()I

    .line 511
    .line 512
    .line 513
    invoke-virtual {v2}, Lp0/D;->m()I

    .line 514
    .line 515
    .line 516
    :cond_1a
    invoke-virtual {v2}, Lp0/D;->h()Z

    .line 517
    .line 518
    .line 519
    move-result v16

    .line 520
    move/from16 p0, v0

    .line 521
    .line 522
    if-eqz v16, :cond_1b

    .line 523
    .line 524
    const/16 v0, 0x41

    .line 525
    .line 526
    invoke-virtual {v2, v0}, Lp0/D;->u(I)V

    .line 527
    .line 528
    .line 529
    :cond_1b
    invoke-virtual {v2}, Lp0/D;->h()Z

    .line 530
    .line 531
    .line 532
    move-result v0

    .line 533
    if-eqz v0, :cond_1c

    .line 534
    .line 535
    invoke-static {v2}, Lq0/p;->l(Lp0/D;)V

    .line 536
    .line 537
    .line 538
    :cond_1c
    invoke-virtual {v2}, Lp0/D;->h()Z

    .line 539
    .line 540
    .line 541
    move-result v16

    .line 542
    if-eqz v16, :cond_1d

    .line 543
    .line 544
    invoke-static {v2}, Lq0/p;->l(Lp0/D;)V

    .line 545
    .line 546
    .line 547
    :cond_1d
    if-nez v0, :cond_1e

    .line 548
    .line 549
    if-eqz v16, :cond_1f

    .line 550
    .line 551
    :cond_1e
    invoke-virtual {v2}, Lp0/D;->t()V

    .line 552
    .line 553
    .line 554
    :cond_1f
    invoke-virtual {v2}, Lp0/D;->t()V

    .line 555
    .line 556
    .line 557
    invoke-virtual {v2}, Lp0/D;->h()Z

    .line 558
    .line 559
    .line 560
    move-result v0

    .line 561
    if-eqz v0, :cond_20

    .line 562
    .line 563
    invoke-virtual {v2}, Lp0/D;->t()V

    .line 564
    .line 565
    .line 566
    invoke-virtual {v2}, Lp0/D;->m()I

    .line 567
    .line 568
    .line 569
    invoke-virtual {v2}, Lp0/D;->m()I

    .line 570
    .line 571
    .line 572
    invoke-virtual {v2}, Lp0/D;->m()I

    .line 573
    .line 574
    .line 575
    invoke-virtual {v2}, Lp0/D;->m()I

    .line 576
    .line 577
    .line 578
    invoke-virtual {v2}, Lp0/D;->m()I

    .line 579
    .line 580
    .line 581
    move-result v0

    .line 582
    invoke-virtual {v2}, Lp0/D;->m()I

    .line 583
    .line 584
    .line 585
    move/from16 v22, v0

    .line 586
    .line 587
    move/from16 v21, v3

    .line 588
    .line 589
    move/from16 v19, v10

    .line 590
    .line 591
    move/from16 v10, v17

    .line 592
    .line 593
    move/from16 v0, p0

    .line 594
    .line 595
    goto :goto_15

    .line 596
    :cond_20
    move/from16 v0, p0

    .line 597
    .line 598
    move/from16 v21, v3

    .line 599
    .line 600
    move/from16 v19, v10

    .line 601
    .line 602
    move/from16 v22, v15

    .line 603
    .line 604
    move/from16 v10, v17

    .line 605
    .line 606
    goto :goto_15

    .line 607
    :cond_21
    move/from16 v22, v15

    .line 608
    .line 609
    const/4 v0, -0x1

    .line 610
    const/high16 v10, 0x3f800000    # 1.0f

    .line 611
    .line 612
    const/16 v19, -0x1

    .line 613
    .line 614
    const/16 v21, -0x1

    .line 615
    .line 616
    :goto_15
    new-instance v2, Lq0/o;

    .line 617
    .line 618
    move-object v3, v2

    .line 619
    move/from16 v16, v20

    .line 620
    .line 621
    move v15, v1

    .line 622
    move/from16 v17, v24

    .line 623
    .line 624
    move/from16 v18, v25

    .line 625
    .line 626
    move/from16 v20, v0

    .line 627
    .line 628
    invoke-direct/range {v3 .. v22}, Lq0/o;-><init>(IIIIIIFIIZZIIIZIIII)V

    .line 629
    .line 630
    .line 631
    return-object v2
.end method

.method public static l(Lp0/D;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lp0/D;->m()I

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
    invoke-virtual {p0, v1}, Lp0/D;->u(I)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lp0/D;->m()I

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lp0/D;->m()I

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lp0/D;->t()V

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
    invoke-virtual {p0, v0}, Lp0/D;->u(I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public static m(I[B)I
    .locals 8

    .line 1
    sget-object v0, Lq0/p;->c:Ljava/lang/Object;

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
    if-ge v2, p0, :cond_4

    .line 8
    .line 9
    :goto_1
    add-int/lit8 v4, p0, -0x2

    .line 10
    .line 11
    if-ge v2, v4, :cond_2

    .line 12
    .line 13
    :try_start_0
    aget-byte v4, p1, v2

    .line 14
    .line 15
    if-nez v4, :cond_1

    .line 16
    .line 17
    add-int/lit8 v4, v2, 0x1

    .line 18
    .line 19
    aget-byte v4, p1, v4

    .line 20
    .line 21
    if-nez v4, :cond_1

    .line 22
    .line 23
    add-int/lit8 v4, v2, 0x2

    .line 24
    .line 25
    aget-byte v4, p1, v4

    .line 26
    .line 27
    const/4 v5, 0x3

    .line 28
    if-ne v4, v5, :cond_1

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    move v2, p0

    .line 35
    :goto_2
    if-ge v2, p0, :cond_0

    .line 36
    .line 37
    sget-object v4, Lq0/p;->d:[I

    .line 38
    .line 39
    array-length v5, v4

    .line 40
    if-gt v5, v3, :cond_3

    .line 41
    .line 42
    array-length v5, v4

    .line 43
    mul-int/lit8 v5, v5, 0x2

    .line 44
    .line 45
    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([II)[I

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    sput-object v4, Lq0/p;->d:[I

    .line 50
    .line 51
    goto :goto_3

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    goto :goto_5

    .line 54
    :cond_3
    :goto_3
    sget-object v4, Lq0/p;->d:[I

    .line 55
    .line 56
    add-int/lit8 v5, v3, 0x1

    .line 57
    .line 58
    aput v2, v4, v3

    .line 59
    .line 60
    add-int/lit8 v2, v2, 0x3

    .line 61
    .line 62
    move v3, v5

    .line 63
    goto :goto_0

    .line 64
    :cond_4
    sub-int/2addr p0, v3

    .line 65
    const/4 v2, 0x0

    .line 66
    const/4 v4, 0x0

    .line 67
    const/4 v5, 0x0

    .line 68
    :goto_4
    if-ge v2, v3, :cond_5

    .line 69
    .line 70
    sget-object v6, Lq0/p;->d:[I

    .line 71
    .line 72
    aget v6, v6, v2

    .line 73
    .line 74
    sub-int/2addr v6, v5

    .line 75
    invoke-static {p1, v5, p1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    .line 77
    .line 78
    add-int/2addr v4, v6

    .line 79
    add-int/lit8 v7, v4, 0x1

    .line 80
    .line 81
    aput-byte v1, p1, v4

    .line 82
    .line 83
    add-int/lit8 v4, v4, 0x2

    .line 84
    .line 85
    aput-byte v1, p1, v7

    .line 86
    .line 87
    add-int/lit8 v6, v6, 0x3

    .line 88
    .line 89
    add-int/2addr v5, v6

    .line 90
    add-int/lit8 v2, v2, 0x1

    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_5
    sub-int v1, p0, v4

    .line 94
    .line 95
    invoke-static {p1, v5, p1, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    .line 97
    .line 98
    monitor-exit v0

    .line 99
    return p0

    .line 100
    :goto_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    throw p0
.end method
