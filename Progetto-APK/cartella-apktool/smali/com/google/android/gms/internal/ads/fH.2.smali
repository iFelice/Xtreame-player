.class public final Lcom/google/android/gms/internal/ads/fH;
.super Lcom/google/android/gms/internal/ads/hH;
.source "SourceFile"


# instance fields
.field public final f:[B

.field public final g:I

.field public h:I


# direct methods
.method public constructor <init>([BI)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    array-length v1, p1

    .line 6
    sub-int v2, v1, p2

    .line 7
    .line 8
    or-int/2addr v2, p2

    .line 9
    if-ltz v2, :cond_0

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fH;->f:[B

    .line 12
    .line 13
    iput v0, p0, Lcom/google/android/gms/internal/ads/fH;->h:I

    .line 14
    .line 15
    iput p2, p0, Lcom/google/android/gms/internal/ads/fH;->g:I

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    const/4 v3, 0x3

    .line 33
    new-array v3, v3, [Ljava/lang/Object;

    .line 34
    .line 35
    aput-object v1, v3, v0

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    aput-object v2, v3, v0

    .line 39
    .line 40
    const/4 v0, 0x2

    .line 41
    aput-object p2, v3, v0

    .line 42
    .line 43
    const-string p2, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d"

    .line 44
    .line 45
    invoke-static {p2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1
.end method


# virtual methods
.method public final P(B)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fH;->f:[B

    .line 3
    .line 4
    iget v2, p0, Lcom/google/android/gms/internal/ads/fH;->h:I

    .line 5
    .line 6
    add-int/lit8 v3, v2, 0x1

    .line 7
    .line 8
    iput v3, p0, Lcom/google/android/gms/internal/ads/fH;->h:I

    .line 9
    .line 10
    aput-byte p1, v1, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    return-void

    .line 13
    :catch_0
    move-exception p1

    .line 14
    new-instance v1, LI0/u;

    .line 15
    .line 16
    iget v2, p0, Lcom/google/android/gms/internal/ads/fH;->h:I

    .line 17
    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    iget v3, p0, Lcom/google/android/gms/internal/ads/fH;->g:I

    .line 23
    .line 24
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    const/4 v5, 0x3

    .line 33
    new-array v5, v5, [Ljava/lang/Object;

    .line 34
    .line 35
    const/4 v6, 0x0

    .line 36
    aput-object v2, v5, v6

    .line 37
    .line 38
    aput-object v3, v5, v0

    .line 39
    .line 40
    const/4 v0, 0x2

    .line 41
    aput-object v4, v5, v0

    .line 42
    .line 43
    const-string v0, "Pos: %d, limit: %d, len: %d"

    .line 44
    .line 45
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const/4 v2, 0x5

    .line 50
    invoke-direct {v1, v0, v2, p1}, LI0/u;-><init>(Ljava/lang/String;ILjava/lang/IndexOutOfBoundsException;)V

    .line 51
    .line 52
    .line 53
    throw v1
.end method

.method public final Q(IZ)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/fH;->c0(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/fH;->P(B)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final R(ILcom/google/android/gms/internal/ads/XG;)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    or-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/fH;->c0(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/XG;->n()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/fH;->c0(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2, p0}, Lcom/google/android/gms/internal/ads/XG;->u(LS3/e;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final S(II)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    or-int/lit8 p1, p1, 0x5

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/fH;->c0(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/fH;->T(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final T(I)V
    .locals 8

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x1

    .line 4
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/fH;->f:[B

    .line 5
    .line 6
    iget v4, p0, Lcom/google/android/gms/internal/ads/fH;->h:I

    .line 7
    .line 8
    add-int/lit8 v5, v4, 0x1

    .line 9
    .line 10
    and-int/lit16 v6, p1, 0xff

    .line 11
    .line 12
    int-to-byte v6, v6

    .line 13
    aput-byte v6, v3, v4

    .line 14
    .line 15
    add-int/lit8 v6, v4, 0x2

    .line 16
    .line 17
    shr-int/lit8 v7, p1, 0x8

    .line 18
    .line 19
    and-int/lit16 v7, v7, 0xff

    .line 20
    .line 21
    int-to-byte v7, v7

    .line 22
    aput-byte v7, v3, v5

    .line 23
    .line 24
    add-int/lit8 v5, v4, 0x3

    .line 25
    .line 26
    shr-int/lit8 v7, p1, 0x10

    .line 27
    .line 28
    and-int/lit16 v7, v7, 0xff

    .line 29
    .line 30
    int-to-byte v7, v7

    .line 31
    aput-byte v7, v3, v6

    .line 32
    .line 33
    add-int/lit8 v4, v4, 0x4

    .line 34
    .line 35
    iput v4, p0, Lcom/google/android/gms/internal/ads/fH;->h:I

    .line 36
    .line 37
    shr-int/lit8 p1, p1, 0x18

    .line 38
    .line 39
    and-int/lit16 p1, p1, 0xff

    .line 40
    .line 41
    int-to-byte p1, p1

    .line 42
    aput-byte p1, v3, v5
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    return-void

    .line 45
    :catch_0
    move-exception p1

    .line 46
    new-instance v3, LI0/u;

    .line 47
    .line 48
    iget v4, p0, Lcom/google/android/gms/internal/ads/fH;->h:I

    .line 49
    .line 50
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    iget v5, p0, Lcom/google/android/gms/internal/ads/fH;->g:I

    .line 55
    .line 56
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    new-array v0, v0, [Ljava/lang/Object;

    .line 65
    .line 66
    const/4 v7, 0x0

    .line 67
    aput-object v4, v0, v7

    .line 68
    .line 69
    aput-object v5, v0, v2

    .line 70
    .line 71
    aput-object v6, v0, v1

    .line 72
    .line 73
    const-string v1, "Pos: %d, limit: %d, len: %d"

    .line 74
    .line 75
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    const/4 v1, 0x5

    .line 80
    invoke-direct {v3, v0, v1, p1}, LI0/u;-><init>(Ljava/lang/String;ILjava/lang/IndexOutOfBoundsException;)V

    .line 81
    .line 82
    .line 83
    throw v3
.end method

.method public final U(IJ)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    or-int/lit8 p1, p1, 0x1

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/fH;->c0(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ads/fH;->V(J)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final V(J)V
    .locals 11

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x2

    .line 4
    const/4 v3, 0x1

    .line 5
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/fH;->f:[B

    .line 6
    .line 7
    iget v5, p0, Lcom/google/android/gms/internal/ads/fH;->h:I

    .line 8
    .line 9
    add-int/lit8 v6, v5, 0x1

    .line 10
    .line 11
    long-to-int v7, p1

    .line 12
    and-int/lit16 v7, v7, 0xff

    .line 13
    .line 14
    int-to-byte v7, v7

    .line 15
    aput-byte v7, v4, v5

    .line 16
    .line 17
    add-int/lit8 v7, v5, 0x2

    .line 18
    .line 19
    const/16 v8, 0x8

    .line 20
    .line 21
    shr-long v9, p1, v8

    .line 22
    .line 23
    long-to-int v10, v9

    .line 24
    and-int/lit16 v9, v10, 0xff

    .line 25
    .line 26
    int-to-byte v9, v9

    .line 27
    aput-byte v9, v4, v6

    .line 28
    .line 29
    add-int/lit8 v6, v5, 0x3

    .line 30
    .line 31
    const/16 v9, 0x10

    .line 32
    .line 33
    shr-long v9, p1, v9

    .line 34
    .line 35
    long-to-int v10, v9

    .line 36
    and-int/lit16 v9, v10, 0xff

    .line 37
    .line 38
    int-to-byte v9, v9

    .line 39
    aput-byte v9, v4, v7

    .line 40
    .line 41
    add-int/lit8 v7, v5, 0x4

    .line 42
    .line 43
    const/16 v9, 0x18

    .line 44
    .line 45
    shr-long v9, p1, v9

    .line 46
    .line 47
    long-to-int v10, v9

    .line 48
    and-int/lit16 v9, v10, 0xff

    .line 49
    .line 50
    int-to-byte v9, v9

    .line 51
    aput-byte v9, v4, v6

    .line 52
    .line 53
    add-int/lit8 v6, v5, 0x5

    .line 54
    .line 55
    const/16 v9, 0x20

    .line 56
    .line 57
    shr-long v9, p1, v9

    .line 58
    .line 59
    long-to-int v10, v9

    .line 60
    and-int/lit16 v9, v10, 0xff

    .line 61
    .line 62
    int-to-byte v9, v9

    .line 63
    aput-byte v9, v4, v7

    .line 64
    .line 65
    add-int/lit8 v7, v5, 0x6

    .line 66
    .line 67
    const/16 v9, 0x28

    .line 68
    .line 69
    shr-long v9, p1, v9

    .line 70
    .line 71
    long-to-int v10, v9

    .line 72
    and-int/lit16 v9, v10, 0xff

    .line 73
    .line 74
    int-to-byte v9, v9

    .line 75
    aput-byte v9, v4, v6

    .line 76
    .line 77
    add-int/lit8 v6, v5, 0x7

    .line 78
    .line 79
    const/16 v9, 0x30

    .line 80
    .line 81
    shr-long v9, p1, v9

    .line 82
    .line 83
    long-to-int v10, v9

    .line 84
    and-int/lit16 v9, v10, 0xff

    .line 85
    .line 86
    int-to-byte v9, v9

    .line 87
    aput-byte v9, v4, v7

    .line 88
    .line 89
    add-int/2addr v5, v8

    .line 90
    iput v5, p0, Lcom/google/android/gms/internal/ads/fH;->h:I

    .line 91
    .line 92
    const/16 v5, 0x38

    .line 93
    .line 94
    shr-long/2addr p1, v5

    .line 95
    long-to-int p2, p1

    .line 96
    and-int/lit16 p1, p2, 0xff

    .line 97
    .line 98
    int-to-byte p1, p1

    .line 99
    aput-byte p1, v4, v6
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .line 101
    return-void

    .line 102
    :catch_0
    move-exception p1

    .line 103
    new-instance p2, LI0/u;

    .line 104
    .line 105
    iget v4, p0, Lcom/google/android/gms/internal/ads/fH;->h:I

    .line 106
    .line 107
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    iget v5, p0, Lcom/google/android/gms/internal/ads/fH;->g:I

    .line 112
    .line 113
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    new-array v1, v1, [Ljava/lang/Object;

    .line 122
    .line 123
    const/4 v7, 0x0

    .line 124
    aput-object v4, v1, v7

    .line 125
    .line 126
    aput-object v5, v1, v3

    .line 127
    .line 128
    aput-object v6, v1, v2

    .line 129
    .line 130
    const-string v2, "Pos: %d, limit: %d, len: %d"

    .line 131
    .line 132
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-direct {p2, v1, v0, p1}, LI0/u;-><init>(Ljava/lang/String;ILjava/lang/IndexOutOfBoundsException;)V

    .line 137
    .line 138
    .line 139
    throw p2
.end method

.method public final W(II)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/fH;->c0(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/fH;->X(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final X(I)V
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/fH;->c0(I)V

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    int-to-long v0, p1

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/fH;->e0(J)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final Y(ILcom/google/android/gms/internal/ads/NH;Lcom/google/android/gms/internal/ads/bI;)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    or-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/fH;->c0(I)V

    .line 6
    .line 7
    .line 8
    move-object p1, p2

    .line 9
    check-cast p1, Lcom/google/android/gms/internal/ads/PG;

    .line 10
    .line 11
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/PG;->a(Lcom/google/android/gms/internal/ads/bI;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/fH;->c0(I)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/hH;->c:Lcom/google/android/gms/internal/ads/iH;

    .line 19
    .line 20
    invoke-interface {p3, p2, p1}, Lcom/google/android/gms/internal/ads/bI;->b(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/iH;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final Z(ILjava/lang/String;)V
    .locals 4

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    or-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/fH;->c0(I)V

    .line 6
    .line 7
    .line 8
    iget p1, p0, Lcom/google/android/gms/internal/ads/fH;->h:I

    .line 9
    .line 10
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    mul-int/lit8 v0, v0, 0x3

    .line 15
    .line 16
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/hH;->M(I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/hH;->M(I)I

    .line 25
    .line 26
    .line 27
    move-result v1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/oI; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    iget v2, p0, Lcom/google/android/gms/internal/ads/fH;->g:I

    .line 29
    .line 30
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/fH;->f:[B

    .line 31
    .line 32
    if-ne v1, v0, :cond_0

    .line 33
    .line 34
    add-int v0, p1, v1

    .line 35
    .line 36
    :try_start_1
    iput v0, p0, Lcom/google/android/gms/internal/ads/fH;->h:I

    .line 37
    .line 38
    sub-int/2addr v2, v0

    .line 39
    invoke-static {p2, v3, v0, v2}, Lcom/google/android/gms/internal/ads/pI;->b(Ljava/lang/String;[BII)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iput p1, p0, Lcom/google/android/gms/internal/ads/fH;->h:I

    .line 44
    .line 45
    sub-int v2, v0, p1

    .line 46
    .line 47
    sub-int/2addr v2, v1

    .line 48
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/fH;->c0(I)V

    .line 49
    .line 50
    .line 51
    iput v0, p0, Lcom/google/android/gms/internal/ads/fH;->h:I

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :catch_0
    move-exception p1

    .line 55
    goto :goto_0

    .line 56
    :catch_1
    move-exception v0

    .line 57
    goto :goto_1

    .line 58
    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/pI;->c(Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/fH;->c0(I)V

    .line 63
    .line 64
    .line 65
    iget v0, p0, Lcom/google/android/gms/internal/ads/fH;->h:I

    .line 66
    .line 67
    sub-int/2addr v2, v0

    .line 68
    invoke-static {p2, v3, v0, v2}, Lcom/google/android/gms/internal/ads/pI;->b(Ljava/lang/String;[BII)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    iput v0, p0, Lcom/google/android/gms/internal/ads/fH;->h:I
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/oI; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :goto_0
    new-instance p2, LI0/u;

    .line 76
    .line 77
    invoke-direct {p2, p1}, LI0/u;-><init>(Ljava/lang/IndexOutOfBoundsException;)V

    .line 78
    .line 79
    .line 80
    throw p2

    .line 81
    :goto_1
    iput p1, p0, Lcom/google/android/gms/internal/ads/fH;->h:I

    .line 82
    .line 83
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/ads/hH;->O(Ljava/lang/String;Lcom/google/android/gms/internal/ads/oI;)V

    .line 84
    .line 85
    .line 86
    :goto_2
    return-void
.end method

.method public final a0(II)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    or-int/2addr p1, p2

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/fH;->c0(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final b0(II)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/fH;->c0(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/fH;->c0(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final c0(I)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    :goto_0
    and-int/lit8 v1, p1, -0x80

    .line 3
    .line 4
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/fH;->f:[B

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/fH;->h:I

    .line 9
    .line 10
    add-int/lit8 v3, v1, 0x1

    .line 11
    .line 12
    iput v3, p0, Lcom/google/android/gms/internal/ads/fH;->h:I

    .line 13
    .line 14
    int-to-byte p1, p1

    .line 15
    aput-byte p1, v2, v1

    .line 16
    .line 17
    return-void

    .line 18
    :catch_0
    move-exception p1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/fH;->h:I

    .line 21
    .line 22
    add-int/lit8 v3, v1, 0x1

    .line 23
    .line 24
    iput v3, p0, Lcom/google/android/gms/internal/ads/fH;->h:I

    .line 25
    .line 26
    or-int/lit16 v3, p1, 0x80

    .line 27
    .line 28
    and-int/lit16 v3, v3, 0xff

    .line 29
    .line 30
    int-to-byte v3, v3

    .line 31
    aput-byte v3, v2, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    ushr-int/lit8 p1, p1, 0x7

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :goto_1
    new-instance v1, LI0/u;

    .line 37
    .line 38
    iget v2, p0, Lcom/google/android/gms/internal/ads/fH;->h:I

    .line 39
    .line 40
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    iget v3, p0, Lcom/google/android/gms/internal/ads/fH;->g:I

    .line 45
    .line 46
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    const/4 v5, 0x3

    .line 55
    new-array v5, v5, [Ljava/lang/Object;

    .line 56
    .line 57
    const/4 v6, 0x0

    .line 58
    aput-object v2, v5, v6

    .line 59
    .line 60
    aput-object v3, v5, v0

    .line 61
    .line 62
    const/4 v0, 0x2

    .line 63
    aput-object v4, v5, v0

    .line 64
    .line 65
    const-string v0, "Pos: %d, limit: %d, len: %d"

    .line 66
    .line 67
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const/4 v2, 0x5

    .line 72
    invoke-direct {v1, v0, v2, p1}, LI0/u;-><init>(Ljava/lang/String;ILjava/lang/IndexOutOfBoundsException;)V

    .line 73
    .line 74
    .line 75
    throw v1
.end method

.method public final d0(IJ)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/fH;->c0(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ads/fH;->e0(J)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final e0(J)V
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    sget-boolean v1, Lcom/google/android/gms/internal/ads/hH;->e:Z

    .line 3
    .line 4
    const/4 v2, 0x7

    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-wide/16 v5, -0x80

    .line 8
    .line 9
    iget v7, p0, Lcom/google/android/gms/internal/ads/fH;->g:I

    .line 10
    .line 11
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/fH;->f:[B

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget v1, p0, Lcom/google/android/gms/internal/ads/fH;->h:I

    .line 16
    .line 17
    sub-int v1, v7, v1

    .line 18
    .line 19
    const/16 v9, 0xa

    .line 20
    .line 21
    if-lt v1, v9, :cond_1

    .line 22
    .line 23
    :goto_0
    and-long v9, p1, v5

    .line 24
    .line 25
    cmp-long v1, v9, v3

    .line 26
    .line 27
    long-to-int v7, p1

    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    iget p1, p0, Lcom/google/android/gms/internal/ads/fH;->h:I

    .line 31
    .line 32
    add-int/2addr v0, p1

    .line 33
    iput v0, p0, Lcom/google/android/gms/internal/ads/fH;->h:I

    .line 34
    .line 35
    int-to-long p1, p1

    .line 36
    int-to-byte v0, v7

    .line 37
    invoke-static {v8, p1, p2, v0}, Lcom/google/android/gms/internal/ads/nI;->n([BJB)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/fH;->h:I

    .line 42
    .line 43
    add-int/lit8 v9, v1, 0x1

    .line 44
    .line 45
    iput v9, p0, Lcom/google/android/gms/internal/ads/fH;->h:I

    .line 46
    .line 47
    int-to-long v9, v1

    .line 48
    or-int/lit16 v1, v7, 0x80

    .line 49
    .line 50
    and-int/lit16 v1, v1, 0xff

    .line 51
    .line 52
    int-to-byte v1, v1

    .line 53
    invoke-static {v8, v9, v10, v1}, Lcom/google/android/gms/internal/ads/nI;->n([BJB)V

    .line 54
    .line 55
    .line 56
    ushr-long/2addr p1, v2

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    :goto_1
    and-long v9, p1, v5

    .line 59
    .line 60
    cmp-long v1, v9, v3

    .line 61
    .line 62
    if-nez v1, :cond_2

    .line 63
    .line 64
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/fH;->h:I

    .line 65
    .line 66
    add-int/lit8 v2, v1, 0x1

    .line 67
    .line 68
    iput v2, p0, Lcom/google/android/gms/internal/ads/fH;->h:I

    .line 69
    .line 70
    long-to-int p2, p1

    .line 71
    int-to-byte p1, p2

    .line 72
    aput-byte p1, v8, v1

    .line 73
    .line 74
    return-void

    .line 75
    :catch_0
    move-exception p1

    .line 76
    goto :goto_2

    .line 77
    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/ads/fH;->h:I

    .line 78
    .line 79
    add-int/lit8 v9, v1, 0x1

    .line 80
    .line 81
    iput v9, p0, Lcom/google/android/gms/internal/ads/fH;->h:I

    .line 82
    .line 83
    long-to-int v9, p1

    .line 84
    or-int/lit16 v9, v9, 0x80

    .line 85
    .line 86
    and-int/lit16 v9, v9, 0xff

    .line 87
    .line 88
    int-to-byte v9, v9

    .line 89
    aput-byte v9, v8, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .line 91
    ushr-long/2addr p1, v2

    .line 92
    goto :goto_1

    .line 93
    :goto_2
    new-instance p2, LI0/u;

    .line 94
    .line 95
    iget v1, p0, Lcom/google/android/gms/internal/ads/fH;->h:I

    .line 96
    .line 97
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    const/4 v4, 0x3

    .line 110
    new-array v4, v4, [Ljava/lang/Object;

    .line 111
    .line 112
    const/4 v5, 0x0

    .line 113
    aput-object v1, v4, v5

    .line 114
    .line 115
    aput-object v2, v4, v0

    .line 116
    .line 117
    const/4 v0, 0x2

    .line 118
    aput-object v3, v4, v0

    .line 119
    .line 120
    const-string v0, "Pos: %d, limit: %d, len: %d"

    .line 121
    .line 122
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    const/4 v1, 0x5

    .line 127
    invoke-direct {p2, v0, v1, p1}, LI0/u;-><init>(Ljava/lang/String;ILjava/lang/IndexOutOfBoundsException;)V

    .line 128
    .line 129
    .line 130
    throw p2
.end method

.method public final g0()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/fH;->g:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/fH;->h:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final u(I[BI)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fH;->f:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/ads/fH;->h:I

    .line 4
    .line 5
    invoke-static {p2, p1, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    .line 7
    .line 8
    iget p1, p0, Lcom/google/android/gms/internal/ads/fH;->h:I

    .line 9
    .line 10
    add-int/2addr p1, p3

    .line 11
    iput p1, p0, Lcom/google/android/gms/internal/ads/fH;->h:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    return-void

    .line 14
    :catch_0
    move-exception p1

    .line 15
    new-instance p2, LI0/u;

    .line 16
    .line 17
    iget v0, p0, Lcom/google/android/gms/internal/ads/fH;->h:I

    .line 18
    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget v1, p0, Lcom/google/android/gms/internal/ads/fH;->g:I

    .line 24
    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    const/4 v2, 0x3

    .line 34
    new-array v2, v2, [Ljava/lang/Object;

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    aput-object v0, v2, v3

    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    aput-object v1, v2, v0

    .line 41
    .line 42
    const/4 v0, 0x2

    .line 43
    aput-object p3, v2, v0

    .line 44
    .line 45
    const-string p3, "Pos: %d, limit: %d, len: %d"

    .line 46
    .line 47
    invoke-static {p3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p3

    .line 51
    const/4 v0, 0x5

    .line 52
    invoke-direct {p2, p3, v0, p1}, LI0/u;-><init>(Ljava/lang/String;ILjava/lang/IndexOutOfBoundsException;)V

    .line 53
    .line 54
    .line 55
    throw p2
.end method
