.class public abstract LA0/Q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[[F


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v1, v0, [F

    .line 3
    .line 4
    fill-array-data v1, :array_0

    .line 5
    .line 6
    .line 7
    new-array v2, v0, [F

    .line 8
    .line 9
    fill-array-data v2, :array_1

    .line 10
    .line 11
    .line 12
    new-array v3, v0, [F

    .line 13
    .line 14
    fill-array-data v3, :array_2

    .line 15
    .line 16
    .line 17
    new-array v4, v0, [F

    .line 18
    .line 19
    fill-array-data v4, :array_3

    .line 20
    .line 21
    .line 22
    new-array v5, v0, [F

    .line 23
    .line 24
    fill-array-data v5, :array_4

    .line 25
    .line 26
    .line 27
    new-array v6, v0, [F

    .line 28
    .line 29
    fill-array-data v6, :array_5

    .line 30
    .line 31
    .line 32
    const/4 v7, 0x6

    .line 33
    new-array v7, v7, [[F

    .line 34
    .line 35
    const/4 v8, 0x0

    .line 36
    aput-object v1, v7, v8

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    aput-object v2, v7, v1

    .line 40
    .line 41
    const/4 v1, 0x2

    .line 42
    aput-object v3, v7, v1

    .line 43
    .line 44
    const/4 v1, 0x3

    .line 45
    aput-object v4, v7, v1

    .line 46
    .line 47
    aput-object v5, v7, v0

    .line 48
    .line 49
    const/4 v0, 0x5

    .line 50
    aput-object v6, v7, v0

    .line 51
    .line 52
    sput-object v7, LA0/Q;->a:[[F

    .line 53
    .line 54
    return-void

    .line 55
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 56
    .line 57
    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static a(Lz4/d0;)Lz4/d0;
    .locals 10

    .line 1
    invoke-virtual {p0}, Lz4/d0;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x1

    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    const-string v1, "A polygon must have at least 3 vertices."

    .line 14
    .line 15
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/H1;->c(Ljava/lang/String;Z)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Lz4/E;

    .line 19
    .line 20
    invoke-direct {v0}, Lz4/E;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p0}, Lz4/E;->k0(Lz4/H;)V

    .line 24
    .line 25
    .line 26
    sget-object p0, LA0/Q;->a:[[F

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    :goto_1
    const/4 v4, 0x6

    .line 30
    if-ge v1, v4, :cond_5

    .line 31
    .line 32
    aget-object v4, p0, v1

    .line 33
    .line 34
    invoke-virtual {v0}, Lz4/E;->m0()Lz4/d0;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    new-instance v5, Lz4/E;

    .line 39
    .line 40
    invoke-direct {v5}, Lz4/E;-><init>()V

    .line 41
    .line 42
    .line 43
    const/4 v6, 0x0

    .line 44
    :goto_2
    invoke-virtual {v0}, Lz4/d0;->size()I

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    if-ge v6, v7, :cond_4

    .line 49
    .line 50
    invoke-virtual {v0, v6}, Lz4/d0;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    check-cast v7, [F

    .line 55
    .line 56
    invoke-virtual {v0}, Lz4/d0;->size()I

    .line 57
    .line 58
    .line 59
    move-result v8

    .line 60
    add-int/2addr v8, v6

    .line 61
    sub-int/2addr v8, v3

    .line 62
    invoke-virtual {v0}, Lz4/d0;->size()I

    .line 63
    .line 64
    .line 65
    move-result v9

    .line 66
    rem-int/2addr v8, v9

    .line 67
    invoke-virtual {v0, v8}, Lz4/d0;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    check-cast v8, [F

    .line 72
    .line 73
    invoke-static {v7, v4}, LA0/Q;->d([F[F)Z

    .line 74
    .line 75
    .line 76
    move-result v9

    .line 77
    if-eqz v9, :cond_2

    .line 78
    .line 79
    invoke-static {v8, v4}, LA0/Q;->d([F[F)Z

    .line 80
    .line 81
    .line 82
    move-result v9

    .line 83
    if-nez v9, :cond_1

    .line 84
    .line 85
    invoke-static {v4, v4, v8, v7}, LA0/Q;->b([F[F[F[F)[F

    .line 86
    .line 87
    .line 88
    move-result-object v8

    .line 89
    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([F[F)Z

    .line 90
    .line 91
    .line 92
    move-result v9

    .line 93
    if-nez v9, :cond_1

    .line 94
    .line 95
    invoke-virtual {v5, v8}, Lz4/E;->i0(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    :cond_1
    invoke-virtual {v5, v7}, Lz4/E;->i0(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_2
    invoke-static {v8, v4}, LA0/Q;->d([F[F)Z

    .line 103
    .line 104
    .line 105
    move-result v9

    .line 106
    if-eqz v9, :cond_3

    .line 107
    .line 108
    invoke-static {v4, v4, v8, v7}, LA0/Q;->b([F[F[F[F)[F

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    invoke-static {v8, v7}, Ljava/util/Arrays;->equals([F[F)Z

    .line 113
    .line 114
    .line 115
    move-result v8

    .line 116
    if-nez v8, :cond_3

    .line 117
    .line 118
    invoke-virtual {v5, v7}, Lz4/E;->i0(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    :cond_3
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 125
    .line 126
    move-object v0, v5

    .line 127
    goto :goto_1

    .line 128
    :cond_5
    invoke-virtual {v0}, Lz4/E;->m0()Lz4/d0;

    .line 129
    .line 130
    .line 131
    move-result-object p0

    .line 132
    return-object p0
.end method

.method public static b([F[F[F[F)[F
    .locals 10

    .line 1
    const/4 v0, 0x2

    .line 2
    array-length v1, p1

    .line 3
    const/4 v2, 0x4

    .line 4
    const/4 v3, 0x0

    .line 5
    const/4 v4, 0x1

    .line 6
    if-ne v1, v2, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    const-string v5, "Expecting 4 plane parameters"

    .line 12
    .line 13
    invoke-static {v5, v1}, Lcom/google/android/gms/internal/measurement/H1;->c(Ljava/lang/String;Z)V

    .line 14
    .line 15
    .line 16
    aget v1, p0, v3

    .line 17
    .line 18
    aget v5, p2, v3

    .line 19
    .line 20
    sub-float/2addr v1, v5

    .line 21
    aget v6, p1, v3

    .line 22
    .line 23
    mul-float v1, v1, v6

    .line 24
    .line 25
    aget v7, p0, v4

    .line 26
    .line 27
    aget v8, p2, v4

    .line 28
    .line 29
    sub-float/2addr v7, v8

    .line 30
    aget v9, p1, v4

    .line 31
    .line 32
    mul-float v7, v7, v9

    .line 33
    .line 34
    add-float/2addr v7, v1

    .line 35
    aget p0, p0, v0

    .line 36
    .line 37
    aget p2, p2, v0

    .line 38
    .line 39
    sub-float/2addr p0, p2

    .line 40
    aget p1, p1, v0

    .line 41
    .line 42
    mul-float p0, p0, p1

    .line 43
    .line 44
    add-float/2addr p0, v7

    .line 45
    aget v1, p3, v3

    .line 46
    .line 47
    sub-float/2addr v1, v5

    .line 48
    mul-float v6, v6, v1

    .line 49
    .line 50
    aget v7, p3, v4

    .line 51
    .line 52
    sub-float/2addr v7, v8

    .line 53
    mul-float v9, v9, v7

    .line 54
    .line 55
    add-float/2addr v9, v6

    .line 56
    aget p3, p3, v0

    .line 57
    .line 58
    sub-float/2addr p3, p2

    .line 59
    mul-float p1, p1, p3

    .line 60
    .line 61
    add-float/2addr p1, v9

    .line 62
    div-float/2addr p0, p1

    .line 63
    mul-float v1, v1, p0

    .line 64
    .line 65
    add-float/2addr v1, v5

    .line 66
    mul-float v7, v7, p0

    .line 67
    .line 68
    add-float/2addr v7, v8

    .line 69
    mul-float p3, p3, p0

    .line 70
    .line 71
    add-float/2addr p3, p2

    .line 72
    new-array p0, v2, [F

    .line 73
    .line 74
    aput v1, p0, v3

    .line 75
    .line 76
    aput v7, p0, v4

    .line 77
    .line 78
    aput p3, p0, v0

    .line 79
    .line 80
    const/high16 p1, 0x3f800000    # 1.0f

    .line 81
    .line 82
    const/4 p2, 0x3

    .line 83
    aput p1, p0, p2

    .line 84
    .line 85
    return-object p0
.end method

.method public static c(IILjava/util/List;)Lp0/F;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-lez p0, :cond_0

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v2, 0x0

    .line 8
    :goto_0
    const-string v3, "inputWidth must be positive"

    .line 9
    .line 10
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/measurement/H1;->c(Ljava/lang/String;Z)V

    .line 11
    .line 12
    .line 13
    if-lez p1, :cond_1

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_1
    const/4 v1, 0x0

    .line 17
    :goto_1
    const-string v2, "inputHeight must be positive"

    .line 18
    .line 19
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/measurement/H1;->c(Ljava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Lp0/F;

    .line 23
    .line 24
    invoke-direct {v1, p0, p1}, Lp0/F;-><init>(II)V

    .line 25
    .line 26
    .line 27
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-ge v0, p0, :cond_2

    .line 32
    .line 33
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, LA0/P;

    .line 38
    .line 39
    iget p1, v1, Lp0/F;->b:I

    .line 40
    .line 41
    iget v1, v1, Lp0/F;->a:I

    .line 42
    .line 43
    invoke-interface {p0, v1, p1}, LA0/P;->d(II)Lp0/F;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    add-int/lit8 v0, v0, 0x1

    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    return-object v1
.end method

.method public static d([F[F)Z
    .locals 5

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x4

    .line 3
    const/4 v2, 0x0

    .line 4
    const/4 v3, 0x1

    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    const-string v1, "Expecting 4 plane parameters"

    .line 11
    .line 12
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/H1;->c(Ljava/lang/String;Z)V

    .line 13
    .line 14
    .line 15
    aget v0, p1, v2

    .line 16
    .line 17
    aget v1, p0, v2

    .line 18
    .line 19
    mul-float v0, v0, v1

    .line 20
    .line 21
    aget v1, p1, v3

    .line 22
    .line 23
    aget v4, p0, v3

    .line 24
    .line 25
    mul-float v1, v1, v4

    .line 26
    .line 27
    add-float/2addr v1, v0

    .line 28
    const/4 v0, 0x2

    .line 29
    aget v4, p1, v0

    .line 30
    .line 31
    aget p0, p0, v0

    .line 32
    .line 33
    mul-float v4, v4, p0

    .line 34
    .line 35
    add-float/2addr v4, v1

    .line 36
    const/4 p0, 0x3

    .line 37
    aget p0, p1, p0

    .line 38
    .line 39
    cmpg-float p0, v4, p0

    .line 40
    .line 41
    if-gtz p0, :cond_1

    .line 42
    .line 43
    const/4 v2, 0x1

    .line 44
    :cond_1
    return v2
.end method

.method public static e([FLz4/H;)Lz4/d0;
    .locals 10

    .line 1
    new-instance v0, Lz4/E;

    .line 2
    .line 3
    invoke-direct {v0}, Lz4/E;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    if-ge v2, v3, :cond_0

    .line 13
    .line 14
    const/4 v3, 0x4

    .line 15
    new-array v3, v3, [F

    .line 16
    .line 17
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    move-object v8, v4

    .line 22
    check-cast v8, [F

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    const/4 v7, 0x0

    .line 26
    const/4 v9, 0x0

    .line 27
    move-object v4, v3

    .line 28
    move-object v6, p0

    .line 29
    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 30
    .line 31
    .line 32
    aget v4, v3, v1

    .line 33
    .line 34
    const/4 v5, 0x3

    .line 35
    aget v6, v3, v5

    .line 36
    .line 37
    div-float/2addr v4, v6

    .line 38
    aput v4, v3, v1

    .line 39
    .line 40
    const/4 v4, 0x1

    .line 41
    aget v7, v3, v4

    .line 42
    .line 43
    div-float/2addr v7, v6

    .line 44
    aput v7, v3, v4

    .line 45
    .line 46
    const/4 v4, 0x2

    .line 47
    aget v7, v3, v4

    .line 48
    .line 49
    div-float/2addr v7, v6

    .line 50
    aput v7, v3, v4

    .line 51
    .line 52
    const/high16 v4, 0x3f800000    # 1.0f

    .line 53
    .line 54
    aput v4, v3, v5

    .line 55
    .line 56
    invoke-virtual {v0, v3}, Lz4/E;->i0(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    add-int/lit8 v2, v2, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {v0}, Lz4/E;->m0()Lz4/d0;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    return-object p0
.end method
