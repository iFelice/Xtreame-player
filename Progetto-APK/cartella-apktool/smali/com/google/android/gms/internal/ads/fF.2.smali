.class public final synthetic Lcom/google/android/gms/internal/ads/fF;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ME;
.implements Lcom/google/android/gms/internal/ads/xE;
.implements Lcom/google/android/gms/internal/ads/vE;
.implements Lcom/google/android/gms/internal/ads/bE;
.implements Lcom/google/android/gms/internal/ads/ZD;
.implements Lcom/google/android/gms/internal/ads/IG;
.implements Lcom/google/android/gms/internal/ads/bo;
.implements Lcom/google/android/gms/internal/ads/oo;


# instance fields
.field public final synthetic G:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x13

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/fF;->G:I

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/fF;->G:I

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/fF;->G:I

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/fF;->G:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/uc;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x1b

    iput p1, p0, Lcom/google/android/gms/internal/ads/fF;->G:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x1d

    iput p1, p0, Lcom/google/android/gms/internal/ads/fF;->G:I

    return-void
.end method

.method public static final c(Ljava/lang/Object;J)Lcom/google/android/gms/internal/ads/xH;
    .locals 2

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/nI;->k(Ljava/lang/Object;J)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/google/android/gms/internal/ads/xH;

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/google/android/gms/internal/ads/QG;

    .line 9
    .line 10
    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/QG;->G:Z

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    const/16 v1, 0xa

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    add-int/2addr v1, v1

    .line 24
    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/xH;->a(I)Lcom/google/android/gms/internal/ads/xH;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/nI;->s(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-object v0
.end method

.method public static final h(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/ads/JH;

    .line 2
    .line 3
    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/JH;->G:Z

    .line 4
    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public static final i(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/JH;
    .locals 1

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/ads/JH;

    .line 2
    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/JH;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/JH;->G:Z

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/JH;->b()Lcom/google/android/gms/internal/ads/JH;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/JH;->e()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/JH;->putAll(Ljava/util/Map;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-object p0
.end method

.method public static j(I[BI)Ljava/lang/String;
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x2

    .line 4
    const/4 v3, 0x1

    .line 5
    array-length v4, p1

    .line 6
    sub-int v5, v4, p0

    .line 7
    .line 8
    or-int v6, p0, p2

    .line 9
    .line 10
    sub-int/2addr v5, p2

    .line 11
    or-int/2addr v5, v6

    .line 12
    if-ltz v5, :cond_a

    .line 13
    .line 14
    add-int v4, p0, p2

    .line 15
    .line 16
    new-array p2, p2, [C

    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    :goto_0
    if-ge p0, v4, :cond_0

    .line 20
    .line 21
    aget-byte v6, p1, p0

    .line 22
    .line 23
    if-ltz v6, :cond_0

    .line 24
    .line 25
    add-int/2addr p0, v3

    .line 26
    add-int/lit8 v7, v5, 0x1

    .line 27
    .line 28
    int-to-char v6, v6

    .line 29
    aput-char v6, p2, v5

    .line 30
    .line 31
    move v5, v7

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v11, v5

    .line 34
    :cond_1
    :goto_1
    if-ge p0, v4, :cond_9

    .line 35
    .line 36
    add-int/lit8 v5, p0, 0x1

    .line 37
    .line 38
    aget-byte v6, p1, p0

    .line 39
    .line 40
    if-ltz v6, :cond_2

    .line 41
    .line 42
    add-int/lit8 p0, v11, 0x1

    .line 43
    .line 44
    int-to-char v6, v6

    .line 45
    aput-char v6, p2, v11

    .line 46
    .line 47
    move v11, p0

    .line 48
    move p0, v5

    .line 49
    :goto_2
    if-ge p0, v4, :cond_1

    .line 50
    .line 51
    aget-byte v5, p1, p0

    .line 52
    .line 53
    if-ltz v5, :cond_1

    .line 54
    .line 55
    add-int/2addr p0, v3

    .line 56
    add-int/lit8 v6, v11, 0x1

    .line 57
    .line 58
    int-to-char v5, v5

    .line 59
    aput-char v5, p2, v11

    .line 60
    .line 61
    move v11, v6

    .line 62
    goto :goto_2

    .line 63
    :cond_2
    const/16 v7, -0x20

    .line 64
    .line 65
    if-ge v6, v7, :cond_3

    .line 66
    .line 67
    const/4 v7, 0x1

    .line 68
    goto :goto_3

    .line 69
    :cond_3
    const/4 v7, 0x0

    .line 70
    :goto_3
    const-string v8, "Protocol message had invalid UTF-8."

    .line 71
    .line 72
    if-eqz v7, :cond_5

    .line 73
    .line 74
    if-ge v5, v4, :cond_4

    .line 75
    .line 76
    add-int/lit8 v7, v11, 0x1

    .line 77
    .line 78
    add-int/2addr p0, v2

    .line 79
    aget-byte v5, p1, v5

    .line 80
    .line 81
    invoke-static {v6, v5, p2, v11}, Lcom/google/android/gms/internal/ads/Cw;->d1(BB[CI)V

    .line 82
    .line 83
    .line 84
    :goto_4
    move v11, v7

    .line 85
    goto :goto_1

    .line 86
    :cond_4
    new-instance p0, Lcom/google/android/gms/internal/ads/AH;

    .line 87
    .line 88
    invoke-direct {p0, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p0

    .line 92
    :cond_5
    const/16 v7, -0x10

    .line 93
    .line 94
    if-ge v6, v7, :cond_7

    .line 95
    .line 96
    add-int/lit8 v7, v4, -0x1

    .line 97
    .line 98
    if-ge v5, v7, :cond_6

    .line 99
    .line 100
    add-int/lit8 v7, v11, 0x1

    .line 101
    .line 102
    add-int/lit8 v8, p0, 0x2

    .line 103
    .line 104
    aget-byte v5, p1, v5

    .line 105
    .line 106
    add-int/2addr p0, v1

    .line 107
    aget-byte v8, p1, v8

    .line 108
    .line 109
    invoke-static {v6, v5, v8, p2, v11}, Lcom/google/android/gms/internal/ads/Cw;->H0(BBB[CI)V

    .line 110
    .line 111
    .line 112
    goto :goto_4

    .line 113
    :cond_6
    new-instance p0, Lcom/google/android/gms/internal/ads/AH;

    .line 114
    .line 115
    invoke-direct {p0, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw p0

    .line 119
    :cond_7
    add-int/lit8 v7, v4, -0x2

    .line 120
    .line 121
    if-ge v5, v7, :cond_8

    .line 122
    .line 123
    add-int/lit8 v7, p0, 0x2

    .line 124
    .line 125
    aget-byte v8, p1, v5

    .line 126
    .line 127
    add-int/lit8 v5, p0, 0x3

    .line 128
    .line 129
    aget-byte v7, p1, v7

    .line 130
    .line 131
    add-int/lit8 p0, p0, 0x4

    .line 132
    .line 133
    aget-byte v9, p1, v5

    .line 134
    .line 135
    move v5, v6

    .line 136
    move v6, v8

    .line 137
    move v8, v9

    .line 138
    move-object v9, p2

    .line 139
    move v10, v11

    .line 140
    invoke-static/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/Cw;->U(BBBB[CI)V

    .line 141
    .line 142
    .line 143
    add-int/2addr v11, v2

    .line 144
    goto :goto_1

    .line 145
    :cond_8
    new-instance p0, Lcom/google/android/gms/internal/ads/AH;

    .line 146
    .line 147
    invoke-direct {p0, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    throw p0

    .line 151
    :cond_9
    new-instance p0, Ljava/lang/String;

    .line 152
    .line 153
    invoke-direct {p0, p2, v0, v11}, Ljava/lang/String;-><init>([CII)V

    .line 154
    .line 155
    .line 156
    return-object p0

    .line 157
    :cond_a
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 158
    .line 159
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 164
    .line 165
    .line 166
    move-result-object p0

    .line 167
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    new-array v1, v1, [Ljava/lang/Object;

    .line 172
    .line 173
    aput-object v4, v1, v0

    .line 174
    .line 175
    aput-object p0, v1, v3

    .line 176
    .line 177
    aput-object p2, v1, v2

    .line 178
    .line 179
    const-string p0, "buffer length=%d, index=%d, size=%d"

    .line 180
    .line 181
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    invoke-direct {p1, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    throw p1
.end method

.method public static final k(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x2

    .line 4
    const/4 v3, 0x1

    .line 5
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    .line 6
    .line 7
    .line 8
    move-result v4

    .line 9
    sub-int/2addr v4, p1

    .line 10
    or-int v5, p1, p2

    .line 11
    .line 12
    sub-int/2addr v4, p2

    .line 13
    or-int/2addr v4, v5

    .line 14
    if-ltz v4, :cond_a

    .line 15
    .line 16
    add-int v4, p1, p2

    .line 17
    .line 18
    new-array p2, p2, [C

    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    :goto_0
    if-ge p1, v4, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    if-ltz v6, :cond_0

    .line 28
    .line 29
    add-int/2addr p1, v3

    .line 30
    add-int/lit8 v7, v5, 0x1

    .line 31
    .line 32
    int-to-char v6, v6

    .line 33
    aput-char v6, p2, v5

    .line 34
    .line 35
    move v5, v7

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move v11, v5

    .line 38
    :cond_1
    :goto_1
    if-ge p1, v4, :cond_9

    .line 39
    .line 40
    add-int/lit8 v5, p1, 0x1

    .line 41
    .line 42
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    if-ltz v6, :cond_2

    .line 47
    .line 48
    add-int/lit8 p1, v11, 0x1

    .line 49
    .line 50
    int-to-char v6, v6

    .line 51
    aput-char v6, p2, v11

    .line 52
    .line 53
    move v11, p1

    .line 54
    move p1, v5

    .line 55
    :goto_2
    if-ge p1, v4, :cond_1

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get(I)B

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    if-ltz v5, :cond_1

    .line 62
    .line 63
    add-int/2addr p1, v3

    .line 64
    add-int/lit8 v6, v11, 0x1

    .line 65
    .line 66
    int-to-char v5, v5

    .line 67
    aput-char v5, p2, v11

    .line 68
    .line 69
    move v11, v6

    .line 70
    goto :goto_2

    .line 71
    :cond_2
    const/16 v7, -0x20

    .line 72
    .line 73
    if-ge v6, v7, :cond_3

    .line 74
    .line 75
    const/4 v7, 0x1

    .line 76
    goto :goto_3

    .line 77
    :cond_3
    const/4 v7, 0x0

    .line 78
    :goto_3
    const-string v8, "Protocol message had invalid UTF-8."

    .line 79
    .line 80
    if-eqz v7, :cond_5

    .line 81
    .line 82
    if-ge v5, v4, :cond_4

    .line 83
    .line 84
    add-int/lit8 v7, v11, 0x1

    .line 85
    .line 86
    add-int/2addr p1, v2

    .line 87
    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    invoke-static {v6, v5, p2, v11}, Lcom/google/android/gms/internal/ads/Cw;->d1(BB[CI)V

    .line 92
    .line 93
    .line 94
    :goto_4
    move v11, v7

    .line 95
    goto :goto_1

    .line 96
    :cond_4
    new-instance p0, Lcom/google/android/gms/internal/ads/AH;

    .line 97
    .line 98
    invoke-direct {p0, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw p0

    .line 102
    :cond_5
    const/16 v7, -0x10

    .line 103
    .line 104
    if-ge v6, v7, :cond_7

    .line 105
    .line 106
    add-int/lit8 v7, v4, -0x1

    .line 107
    .line 108
    if-ge v5, v7, :cond_6

    .line 109
    .line 110
    add-int/lit8 v7, v11, 0x1

    .line 111
    .line 112
    add-int/lit8 v8, p1, 0x2

    .line 113
    .line 114
    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    add-int/2addr p1, v1

    .line 119
    invoke-virtual {p0, v8}, Ljava/nio/ByteBuffer;->get(I)B

    .line 120
    .line 121
    .line 122
    move-result v8

    .line 123
    invoke-static {v6, v5, v8, p2, v11}, Lcom/google/android/gms/internal/ads/Cw;->H0(BBB[CI)V

    .line 124
    .line 125
    .line 126
    goto :goto_4

    .line 127
    :cond_6
    new-instance p0, Lcom/google/android/gms/internal/ads/AH;

    .line 128
    .line 129
    invoke-direct {p0, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    throw p0

    .line 133
    :cond_7
    add-int/lit8 v7, v4, -0x2

    .line 134
    .line 135
    if-ge v5, v7, :cond_8

    .line 136
    .line 137
    add-int/lit8 v7, p1, 0x2

    .line 138
    .line 139
    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    .line 140
    .line 141
    .line 142
    move-result v8

    .line 143
    add-int/lit8 v5, p1, 0x3

    .line 144
    .line 145
    invoke-virtual {p0, v7}, Ljava/nio/ByteBuffer;->get(I)B

    .line 146
    .line 147
    .line 148
    move-result v7

    .line 149
    add-int/lit8 p1, p1, 0x4

    .line 150
    .line 151
    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    .line 152
    .line 153
    .line 154
    move-result v9

    .line 155
    move v5, v6

    .line 156
    move v6, v8

    .line 157
    move v8, v9

    .line 158
    move-object v9, p2

    .line 159
    move v10, v11

    .line 160
    invoke-static/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/Cw;->U(BBBB[CI)V

    .line 161
    .line 162
    .line 163
    add-int/2addr v11, v2

    .line 164
    goto :goto_1

    .line 165
    :cond_8
    new-instance p0, Lcom/google/android/gms/internal/ads/AH;

    .line 166
    .line 167
    invoke-direct {p0, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    throw p0

    .line 171
    :cond_9
    new-instance p0, Ljava/lang/String;

    .line 172
    .line 173
    invoke-direct {p0, p2, v0, v11}, Ljava/lang/String;-><init>([CII)V

    .line 174
    .line 175
    .line 176
    return-object p0

    .line 177
    :cond_a
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 178
    .line 179
    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    .line 180
    .line 181
    .line 182
    move-result p0

    .line 183
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    .line 193
    .line 194
    move-result-object p2

    .line 195
    new-array v1, v1, [Ljava/lang/Object;

    .line 196
    .line 197
    aput-object p0, v1, v0

    .line 198
    .line 199
    aput-object p1, v1, v3

    .line 200
    .line 201
    aput-object p2, v1, v2

    .line 202
    .line 203
    const-string p0, "buffer limit=%d, index=%d, limit=%d"

    .line 204
    .line 205
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p0

    .line 209
    invoke-direct {v4, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    throw v4
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/Cw;)Lcom/google/android/gms/internal/ads/FE;
    .locals 7

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/fF;->G:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Lcom/google/android/gms/internal/ads/WE;

    .line 9
    .line 10
    sget-object v0, Lcom/google/android/gms/internal/ads/iF;->a:Lcom/google/android/gms/internal/ads/WD;

    .line 11
    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/ads/VF;->B()Lcom/google/android/gms/internal/ads/UF;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/WE;->l:Lcom/google/android/gms/internal/ads/aF;

    .line 17
    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/ads/ZF;->C()Lcom/google/android/gms/internal/ads/YF;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    iget v5, v3, Lcom/google/android/gms/internal/ads/aF;->b:I

    .line 23
    .line 24
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 25
    .line 26
    .line 27
    iget-object v6, v4, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 28
    .line 29
    check-cast v6, Lcom/google/android/gms/internal/ads/ZF;

    .line 30
    .line 31
    invoke-static {v6, v5}, Lcom/google/android/gms/internal/ads/ZF;->F(Lcom/google/android/gms/internal/ads/ZF;I)V

    .line 32
    .line 33
    .line 34
    sget-object v5, Lcom/google/android/gms/internal/ads/iF;->b:Lcom/google/android/gms/internal/ads/WD;

    .line 35
    .line 36
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/aF;->d:Lcom/google/android/gms/internal/ads/YE;

    .line 37
    .line 38
    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/WD;->c(Ljava/lang/Object;)Ljava/lang/Enum;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Lcom/google/android/gms/internal/ads/TF;

    .line 43
    .line 44
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 45
    .line 46
    .line 47
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 48
    .line 49
    check-cast v5, Lcom/google/android/gms/internal/ads/ZF;

    .line 50
    .line 51
    invoke-static {v5, v3}, Lcom/google/android/gms/internal/ads/ZF;->E(Lcom/google/android/gms/internal/ads/ZF;Lcom/google/android/gms/internal/ads/TF;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/oH;->b()Lcom/google/android/gms/internal/ads/qH;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    check-cast v3, Lcom/google/android/gms/internal/ads/ZF;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 61
    .line 62
    .line 63
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 64
    .line 65
    check-cast v4, Lcom/google/android/gms/internal/ads/VF;

    .line 66
    .line 67
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/VF;->H(Lcom/google/android/gms/internal/ads/VF;Lcom/google/android/gms/internal/ads/ZF;)V

    .line 68
    .line 69
    .line 70
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/WE;->m:Lcom/google/android/gms/internal/ads/Xu;

    .line 71
    .line 72
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/Xu;->r()[B

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    array-length v4, v3

    .line 77
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/XG;->y(I[BI)Lcom/google/android/gms/internal/ads/VG;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 82
    .line 83
    .line 84
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 85
    .line 86
    check-cast v3, Lcom/google/android/gms/internal/ads/VF;

    .line 87
    .line 88
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/VF;->I(Lcom/google/android/gms/internal/ads/VF;Lcom/google/android/gms/internal/ads/VG;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oH;->b()Lcom/google/android/gms/internal/ads/qH;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    check-cast v0, Lcom/google/android/gms/internal/ads/VF;

    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/PG;->b()Lcom/google/android/gms/internal/ads/VG;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/WE;->l:Lcom/google/android/gms/internal/ads/aF;

    .line 102
    .line 103
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/aF;->c:Lcom/google/android/gms/internal/ads/ZE;

    .line 104
    .line 105
    sget-object v3, Lcom/google/android/gms/internal/ads/iF;->a:Lcom/google/android/gms/internal/ads/WD;

    .line 106
    .line 107
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/WD;->c(Ljava/lang/Object;)Ljava/lang/Enum;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    check-cast v2, Lcom/google/android/gms/internal/ads/xG;

    .line 112
    .line 113
    const-string v3, "type.googleapis.com/google.crypto.tink.HmacKey"

    .line 114
    .line 115
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/WE;->o:Ljava/lang/Integer;

    .line 116
    .line 117
    invoke-static {v3, v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/FE;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/XG;ILcom/google/android/gms/internal/ads/xG;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/FE;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    return-object p1

    .line 122
    :pswitch_0
    check-cast p1, Lcom/google/android/gms/internal/ads/OE;

    .line 123
    .line 124
    sget-object v0, Lcom/google/android/gms/internal/ads/hF;->a:Lcom/google/android/gms/internal/ads/wE;

    .line 125
    .line 126
    invoke-static {}, Lcom/google/android/gms/internal/ads/lF;->B()Lcom/google/android/gms/internal/ads/kF;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/OE;->l:Lcom/google/android/gms/internal/ads/RE;

    .line 131
    .line 132
    invoke-static {}, Lcom/google/android/gms/internal/ads/pF;->B()Lcom/google/android/gms/internal/ads/oF;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    iget v3, v3, Lcom/google/android/gms/internal/ads/RE;->b:I

    .line 137
    .line 138
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 139
    .line 140
    .line 141
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 142
    .line 143
    check-cast v5, Lcom/google/android/gms/internal/ads/pF;

    .line 144
    .line 145
    invoke-static {v5, v3}, Lcom/google/android/gms/internal/ads/pF;->D(Lcom/google/android/gms/internal/ads/pF;I)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/oH;->b()Lcom/google/android/gms/internal/ads/qH;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    check-cast v3, Lcom/google/android/gms/internal/ads/pF;

    .line 153
    .line 154
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 155
    .line 156
    .line 157
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 158
    .line 159
    check-cast v4, Lcom/google/android/gms/internal/ads/lF;

    .line 160
    .line 161
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/lF;->H(Lcom/google/android/gms/internal/ads/lF;Lcom/google/android/gms/internal/ads/pF;)V

    .line 162
    .line 163
    .line 164
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/OE;->m:Lcom/google/android/gms/internal/ads/Xu;

    .line 165
    .line 166
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/Xu;->r()[B

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    array-length v4, v3

    .line 171
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/XG;->y(I[BI)Lcom/google/android/gms/internal/ads/VG;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 176
    .line 177
    .line 178
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 179
    .line 180
    check-cast v3, Lcom/google/android/gms/internal/ads/lF;

    .line 181
    .line 182
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/lF;->G(Lcom/google/android/gms/internal/ads/lF;Lcom/google/android/gms/internal/ads/VG;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oH;->b()Lcom/google/android/gms/internal/ads/qH;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    check-cast v0, Lcom/google/android/gms/internal/ads/lF;

    .line 190
    .line 191
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/PG;->b()Lcom/google/android/gms/internal/ads/VG;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/OE;->l:Lcom/google/android/gms/internal/ads/RE;

    .line 196
    .line 197
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/RE;->c:Lcom/google/android/gms/internal/ads/QE;

    .line 198
    .line 199
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/hF;->b(Lcom/google/android/gms/internal/ads/QE;)Lcom/google/android/gms/internal/ads/xG;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    const-string v3, "type.googleapis.com/google.crypto.tink.AesCmacKey"

    .line 204
    .line 205
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/OE;->o:Ljava/lang/Integer;

    .line 206
    .line 207
    invoke-static {v3, v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/FE;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/XG;ILcom/google/android/gms/internal/ads/xG;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/FE;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    return-object p1

    .line 212
    nop

    .line 213
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/o;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/cL;

    .line 2
    .line 3
    return-void
.end method

.method public final d(Lcom/google/android/gms/internal/ads/OC;)Lcom/google/android/gms/internal/ads/GE;
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/fF;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Lcom/google/android/gms/internal/ads/aF;

    .line 7
    .line 8
    sget-object v0, Lcom/google/android/gms/internal/ads/iF;->a:Lcom/google/android/gms/internal/ads/WD;

    .line 9
    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/eG;->A()Lcom/google/android/gms/internal/ads/dG;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "type.googleapis.com/google.crypto.tink.HmacKey"

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dG;->f(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/ads/XF;->C()Lcom/google/android/gms/internal/ads/WF;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/ads/ZF;->C()Lcom/google/android/gms/internal/ads/YF;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    iget v3, p1, Lcom/google/android/gms/internal/ads/aF;->b:I

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 30
    .line 31
    .line 32
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 33
    .line 34
    check-cast v4, Lcom/google/android/gms/internal/ads/ZF;

    .line 35
    .line 36
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/ZF;->F(Lcom/google/android/gms/internal/ads/ZF;I)V

    .line 37
    .line 38
    .line 39
    sget-object v3, Lcom/google/android/gms/internal/ads/iF;->b:Lcom/google/android/gms/internal/ads/WD;

    .line 40
    .line 41
    iget-object v4, p1, Lcom/google/android/gms/internal/ads/aF;->d:Lcom/google/android/gms/internal/ads/YE;

    .line 42
    .line 43
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/WD;->c(Ljava/lang/Object;)Ljava/lang/Enum;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Lcom/google/android/gms/internal/ads/TF;

    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 50
    .line 51
    .line 52
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 53
    .line 54
    check-cast v4, Lcom/google/android/gms/internal/ads/ZF;

    .line 55
    .line 56
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/ZF;->E(Lcom/google/android/gms/internal/ads/ZF;Lcom/google/android/gms/internal/ads/TF;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/oH;->b()Lcom/google/android/gms/internal/ads/qH;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Lcom/google/android/gms/internal/ads/ZF;

    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 66
    .line 67
    .line 68
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 69
    .line 70
    check-cast v3, Lcom/google/android/gms/internal/ads/XF;

    .line 71
    .line 72
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/XF;->G(Lcom/google/android/gms/internal/ads/XF;Lcom/google/android/gms/internal/ads/ZF;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 76
    .line 77
    .line 78
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 79
    .line 80
    check-cast v2, Lcom/google/android/gms/internal/ads/XF;

    .line 81
    .line 82
    iget v3, p1, Lcom/google/android/gms/internal/ads/aF;->a:I

    .line 83
    .line 84
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/XF;->H(Lcom/google/android/gms/internal/ads/XF;I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/oH;->b()Lcom/google/android/gms/internal/ads/qH;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    check-cast v1, Lcom/google/android/gms/internal/ads/XF;

    .line 92
    .line 93
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/PG;->b()Lcom/google/android/gms/internal/ads/VG;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dG;->g(Lcom/google/android/gms/internal/ads/XG;)V

    .line 98
    .line 99
    .line 100
    sget-object v1, Lcom/google/android/gms/internal/ads/iF;->a:Lcom/google/android/gms/internal/ads/WD;

    .line 101
    .line 102
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/aF;->c:Lcom/google/android/gms/internal/ads/ZE;

    .line 103
    .line 104
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/WD;->c(Ljava/lang/Object;)Ljava/lang/Enum;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    check-cast p1, Lcom/google/android/gms/internal/ads/xG;

    .line 109
    .line 110
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dG;->e(Lcom/google/android/gms/internal/ads/xG;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oH;->b()Lcom/google/android/gms/internal/ads/qH;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    check-cast p1, Lcom/google/android/gms/internal/ads/eG;

    .line 118
    .line 119
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/GE;->a(Lcom/google/android/gms/internal/ads/eG;)Lcom/google/android/gms/internal/ads/GE;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    return-object p1

    .line 124
    :pswitch_0
    check-cast p1, Lcom/google/android/gms/internal/ads/RE;

    .line 125
    .line 126
    sget-object v0, Lcom/google/android/gms/internal/ads/hF;->a:Lcom/google/android/gms/internal/ads/wE;

    .line 127
    .line 128
    invoke-static {}, Lcom/google/android/gms/internal/ads/eG;->A()Lcom/google/android/gms/internal/ads/dG;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    const-string v1, "type.googleapis.com/google.crypto.tink.AesCmacKey"

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dG;->f(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-static {}, Lcom/google/android/gms/internal/ads/nF;->B()Lcom/google/android/gms/internal/ads/mF;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-static {}, Lcom/google/android/gms/internal/ads/pF;->B()Lcom/google/android/gms/internal/ads/oF;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    iget v3, p1, Lcom/google/android/gms/internal/ads/RE;->b:I

    .line 146
    .line 147
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 148
    .line 149
    .line 150
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 151
    .line 152
    check-cast v4, Lcom/google/android/gms/internal/ads/pF;

    .line 153
    .line 154
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/pF;->D(Lcom/google/android/gms/internal/ads/pF;I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/oH;->b()Lcom/google/android/gms/internal/ads/qH;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    check-cast v2, Lcom/google/android/gms/internal/ads/pF;

    .line 162
    .line 163
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 164
    .line 165
    .line 166
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 167
    .line 168
    check-cast v3, Lcom/google/android/gms/internal/ads/nF;

    .line 169
    .line 170
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/nF;->F(Lcom/google/android/gms/internal/ads/nF;Lcom/google/android/gms/internal/ads/pF;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/oH;->d()V

    .line 174
    .line 175
    .line 176
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/oH;->H:Lcom/google/android/gms/internal/ads/qH;

    .line 177
    .line 178
    check-cast v2, Lcom/google/android/gms/internal/ads/nF;

    .line 179
    .line 180
    iget v3, p1, Lcom/google/android/gms/internal/ads/RE;->a:I

    .line 181
    .line 182
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/nF;->E(Lcom/google/android/gms/internal/ads/nF;I)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/oH;->b()Lcom/google/android/gms/internal/ads/qH;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    check-cast v1, Lcom/google/android/gms/internal/ads/nF;

    .line 190
    .line 191
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/PG;->b()Lcom/google/android/gms/internal/ads/VG;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dG;->g(Lcom/google/android/gms/internal/ads/XG;)V

    .line 196
    .line 197
    .line 198
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/RE;->c:Lcom/google/android/gms/internal/ads/QE;

    .line 199
    .line 200
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/hF;->b(Lcom/google/android/gms/internal/ads/QE;)Lcom/google/android/gms/internal/ads/xG;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/dG;->e(Lcom/google/android/gms/internal/ads/xG;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/oH;->b()Lcom/google/android/gms/internal/ads/qH;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    check-cast p1, Lcom/google/android/gms/internal/ads/eG;

    .line 212
    .line 213
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/GE;->a(Lcom/google/android/gms/internal/ads/eG;)Lcom/google/android/gms/internal/ads/GE;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    return-object p1

    .line 218
    nop

    .line 219
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final e(Lcom/google/android/gms/internal/ads/GE;)Lcom/google/android/gms/internal/ads/GC;
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/fF;->G:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/GE;->b:Lcom/google/android/gms/internal/ads/eG;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    sget-object v0, Lcom/google/android/gms/internal/ads/iF;->a:Lcom/google/android/gms/internal/ads/WD;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/eG;->F()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v2, "type.googleapis.com/google.crypto.tink.HmacKey"

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/eG;->E()Lcom/google/android/gms/internal/ads/XG;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sget-object v2, Lcom/google/android/gms/internal/ads/jH;->b:Lcom/google/android/gms/internal/ads/jH;

    .line 28
    .line 29
    sget-object v2, Lcom/google/android/gms/internal/ads/UH;->c:Lcom/google/android/gms/internal/ads/UH;

    .line 30
    .line 31
    sget-object v2, Lcom/google/android/gms/internal/ads/jH;->c:Lcom/google/android/gms/internal/ads/jH;

    .line 32
    .line 33
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/XF;->E(Lcom/google/android/gms/internal/ads/XG;Lcom/google/android/gms/internal/ads/jH;)Lcom/google/android/gms/internal/ads/XF;

    .line 34
    .line 35
    .line 36
    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/AH; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/XF;->B()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_0

    .line 42
    .line 43
    new-instance v2, Lcom/google/android/gms/internal/ads/xc;

    .line 44
    .line 45
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/xc;-><init>(Lcom/google/android/gms/internal/ads/uc;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/XF;->A()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/xc;->u(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/XF;->F()Lcom/google/android/gms/internal/ads/ZF;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ZF;->A()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/xc;->z(I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/XF;->F()Lcom/google/android/gms/internal/ads/ZF;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ZF;->B()Lcom/google/android/gms/internal/ads/TF;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    sget-object v1, Lcom/google/android/gms/internal/ads/iF;->b:Lcom/google/android/gms/internal/ads/WD;

    .line 75
    .line 76
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/WD;->e(Ljava/lang/Enum;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Lcom/google/android/gms/internal/ads/YE;

    .line 81
    .line 82
    iput-object v0, v2, Lcom/google/android/gms/internal/ads/xc;->J:Ljava/lang/Object;

    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/eG;->D()Lcom/google/android/gms/internal/ads/xG;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    sget-object v0, Lcom/google/android/gms/internal/ads/iF;->a:Lcom/google/android/gms/internal/ads/WD;

    .line 89
    .line 90
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/WD;->e(Ljava/lang/Enum;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    check-cast p1, Lcom/google/android/gms/internal/ads/ZE;

    .line 95
    .line 96
    iput-object p1, v2, Lcom/google/android/gms/internal/ads/xc;->K:Ljava/lang/Object;

    .line 97
    .line 98
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/xc;->I()Lcom/google/android/gms/internal/ads/aF;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    return-object p1

    .line 103
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/XF;->B()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    const-string v1, "Parsing HmacParameters failed: unknown Version "

    .line 110
    .line 111
    invoke-static {v1, v0}, La/r;->f(Ljava/lang/String;I)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw p1

    .line 119
    :catch_0
    move-exception p1

    .line 120
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 121
    .line 122
    const-string v1, "Parsing HmacParameters failed: "

    .line 123
    .line 124
    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 125
    .line 126
    .line 127
    throw v0

    .line 128
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/eG;->F()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    const-string v1, "Wrong type URL in call to HmacProtoSerialization.parseParameters: "

    .line 139
    .line 140
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    throw v0

    .line 148
    :pswitch_0
    sget-object v0, Lcom/google/android/gms/internal/ads/hF;->a:Lcom/google/android/gms/internal/ads/wE;

    .line 149
    .line 150
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/eG;->F()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    const-string v2, "type.googleapis.com/google.crypto.tink.AesCmacKey"

    .line 155
    .line 156
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-eqz v0, :cond_2

    .line 161
    .line 162
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/eG;->E()Lcom/google/android/gms/internal/ads/XG;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    sget-object v2, Lcom/google/android/gms/internal/ads/jH;->b:Lcom/google/android/gms/internal/ads/jH;

    .line 167
    .line 168
    sget-object v2, Lcom/google/android/gms/internal/ads/UH;->c:Lcom/google/android/gms/internal/ads/UH;

    .line 169
    .line 170
    sget-object v2, Lcom/google/android/gms/internal/ads/jH;->c:Lcom/google/android/gms/internal/ads/jH;

    .line 171
    .line 172
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/nF;->C(Lcom/google/android/gms/internal/ads/XG;Lcom/google/android/gms/internal/ads/jH;)Lcom/google/android/gms/internal/ads/nF;

    .line 173
    .line 174
    .line 175
    move-result-object v0
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/AH; {:try_start_1 .. :try_end_1} :catch_1

    .line 176
    new-instance v2, Lcom/google/android/gms/internal/ads/bD;

    .line 177
    .line 178
    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/bD;-><init>(Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/nF;->A()I

    .line 182
    .line 183
    .line 184
    move-result v1

    .line 185
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/bD;->l(I)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/nF;->D()Lcom/google/android/gms/internal/ads/pF;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/pF;->A()I

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/bD;->n(I)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/eG;->D()Lcom/google/android/gms/internal/ads/xG;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/hF;->a(Lcom/google/android/gms/internal/ads/xG;)Lcom/google/android/gms/internal/ads/QE;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    iput-object p1, v2, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 208
    .line 209
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/bD;->s()Lcom/google/android/gms/internal/ads/RE;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    return-object p1

    .line 214
    :catch_1
    move-exception p1

    .line 215
    new-instance v0, Ljava/security/GeneralSecurityException;

    .line 216
    .line 217
    const-string v1, "Parsing AesCmacParameters failed: "

    .line 218
    .line 219
    invoke-direct {v0, v1, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 220
    .line 221
    .line 222
    throw v0

    .line 223
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 224
    .line 225
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/eG;->F()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    const-string v1, "Wrong type URL in call to AesCmacProtoSerialization.parseParameters: "

    .line 234
    .line 235
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    throw v0

    .line 243
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final f(Lcom/google/android/gms/internal/ads/FE;)Lcom/google/android/gms/internal/ads/NC;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/FE;->f:Ljava/lang/Integer;

    .line 4
    .line 5
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/FE;->e:Lcom/google/android/gms/internal/ads/xG;

    .line 6
    .line 7
    iget-object v4, p1, Lcom/google/android/gms/internal/ads/FE;->c:Lcom/google/android/gms/internal/ads/XG;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/FE;->a:Ljava/lang/String;

    .line 10
    .line 11
    iget v5, p0, Lcom/google/android/gms/internal/ads/fF;->G:I

    .line 12
    .line 13
    const-string v6, "Only version 0 keys are accepted"

    .line 14
    .line 15
    packed-switch v5, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    sget-object v5, Lcom/google/android/gms/internal/ads/iF;->a:Lcom/google/android/gms/internal/ads/WD;

    .line 19
    .line 20
    const-string v5, "type.googleapis.com/google.crypto.tink.HmacKey"

    .line 21
    .line 22
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/jH;->b:Lcom/google/android/gms/internal/ads/jH;

    .line 29
    .line 30
    sget-object p1, Lcom/google/android/gms/internal/ads/UH;->c:Lcom/google/android/gms/internal/ads/UH;

    .line 31
    .line 32
    sget-object p1, Lcom/google/android/gms/internal/ads/jH;->c:Lcom/google/android/gms/internal/ads/jH;

    .line 33
    .line 34
    invoke-static {v4, p1}, Lcom/google/android/gms/internal/ads/VF;->D(Lcom/google/android/gms/internal/ads/XG;Lcom/google/android/gms/internal/ads/jH;)Lcom/google/android/gms/internal/ads/VF;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/VF;->A()I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-nez v4, :cond_0

    .line 43
    .line 44
    new-instance v4, Lcom/google/android/gms/internal/ads/xc;

    .line 45
    .line 46
    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/xc;-><init>(Lcom/google/android/gms/internal/ads/uc;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/VF;->F()Lcom/google/android/gms/internal/ads/XG;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/XG;->n()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/xc;->u(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/VF;->E()Lcom/google/android/gms/internal/ads/ZF;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ZF;->A()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/xc;->z(I)V

    .line 69
    .line 70
    .line 71
    sget-object v1, Lcom/google/android/gms/internal/ads/iF;->b:Lcom/google/android/gms/internal/ads/WD;

    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/VF;->E()Lcom/google/android/gms/internal/ads/ZF;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/ZF;->B()Lcom/google/android/gms/internal/ads/TF;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/WD;->e(Ljava/lang/Enum;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    check-cast v1, Lcom/google/android/gms/internal/ads/YE;

    .line 86
    .line 87
    iput-object v1, v4, Lcom/google/android/gms/internal/ads/xc;->J:Ljava/lang/Object;

    .line 88
    .line 89
    sget-object v1, Lcom/google/android/gms/internal/ads/iF;->a:Lcom/google/android/gms/internal/ads/WD;

    .line 90
    .line 91
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/WD;->e(Ljava/lang/Enum;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    check-cast v1, Lcom/google/android/gms/internal/ads/ZE;

    .line 96
    .line 97
    iput-object v1, v4, Lcom/google/android/gms/internal/ads/xc;->K:Ljava/lang/Object;

    .line 98
    .line 99
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/xc;->I()Lcom/google/android/gms/internal/ads/aF;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    new-instance v3, Lcom/google/android/gms/internal/ads/bD;

    .line 104
    .line 105
    const/4 v4, 0x5

    .line 106
    invoke-direct {v3, v4, v0}, Lcom/google/android/gms/internal/ads/bD;-><init>(II)V

    .line 107
    .line 108
    .line 109
    iput-object v1, v3, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/VF;->F()Lcom/google/android/gms/internal/ads/XG;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/XG;->b()[B

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Xu;->k([B)Lcom/google/android/gms/internal/ads/Xu;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    iput-object p1, v3, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 124
    .line 125
    iput-object v2, v3, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 126
    .line 127
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/bD;->t()Lcom/google/android/gms/internal/ads/WE;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    return-object p1

    .line 132
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 133
    .line 134
    invoke-direct {p1, v6}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/AH; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :catch_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 139
    .line 140
    const-string v0, "Parsing HmacKey failed"

    .line 141
    .line 142
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw p1

    .line 146
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 147
    .line 148
    const-string v0, "Wrong type URL in call to HmacProtoSerialization.parseKey"

    .line 149
    .line 150
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw p1

    .line 154
    :pswitch_0
    sget-object v5, Lcom/google/android/gms/internal/ads/hF;->a:Lcom/google/android/gms/internal/ads/wE;

    .line 155
    .line 156
    const-string v5, "type.googleapis.com/google.crypto.tink.AesCmacKey"

    .line 157
    .line 158
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result p1

    .line 162
    if-eqz p1, :cond_3

    .line 163
    .line 164
    :try_start_1
    sget-object p1, Lcom/google/android/gms/internal/ads/jH;->b:Lcom/google/android/gms/internal/ads/jH;

    .line 165
    .line 166
    sget-object p1, Lcom/google/android/gms/internal/ads/UH;->c:Lcom/google/android/gms/internal/ads/UH;

    .line 167
    .line 168
    sget-object p1, Lcom/google/android/gms/internal/ads/jH;->c:Lcom/google/android/gms/internal/ads/jH;

    .line 169
    .line 170
    invoke-static {v4, p1}, Lcom/google/android/gms/internal/ads/lF;->C(Lcom/google/android/gms/internal/ads/XG;Lcom/google/android/gms/internal/ads/jH;)Lcom/google/android/gms/internal/ads/lF;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/lF;->A()I

    .line 175
    .line 176
    .line 177
    move-result v4

    .line 178
    if-nez v4, :cond_2

    .line 179
    .line 180
    new-instance v4, Lcom/google/android/gms/internal/ads/bD;

    .line 181
    .line 182
    invoke-direct {v4, v1}, Lcom/google/android/gms/internal/ads/bD;-><init>(Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/lF;->E()Lcom/google/android/gms/internal/ads/XG;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/XG;->n()I

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/bD;->l(I)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/lF;->D()Lcom/google/android/gms/internal/ads/pF;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/pF;->A()I

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/bD;->n(I)V

    .line 205
    .line 206
    .line 207
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/hF;->a(Lcom/google/android/gms/internal/ads/xG;)Lcom/google/android/gms/internal/ads/QE;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    iput-object v1, v4, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 212
    .line 213
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/bD;->s()Lcom/google/android/gms/internal/ads/RE;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    new-instance v3, Lcom/google/android/gms/internal/ads/bD;

    .line 218
    .line 219
    const/4 v4, 0x3

    .line 220
    invoke-direct {v3, v4, v0}, Lcom/google/android/gms/internal/ads/bD;-><init>(II)V

    .line 221
    .line 222
    .line 223
    iput-object v1, v3, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 224
    .line 225
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/lF;->E()Lcom/google/android/gms/internal/ads/XG;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/XG;->b()[B

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Xu;->k([B)Lcom/google/android/gms/internal/ads/Xu;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    iput-object p1, v3, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 238
    .line 239
    iput-object v2, v3, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 240
    .line 241
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/bD;->r()Lcom/google/android/gms/internal/ads/OE;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    return-object p1

    .line 246
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 247
    .line 248
    invoke-direct {p1, v6}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    throw p1
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/AH; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 252
    :catch_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    .line 253
    .line 254
    const-string v0, "Parsing AesCmacKey failed"

    .line 255
    .line 256
    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    throw p1

    .line 260
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 261
    .line 262
    const-string v0, "Wrong type URL in call to AesCmacProtoSerialization.parseKey"

    .line 263
    .line 264
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    throw p1

    .line 268
    nop

    .line 269
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic g(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/fF;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {p1, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :goto_0
    return-object p1

    .line 18
    :pswitch_0
    if-nez p2, :cond_1

    .line 19
    .line 20
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    invoke-static {p1, p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/MessageDigest;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    :goto_1
    return-object p1

    .line 30
    :pswitch_1
    if-nez p2, :cond_2

    .line 31
    .line 32
    invoke-static {p1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    goto :goto_2

    .line 37
    :cond_2
    invoke-static {p1, p2}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    :goto_2
    return-object p1

    .line 42
    :pswitch_2
    if-nez p2, :cond_3

    .line 43
    .line 44
    invoke-static {p1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    goto :goto_3

    .line 49
    :cond_3
    invoke-static {p1, p2}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyPairGenerator;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    :goto_3
    return-object p1

    .line 54
    :pswitch_3
    if-nez p2, :cond_4

    .line 55
    .line 56
    invoke-static {p1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    goto :goto_4

    .line 61
    :cond_4
    invoke-static {p1, p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    :goto_4
    return-object p1

    .line 66
    :pswitch_4
    if-nez p2, :cond_5

    .line 67
    .line 68
    invoke-static {p1}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    goto :goto_5

    .line 73
    :cond_5
    invoke-static {p1, p2}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyAgreement;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    :goto_5
    return-object p1

    .line 78
    :pswitch_5
    if-nez p2, :cond_6

    .line 79
    .line 80
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    goto :goto_6

    .line 85
    :cond_6
    invoke-static {p1, p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    :goto_6
    return-object p1

    .line 90
    nop

    .line 91
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zza()Ljava/lang/Object;
    .locals 2

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/ads/bD;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/bD;-><init>(Ljava/lang/Object;)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/bD;->l(I)V

    const/16 v1, 0x10

    .line 18
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/bD;->n(I)V

    sget-object v1, Lcom/google/android/gms/internal/ads/QE;->b:Lcom/google/android/gms/internal/ads/QE;

    .line 19
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bD;->s()Lcom/google/android/gms/internal/ads/RE;

    move-result-object v0

    return-object v0
.end method

.method public final zza(Ljava/lang/Object;)V
    .locals 5

    iget v0, p0, Lcom/google/android/gms/internal/ads/fF;->G:I

    packed-switch v0, :pswitch_data_0

    .line 1
    :pswitch_0
    check-cast p1, Lcom/google/android/gms/internal/ads/eL;

    return-void

    .line 2
    :pswitch_1
    check-cast p1, Lcom/google/android/gms/internal/ads/eL;

    return-void

    .line 3
    :pswitch_2
    check-cast p1, Lcom/google/android/gms/internal/ads/eL;

    return-void

    .line 4
    :pswitch_3
    check-cast p1, Lcom/google/android/gms/internal/ads/eL;

    return-void

    .line 5
    :pswitch_4
    check-cast p1, Lcom/google/android/gms/internal/ads/eL;

    return-void

    .line 6
    :pswitch_5
    check-cast p1, Lcom/google/android/gms/internal/ads/eL;

    return-void

    .line 7
    :pswitch_6
    check-cast p1, Lcom/google/android/gms/internal/ads/cL;

    return-void

    .line 8
    :pswitch_7
    check-cast p1, Lcom/google/android/gms/internal/ads/cL;

    .line 9
    new-instance v0, LY/r;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LY/r;-><init>(I)V

    .line 10
    new-instance v2, Lcom/google/android/gms/internal/ads/jK;

    const/4 v3, 0x2

    const/16 v4, 0x3eb

    invoke-direct {v2, v3, v0, v4}, Lcom/google/android/gms/internal/ads/jK;-><init>(ILjava/lang/Throwable;I)V

    .line 11
    check-cast p1, Lcom/google/android/gms/internal/ads/tL;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/jK;->N:Lcom/google/android/gms/internal/ads/wN;

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/tL;->j(Lcom/google/android/gms/internal/ads/wN;)Lcom/google/android/gms/internal/ads/dL;

    move-result-object v0

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/tL;->d()Lcom/google/android/gms/internal/ads/dL;

    move-result-object v0

    .line 15
    :goto_0
    new-instance v3, Lcom/google/android/gms/internal/ads/oL;

    invoke-direct {v3, v1, v0, v2}, Lcom/google/android/gms/internal/ads/oL;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const/16 v1, 0xa

    .line 16
    invoke-virtual {p1, v0, v1, v3}, Lcom/google/android/gms/internal/ads/tL;->i(Lcom/google/android/gms/internal/ads/dL;ILcom/google/android/gms/internal/ads/bo;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
