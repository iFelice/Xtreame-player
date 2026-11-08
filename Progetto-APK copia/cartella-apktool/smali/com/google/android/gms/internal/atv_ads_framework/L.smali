.class public final Lcom/google/android/gms/internal/atv_ads_framework/L;
.super LS3/e;
.source "SourceFile"


# static fields
.field public static final g:Ljava/util/logging/Logger;

.field public static final h:Z


# instance fields
.field public c:Lcom/google/android/gms/internal/atv_ads_framework/M;

.field public final d:[B

.field public final e:I

.field public f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/gms/internal/atv_ads_framework/L;

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
    sput-object v0, Lcom/google/android/gms/internal/atv_ads_framework/L;->g:Ljava/util/logging/Logger;

    .line 12
    .line 13
    sget-boolean v0, Lcom/google/android/gms/internal/atv_ads_framework/I0;->e:Z

    .line 14
    .line 15
    sput-boolean v0, Lcom/google/android/gms/internal/atv_ads_framework/L;->h:Z

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
    iput-object p1, p0, Lcom/google/android/gms/internal/atv_ads_framework/L;->d:[B

    .line 12
    .line 13
    iput v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/L;->f:I

    .line 14
    .line 15
    iput p2, p0, Lcom/google/android/gms/internal/atv_ads_framework/L;->e:I

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

.method public static W(ILcom/google/android/gms/internal/atv_ads_framework/E;Lcom/google/android/gms/internal/atv_ads_framework/w0;)I
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/atv_ads_framework/E;->a(Lcom/google/android/gms/internal/atv_ads_framework/w0;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    shl-int/lit8 p0, p0, 0x3

    .line 6
    .line 7
    invoke-static {p0}, Lcom/google/android/gms/internal/atv_ads_framework/L;->Z(I)I

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

.method public static X(I)I
    .locals 0

    .line 1
    if-ltz p0, :cond_0

    .line 2
    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/atv_ads_framework/L;->Z(I)I

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

.method public static Y(Ljava/lang/String;)I
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/atv_ads_framework/K0;->c(Ljava/lang/CharSequence;)I

    .line 2
    .line 3
    .line 4
    move-result p0
    :try_end_0
    .catch Lcom/google/android/gms/internal/atv_ads_framework/J0; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    goto :goto_0

    .line 6
    :catch_0
    sget-object v0, Lcom/google/android/gms/internal/atv_ads_framework/Z;->a:Ljava/nio/charset/Charset;

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
    invoke-static {p0}, Lcom/google/android/gms/internal/atv_ads_framework/L;->Z(I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    add-int/2addr v0, p0

    .line 18
    return v0
.end method

.method public static Z(I)I
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

.method public static a0(J)I
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
.method public final K(B)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/atv_ads_framework/L;->d:[B

    .line 3
    .line 4
    iget v2, p0, Lcom/google/android/gms/internal/atv_ads_framework/L;->f:I

    .line 5
    .line 6
    add-int/lit8 v3, v2, 0x1

    .line 7
    .line 8
    iput v3, p0, Lcom/google/android/gms/internal/atv_ads_framework/L;->f:I

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
    iget v2, p0, Lcom/google/android/gms/internal/atv_ads_framework/L;->f:I

    .line 17
    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    iget v3, p0, Lcom/google/android/gms/internal/atv_ads_framework/L;->e:I

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
    const/4 v2, 0x7

    .line 50
    invoke-direct {v1, v0, v2, p1}, LI0/u;-><init>(Ljava/lang/String;ILjava/lang/IndexOutOfBoundsException;)V

    .line 51
    .line 52
    .line 53
    throw v1
.end method

.method public final L([BI)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/atv_ads_framework/L;->d:[B

    .line 3
    .line 4
    iget v2, p0, Lcom/google/android/gms/internal/atv_ads_framework/L;->f:I

    .line 5
    .line 6
    invoke-static {p1, v0, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    .line 8
    .line 9
    iget p1, p0, Lcom/google/android/gms/internal/atv_ads_framework/L;->f:I

    .line 10
    .line 11
    add-int/2addr p1, p2

    .line 12
    iput p1, p0, Lcom/google/android/gms/internal/atv_ads_framework/L;->f:I
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
    iget v2, p0, Lcom/google/android/gms/internal/atv_ads_framework/L;->f:I

    .line 19
    .line 20
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    iget v3, p0, Lcom/google/android/gms/internal/atv_ads_framework/L;->e:I

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
    const/4 v0, 0x7

    .line 52
    invoke-direct {v1, p2, v0, p1}, LI0/u;-><init>(Ljava/lang/String;ILjava/lang/IndexOutOfBoundsException;)V

    .line 53
    .line 54
    .line 55
    throw v1
.end method

.method public final M(ILcom/google/android/gms/internal/atv_ads_framework/J;)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    or-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/atv_ads_framework/L;->T(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/internal/atv_ads_framework/J;->n()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/atv_ads_framework/L;->T(I)V

    .line 13
    .line 14
    .line 15
    check-cast p2, Lcom/google/android/gms/internal/atv_ads_framework/K;

    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/google/android/gms/internal/atv_ads_framework/K;->n()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    iget-object p2, p2, Lcom/google/android/gms/internal/atv_ads_framework/K;->I:[B

    .line 22
    .line 23
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/atv_ads_framework/L;->L([BI)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final N(II)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    or-int/lit8 p1, p1, 0x5

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/atv_ads_framework/L;->T(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/atv_ads_framework/L;->O(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final O(I)V
    .locals 8

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x1

    .line 4
    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/atv_ads_framework/L;->d:[B

    .line 5
    .line 6
    iget v4, p0, Lcom/google/android/gms/internal/atv_ads_framework/L;->f:I

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
    iput v4, p0, Lcom/google/android/gms/internal/atv_ads_framework/L;->f:I

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
    iget v4, p0, Lcom/google/android/gms/internal/atv_ads_framework/L;->f:I

    .line 49
    .line 50
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    iget v5, p0, Lcom/google/android/gms/internal/atv_ads_framework/L;->e:I

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
    const/4 v1, 0x7

    .line 80
    invoke-direct {v3, v0, v1, p1}, LI0/u;-><init>(Ljava/lang/String;ILjava/lang/IndexOutOfBoundsException;)V

    .line 81
    .line 82
    .line 83
    throw v3
.end method

.method public final P(IJ)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    or-int/lit8 p1, p1, 0x1

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/atv_ads_framework/L;->T(I)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/atv_ads_framework/L;->Q(J)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final Q(J)V
    .locals 11

    .line 1
    const/4 v0, 0x7

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x2

    .line 4
    const/4 v3, 0x1

    .line 5
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gms/internal/atv_ads_framework/L;->d:[B

    .line 6
    .line 7
    iget v5, p0, Lcom/google/android/gms/internal/atv_ads_framework/L;->f:I

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
    iput v5, p0, Lcom/google/android/gms/internal/atv_ads_framework/L;->f:I

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
    iget v4, p0, Lcom/google/android/gms/internal/atv_ads_framework/L;->f:I

    .line 106
    .line 107
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    iget v5, p0, Lcom/google/android/gms/internal/atv_ads_framework/L;->e:I

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

.method public final R(ILjava/lang/String;)V
    .locals 7

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    or-int/lit8 p1, p1, 0x2

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/atv_ads_framework/L;->T(I)V

    .line 6
    .line 7
    .line 8
    iget p1, p0, Lcom/google/android/gms/internal/atv_ads_framework/L;->f:I

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
    invoke-static {v0}, Lcom/google/android/gms/internal/atv_ads_framework/L;->Z(I)I

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
    invoke-static {v1}, Lcom/google/android/gms/internal/atv_ads_framework/L;->Z(I)I

    .line 25
    .line 26
    .line 27
    move-result v1
    :try_end_0
    .catch Lcom/google/android/gms/internal/atv_ads_framework/J0; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    iget v2, p0, Lcom/google/android/gms/internal/atv_ads_framework/L;->e:I

    .line 29
    .line 30
    iget-object v3, p0, Lcom/google/android/gms/internal/atv_ads_framework/L;->d:[B

    .line 31
    .line 32
    if-ne v1, v0, :cond_0

    .line 33
    .line 34
    add-int v0, p1, v1

    .line 35
    .line 36
    :try_start_1
    iput v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/L;->f:I

    .line 37
    .line 38
    sub-int/2addr v2, v0

    .line 39
    invoke-static {p2, v3, v0, v2}, Lcom/google/android/gms/internal/atv_ads_framework/K0;->b(Ljava/lang/CharSequence;[BII)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iput p1, p0, Lcom/google/android/gms/internal/atv_ads_framework/L;->f:I

    .line 44
    .line 45
    sub-int v2, v0, p1

    .line 46
    .line 47
    sub-int/2addr v2, v1

    .line 48
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/atv_ads_framework/L;->T(I)V

    .line 49
    .line 50
    .line 51
    iput v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/L;->f:I

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
    invoke-static {p2}, Lcom/google/android/gms/internal/atv_ads_framework/K0;->c(Ljava/lang/CharSequence;)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/atv_ads_framework/L;->T(I)V

    .line 64
    .line 65
    .line 66
    iget v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/L;->f:I

    .line 67
    .line 68
    sub-int/2addr v2, v0

    .line 69
    invoke-static {p2, v3, v0, v2}, Lcom/google/android/gms/internal/atv_ads_framework/K0;->b(Ljava/lang/CharSequence;[BII)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    iput v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/L;->f:I
    :try_end_1
    .catch Lcom/google/android/gms/internal/atv_ads_framework/J0; {:try_start_1 .. :try_end_1} :catch_1
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
    iput p1, p0, Lcom/google/android/gms/internal/atv_ads_framework/L;->f:I

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
    sget-object v1, Lcom/google/android/gms/internal/atv_ads_framework/L;->g:Ljava/util/logging/Logger;

    .line 91
    .line 92
    const-string v3, "com.google.protobuf.CodedOutputStream"

    .line 93
    .line 94
    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    .line 96
    .line 97
    sget-object p1, Lcom/google/android/gms/internal/atv_ads_framework/Z;->a:Ljava/nio/charset/Charset;

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
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/atv_ads_framework/L;->T(I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/atv_ads_framework/L;->L([BI)V
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

.method public final S(II)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    or-int/2addr p1, p2

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/atv_ads_framework/L;->T(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final T(I)V
    .locals 8

    .line 1
    const/4 v0, 0x7

    .line 2
    const/4 v1, 0x1

    .line 3
    :goto_0
    and-int/lit8 v2, p1, -0x80

    .line 4
    .line 5
    iget-object v3, p0, Lcom/google/android/gms/internal/atv_ads_framework/L;->d:[B

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    :try_start_0
    iget v2, p0, Lcom/google/android/gms/internal/atv_ads_framework/L;->f:I

    .line 10
    .line 11
    add-int/lit8 v4, v2, 0x1

    .line 12
    .line 13
    iput v4, p0, Lcom/google/android/gms/internal/atv_ads_framework/L;->f:I

    .line 14
    .line 15
    int-to-byte p1, p1

    .line 16
    aput-byte p1, v3, v2

    .line 17
    .line 18
    return-void

    .line 19
    :catch_0
    move-exception p1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iget v2, p0, Lcom/google/android/gms/internal/atv_ads_framework/L;->f:I

    .line 22
    .line 23
    add-int/lit8 v4, v2, 0x1

    .line 24
    .line 25
    iput v4, p0, Lcom/google/android/gms/internal/atv_ads_framework/L;->f:I

    .line 26
    .line 27
    and-int/lit8 v4, p1, 0x7f

    .line 28
    .line 29
    or-int/lit16 v4, v4, 0x80

    .line 30
    .line 31
    int-to-byte v4, v4

    .line 32
    aput-byte v4, v3, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    ushr-int/2addr p1, v0

    .line 35
    goto :goto_0

    .line 36
    :goto_1
    new-instance v2, LI0/u;

    .line 37
    .line 38
    iget v3, p0, Lcom/google/android/gms/internal/atv_ads_framework/L;->f:I

    .line 39
    .line 40
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    iget v4, p0, Lcom/google/android/gms/internal/atv_ads_framework/L;->e:I

    .line 45
    .line 46
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    const/4 v6, 0x3

    .line 55
    new-array v6, v6, [Ljava/lang/Object;

    .line 56
    .line 57
    const/4 v7, 0x0

    .line 58
    aput-object v3, v6, v7

    .line 59
    .line 60
    aput-object v4, v6, v1

    .line 61
    .line 62
    const/4 v1, 0x2

    .line 63
    aput-object v5, v6, v1

    .line 64
    .line 65
    const-string v1, "Pos: %d, limit: %d, len: %d"

    .line 66
    .line 67
    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-direct {v2, v1, v0, p1}, LI0/u;-><init>(Ljava/lang/String;ILjava/lang/IndexOutOfBoundsException;)V

    .line 72
    .line 73
    .line 74
    throw v2
.end method

.method public final U(IJ)V
    .locals 0

    .line 1
    shl-int/lit8 p1, p1, 0x3

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/atv_ads_framework/L;->T(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/atv_ads_framework/L;->V(J)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final V(J)V
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    sget-boolean v1, Lcom/google/android/gms/internal/atv_ads_framework/L;->h:Z

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    const-wide/16 v4, -0x80

    .line 7
    .line 8
    iget v6, p0, Lcom/google/android/gms/internal/atv_ads_framework/L;->e:I

    .line 9
    .line 10
    const/4 v7, 0x7

    .line 11
    iget-object v8, p0, Lcom/google/android/gms/internal/atv_ads_framework/L;->d:[B

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget v1, p0, Lcom/google/android/gms/internal/atv_ads_framework/L;->f:I

    .line 16
    .line 17
    sub-int v1, v6, v1

    .line 18
    .line 19
    const/16 v9, 0xa

    .line 20
    .line 21
    if-lt v1, v9, :cond_1

    .line 22
    .line 23
    :goto_0
    and-long v9, p1, v4

    .line 24
    .line 25
    cmp-long v1, v9, v2

    .line 26
    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    iget v1, p0, Lcom/google/android/gms/internal/atv_ads_framework/L;->f:I

    .line 30
    .line 31
    add-int/2addr v0, v1

    .line 32
    iput v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/L;->f:I

    .line 33
    .line 34
    int-to-long v0, v1

    .line 35
    long-to-int p2, p1

    .line 36
    int-to-byte p1, p2

    .line 37
    sget-wide v2, Lcom/google/android/gms/internal/atv_ads_framework/I0;->f:J

    .line 38
    .line 39
    add-long/2addr v2, v0

    .line 40
    sget-object p2, Lcom/google/android/gms/internal/atv_ads_framework/I0;->c:Lcom/google/android/gms/internal/atv_ads_framework/H0;

    .line 41
    .line 42
    invoke-virtual {p2, v8, v2, v3, p1}, Lcom/google/android/gms/internal/atv_ads_framework/H0;->d(Ljava/lang/Object;JB)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/atv_ads_framework/L;->f:I

    .line 47
    .line 48
    add-int/lit8 v6, v1, 0x1

    .line 49
    .line 50
    iput v6, p0, Lcom/google/android/gms/internal/atv_ads_framework/L;->f:I

    .line 51
    .line 52
    int-to-long v9, v1

    .line 53
    long-to-int v1, p1

    .line 54
    and-int/lit8 v1, v1, 0x7f

    .line 55
    .line 56
    or-int/lit16 v1, v1, 0x80

    .line 57
    .line 58
    int-to-byte v1, v1

    .line 59
    sget-wide v11, Lcom/google/android/gms/internal/atv_ads_framework/I0;->f:J

    .line 60
    .line 61
    add-long/2addr v11, v9

    .line 62
    sget-object v6, Lcom/google/android/gms/internal/atv_ads_framework/I0;->c:Lcom/google/android/gms/internal/atv_ads_framework/H0;

    .line 63
    .line 64
    invoke-virtual {v6, v8, v11, v12, v1}, Lcom/google/android/gms/internal/atv_ads_framework/H0;->d(Ljava/lang/Object;JB)V

    .line 65
    .line 66
    .line 67
    ushr-long/2addr p1, v7

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    :goto_1
    and-long v9, p1, v4

    .line 70
    .line 71
    cmp-long v1, v9, v2

    .line 72
    .line 73
    if-nez v1, :cond_2

    .line 74
    .line 75
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/atv_ads_framework/L;->f:I

    .line 76
    .line 77
    add-int/lit8 v2, v1, 0x1

    .line 78
    .line 79
    iput v2, p0, Lcom/google/android/gms/internal/atv_ads_framework/L;->f:I

    .line 80
    .line 81
    long-to-int p2, p1

    .line 82
    int-to-byte p1, p2

    .line 83
    aput-byte p1, v8, v1

    .line 84
    .line 85
    return-void

    .line 86
    :catch_0
    move-exception p1

    .line 87
    goto :goto_2

    .line 88
    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/atv_ads_framework/L;->f:I

    .line 89
    .line 90
    add-int/lit8 v9, v1, 0x1

    .line 91
    .line 92
    iput v9, p0, Lcom/google/android/gms/internal/atv_ads_framework/L;->f:I

    .line 93
    .line 94
    long-to-int v9, p1

    .line 95
    and-int/lit8 v9, v9, 0x7f

    .line 96
    .line 97
    or-int/lit16 v9, v9, 0x80

    .line 98
    .line 99
    int-to-byte v9, v9

    .line 100
    aput-byte v9, v8, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .line 102
    ushr-long/2addr p1, v7

    .line 103
    goto :goto_1

    .line 104
    :goto_2
    new-instance p2, LI0/u;

    .line 105
    .line 106
    iget v1, p0, Lcom/google/android/gms/internal/atv_ads_framework/L;->f:I

    .line 107
    .line 108
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    const/4 v4, 0x3

    .line 121
    new-array v4, v4, [Ljava/lang/Object;

    .line 122
    .line 123
    const/4 v5, 0x0

    .line 124
    aput-object v1, v4, v5

    .line 125
    .line 126
    aput-object v2, v4, v0

    .line 127
    .line 128
    const/4 v0, 0x2

    .line 129
    aput-object v3, v4, v0

    .line 130
    .line 131
    const-string v0, "Pos: %d, limit: %d, len: %d"

    .line 132
    .line 133
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-direct {p2, v0, v7, p1}, LI0/u;-><init>(Ljava/lang/String;ILjava/lang/IndexOutOfBoundsException;)V

    .line 138
    .line 139
    .line 140
    throw p2
.end method
