.class public final Lcom/google/android/gms/internal/measurement/k2;
.super LT/b;
.source "SourceFile"


# static fields
.field public static final L:Ljava/util/logging/Logger;

.field public static final M:Z


# instance fields
.field public H:Lcom/google/android/gms/internal/measurement/l2;

.field public final I:[B

.field public final J:I

.field public K:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/gms/internal/measurement/k2;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/google/android/gms/internal/measurement/k2;->L:Ljava/util/logging/Logger;

    .line 12
    .line 13
    sget-boolean v0, Lcom/google/android/gms/internal/measurement/g3;->e:Z

    .line 14
    .line 15
    sput-boolean v0, Lcom/google/android/gms/internal/measurement/k2;->M:Z

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>([BI)V
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-direct {p0, v0}, LT/b;-><init>(I)V

    .line 3
    .line 4
    .line 5
    array-length v0, p1

    .line 6
    sub-int v1, v0, p2

    .line 7
    .line 8
    or-int/2addr v1, p2

    .line 9
    if-ltz v1, :cond_0

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/k2;->I:[B

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/measurement/k2;->K:I

    .line 15
    .line 16
    iput p2, p0, Lcom/google/android/gms/internal/measurement/k2;->J:I

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 22
    .line 23
    const-string v1, "Array range is invalid. Buffer.length="

    .line 24
    .line 25
    const-string v2, ", offset=0, length="

    .line 26
    .line 27
    invoke-static {v1, v0, v2, p2}, Lcom/google/protobuf/U2;->j(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p1
.end method

.method public static D(ILcom/google/android/gms/internal/measurement/P2;Lcom/google/android/gms/internal/measurement/Y2;)I
    .locals 0

    .line 1
    shl-int/lit8 p0, p0, 0x3

    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    add-int/2addr p0, p0

    .line 8
    check-cast p1, Lcom/google/android/gms/internal/measurement/c2;

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/c2;->a(Lcom/google/android/gms/internal/measurement/Y2;)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    add-int/2addr p1, p0

    .line 15
    return p1
.end method

.method public static E(Lcom/google/android/gms/internal/measurement/P2;Lcom/google/android/gms/internal/measurement/Y2;)I
    .locals 0

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/measurement/c2;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/c2;->a(Lcom/google/android/gms/internal/measurement/Y2;)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    add-int/2addr p1, p0

    .line 12
    return p1
.end method

.method public static F(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/i3;->c(Ljava/lang/String;)I

    .line 2
    .line 3
    .line 4
    move-result p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/h3; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    goto :goto_0

    .line 6
    :catch_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/z2;->a:Ljava/nio/charset/Charset;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    array-length p0, p0

    .line 13
    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    add-int/2addr v0, p0

    .line 18
    return v0
.end method

.method public static G(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    mul-int/lit8 p0, p0, 0x9

    .line 6
    .line 7
    rsub-int p0, p0, 0x160

    .line 8
    .line 9
    ushr-int/lit8 p0, p0, 0x6

    .line 10
    .line 11
    return p0
.end method

.method public static o(J)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    mul-int/lit8 p0, p0, 0x9

    .line 6
    .line 7
    rsub-int p0, p0, 0x280

    .line 8
    .line 9
    ushr-int/lit8 p0, p0, 0x6

    .line 10
    .line 11
    return p0
.end method


# virtual methods
.method public final A(I)V
    .locals 9

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/k2;->K:I

    .line 2
    .line 3
    :goto_0
    and-int/lit8 v1, p1, -0x80

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/k2;->I:[B

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    add-int/lit8 v1, v0, 0x1

    .line 10
    .line 11
    int-to-byte p1, p1

    .line 12
    :try_start_0
    aput-byte p1, v2, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    iput v1, p0, Lcom/google/android/gms/internal/measurement/k2;->K:I

    .line 15
    .line 16
    return-void

    .line 17
    :catch_0
    move-exception p1

    .line 18
    move-object v8, p1

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    add-int/lit8 v1, v0, 0x1

    .line 21
    .line 22
    or-int/lit16 v3, p1, 0x80

    .line 23
    .line 24
    int-to-byte v3, v3

    .line 25
    :try_start_1
    aput-byte v3, v2, v0
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 26
    .line 27
    ushr-int/lit8 p1, p1, 0x7

    .line 28
    .line 29
    move v0, v1

    .line 30
    goto :goto_0

    .line 31
    :goto_1
    new-instance p1, LI0/u;

    .line 32
    .line 33
    int-to-long v3, v1

    .line 34
    iget v0, p0, Lcom/google/android/gms/internal/measurement/k2;->J:I

    .line 35
    .line 36
    int-to-long v5, v0

    .line 37
    const/4 v7, 0x1

    .line 38
    move-object v2, p1

    .line 39
    invoke-direct/range {v2 .. v8}, LI0/u;-><init>(JJILjava/lang/IndexOutOfBoundsException;)V

    .line 40
    .line 41
    .line 42
    throw p1
.end method

.method public final B(IJ)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/k2;->A(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/k2;->C(J)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final C(J)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget v0, v1, Lcom/google/android/gms/internal/measurement/k2;->K:I

    .line 4
    .line 5
    sget-boolean v2, Lcom/google/android/gms/internal/measurement/k2;->M:Z

    .line 6
    .line 7
    const/4 v3, 0x7

    .line 8
    const-wide/16 v4, 0x0

    .line 9
    .line 10
    const-wide/16 v6, -0x80

    .line 11
    .line 12
    iget v8, v1, Lcom/google/android/gms/internal/measurement/k2;->J:I

    .line 13
    .line 14
    iget-object v9, v1, Lcom/google/android/gms/internal/measurement/k2;->I:[B

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    sub-int v2, v8, v0

    .line 19
    .line 20
    const/16 v10, 0xa

    .line 21
    .line 22
    if-lt v2, v10, :cond_1

    .line 23
    .line 24
    move-wide/from16 v10, p1

    .line 25
    .line 26
    :goto_0
    and-long v12, v10, v6

    .line 27
    .line 28
    cmp-long v2, v12, v4

    .line 29
    .line 30
    if-nez v2, :cond_0

    .line 31
    .line 32
    add-int/lit8 v2, v0, 0x1

    .line 33
    .line 34
    int-to-long v3, v0

    .line 35
    long-to-int v0, v10

    .line 36
    int-to-byte v0, v0

    .line 37
    sget-wide v5, Lcom/google/android/gms/internal/measurement/g3;->f:J

    .line 38
    .line 39
    add-long/2addr v5, v3

    .line 40
    sget-object v3, Lcom/google/android/gms/internal/measurement/g3;->c:Lcom/google/android/gms/internal/measurement/f3;

    .line 41
    .line 42
    invoke-virtual {v3, v9, v5, v6, v0}, Lcom/google/android/gms/internal/measurement/f3;->d(Ljava/lang/Object;JB)V

    .line 43
    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_0
    add-int/lit8 v2, v0, 0x1

    .line 47
    .line 48
    int-to-long v12, v0

    .line 49
    long-to-int v0, v10

    .line 50
    or-int/lit16 v0, v0, 0x80

    .line 51
    .line 52
    int-to-byte v0, v0

    .line 53
    sget-wide v14, Lcom/google/android/gms/internal/measurement/g3;->f:J

    .line 54
    .line 55
    add-long/2addr v14, v12

    .line 56
    sget-object v8, Lcom/google/android/gms/internal/measurement/g3;->c:Lcom/google/android/gms/internal/measurement/f3;

    .line 57
    .line 58
    invoke-virtual {v8, v9, v14, v15, v0}, Lcom/google/android/gms/internal/measurement/f3;->d(Ljava/lang/Object;JB)V

    .line 59
    .line 60
    .line 61
    ushr-long/2addr v10, v3

    .line 62
    move v0, v2

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    move-wide/from16 v10, p1

    .line 65
    .line 66
    :goto_1
    and-long v12, v10, v6

    .line 67
    .line 68
    cmp-long v2, v12, v4

    .line 69
    .line 70
    if-nez v2, :cond_2

    .line 71
    .line 72
    add-int/lit8 v2, v0, 0x1

    .line 73
    .line 74
    long-to-int v3, v10

    .line 75
    int-to-byte v3, v3

    .line 76
    :try_start_0
    aput-byte v3, v9, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    :goto_2
    iput v2, v1, Lcom/google/android/gms/internal/measurement/k2;->K:I

    .line 79
    .line 80
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    move-object v15, v0

    .line 83
    goto :goto_3

    .line 84
    :cond_2
    add-int/lit8 v2, v0, 0x1

    .line 85
    .line 86
    long-to-int v12, v10

    .line 87
    or-int/lit16 v12, v12, 0x80

    .line 88
    .line 89
    int-to-byte v12, v12

    .line 90
    :try_start_1
    aput-byte v12, v9, v0
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 91
    .line 92
    ushr-long/2addr v10, v3

    .line 93
    move v0, v2

    .line 94
    goto :goto_1

    .line 95
    :goto_3
    new-instance v0, LI0/u;

    .line 96
    .line 97
    int-to-long v10, v2

    .line 98
    int-to-long v12, v8

    .line 99
    const/4 v14, 0x1

    .line 100
    move-object v9, v0

    .line 101
    invoke-direct/range {v9 .. v15}, LI0/u;-><init>(JJILjava/lang/IndexOutOfBoundsException;)V

    .line 102
    .line 103
    .line 104
    throw v0
.end method

.method public final p([BI)V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/k2;->I:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/measurement/k2;->K:I

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-static {p1, v2, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    iget p1, p0, Lcom/google/android/gms/internal/measurement/k2;->K:I

    .line 10
    .line 11
    add-int/2addr p1, p2

    .line 12
    iput p1, p0, Lcom/google/android/gms/internal/measurement/k2;->K:I

    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    move-exception p1

    .line 16
    move-object v6, p1

    .line 17
    new-instance p1, LI0/u;

    .line 18
    .line 19
    iget v0, p0, Lcom/google/android/gms/internal/measurement/k2;->K:I

    .line 20
    .line 21
    int-to-long v1, v0

    .line 22
    iget v0, p0, Lcom/google/android/gms/internal/measurement/k2;->J:I

    .line 23
    .line 24
    int-to-long v3, v0

    .line 25
    move-object v0, p1

    .line 26
    move v5, p2

    .line 27
    invoke-direct/range {v0 .. v6}, LI0/u;-><init>(JJILjava/lang/IndexOutOfBoundsException;)V

    .line 28
    .line 29
    .line 30
    throw p1
.end method

.method public final q(ILcom/google/android/gms/internal/measurement/i2;)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    or-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/k2;->A(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/i2;->n()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/k2;->A(I)V

    .line 13
    .line 14
    .line 15
    check-cast p2, Lcom/google/android/gms/internal/measurement/j2;

    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/google/android/gms/internal/measurement/j2;->n()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/j2;->I:[B

    .line 22
    .line 23
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/measurement/k2;->p([BI)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final r(II)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    or-int/lit8 p1, p1, 0x5

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/k2;->A(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/k2;->s(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final s(I)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/k2;->K:I

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/k2;->I:[B

    .line 4
    .line 5
    int-to-byte v2, p1

    .line 6
    aput-byte v2, v1, v0

    .line 7
    .line 8
    add-int/lit8 v2, v0, 0x1

    .line 9
    .line 10
    shr-int/lit8 v3, p1, 0x8

    .line 11
    .line 12
    int-to-byte v3, v3

    .line 13
    aput-byte v3, v1, v2

    .line 14
    .line 15
    add-int/lit8 v2, v0, 0x2

    .line 16
    .line 17
    shr-int/lit8 v3, p1, 0x10

    .line 18
    .line 19
    int-to-byte v3, v3

    .line 20
    aput-byte v3, v1, v2

    .line 21
    .line 22
    add-int/lit8 v2, v0, 0x3

    .line 23
    .line 24
    shr-int/lit8 p1, p1, 0x18

    .line 25
    .line 26
    int-to-byte p1, p1

    .line 27
    aput-byte p1, v1, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    add-int/lit8 v0, v0, 0x4

    .line 30
    .line 31
    iput v0, p0, Lcom/google/android/gms/internal/measurement/k2;->K:I

    .line 32
    .line 33
    return-void

    .line 34
    :catch_0
    move-exception p1

    .line 35
    move-object v7, p1

    .line 36
    int-to-long v2, v0

    .line 37
    new-instance p1, LI0/u;

    .line 38
    .line 39
    iget v0, p0, Lcom/google/android/gms/internal/measurement/k2;->J:I

    .line 40
    .line 41
    int-to-long v4, v0

    .line 42
    const/4 v6, 0x4

    .line 43
    move-object v1, p1

    .line 44
    invoke-direct/range {v1 .. v7}, LI0/u;-><init>(JJILjava/lang/IndexOutOfBoundsException;)V

    .line 45
    .line 46
    .line 47
    throw p1
.end method

.method public final t(IJ)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    or-int/lit8 p1, p1, 0x1

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/k2;->A(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/measurement/k2;->u(J)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final u(J)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/measurement/k2;->K:I

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/k2;->I:[B

    .line 4
    .line 5
    long-to-int v2, p1

    .line 6
    int-to-byte v2, v2

    .line 7
    aput-byte v2, v1, v0

    .line 8
    .line 9
    add-int/lit8 v2, v0, 0x1

    .line 10
    .line 11
    const/16 v3, 0x8

    .line 12
    .line 13
    shr-long v4, p1, v3

    .line 14
    .line 15
    long-to-int v5, v4

    .line 16
    int-to-byte v4, v5

    .line 17
    aput-byte v4, v1, v2

    .line 18
    .line 19
    add-int/lit8 v2, v0, 0x2

    .line 20
    .line 21
    const/16 v4, 0x10

    .line 22
    .line 23
    shr-long v4, p1, v4

    .line 24
    .line 25
    long-to-int v5, v4

    .line 26
    int-to-byte v4, v5

    .line 27
    aput-byte v4, v1, v2

    .line 28
    .line 29
    add-int/lit8 v2, v0, 0x3

    .line 30
    .line 31
    const/16 v4, 0x18

    .line 32
    .line 33
    shr-long v4, p1, v4

    .line 34
    .line 35
    long-to-int v5, v4

    .line 36
    int-to-byte v4, v5

    .line 37
    aput-byte v4, v1, v2

    .line 38
    .line 39
    add-int/lit8 v2, v0, 0x4

    .line 40
    .line 41
    const/16 v4, 0x20

    .line 42
    .line 43
    shr-long v4, p1, v4

    .line 44
    .line 45
    long-to-int v5, v4

    .line 46
    int-to-byte v4, v5

    .line 47
    aput-byte v4, v1, v2

    .line 48
    .line 49
    add-int/lit8 v2, v0, 0x5

    .line 50
    .line 51
    const/16 v4, 0x28

    .line 52
    .line 53
    shr-long v4, p1, v4

    .line 54
    .line 55
    long-to-int v5, v4

    .line 56
    int-to-byte v4, v5

    .line 57
    aput-byte v4, v1, v2

    .line 58
    .line 59
    add-int/lit8 v2, v0, 0x6

    .line 60
    .line 61
    const/16 v4, 0x30

    .line 62
    .line 63
    shr-long v4, p1, v4

    .line 64
    .line 65
    long-to-int v5, v4

    .line 66
    int-to-byte v4, v5

    .line 67
    aput-byte v4, v1, v2

    .line 68
    .line 69
    add-int/lit8 v2, v0, 0x7

    .line 70
    .line 71
    const/16 v4, 0x38

    .line 72
    .line 73
    shr-long/2addr p1, v4

    .line 74
    long-to-int p2, p1

    .line 75
    int-to-byte p1, p2

    .line 76
    aput-byte p1, v1, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    add-int/2addr v0, v3

    .line 79
    iput v0, p0, Lcom/google/android/gms/internal/measurement/k2;->K:I

    .line 80
    .line 81
    return-void

    .line 82
    :catch_0
    move-exception p1

    .line 83
    move-object v7, p1

    .line 84
    int-to-long v2, v0

    .line 85
    new-instance p1, LI0/u;

    .line 86
    .line 87
    iget p2, p0, Lcom/google/android/gms/internal/measurement/k2;->J:I

    .line 88
    .line 89
    int-to-long v4, p2

    .line 90
    const/16 v6, 0x8

    .line 91
    .line 92
    move-object v1, p1

    .line 93
    invoke-direct/range {v1 .. v7}, LI0/u;-><init>(JJILjava/lang/IndexOutOfBoundsException;)V

    .line 94
    .line 95
    .line 96
    throw p1
.end method

.method public final v(II)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/k2;->A(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/k2;->w(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final w(I)V
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/k2;->A(I)V

    .line 4
    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    int-to-long v0, p1

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/measurement/k2;->C(J)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final x(ILjava/lang/String;)V
    .locals 7

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    or-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/k2;->A(I)V

    .line 6
    .line 7
    .line 8
    iget p1, p0, Lcom/google/android/gms/internal/measurement/k2;->K:I

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
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

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
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 25
    .line 26
    .line 27
    move-result v1
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/h3; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    iget v2, p0, Lcom/google/android/gms/internal/measurement/k2;->J:I

    .line 29
    .line 30
    iget-object v3, p0, Lcom/google/android/gms/internal/measurement/k2;->I:[B

    .line 31
    .line 32
    if-ne v1, v0, :cond_0

    .line 33
    .line 34
    add-int v0, p1, v1

    .line 35
    .line 36
    :try_start_1
    iput v0, p0, Lcom/google/android/gms/internal/measurement/k2;->K:I

    .line 37
    .line 38
    sub-int/2addr v2, v0

    .line 39
    invoke-static {p2, v3, v0, v2}, Lcom/google/android/gms/internal/measurement/i3;->b(Ljava/lang/String;[BII)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iput p1, p0, Lcom/google/android/gms/internal/measurement/k2;->K:I

    .line 44
    .line 45
    sub-int v2, v0, p1

    .line 46
    .line 47
    sub-int/2addr v2, v1

    .line 48
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/measurement/k2;->A(I)V

    .line 49
    .line 50
    .line 51
    iput v0, p0, Lcom/google/android/gms/internal/measurement/k2;->K:I

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
    move-object v6, v0

    .line 58
    goto :goto_1

    .line 59
    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/internal/measurement/i3;->c(Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/k2;->A(I)V

    .line 64
    .line 65
    .line 66
    iget v0, p0, Lcom/google/android/gms/internal/measurement/k2;->K:I

    .line 67
    .line 68
    sub-int/2addr v2, v0

    .line 69
    invoke-static {p2, v3, v0, v2}, Lcom/google/android/gms/internal/measurement/i3;->b(Ljava/lang/String;[BII)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    iput v0, p0, Lcom/google/android/gms/internal/measurement/k2;->K:I
    :try_end_1
    .catch Lcom/google/android/gms/internal/measurement/h3; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :goto_0
    new-instance p2, LI0/u;

    .line 77
    .line 78
    invoke-direct {p2, p1}, LI0/u;-><init>(Ljava/lang/IndexOutOfBoundsException;)V

    .line 79
    .line 80
    .line 81
    throw p2

    .line 82
    :goto_1
    iput p1, p0, Lcom/google/android/gms/internal/measurement/k2;->K:I

    .line 83
    .line 84
    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    .line 85
    .line 86
    const-string v4, "inefficientWriteStringNoTag"

    .line 87
    .line 88
    const-string v5, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!"

    .line 89
    .line 90
    sget-object v1, Lcom/google/android/gms/internal/measurement/k2;->L:Ljava/util/logging/Logger;

    .line 91
    .line 92
    const-string v3, "com.google.protobuf.CodedOutputStream"

    .line 93
    .line 94
    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    .line 96
    .line 97
    sget-object p1, Lcom/google/android/gms/internal/measurement/z2;->a:Ljava/nio/charset/Charset;

    .line 98
    .line 99
    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    :try_start_2
    array-length p2, p1

    .line 104
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/k2;->A(I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/k2;->p([BI)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    .line 108
    .line 109
    .line 110
    :goto_2
    return-void

    .line 111
    :catch_2
    move-exception p1

    .line 112
    new-instance p2, LI0/u;

    .line 113
    .line 114
    invoke-direct {p2, p1}, LI0/u;-><init>(Ljava/lang/IndexOutOfBoundsException;)V

    .line 115
    .line 116
    .line 117
    throw p2
.end method

.method public final y(II)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    or-int/2addr p1, p2

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/k2;->A(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final z(II)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/k2;->A(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/measurement/k2;->A(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
