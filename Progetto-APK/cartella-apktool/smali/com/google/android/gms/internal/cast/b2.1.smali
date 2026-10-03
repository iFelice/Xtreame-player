.class public final Lcom/google/android/gms/internal/cast/b2;
.super LQ3/b;
.source "SourceFile"


# static fields
.field public static final g:Ljava/util/logging/Logger;

.field public static final h:Z


# instance fields
.field public c:Lcom/google/android/gms/internal/cast/c2;

.field public final d:[B

.field public final e:I

.field public f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/gms/internal/cast/b2;

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
    sput-object v0, Lcom/google/android/gms/internal/cast/b2;->g:Ljava/util/logging/Logger;

    .line 12
    .line 13
    sget-boolean v0, Lcom/google/android/gms/internal/cast/W2;->e:Z

    .line 14
    .line 15
    sput-boolean v0, Lcom/google/android/gms/internal/cast/b2;->h:Z

    .line 16
    .line 17
    return-void
.end method

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
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/b2;->d:[B

    .line 12
    .line 13
    iput v0, p0, Lcom/google/android/gms/internal/cast/b2;->f:I

    .line 14
    .line 15
    iput p2, p0, Lcom/google/android/gms/internal/cast/b2;->e:I

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

.method public static s0(ILcom/google/android/gms/internal/cast/U1;Lcom/google/android/gms/internal/cast/M2;)I
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/cast/U1;->a(Lcom/google/android/gms/internal/cast/M2;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    shl-int/lit8 p0, p0, 0x3

    .line 6
    .line 7
    invoke-static {p0}, Lcom/google/android/gms/internal/cast/b2;->w0(I)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    add-int/2addr p0, p0

    .line 12
    add-int/2addr p0, p1

    .line 13
    return p0
.end method

.method public static t0(I)I
    .locals 0

    .line 1
    if-ltz p0, :cond_0

    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/cast/b2;->w0(I)I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0

    .line 8
    :cond_0
    const/16 p0, 0xa

    .line 9
    .line 10
    return p0
.end method

.method public static u0(Lcom/google/android/gms/internal/cast/U1;Lcom/google/android/gms/internal/cast/M2;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/U1;->a(Lcom/google/android/gms/internal/cast/M2;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/internal/cast/b2;->w0(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    add-int/2addr p1, p0

    .line 10
    return p1
.end method

.method public static v0(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/cast/Y2;->c(Ljava/lang/CharSequence;)I

    .line 2
    .line 3
    .line 4
    move-result p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/cast/X2; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    goto :goto_0

    .line 6
    :catch_0
    sget-object v0, Lcom/google/android/gms/internal/cast/o2;->a:Ljava/nio/charset/Charset;

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
    invoke-static {p0}, Lcom/google/android/gms/internal/cast/b2;->w0(I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    add-int/2addr v0, p0

    .line 18
    return v0
.end method

.method public static w0(I)I
    .locals 1

    .line 1
    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method public static x0(J)I
    .locals 7

    .line 1
    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    return v2

    :cond_0
    cmp-long v0, p0, v3

    if-gez v0, :cond_1

    const/16 p0, 0xa

    return p0

    :cond_1
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_2

    const/16 v0, 0x1c

    ushr-long/2addr p0, v0

    const/4 v0, 0x6

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    :goto_0
    const-wide/32 v5, -0x200000

    and-long/2addr v5, p0

    cmp-long v1, v5, v3

    if-eqz v1, :cond_3

    const/16 v1, 0xe

    ushr-long/2addr p0, v1

    add-int/lit8 v0, v0, 0x2

    :cond_3
    const-wide/16 v5, -0x4000

    and-long/2addr p0, v5

    cmp-long v1, p0, v3

    if-eqz v1, :cond_4

    add-int/2addr v0, v2

    :cond_4
    return v0
.end method


# virtual methods
.method public final g0(B)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/b2;->d:[B

    .line 3
    .line 4
    iget v2, p0, Lcom/google/android/gms/internal/cast/b2;->f:I

    .line 5
    .line 6
    add-int/lit8 v3, v2, 0x1

    .line 7
    .line 8
    iput v3, p0, Lcom/google/android/gms/internal/cast/b2;->f:I

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
    iget v2, p0, Lcom/google/android/gms/internal/cast/b2;->f:I

    .line 17
    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    iget v3, p0, Lcom/google/android/gms/internal/cast/b2;->e:I

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
    const/16 v2, 0x8

    .line 50
    .line 51
    invoke-direct {v1, v0, v2, p1}, LI0/u;-><init>(Ljava/lang/String;ILjava/lang/IndexOutOfBoundsException;)V

    .line 52
    .line 53
    .line 54
    throw v1
.end method

.method public final h0([BI)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/cast/b2;->d:[B

    .line 3
    .line 4
    iget v2, p0, Lcom/google/android/gms/internal/cast/b2;->f:I

    .line 5
    .line 6
    invoke-static {p1, v0, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    .line 8
    .line 9
    iget p1, p0, Lcom/google/android/gms/internal/cast/b2;->f:I

    .line 10
    .line 11
    add-int/2addr p1, p2

    .line 12
    iput p1, p0, Lcom/google/android/gms/internal/cast/b2;->f:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    move-exception p1

    .line 16
    new-instance v1, LI0/u;

    .line 17
    .line 18
    iget v2, p0, Lcom/google/android/gms/internal/cast/b2;->f:I

    .line 19
    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget v3, p0, Lcom/google/android/gms/internal/cast/b2;->e:I

    .line 25
    .line 26
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    const/4 v4, 0x3

    .line 35
    new-array v4, v4, [Ljava/lang/Object;

    .line 36
    .line 37
    aput-object v2, v4, v0

    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    aput-object v3, v4, v0

    .line 41
    .line 42
    const/4 v0, 0x2

    .line 43
    aput-object p2, v4, v0

    .line 44
    .line 45
    const-string p2, "Pos: %d, limit: %d, len: %d"

    .line 46
    .line 47
    invoke-static {p2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    const/16 v0, 0x8

    .line 52
    .line 53
    invoke-direct {v1, p2, v0, p1}, LI0/u;-><init>(Ljava/lang/String;ILjava/lang/IndexOutOfBoundsException;)V

    .line 54
    .line 55
    .line 56
    throw v1
.end method

.method public final i0(ILcom/google/android/gms/internal/cast/Z1;)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    or-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/b2;->p0(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/internal/cast/Z1;->n()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/b2;->p0(I)V

    .line 13
    .line 14
    .line 15
    check-cast p2, Lcom/google/android/gms/internal/cast/a2;

    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/google/android/gms/internal/cast/a2;->n()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iget-object p2, p2, Lcom/google/android/gms/internal/cast/a2;->I:[B

    .line 22
    .line 23
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/cast/b2;->h0([BI)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final j0(II)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    or-int/lit8 p1, p1, 0x5

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/b2;->p0(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/cast/b2;->k0(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final k0(I)V
    .locals 9

    .line 1
    const/4 v0, 0x3

    .line 2
    const/16 v1, 0x8

    .line 3
    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x1

    .line 6
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gms/internal/cast/b2;->d:[B

    .line 7
    .line 8
    iget v5, p0, Lcom/google/android/gms/internal/cast/b2;->f:I

    .line 9
    .line 10
    add-int/lit8 v6, v5, 0x1

    .line 11
    .line 12
    and-int/lit16 v7, p1, 0xff

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
    shr-int/lit8 v8, p1, 0x8

    .line 20
    .line 21
    and-int/lit16 v8, v8, 0xff

    .line 22
    .line 23
    int-to-byte v8, v8

    .line 24
    aput-byte v8, v4, v6

    .line 25
    .line 26
    add-int/lit8 v6, v5, 0x3

    .line 27
    .line 28
    shr-int/lit8 v8, p1, 0x10

    .line 29
    .line 30
    and-int/lit16 v8, v8, 0xff

    .line 31
    .line 32
    int-to-byte v8, v8

    .line 33
    aput-byte v8, v4, v7

    .line 34
    .line 35
    add-int/lit8 v5, v5, 0x4

    .line 36
    .line 37
    iput v5, p0, Lcom/google/android/gms/internal/cast/b2;->f:I

    .line 38
    .line 39
    shr-int/lit8 p1, p1, 0x18

    .line 40
    .line 41
    and-int/lit16 p1, p1, 0xff

    .line 42
    .line 43
    int-to-byte p1, p1

    .line 44
    aput-byte p1, v4, v6
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    return-void

    .line 47
    :catch_0
    move-exception p1

    .line 48
    new-instance v4, LI0/u;

    .line 49
    .line 50
    iget v5, p0, Lcom/google/android/gms/internal/cast/b2;->f:I

    .line 51
    .line 52
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    iget v6, p0, Lcom/google/android/gms/internal/cast/b2;->e:I

    .line 57
    .line 58
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    new-array v0, v0, [Ljava/lang/Object;

    .line 67
    .line 68
    const/4 v8, 0x0

    .line 69
    aput-object v5, v0, v8

    .line 70
    .line 71
    aput-object v6, v0, v3

    .line 72
    .line 73
    aput-object v7, v0, v2

    .line 74
    .line 75
    const-string v2, "Pos: %d, limit: %d, len: %d"

    .line 76
    .line 77
    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-direct {v4, v0, v1, p1}, LI0/u;-><init>(Ljava/lang/String;ILjava/lang/IndexOutOfBoundsException;)V

    .line 82
    .line 83
    .line 84
    throw v4
.end method

.method public final l0(IJ)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    or-int/lit8 p1, p1, 0x1

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/b2;->p0(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/cast/b2;->m0(J)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final m0(J)V
    .locals 10

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x1

    .line 4
    const/16 v3, 0x8

    .line 5
    .line 6
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gms/internal/cast/b2;->d:[B

    .line 7
    .line 8
    iget v5, p0, Lcom/google/android/gms/internal/cast/b2;->f:I

    .line 9
    .line 10
    add-int/lit8 v6, v5, 0x1

    .line 11
    .line 12
    long-to-int v7, p1

    .line 13
    and-int/lit16 v7, v7, 0xff

    .line 14
    .line 15
    int-to-byte v7, v7

    .line 16
    aput-byte v7, v4, v5

    .line 17
    .line 18
    add-int/lit8 v7, v5, 0x2

    .line 19
    .line 20
    shr-long v8, p1, v3

    .line 21
    .line 22
    long-to-int v9, v8

    .line 23
    and-int/lit16 v8, v9, 0xff

    .line 24
    .line 25
    int-to-byte v8, v8

    .line 26
    aput-byte v8, v4, v6

    .line 27
    .line 28
    add-int/lit8 v6, v5, 0x3

    .line 29
    .line 30
    const/16 v8, 0x10

    .line 31
    .line 32
    shr-long v8, p1, v8

    .line 33
    .line 34
    long-to-int v9, v8

    .line 35
    and-int/lit16 v8, v9, 0xff

    .line 36
    .line 37
    int-to-byte v8, v8

    .line 38
    aput-byte v8, v4, v7

    .line 39
    .line 40
    add-int/lit8 v7, v5, 0x4

    .line 41
    .line 42
    const/16 v8, 0x18

    .line 43
    .line 44
    shr-long v8, p1, v8

    .line 45
    .line 46
    long-to-int v9, v8

    .line 47
    and-int/lit16 v8, v9, 0xff

    .line 48
    .line 49
    int-to-byte v8, v8

    .line 50
    aput-byte v8, v4, v6

    .line 51
    .line 52
    add-int/lit8 v6, v5, 0x5

    .line 53
    .line 54
    const/16 v8, 0x20

    .line 55
    .line 56
    shr-long v8, p1, v8

    .line 57
    .line 58
    long-to-int v9, v8

    .line 59
    and-int/lit16 v8, v9, 0xff

    .line 60
    .line 61
    int-to-byte v8, v8

    .line 62
    aput-byte v8, v4, v7

    .line 63
    .line 64
    add-int/lit8 v7, v5, 0x6

    .line 65
    .line 66
    const/16 v8, 0x28

    .line 67
    .line 68
    shr-long v8, p1, v8

    .line 69
    .line 70
    long-to-int v9, v8

    .line 71
    and-int/lit16 v8, v9, 0xff

    .line 72
    .line 73
    int-to-byte v8, v8

    .line 74
    aput-byte v8, v4, v6

    .line 75
    .line 76
    add-int/lit8 v6, v5, 0x7

    .line 77
    .line 78
    const/16 v8, 0x30

    .line 79
    .line 80
    shr-long v8, p1, v8

    .line 81
    .line 82
    long-to-int v9, v8

    .line 83
    and-int/lit16 v8, v9, 0xff

    .line 84
    .line 85
    int-to-byte v8, v8

    .line 86
    aput-byte v8, v4, v7

    .line 87
    .line 88
    add-int/2addr v5, v3

    .line 89
    iput v5, p0, Lcom/google/android/gms/internal/cast/b2;->f:I

    .line 90
    .line 91
    const/16 v5, 0x38

    .line 92
    .line 93
    shr-long/2addr p1, v5

    .line 94
    long-to-int p2, p1

    .line 95
    and-int/lit16 p1, p2, 0xff

    .line 96
    .line 97
    int-to-byte p1, p1

    .line 98
    aput-byte p1, v4, v6
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .line 100
    return-void

    .line 101
    :catch_0
    move-exception p1

    .line 102
    new-instance p2, LI0/u;

    .line 103
    .line 104
    iget v4, p0, Lcom/google/android/gms/internal/cast/b2;->f:I

    .line 105
    .line 106
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    iget v5, p0, Lcom/google/android/gms/internal/cast/b2;->e:I

    .line 111
    .line 112
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    new-array v0, v0, [Ljava/lang/Object;

    .line 121
    .line 122
    const/4 v7, 0x0

    .line 123
    aput-object v4, v0, v7

    .line 124
    .line 125
    aput-object v5, v0, v2

    .line 126
    .line 127
    aput-object v6, v0, v1

    .line 128
    .line 129
    const-string v1, "Pos: %d, limit: %d, len: %d"

    .line 130
    .line 131
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    invoke-direct {p2, v0, v3, p1}, LI0/u;-><init>(Ljava/lang/String;ILjava/lang/IndexOutOfBoundsException;)V

    .line 136
    .line 137
    .line 138
    throw p2
.end method

.method public final n0(ILjava/lang/String;)V
    .locals 7

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    or-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/b2;->p0(I)V

    .line 6
    .line 7
    .line 8
    iget p1, p0, Lcom/google/android/gms/internal/cast/b2;->f:I

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
    invoke-static {v0}, Lcom/google/android/gms/internal/cast/b2;->w0(I)I

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
    invoke-static {v1}, Lcom/google/android/gms/internal/cast/b2;->w0(I)I

    .line 25
    .line 26
    .line 27
    move-result v1
    :try_end_0
    .catch Lcom/google/android/gms/internal/cast/X2; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    iget v2, p0, Lcom/google/android/gms/internal/cast/b2;->e:I

    .line 29
    .line 30
    iget-object v3, p0, Lcom/google/android/gms/internal/cast/b2;->d:[B

    .line 31
    .line 32
    if-ne v1, v0, :cond_0

    .line 33
    .line 34
    add-int v0, p1, v1

    .line 35
    .line 36
    :try_start_1
    iput v0, p0, Lcom/google/android/gms/internal/cast/b2;->f:I

    .line 37
    .line 38
    sub-int/2addr v2, v0

    .line 39
    invoke-static {p2, v3, v0, v2}, Lcom/google/android/gms/internal/cast/Y2;->b(Ljava/lang/CharSequence;[BII)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iput p1, p0, Lcom/google/android/gms/internal/cast/b2;->f:I

    .line 44
    .line 45
    sub-int v2, v0, p1

    .line 46
    .line 47
    sub-int/2addr v2, v1

    .line 48
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/cast/b2;->p0(I)V

    .line 49
    .line 50
    .line 51
    iput v0, p0, Lcom/google/android/gms/internal/cast/b2;->f:I

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
    invoke-static {p2}, Lcom/google/android/gms/internal/cast/Y2;->c(Ljava/lang/CharSequence;)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/cast/b2;->p0(I)V

    .line 64
    .line 65
    .line 66
    iget v0, p0, Lcom/google/android/gms/internal/cast/b2;->f:I

    .line 67
    .line 68
    sub-int/2addr v2, v0

    .line 69
    invoke-static {p2, v3, v0, v2}, Lcom/google/android/gms/internal/cast/Y2;->b(Ljava/lang/CharSequence;[BII)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    iput v0, p0, Lcom/google/android/gms/internal/cast/b2;->f:I
    :try_end_1
    .catch Lcom/google/android/gms/internal/cast/X2; {:try_start_1 .. :try_end_1} :catch_1
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
    iput p1, p0, Lcom/google/android/gms/internal/cast/b2;->f:I

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
    sget-object v1, Lcom/google/android/gms/internal/cast/b2;->g:Ljava/util/logging/Logger;

    .line 91
    .line 92
    const-string v3, "com.google.protobuf.CodedOutputStream"

    .line 93
    .line 94
    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    .line 96
    .line 97
    sget-object p1, Lcom/google/android/gms/internal/cast/o2;->a:Ljava/nio/charset/Charset;

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
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/cast/b2;->p0(I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/cast/b2;->h0([BI)V
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

.method public final o0(II)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    or-int/2addr p1, p2

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/b2;->p0(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final p0(I)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    :goto_0
    and-int/lit8 v1, p1, -0x80

    .line 3
    .line 4
    iget-object v2, p0, Lcom/google/android/gms/internal/cast/b2;->d:[B

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/cast/b2;->f:I

    .line 9
    .line 10
    add-int/lit8 v3, v1, 0x1

    .line 11
    .line 12
    iput v3, p0, Lcom/google/android/gms/internal/cast/b2;->f:I

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
    iget v1, p0, Lcom/google/android/gms/internal/cast/b2;->f:I

    .line 21
    .line 22
    add-int/lit8 v3, v1, 0x1

    .line 23
    .line 24
    iput v3, p0, Lcom/google/android/gms/internal/cast/b2;->f:I

    .line 25
    .line 26
    and-int/lit8 v3, p1, 0x7f

    .line 27
    .line 28
    or-int/lit16 v3, v3, 0x80

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
    iget v2, p0, Lcom/google/android/gms/internal/cast/b2;->f:I

    .line 39
    .line 40
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    iget v3, p0, Lcom/google/android/gms/internal/cast/b2;->e:I

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
    const/16 v2, 0x8

    .line 72
    .line 73
    invoke-direct {v1, v0, v2, p1}, LI0/u;-><init>(Ljava/lang/String;ILjava/lang/IndexOutOfBoundsException;)V

    .line 74
    .line 75
    .line 76
    throw v1
.end method

.method public final q0(IJ)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/cast/b2;->p0(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/cast/b2;->r0(J)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final r0(J)V
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    sget-boolean v1, Lcom/google/android/gms/internal/cast/b2;->h:Z

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
    iget v7, p0, Lcom/google/android/gms/internal/cast/b2;->e:I

    .line 10
    .line 11
    iget-object v8, p0, Lcom/google/android/gms/internal/cast/b2;->d:[B

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget v1, p0, Lcom/google/android/gms/internal/cast/b2;->f:I

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
    iget p1, p0, Lcom/google/android/gms/internal/cast/b2;->f:I

    .line 31
    .line 32
    add-int/2addr v0, p1

    .line 33
    iput v0, p0, Lcom/google/android/gms/internal/cast/b2;->f:I

    .line 34
    .line 35
    int-to-long p1, p1

    .line 36
    int-to-byte v0, v7

    .line 37
    sget-wide v1, Lcom/google/android/gms/internal/cast/W2;->f:J

    .line 38
    .line 39
    add-long/2addr v1, p1

    .line 40
    sget-object p1, Lcom/google/android/gms/internal/cast/W2;->c:Lcom/google/android/gms/internal/cast/V2;

    .line 41
    .line 42
    invoke-virtual {p1, v8, v1, v2, v0}, Lcom/google/android/gms/internal/cast/V2;->d(Ljava/lang/Object;JB)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/cast/b2;->f:I

    .line 47
    .line 48
    add-int/lit8 v9, v1, 0x1

    .line 49
    .line 50
    iput v9, p0, Lcom/google/android/gms/internal/cast/b2;->f:I

    .line 51
    .line 52
    int-to-long v9, v1

    .line 53
    and-int/lit8 v1, v7, 0x7f

    .line 54
    .line 55
    or-int/lit16 v1, v1, 0x80

    .line 56
    .line 57
    int-to-byte v1, v1

    .line 58
    sget-wide v11, Lcom/google/android/gms/internal/cast/W2;->f:J

    .line 59
    .line 60
    add-long/2addr v11, v9

    .line 61
    sget-object v7, Lcom/google/android/gms/internal/cast/W2;->c:Lcom/google/android/gms/internal/cast/V2;

    .line 62
    .line 63
    invoke-virtual {v7, v8, v11, v12, v1}, Lcom/google/android/gms/internal/cast/V2;->d(Ljava/lang/Object;JB)V

    .line 64
    .line 65
    .line 66
    ushr-long/2addr p1, v2

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    :goto_1
    and-long v9, p1, v5

    .line 69
    .line 70
    cmp-long v1, v9, v3

    .line 71
    .line 72
    if-nez v1, :cond_2

    .line 73
    .line 74
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/cast/b2;->f:I

    .line 75
    .line 76
    add-int/lit8 v2, v1, 0x1

    .line 77
    .line 78
    iput v2, p0, Lcom/google/android/gms/internal/cast/b2;->f:I

    .line 79
    .line 80
    long-to-int p2, p1

    .line 81
    int-to-byte p1, p2

    .line 82
    aput-byte p1, v8, v1

    .line 83
    .line 84
    return-void

    .line 85
    :catch_0
    move-exception p1

    .line 86
    goto :goto_2

    .line 87
    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/cast/b2;->f:I

    .line 88
    .line 89
    add-int/lit8 v9, v1, 0x1

    .line 90
    .line 91
    iput v9, p0, Lcom/google/android/gms/internal/cast/b2;->f:I

    .line 92
    .line 93
    long-to-int v9, p1

    .line 94
    and-int/lit8 v9, v9, 0x7f

    .line 95
    .line 96
    or-int/lit16 v9, v9, 0x80

    .line 97
    .line 98
    int-to-byte v9, v9

    .line 99
    aput-byte v9, v8, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .line 101
    ushr-long/2addr p1, v2

    .line 102
    goto :goto_1

    .line 103
    :goto_2
    new-instance p2, LI0/u;

    .line 104
    .line 105
    iget v1, p0, Lcom/google/android/gms/internal/cast/b2;->f:I

    .line 106
    .line 107
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    const/4 v4, 0x3

    .line 120
    new-array v4, v4, [Ljava/lang/Object;

    .line 121
    .line 122
    const/4 v5, 0x0

    .line 123
    aput-object v1, v4, v5

    .line 124
    .line 125
    aput-object v2, v4, v0

    .line 126
    .line 127
    const/4 v0, 0x2

    .line 128
    aput-object v3, v4, v0

    .line 129
    .line 130
    const-string v0, "Pos: %d, limit: %d, len: %d"

    .line 131
    .line 132
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    const/16 v1, 0x8

    .line 137
    .line 138
    invoke-direct {p2, v0, v1, p1}, LI0/u;-><init>(Ljava/lang/String;ILjava/lang/IndexOutOfBoundsException;)V

    .line 139
    .line 140
    .line 141
    throw p2
.end method
