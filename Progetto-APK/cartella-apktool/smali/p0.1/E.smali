.class public final Lp0/E;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:[C

.field public static final e:[C

.field public static final f:Lz4/L;


# instance fields
.field public a:[B

.field public b:I

.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x2

    .line 3
    new-array v2, v1, [C

    .line 4
    .line 5
    fill-array-data v2, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v2, Lp0/E;->d:[C

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    new-array v3, v2, [C

    .line 12
    .line 13
    const/16 v4, 0xa

    .line 14
    .line 15
    const/4 v5, 0x0

    .line 16
    aput-char v4, v3, v5

    .line 17
    .line 18
    sput-object v3, Lp0/E;->e:[C

    .line 19
    .line 20
    new-array v3, v0, [Ljava/lang/Object;

    .line 21
    .line 22
    sget-object v4, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 23
    .line 24
    aput-object v4, v3, v5

    .line 25
    .line 26
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 27
    .line 28
    aput-object v4, v3, v2

    .line 29
    .line 30
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    .line 31
    .line 32
    aput-object v2, v3, v1

    .line 33
    .line 34
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    .line 35
    .line 36
    const/4 v2, 0x3

    .line 37
    aput-object v1, v3, v2

    .line 38
    .line 39
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    .line 40
    .line 41
    const/4 v2, 0x4

    .line 42
    aput-object v1, v3, v2

    .line 43
    .line 44
    invoke-static {v0, v3}, Lz4/L;->q(I[Ljava/lang/Object;)Lz4/L;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sput-object v0, Lp0/E;->f:Lz4/L;

    .line 49
    .line 50
    return-void

    .line 51
    :array_0
    .array-data 2
        0xds
        0xas
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lp0/M;->b:[B

    iput-object v0, p0, Lp0/E;->a:[B

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-array v0, p1, [B

    iput-object v0, p0, Lp0/E;->a:[B

    .line 5
    iput p1, p0, Lp0/E;->c:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lp0/E;->a:[B

    .line 8
    array-length p1, p1

    iput p1, p0, Lp0/E;->c:I

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lp0/E;->a:[B

    .line 11
    iput p2, p0, Lp0/E;->c:I

    return-void
.end method

.method public static b(IIII)I
    .locals 2

    .line 1
    and-int/lit8 p0, p0, 0x7

    .line 2
    .line 3
    shl-int/lit8 p0, p0, 0x2

    .line 4
    .line 5
    and-int/lit8 v0, p1, 0x30

    .line 6
    .line 7
    shr-int/lit8 v0, v0, 0x4

    .line 8
    .line 9
    or-int/2addr p0, v0

    .line 10
    int-to-long v0, p0

    .line 11
    invoke-static {v0, v1}, Lz4/q0;->j(J)B

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    int-to-byte p1, p1

    .line 16
    and-int/lit8 p1, p1, 0xf

    .line 17
    .line 18
    shl-int/lit8 p1, p1, 0x4

    .line 19
    .line 20
    int-to-byte p2, p2

    .line 21
    and-int/lit8 v0, p2, 0x3c

    .line 22
    .line 23
    shr-int/lit8 v0, v0, 0x2

    .line 24
    .line 25
    or-int/2addr p1, v0

    .line 26
    int-to-long v0, p1

    .line 27
    invoke-static {v0, v1}, Lz4/q0;->j(J)B

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    and-int/lit8 p2, p2, 0x3

    .line 32
    .line 33
    shl-int/lit8 p2, p2, 0x6

    .line 34
    .line 35
    int-to-byte p3, p3

    .line 36
    and-int/lit8 p3, p3, 0x3f

    .line 37
    .line 38
    or-int/2addr p2, p3

    .line 39
    int-to-long p2, p2

    .line 40
    invoke-static {p2, p3}, Lz4/q0;->j(J)B

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    const/4 p3, 0x0

    .line 45
    invoke-static {p3, p0, p1, p2}, Ly4/k;->C(BBBB)I

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    return p0
.end method

.method public static f(Ljava/nio/charset/Charset;)I
    .locals 3

    .line 1
    sget-object v0, Lp0/E;->f:Lz4/L;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lz4/C;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "Unsupported charset: "

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/H1;->c(Ljava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-eqz p0, :cond_0

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 p0, 0x2

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 44
    :goto_1
    return p0
.end method

.method public static g(B)Z
    .locals 1

    .line 1
    and-int/lit16 p0, p0, 0xc0

    .line 2
    .line 3
    const/16 v0, 0x80

    .line 4
    .line 5
    if-ne p0, v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method


# virtual methods
.method public final A()I
    .locals 4

    .line 1
    iget-object v0, p0, Lp0/E;->a:[B

    .line 2
    .line 3
    iget v1, p0, Lp0/E;->b:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    aget-byte v3, v0, v1

    .line 8
    .line 9
    and-int/lit16 v3, v3, 0xff

    .line 10
    .line 11
    shl-int/lit8 v3, v3, 0x8

    .line 12
    .line 13
    aget-byte v0, v0, v2

    .line 14
    .line 15
    and-int/lit16 v0, v0, 0xff

    .line 16
    .line 17
    or-int/2addr v0, v3

    .line 18
    add-int/lit8 v1, v1, 0x4

    .line 19
    .line 20
    iput v1, p0, Lp0/E;->b:I

    .line 21
    .line 22
    return v0
.end method

.method public final B()J
    .locals 10

    .line 1
    iget-object v0, p0, Lp0/E;->a:[B

    .line 2
    .line 3
    iget v1, p0, Lp0/E;->b:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    aget-byte v3, v0, v1

    .line 8
    .line 9
    int-to-long v3, v3

    .line 10
    const-wide/16 v5, 0xff

    .line 11
    .line 12
    and-long/2addr v3, v5

    .line 13
    const/16 v7, 0x18

    .line 14
    .line 15
    shl-long/2addr v3, v7

    .line 16
    add-int/lit8 v7, v1, 0x2

    .line 17
    .line 18
    aget-byte v2, v0, v2

    .line 19
    .line 20
    int-to-long v8, v2

    .line 21
    and-long/2addr v8, v5

    .line 22
    const/16 v2, 0x10

    .line 23
    .line 24
    shl-long/2addr v8, v2

    .line 25
    or-long v2, v3, v8

    .line 26
    .line 27
    add-int/lit8 v4, v1, 0x3

    .line 28
    .line 29
    aget-byte v7, v0, v7

    .line 30
    .line 31
    int-to-long v7, v7

    .line 32
    and-long/2addr v7, v5

    .line 33
    const/16 v9, 0x8

    .line 34
    .line 35
    shl-long/2addr v7, v9

    .line 36
    or-long/2addr v2, v7

    .line 37
    add-int/lit8 v1, v1, 0x4

    .line 38
    .line 39
    iput v1, p0, Lp0/E;->b:I

    .line 40
    .line 41
    aget-byte v0, v0, v4

    .line 42
    .line 43
    int-to-long v0, v0

    .line 44
    and-long/2addr v0, v5

    .line 45
    or-long/2addr v0, v2

    .line 46
    return-wide v0
.end method

.method public final C()I
    .locals 5

    .line 1
    iget-object v0, p0, Lp0/E;->a:[B

    .line 2
    .line 3
    iget v1, p0, Lp0/E;->b:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    aget-byte v3, v0, v1

    .line 8
    .line 9
    and-int/lit16 v3, v3, 0xff

    .line 10
    .line 11
    shl-int/lit8 v3, v3, 0x10

    .line 12
    .line 13
    add-int/lit8 v4, v1, 0x2

    .line 14
    .line 15
    aget-byte v2, v0, v2

    .line 16
    .line 17
    and-int/lit16 v2, v2, 0xff

    .line 18
    .line 19
    shl-int/lit8 v2, v2, 0x8

    .line 20
    .line 21
    or-int/2addr v2, v3

    .line 22
    add-int/lit8 v1, v1, 0x3

    .line 23
    .line 24
    iput v1, p0, Lp0/E;->b:I

    .line 25
    .line 26
    aget-byte v0, v0, v4

    .line 27
    .line 28
    and-int/lit16 v0, v0, 0xff

    .line 29
    .line 30
    or-int/2addr v0, v2

    .line 31
    return v0
.end method

.method public final D()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lp0/E;->l()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    const-string v2, "Top bit not zero: "

    .line 11
    .line 12
    invoke-static {v2, v0}, La/r;->f(Ljava/lang/String;I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw v1
.end method

.method public final E()J
    .locals 5

    .line 1
    invoke-virtual {p0}, Lp0/E;->t()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v4, v0, v2

    .line 8
    .line 9
    if-ltz v4, :cond_0

    .line 10
    .line 11
    return-wide v0

    .line 12
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    const-string v3, "Top bit not zero: "

    .line 15
    .line 16
    invoke-static {v3, v0, v1}, LA0/O;->z(Ljava/lang/String;J)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v2
.end method

.method public final F()I
    .locals 4

    .line 1
    iget-object v0, p0, Lp0/E;->a:[B

    .line 2
    .line 3
    iget v1, p0, Lp0/E;->b:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    aget-byte v3, v0, v1

    .line 8
    .line 9
    and-int/lit16 v3, v3, 0xff

    .line 10
    .line 11
    shl-int/lit8 v3, v3, 0x8

    .line 12
    .line 13
    add-int/lit8 v1, v1, 0x2

    .line 14
    .line 15
    iput v1, p0, Lp0/E;->b:I

    .line 16
    .line 17
    aget-byte v0, v0, v2

    .line 18
    .line 19
    and-int/lit16 v0, v0, 0xff

    .line 20
    .line 21
    or-int/2addr v0, v3

    .line 22
    return v0
.end method

.method public final G()J
    .locals 12

    .line 1
    iget-object v0, p0, Lp0/E;->a:[B

    .line 2
    .line 3
    iget v1, p0, Lp0/E;->b:I

    .line 4
    .line 5
    aget-byte v0, v0, v1

    .line 6
    .line 7
    int-to-long v0, v0

    .line 8
    const/4 v2, 0x7

    .line 9
    const/4 v3, 0x7

    .line 10
    :goto_0
    const/4 v4, 0x6

    .line 11
    const/4 v5, 0x1

    .line 12
    if-ltz v3, :cond_2

    .line 13
    .line 14
    shl-int v6, v5, v3

    .line 15
    .line 16
    int-to-long v7, v6

    .line 17
    and-long/2addr v7, v0

    .line 18
    const-wide/16 v9, 0x0

    .line 19
    .line 20
    cmp-long v11, v7, v9

    .line 21
    .line 22
    if-nez v11, :cond_1

    .line 23
    .line 24
    if-ge v3, v4, :cond_0

    .line 25
    .line 26
    sub-int/2addr v6, v5

    .line 27
    int-to-long v6, v6

    .line 28
    and-long/2addr v0, v6

    .line 29
    sub-int/2addr v2, v3

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    if-ne v3, v2, :cond_2

    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    add-int/lit8 v3, v3, -0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    const/4 v2, 0x0

    .line 39
    :goto_1
    if-eqz v2, :cond_5

    .line 40
    .line 41
    :goto_2
    if-ge v5, v2, :cond_4

    .line 42
    .line 43
    iget-object v3, p0, Lp0/E;->a:[B

    .line 44
    .line 45
    iget v6, p0, Lp0/E;->b:I

    .line 46
    .line 47
    add-int/2addr v6, v5

    .line 48
    aget-byte v3, v3, v6

    .line 49
    .line 50
    and-int/lit16 v6, v3, 0xc0

    .line 51
    .line 52
    const/16 v7, 0x80

    .line 53
    .line 54
    if-ne v6, v7, :cond_3

    .line 55
    .line 56
    shl-long/2addr v0, v4

    .line 57
    and-int/lit8 v3, v3, 0x3f

    .line 58
    .line 59
    int-to-long v6, v3

    .line 60
    or-long/2addr v0, v6

    .line 61
    add-int/lit8 v5, v5, 0x1

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_3
    new-instance v2, Ljava/lang/NumberFormatException;

    .line 65
    .line 66
    const-string v3, "Invalid UTF-8 sequence continuation byte: "

    .line 67
    .line 68
    invoke-static {v3, v0, v1}, LA0/O;->z(Ljava/lang/String;J)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-direct {v2, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw v2

    .line 76
    :cond_4
    iget v3, p0, Lp0/E;->b:I

    .line 77
    .line 78
    add-int/2addr v3, v2

    .line 79
    iput v3, p0, Lp0/E;->b:I

    .line 80
    .line 81
    return-wide v0

    .line 82
    :cond_5
    new-instance v2, Ljava/lang/NumberFormatException;

    .line 83
    .line 84
    const-string v3, "Invalid UTF-8 sequence first byte: "

    .line 85
    .line 86
    invoke-static {v3, v0, v1}, LA0/O;->z(Ljava/lang/String;J)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-direct {v2, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw v2
.end method

.method public final H()Ljava/nio/charset/Charset;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lp0/E;->a()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lp0/E;->a:[B

    .line 9
    .line 10
    iget v2, p0, Lp0/E;->b:I

    .line 11
    .line 12
    aget-byte v3, v0, v2

    .line 13
    .line 14
    const/16 v4, -0x11

    .line 15
    .line 16
    if-ne v3, v4, :cond_0

    .line 17
    .line 18
    add-int/lit8 v3, v2, 0x1

    .line 19
    .line 20
    aget-byte v3, v0, v3

    .line 21
    .line 22
    const/16 v4, -0x45

    .line 23
    .line 24
    if-ne v3, v4, :cond_0

    .line 25
    .line 26
    add-int/lit8 v3, v2, 0x2

    .line 27
    .line 28
    aget-byte v0, v0, v3

    .line 29
    .line 30
    const/16 v3, -0x41

    .line 31
    .line 32
    if-ne v0, v3, :cond_0

    .line 33
    .line 34
    add-int/2addr v2, v1

    .line 35
    iput v2, p0, Lp0/E;->b:I

    .line 36
    .line 37
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 38
    .line 39
    return-object v0

    .line 40
    :cond_0
    invoke-virtual {p0}, Lp0/E;->a()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    const/4 v1, 0x2

    .line 45
    if-lt v0, v1, :cond_2

    .line 46
    .line 47
    iget-object v0, p0, Lp0/E;->a:[B

    .line 48
    .line 49
    iget v2, p0, Lp0/E;->b:I

    .line 50
    .line 51
    aget-byte v3, v0, v2

    .line 52
    .line 53
    const/4 v4, -0x1

    .line 54
    const/4 v5, -0x2

    .line 55
    if-ne v3, v5, :cond_1

    .line 56
    .line 57
    add-int/lit8 v6, v2, 0x1

    .line 58
    .line 59
    aget-byte v6, v0, v6

    .line 60
    .line 61
    if-ne v6, v4, :cond_1

    .line 62
    .line 63
    add-int/2addr v2, v1

    .line 64
    iput v2, p0, Lp0/E;->b:I

    .line 65
    .line 66
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    .line 67
    .line 68
    return-object v0

    .line 69
    :cond_1
    if-ne v3, v4, :cond_2

    .line 70
    .line 71
    add-int/lit8 v3, v2, 0x1

    .line 72
    .line 73
    aget-byte v0, v0, v3

    .line 74
    .line 75
    if-ne v0, v5, :cond_2

    .line 76
    .line 77
    add-int/2addr v2, v1

    .line 78
    iput v2, p0, Lp0/E;->b:I

    .line 79
    .line 80
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    .line 81
    .line 82
    return-object v0

    .line 83
    :cond_2
    const/4 v0, 0x0

    .line 84
    return-object v0
.end method

.method public final I(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lp0/E;->a:[B

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    if-ge v1, p1, :cond_0

    .line 5
    .line 6
    new-array v0, p1, [B

    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0, p1, v0}, Lp0/E;->J(I[B)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final J(I[B)V
    .locals 0

    .line 1
    iput-object p2, p0, Lp0/E;->a:[B

    .line 2
    .line 3
    iput p1, p0, Lp0/E;->c:I

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lp0/E;->b:I

    .line 7
    .line 8
    return-void
.end method

.method public final K(I)V
    .locals 1

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lp0/E;->a:[B

    .line 4
    .line 5
    array-length v0, v0

    .line 6
    if-gt p1, v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 12
    .line 13
    .line 14
    iput p1, p0, Lp0/E;->c:I

    .line 15
    .line 16
    return-void
.end method

.method public final L(I)V
    .locals 1

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iget v0, p0, Lp0/E;->c:I

    .line 4
    .line 5
    if-gt p1, v0, :cond_0

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
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 11
    .line 12
    .line 13
    iput p1, p0, Lp0/E;->b:I

    .line 14
    .line 15
    return-void
.end method

.method public final M(I)V
    .locals 1

    .line 1
    iget v0, p0, Lp0/E;->b:I

    .line 2
    .line 3
    add-int/2addr v0, p1

    .line 4
    invoke-virtual {p0, v0}, Lp0/E;->L(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final a()I
    .locals 2

    .line 1
    iget v0, p0, Lp0/E;->c:I

    .line 2
    .line 3
    iget v1, p0, Lp0/E;->b:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final c(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lp0/E;->a:[B

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    if-le p1, v1, :cond_0

    .line 5
    .line 6
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lp0/E;->a:[B

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final d()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lp0/E;->a:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public final e()I
    .locals 1

    .line 1
    iget v0, p0, Lp0/E;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public final h(ILjava/nio/ByteOrder;)C
    .locals 1

    .line 1
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 2
    .line 3
    if-ne p2, v0, :cond_0

    .line 4
    .line 5
    iget-object p2, p0, Lp0/E;->a:[B

    .line 6
    .line 7
    iget v0, p0, Lp0/E;->b:I

    .line 8
    .line 9
    add-int/2addr v0, p1

    .line 10
    aget-byte p1, p2, v0

    .line 11
    .line 12
    add-int/lit8 v0, v0, 0x1

    .line 13
    .line 14
    aget-byte p2, p2, v0

    .line 15
    .line 16
    :goto_0
    shl-int/lit8 p1, p1, 0x8

    .line 17
    .line 18
    and-int/lit16 p2, p2, 0xff

    .line 19
    .line 20
    or-int/2addr p1, p2

    .line 21
    int-to-char p1, p1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    iget-object p2, p0, Lp0/E;->a:[B

    .line 24
    .line 25
    iget v0, p0, Lp0/E;->b:I

    .line 26
    .line 27
    add-int/2addr v0, p1

    .line 28
    add-int/lit8 p1, v0, 0x1

    .line 29
    .line 30
    aget-byte p1, p2, p1

    .line 31
    .line 32
    aget-byte p2, p2, v0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :goto_1
    return p1
.end method

.method public final i(Ljava/nio/charset/Charset;)I
    .locals 7

    .line 1
    sget-object v0, Lp0/E;->f:Lz4/L;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lz4/C;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "Unsupported charset: "

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/H1;->c(Ljava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lp0/E;->a()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-static {p1}, Lp0/E;->f(Ljava/nio/charset/Charset;)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-lt v0, v1, :cond_d

    .line 33
    .line 34
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    const/4 v1, 0x1

    .line 41
    const/4 v2, 0x0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    iget-object p1, p0, Lp0/E;->a:[B

    .line 45
    .line 46
    iget v0, p0, Lp0/E;->b:I

    .line 47
    .line 48
    aget-byte p1, p1, v0

    .line 49
    .line 50
    and-int/lit16 v0, p1, 0x80

    .line 51
    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    return v2

    .line 55
    :cond_0
    and-int/lit16 p1, p1, 0xff

    .line 56
    .line 57
    goto/16 :goto_3

    .line 58
    .line 59
    :cond_1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    const/4 v3, 0x2

    .line 66
    const/4 v4, 0x4

    .line 67
    if-eqz v0, :cond_a

    .line 68
    .line 69
    iget-object p1, p0, Lp0/E;->a:[B

    .line 70
    .line 71
    iget v0, p0, Lp0/E;->b:I

    .line 72
    .line 73
    aget-byte p1, p1, v0

    .line 74
    .line 75
    and-int/lit16 v0, p1, 0x80

    .line 76
    .line 77
    const/4 v5, 0x3

    .line 78
    if-nez v0, :cond_2

    .line 79
    .line 80
    const/4 p1, 0x1

    .line 81
    goto/16 :goto_0

    .line 82
    .line 83
    :cond_2
    const/16 v0, 0xe0

    .line 84
    .line 85
    and-int/2addr p1, v0

    .line 86
    const/16 v6, 0xc0

    .line 87
    .line 88
    if-ne p1, v6, :cond_3

    .line 89
    .line 90
    invoke-virtual {p0}, Lp0/E;->a()I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-lt p1, v3, :cond_3

    .line 95
    .line 96
    iget-object p1, p0, Lp0/E;->a:[B

    .line 97
    .line 98
    iget v6, p0, Lp0/E;->b:I

    .line 99
    .line 100
    add-int/2addr v6, v1

    .line 101
    aget-byte p1, p1, v6

    .line 102
    .line 103
    invoke-static {p1}, Lp0/E;->g(B)Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-eqz p1, :cond_3

    .line 108
    .line 109
    const/4 p1, 0x2

    .line 110
    goto :goto_0

    .line 111
    :cond_3
    iget-object p1, p0, Lp0/E;->a:[B

    .line 112
    .line 113
    iget v6, p0, Lp0/E;->b:I

    .line 114
    .line 115
    aget-byte p1, p1, v6

    .line 116
    .line 117
    const/16 v6, 0xf0

    .line 118
    .line 119
    and-int/2addr p1, v6

    .line 120
    if-ne p1, v0, :cond_4

    .line 121
    .line 122
    invoke-virtual {p0}, Lp0/E;->a()I

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    if-lt p1, v5, :cond_4

    .line 127
    .line 128
    iget-object p1, p0, Lp0/E;->a:[B

    .line 129
    .line 130
    iget v0, p0, Lp0/E;->b:I

    .line 131
    .line 132
    add-int/2addr v0, v1

    .line 133
    aget-byte p1, p1, v0

    .line 134
    .line 135
    invoke-static {p1}, Lp0/E;->g(B)Z

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    if-eqz p1, :cond_4

    .line 140
    .line 141
    iget-object p1, p0, Lp0/E;->a:[B

    .line 142
    .line 143
    iget v0, p0, Lp0/E;->b:I

    .line 144
    .line 145
    add-int/2addr v0, v3

    .line 146
    aget-byte p1, p1, v0

    .line 147
    .line 148
    invoke-static {p1}, Lp0/E;->g(B)Z

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    if-eqz p1, :cond_4

    .line 153
    .line 154
    const/4 p1, 0x3

    .line 155
    goto :goto_0

    .line 156
    :cond_4
    iget-object p1, p0, Lp0/E;->a:[B

    .line 157
    .line 158
    iget v0, p0, Lp0/E;->b:I

    .line 159
    .line 160
    aget-byte p1, p1, v0

    .line 161
    .line 162
    and-int/lit16 p1, p1, 0xf8

    .line 163
    .line 164
    if-ne p1, v6, :cond_5

    .line 165
    .line 166
    invoke-virtual {p0}, Lp0/E;->a()I

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    if-lt p1, v4, :cond_5

    .line 171
    .line 172
    iget-object p1, p0, Lp0/E;->a:[B

    .line 173
    .line 174
    iget v0, p0, Lp0/E;->b:I

    .line 175
    .line 176
    add-int/2addr v0, v1

    .line 177
    aget-byte p1, p1, v0

    .line 178
    .line 179
    invoke-static {p1}, Lp0/E;->g(B)Z

    .line 180
    .line 181
    .line 182
    move-result p1

    .line 183
    if-eqz p1, :cond_5

    .line 184
    .line 185
    iget-object p1, p0, Lp0/E;->a:[B

    .line 186
    .line 187
    iget v0, p0, Lp0/E;->b:I

    .line 188
    .line 189
    add-int/2addr v0, v3

    .line 190
    aget-byte p1, p1, v0

    .line 191
    .line 192
    invoke-static {p1}, Lp0/E;->g(B)Z

    .line 193
    .line 194
    .line 195
    move-result p1

    .line 196
    if-eqz p1, :cond_5

    .line 197
    .line 198
    iget-object p1, p0, Lp0/E;->a:[B

    .line 199
    .line 200
    iget v0, p0, Lp0/E;->b:I

    .line 201
    .line 202
    add-int/2addr v0, v5

    .line 203
    aget-byte p1, p1, v0

    .line 204
    .line 205
    invoke-static {p1}, Lp0/E;->g(B)Z

    .line 206
    .line 207
    .line 208
    move-result p1

    .line 209
    if-eqz p1, :cond_5

    .line 210
    .line 211
    const/4 p1, 0x4

    .line 212
    goto :goto_0

    .line 213
    :cond_5
    const/4 p1, 0x0

    .line 214
    :goto_0
    if-eq p1, v1, :cond_9

    .line 215
    .line 216
    if-eq p1, v3, :cond_8

    .line 217
    .line 218
    if-eq p1, v5, :cond_7

    .line 219
    .line 220
    if-eq p1, v4, :cond_6

    .line 221
    .line 222
    return v2

    .line 223
    :cond_6
    iget-object v0, p0, Lp0/E;->a:[B

    .line 224
    .line 225
    iget v1, p0, Lp0/E;->b:I

    .line 226
    .line 227
    aget-byte v2, v0, v1

    .line 228
    .line 229
    add-int/lit8 v3, v1, 0x1

    .line 230
    .line 231
    aget-byte v3, v0, v3

    .line 232
    .line 233
    add-int/lit8 v4, v1, 0x2

    .line 234
    .line 235
    aget-byte v4, v0, v4

    .line 236
    .line 237
    add-int/2addr v1, v5

    .line 238
    aget-byte v0, v0, v1

    .line 239
    .line 240
    invoke-static {v2, v3, v4, v0}, Lp0/E;->b(IIII)I

    .line 241
    .line 242
    .line 243
    move-result v0

    .line 244
    :goto_1
    move v1, p1

    .line 245
    move p1, v0

    .line 246
    goto :goto_3

    .line 247
    :cond_7
    iget-object v0, p0, Lp0/E;->a:[B

    .line 248
    .line 249
    iget v1, p0, Lp0/E;->b:I

    .line 250
    .line 251
    aget-byte v4, v0, v1

    .line 252
    .line 253
    and-int/lit8 v4, v4, 0xf

    .line 254
    .line 255
    add-int/lit8 v5, v1, 0x1

    .line 256
    .line 257
    aget-byte v5, v0, v5

    .line 258
    .line 259
    add-int/2addr v1, v3

    .line 260
    aget-byte v0, v0, v1

    .line 261
    .line 262
    invoke-static {v2, v4, v5, v0}, Lp0/E;->b(IIII)I

    .line 263
    .line 264
    .line 265
    move-result v0

    .line 266
    goto :goto_1

    .line 267
    :cond_8
    iget-object v0, p0, Lp0/E;->a:[B

    .line 268
    .line 269
    iget v3, p0, Lp0/E;->b:I

    .line 270
    .line 271
    aget-byte v4, v0, v3

    .line 272
    .line 273
    add-int/2addr v3, v1

    .line 274
    aget-byte v0, v0, v3

    .line 275
    .line 276
    invoke-static {v2, v2, v4, v0}, Lp0/E;->b(IIII)I

    .line 277
    .line 278
    .line 279
    move-result v0

    .line 280
    goto :goto_1

    .line 281
    :cond_9
    iget-object v0, p0, Lp0/E;->a:[B

    .line 282
    .line 283
    iget v1, p0, Lp0/E;->b:I

    .line 284
    .line 285
    aget-byte v0, v0, v1

    .line 286
    .line 287
    and-int/lit16 v0, v0, 0xff

    .line 288
    .line 289
    goto :goto_1

    .line 290
    :cond_a
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    .line 291
    .line 292
    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    move-result p1

    .line 296
    if-eqz p1, :cond_b

    .line 297
    .line 298
    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 299
    .line 300
    goto :goto_2

    .line 301
    :cond_b
    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 302
    .line 303
    :goto_2
    invoke-virtual {p0, v2, p1}, Lp0/E;->h(ILjava/nio/ByteOrder;)C

    .line 304
    .line 305
    .line 306
    move-result v0

    .line 307
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    .line 308
    .line 309
    .line 310
    move-result v1

    .line 311
    if-eqz v1, :cond_c

    .line 312
    .line 313
    invoke-virtual {p0}, Lp0/E;->a()I

    .line 314
    .line 315
    .line 316
    move-result v1

    .line 317
    if-lt v1, v4, :cond_c

    .line 318
    .line 319
    invoke-virtual {p0, v3, p1}, Lp0/E;->h(ILjava/nio/ByteOrder;)C

    .line 320
    .line 321
    .line 322
    move-result p1

    .line 323
    invoke-static {v0, p1}, Ljava/lang/Character;->toCodePoint(CC)I

    .line 324
    .line 325
    .line 326
    move-result p1

    .line 327
    const/4 v1, 0x4

    .line 328
    goto :goto_3

    .line 329
    :cond_c
    move p1, v0

    .line 330
    const/4 v1, 0x2

    .line 331
    :goto_3
    shl-int/lit8 p1, p1, 0x8

    .line 332
    .line 333
    or-int/2addr p1, v1

    .line 334
    return p1

    .line 335
    :cond_d
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 336
    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    .line 338
    .line 339
    const-string v1, "position="

    .line 340
    .line 341
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    iget v1, p0, Lp0/E;->b:I

    .line 345
    .line 346
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    const-string v1, ", limit="

    .line 350
    .line 351
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    iget v1, p0, Lp0/E;->c:I

    .line 355
    .line 356
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    throw p1
.end method

.method public final j(I[BI)V
    .locals 2

    .line 1
    iget-object v0, p0, Lp0/E;->a:[B

    .line 2
    .line 3
    iget v1, p0, Lp0/E;->b:I

    .line 4
    .line 5
    invoke-static {v0, v1, p2, p1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    .line 7
    .line 8
    iget p1, p0, Lp0/E;->b:I

    .line 9
    .line 10
    add-int/2addr p1, p3

    .line 11
    iput p1, p0, Lp0/E;->b:I

    .line 12
    .line 13
    return-void
.end method

.method public final k(Ljava/nio/charset/Charset;[C)C
    .locals 9

    .line 1
    invoke-virtual {p0}, Lp0/E;->a()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1}, Lp0/E;->f(Ljava/nio/charset/Charset;)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-ge v0, v1, :cond_0

    .line 11
    .line 12
    return v2

    .line 13
    :cond_0
    invoke-virtual {p0, p1}, Lp0/E;->i(Ljava/nio/charset/Charset;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    return v2

    .line 20
    :cond_1
    ushr-int/lit8 v0, p1, 0x8

    .line 21
    .line 22
    int-to-long v0, v0

    .line 23
    const/16 v3, 0x20

    .line 24
    .line 25
    shr-long v3, v0, v3

    .line 26
    .line 27
    const-wide/16 v5, 0x0

    .line 28
    .line 29
    const/4 v7, 0x1

    .line 30
    cmp-long v8, v3, v5

    .line 31
    .line 32
    if-nez v8, :cond_2

    .line 33
    .line 34
    const/4 v3, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const/4 v3, 0x0

    .line 37
    :goto_0
    const-string v4, "out of range: %s"

    .line 38
    .line 39
    invoke-static {v0, v1, v4, v3}, Ly4/k;->n(JLjava/lang/String;Z)V

    .line 40
    .line 41
    .line 42
    long-to-int v1, v0

    .line 43
    invoke-static {v1}, Ljava/lang/Character;->isSupplementaryCodePoint(I)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    return v2

    .line 50
    :cond_3
    int-to-long v0, v1

    .line 51
    long-to-int v3, v0

    .line 52
    int-to-char v3, v3

    .line 53
    int-to-long v4, v3

    .line 54
    cmp-long v6, v4, v0

    .line 55
    .line 56
    if-nez v6, :cond_4

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_4
    const/4 v7, 0x0

    .line 60
    :goto_1
    const-string v4, "Out of range: %s"

    .line 61
    .line 62
    invoke-static {v0, v1, v4, v7}, Ly4/k;->n(JLjava/lang/String;Z)V

    .line 63
    .line 64
    .line 65
    array-length v0, p2

    .line 66
    const/4 v1, 0x0

    .line 67
    :goto_2
    if-ge v1, v0, :cond_6

    .line 68
    .line 69
    aget-char v4, p2, v1

    .line 70
    .line 71
    if-ne v4, v3, :cond_5

    .line 72
    .line 73
    iget p2, p0, Lp0/E;->b:I

    .line 74
    .line 75
    and-int/lit16 p1, p1, 0xff

    .line 76
    .line 77
    int-to-long v0, p1

    .line 78
    invoke-static {v0, v1}, Ly4/k;->y(J)I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    add-int/2addr p1, p2

    .line 83
    iput p1, p0, Lp0/E;->b:I

    .line 84
    .line 85
    return v3

    .line 86
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_6
    return v2
.end method

.method public final l()I
    .locals 5

    .line 1
    iget-object v0, p0, Lp0/E;->a:[B

    .line 2
    .line 3
    iget v1, p0, Lp0/E;->b:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    aget-byte v3, v0, v1

    .line 8
    .line 9
    and-int/lit16 v3, v3, 0xff

    .line 10
    .line 11
    shl-int/lit8 v3, v3, 0x18

    .line 12
    .line 13
    add-int/lit8 v4, v1, 0x2

    .line 14
    .line 15
    aget-byte v2, v0, v2

    .line 16
    .line 17
    and-int/lit16 v2, v2, 0xff

    .line 18
    .line 19
    shl-int/lit8 v2, v2, 0x10

    .line 20
    .line 21
    or-int/2addr v2, v3

    .line 22
    add-int/lit8 v3, v1, 0x3

    .line 23
    .line 24
    aget-byte v4, v0, v4

    .line 25
    .line 26
    and-int/lit16 v4, v4, 0xff

    .line 27
    .line 28
    shl-int/lit8 v4, v4, 0x8

    .line 29
    .line 30
    or-int/2addr v2, v4

    .line 31
    add-int/lit8 v1, v1, 0x4

    .line 32
    .line 33
    iput v1, p0, Lp0/E;->b:I

    .line 34
    .line 35
    aget-byte v0, v0, v3

    .line 36
    .line 37
    and-int/lit16 v0, v0, 0xff

    .line 38
    .line 39
    or-int/2addr v0, v2

    .line 40
    return v0
.end method

.method public final m(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lp0/E;->f:Lz4/L;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lz4/C;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v2, "Unsupported charset: "

    .line 10
    .line 11
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/measurement/H1;->c(Ljava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lp0/E;->a()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    return-object p1

    .line 32
    :cond_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0}, Lp0/E;->H()Ljava/nio/charset/Charset;

    .line 41
    .line 42
    .line 43
    :cond_1
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 44
    .line 45
    invoke-virtual {p1, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-nez v1, :cond_5

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_2
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    .line 59
    .line 60
    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_4

    .line 65
    .line 66
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_4

    .line 73
    .line 74
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    .line 75
    .line 76
    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_3

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 84
    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw v0

    .line 101
    :cond_4
    :goto_0
    const/4 v0, 0x2

    .line 102
    goto :goto_2

    .line 103
    :cond_5
    :goto_1
    const/4 v0, 0x1

    .line 104
    :goto_2
    iget v1, p0, Lp0/E;->b:I

    .line 105
    .line 106
    :goto_3
    iget v2, p0, Lp0/E;->c:I

    .line 107
    .line 108
    add-int/lit8 v3, v0, -0x1

    .line 109
    .line 110
    sub-int v3, v2, v3

    .line 111
    .line 112
    if-ge v1, v3, :cond_b

    .line 113
    .line 114
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 115
    .line 116
    invoke-virtual {p1, v2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-nez v2, :cond_6

    .line 121
    .line 122
    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 123
    .line 124
    invoke-virtual {p1, v2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-eqz v2, :cond_7

    .line 129
    .line 130
    :cond_6
    iget-object v2, p0, Lp0/E;->a:[B

    .line 131
    .line 132
    aget-byte v2, v2, v1

    .line 133
    .line 134
    invoke-static {v2}, Lp0/M;->O(I)Z

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    if-eqz v2, :cond_7

    .line 139
    .line 140
    goto :goto_4

    .line 141
    :cond_7
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    .line 142
    .line 143
    invoke-virtual {p1, v2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    if-nez v2, :cond_8

    .line 148
    .line 149
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    .line 150
    .line 151
    invoke-virtual {p1, v2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    if-eqz v2, :cond_9

    .line 156
    .line 157
    :cond_8
    iget-object v2, p0, Lp0/E;->a:[B

    .line 158
    .line 159
    aget-byte v3, v2, v1

    .line 160
    .line 161
    if-nez v3, :cond_9

    .line 162
    .line 163
    add-int/lit8 v3, v1, 0x1

    .line 164
    .line 165
    aget-byte v2, v2, v3

    .line 166
    .line 167
    invoke-static {v2}, Lp0/M;->O(I)Z

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    if-eqz v2, :cond_9

    .line 172
    .line 173
    goto :goto_4

    .line 174
    :cond_9
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    .line 175
    .line 176
    invoke-virtual {p1, v2}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    if-eqz v2, :cond_a

    .line 181
    .line 182
    iget-object v2, p0, Lp0/E;->a:[B

    .line 183
    .line 184
    add-int/lit8 v3, v1, 0x1

    .line 185
    .line 186
    aget-byte v3, v2, v3

    .line 187
    .line 188
    if-nez v3, :cond_a

    .line 189
    .line 190
    aget-byte v2, v2, v1

    .line 191
    .line 192
    invoke-static {v2}, Lp0/M;->O(I)Z

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    if-eqz v2, :cond_a

    .line 197
    .line 198
    goto :goto_4

    .line 199
    :cond_a
    add-int/2addr v1, v0

    .line 200
    goto :goto_3

    .line 201
    :cond_b
    move v1, v2

    .line 202
    :goto_4
    iget v0, p0, Lp0/E;->b:I

    .line 203
    .line 204
    sub-int/2addr v1, v0

    .line 205
    invoke-virtual {p0, v1, p1}, Lp0/E;->x(ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    iget v1, p0, Lp0/E;->b:I

    .line 210
    .line 211
    iget v2, p0, Lp0/E;->c:I

    .line 212
    .line 213
    if-ne v1, v2, :cond_c

    .line 214
    .line 215
    return-object v0

    .line 216
    :cond_c
    sget-object v1, Lp0/E;->d:[C

    .line 217
    .line 218
    invoke-virtual {p0, p1, v1}, Lp0/E;->k(Ljava/nio/charset/Charset;[C)C

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    const/16 v2, 0xd

    .line 223
    .line 224
    if-ne v1, v2, :cond_d

    .line 225
    .line 226
    sget-object v1, Lp0/E;->e:[C

    .line 227
    .line 228
    invoke-virtual {p0, p1, v1}, Lp0/E;->k(Ljava/nio/charset/Charset;[C)C

    .line 229
    .line 230
    .line 231
    :cond_d
    return-object v0
.end method

.method public final n()I
    .locals 5

    .line 1
    iget-object v0, p0, Lp0/E;->a:[B

    .line 2
    .line 3
    iget v1, p0, Lp0/E;->b:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    aget-byte v3, v0, v1

    .line 8
    .line 9
    and-int/lit16 v3, v3, 0xff

    .line 10
    .line 11
    add-int/lit8 v4, v1, 0x2

    .line 12
    .line 13
    aget-byte v2, v0, v2

    .line 14
    .line 15
    and-int/lit16 v2, v2, 0xff

    .line 16
    .line 17
    shl-int/lit8 v2, v2, 0x8

    .line 18
    .line 19
    or-int/2addr v2, v3

    .line 20
    add-int/lit8 v3, v1, 0x3

    .line 21
    .line 22
    aget-byte v4, v0, v4

    .line 23
    .line 24
    and-int/lit16 v4, v4, 0xff

    .line 25
    .line 26
    shl-int/lit8 v4, v4, 0x10

    .line 27
    .line 28
    or-int/2addr v2, v4

    .line 29
    add-int/lit8 v1, v1, 0x4

    .line 30
    .line 31
    iput v1, p0, Lp0/E;->b:I

    .line 32
    .line 33
    aget-byte v0, v0, v3

    .line 34
    .line 35
    and-int/lit16 v0, v0, 0xff

    .line 36
    .line 37
    shl-int/lit8 v0, v0, 0x18

    .line 38
    .line 39
    or-int/2addr v0, v2

    .line 40
    return v0
.end method

.method public final o()J
    .locals 11

    .line 1
    iget-object v0, p0, Lp0/E;->a:[B

    .line 2
    .line 3
    iget v1, p0, Lp0/E;->b:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    aget-byte v3, v0, v1

    .line 8
    .line 9
    int-to-long v3, v3

    .line 10
    const-wide/16 v5, 0xff

    .line 11
    .line 12
    and-long/2addr v3, v5

    .line 13
    add-int/lit8 v7, v1, 0x2

    .line 14
    .line 15
    aget-byte v2, v0, v2

    .line 16
    .line 17
    int-to-long v8, v2

    .line 18
    and-long/2addr v8, v5

    .line 19
    const/16 v2, 0x8

    .line 20
    .line 21
    shl-long/2addr v8, v2

    .line 22
    or-long/2addr v3, v8

    .line 23
    add-int/lit8 v8, v1, 0x3

    .line 24
    .line 25
    aget-byte v7, v0, v7

    .line 26
    .line 27
    int-to-long v9, v7

    .line 28
    and-long/2addr v9, v5

    .line 29
    const/16 v7, 0x10

    .line 30
    .line 31
    shl-long/2addr v9, v7

    .line 32
    or-long/2addr v3, v9

    .line 33
    add-int/lit8 v7, v1, 0x4

    .line 34
    .line 35
    aget-byte v8, v0, v8

    .line 36
    .line 37
    int-to-long v8, v8

    .line 38
    and-long/2addr v8, v5

    .line 39
    const/16 v10, 0x18

    .line 40
    .line 41
    shl-long/2addr v8, v10

    .line 42
    or-long/2addr v3, v8

    .line 43
    add-int/lit8 v8, v1, 0x5

    .line 44
    .line 45
    aget-byte v7, v0, v7

    .line 46
    .line 47
    int-to-long v9, v7

    .line 48
    and-long/2addr v9, v5

    .line 49
    const/16 v7, 0x20

    .line 50
    .line 51
    shl-long/2addr v9, v7

    .line 52
    or-long/2addr v3, v9

    .line 53
    add-int/lit8 v7, v1, 0x6

    .line 54
    .line 55
    aget-byte v8, v0, v8

    .line 56
    .line 57
    int-to-long v8, v8

    .line 58
    and-long/2addr v8, v5

    .line 59
    const/16 v10, 0x28

    .line 60
    .line 61
    shl-long/2addr v8, v10

    .line 62
    or-long/2addr v3, v8

    .line 63
    add-int/lit8 v8, v1, 0x7

    .line 64
    .line 65
    aget-byte v7, v0, v7

    .line 66
    .line 67
    int-to-long v9, v7

    .line 68
    and-long/2addr v9, v5

    .line 69
    const/16 v7, 0x30

    .line 70
    .line 71
    shl-long/2addr v9, v7

    .line 72
    or-long/2addr v3, v9

    .line 73
    add-int/2addr v1, v2

    .line 74
    iput v1, p0, Lp0/E;->b:I

    .line 75
    .line 76
    aget-byte v0, v0, v8

    .line 77
    .line 78
    int-to-long v0, v0

    .line 79
    and-long/2addr v0, v5

    .line 80
    const/16 v2, 0x38

    .line 81
    .line 82
    shl-long/2addr v0, v2

    .line 83
    or-long/2addr v0, v3

    .line 84
    return-wide v0
.end method

.method public final p()S
    .locals 4

    .line 1
    iget-object v0, p0, Lp0/E;->a:[B

    .line 2
    .line 3
    iget v1, p0, Lp0/E;->b:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    aget-byte v3, v0, v1

    .line 8
    .line 9
    and-int/lit16 v3, v3, 0xff

    .line 10
    .line 11
    add-int/lit8 v1, v1, 0x2

    .line 12
    .line 13
    iput v1, p0, Lp0/E;->b:I

    .line 14
    .line 15
    aget-byte v0, v0, v2

    .line 16
    .line 17
    and-int/lit16 v0, v0, 0xff

    .line 18
    .line 19
    shl-int/lit8 v0, v0, 0x8

    .line 20
    .line 21
    or-int/2addr v0, v3

    .line 22
    int-to-short v0, v0

    .line 23
    return v0
.end method

.method public final q()J
    .locals 10

    .line 1
    iget-object v0, p0, Lp0/E;->a:[B

    .line 2
    .line 3
    iget v1, p0, Lp0/E;->b:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    aget-byte v3, v0, v1

    .line 8
    .line 9
    int-to-long v3, v3

    .line 10
    const-wide/16 v5, 0xff

    .line 11
    .line 12
    and-long/2addr v3, v5

    .line 13
    add-int/lit8 v7, v1, 0x2

    .line 14
    .line 15
    aget-byte v2, v0, v2

    .line 16
    .line 17
    int-to-long v8, v2

    .line 18
    and-long/2addr v8, v5

    .line 19
    const/16 v2, 0x8

    .line 20
    .line 21
    shl-long/2addr v8, v2

    .line 22
    or-long v2, v3, v8

    .line 23
    .line 24
    add-int/lit8 v4, v1, 0x3

    .line 25
    .line 26
    aget-byte v7, v0, v7

    .line 27
    .line 28
    int-to-long v7, v7

    .line 29
    and-long/2addr v7, v5

    .line 30
    const/16 v9, 0x10

    .line 31
    .line 32
    shl-long/2addr v7, v9

    .line 33
    or-long/2addr v2, v7

    .line 34
    add-int/lit8 v1, v1, 0x4

    .line 35
    .line 36
    iput v1, p0, Lp0/E;->b:I

    .line 37
    .line 38
    aget-byte v0, v0, v4

    .line 39
    .line 40
    int-to-long v0, v0

    .line 41
    and-long/2addr v0, v5

    .line 42
    const/16 v4, 0x18

    .line 43
    .line 44
    shl-long/2addr v0, v4

    .line 45
    or-long/2addr v0, v2

    .line 46
    return-wide v0
.end method

.method public final r()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lp0/E;->n()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    const-string v2, "Top bit not zero: "

    .line 11
    .line 12
    invoke-static {v2, v0}, La/r;->f(Ljava/lang/String;I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw v1
.end method

.method public final s()I
    .locals 4

    .line 1
    iget-object v0, p0, Lp0/E;->a:[B

    .line 2
    .line 3
    iget v1, p0, Lp0/E;->b:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    aget-byte v3, v0, v1

    .line 8
    .line 9
    and-int/lit16 v3, v3, 0xff

    .line 10
    .line 11
    add-int/lit8 v1, v1, 0x2

    .line 12
    .line 13
    iput v1, p0, Lp0/E;->b:I

    .line 14
    .line 15
    aget-byte v0, v0, v2

    .line 16
    .line 17
    and-int/lit16 v0, v0, 0xff

    .line 18
    .line 19
    shl-int/lit8 v0, v0, 0x8

    .line 20
    .line 21
    or-int/2addr v0, v3

    .line 22
    return v0
.end method

.method public final t()J
    .locals 10

    .line 1
    iget-object v0, p0, Lp0/E;->a:[B

    .line 2
    .line 3
    iget v1, p0, Lp0/E;->b:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    aget-byte v3, v0, v1

    .line 8
    .line 9
    int-to-long v3, v3

    .line 10
    const-wide/16 v5, 0xff

    .line 11
    .line 12
    and-long/2addr v3, v5

    .line 13
    const/16 v7, 0x38

    .line 14
    .line 15
    shl-long/2addr v3, v7

    .line 16
    add-int/lit8 v7, v1, 0x2

    .line 17
    .line 18
    aget-byte v2, v0, v2

    .line 19
    .line 20
    int-to-long v8, v2

    .line 21
    and-long/2addr v8, v5

    .line 22
    const/16 v2, 0x30

    .line 23
    .line 24
    shl-long/2addr v8, v2

    .line 25
    or-long v2, v3, v8

    .line 26
    .line 27
    add-int/lit8 v4, v1, 0x3

    .line 28
    .line 29
    aget-byte v7, v0, v7

    .line 30
    .line 31
    int-to-long v7, v7

    .line 32
    and-long/2addr v7, v5

    .line 33
    const/16 v9, 0x28

    .line 34
    .line 35
    shl-long/2addr v7, v9

    .line 36
    or-long/2addr v2, v7

    .line 37
    add-int/lit8 v7, v1, 0x4

    .line 38
    .line 39
    aget-byte v4, v0, v4

    .line 40
    .line 41
    int-to-long v8, v4

    .line 42
    and-long/2addr v8, v5

    .line 43
    const/16 v4, 0x20

    .line 44
    .line 45
    shl-long/2addr v8, v4

    .line 46
    or-long/2addr v2, v8

    .line 47
    add-int/lit8 v4, v1, 0x5

    .line 48
    .line 49
    aget-byte v7, v0, v7

    .line 50
    .line 51
    int-to-long v7, v7

    .line 52
    and-long/2addr v7, v5

    .line 53
    const/16 v9, 0x18

    .line 54
    .line 55
    shl-long/2addr v7, v9

    .line 56
    or-long/2addr v2, v7

    .line 57
    add-int/lit8 v7, v1, 0x6

    .line 58
    .line 59
    aget-byte v4, v0, v4

    .line 60
    .line 61
    int-to-long v8, v4

    .line 62
    and-long/2addr v8, v5

    .line 63
    const/16 v4, 0x10

    .line 64
    .line 65
    shl-long/2addr v8, v4

    .line 66
    or-long/2addr v2, v8

    .line 67
    add-int/lit8 v4, v1, 0x7

    .line 68
    .line 69
    aget-byte v7, v0, v7

    .line 70
    .line 71
    int-to-long v7, v7

    .line 72
    and-long/2addr v7, v5

    .line 73
    const/16 v9, 0x8

    .line 74
    .line 75
    shl-long/2addr v7, v9

    .line 76
    or-long/2addr v2, v7

    .line 77
    add-int/2addr v1, v9

    .line 78
    iput v1, p0, Lp0/E;->b:I

    .line 79
    .line 80
    aget-byte v0, v0, v4

    .line 81
    .line 82
    int-to-long v0, v0

    .line 83
    and-long/2addr v0, v5

    .line 84
    or-long/2addr v0, v2

    .line 85
    return-wide v0
.end method

.method public final u()Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lp0/E;->a()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    goto :goto_1

    .line 9
    :cond_0
    iget v0, p0, Lp0/E;->b:I

    .line 10
    .line 11
    :goto_0
    iget v1, p0, Lp0/E;->c:I

    .line 12
    .line 13
    if-ge v0, v1, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Lp0/E;->a:[B

    .line 16
    .line 17
    aget-byte v1, v1, v0

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    add-int/lit8 v0, v0, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object v1, p0, Lp0/E;->a:[B

    .line 25
    .line 26
    iget v2, p0, Lp0/E;->b:I

    .line 27
    .line 28
    sub-int v3, v0, v2

    .line 29
    .line 30
    sget-object v4, Lp0/M;->a:Ljava/lang/String;

    .line 31
    .line 32
    new-instance v4, Ljava/lang/String;

    .line 33
    .line 34
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 35
    .line 36
    invoke-direct {v4, v1, v2, v3, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 37
    .line 38
    .line 39
    iput v0, p0, Lp0/E;->b:I

    .line 40
    .line 41
    iget v1, p0, Lp0/E;->c:I

    .line 42
    .line 43
    if-ge v0, v1, :cond_2

    .line 44
    .line 45
    add-int/lit8 v0, v0, 0x1

    .line 46
    .line 47
    iput v0, p0, Lp0/E;->b:I

    .line 48
    .line 49
    :cond_2
    move-object v0, v4

    .line 50
    :goto_1
    return-object v0
.end method

.method public final v(I)Ljava/lang/String;
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, ""

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    iget v0, p0, Lp0/E;->b:I

    .line 7
    .line 8
    add-int v1, v0, p1

    .line 9
    .line 10
    add-int/lit8 v1, v1, -0x1

    .line 11
    .line 12
    iget v2, p0, Lp0/E;->c:I

    .line 13
    .line 14
    if-ge v1, v2, :cond_1

    .line 15
    .line 16
    iget-object v2, p0, Lp0/E;->a:[B

    .line 17
    .line 18
    aget-byte v1, v2, v1

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    add-int/lit8 v1, p1, -0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move v1, p1

    .line 26
    :goto_0
    iget-object v2, p0, Lp0/E;->a:[B

    .line 27
    .line 28
    sget-object v3, Lp0/M;->a:Ljava/lang/String;

    .line 29
    .line 30
    new-instance v3, Ljava/lang/String;

    .line 31
    .line 32
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 33
    .line 34
    invoke-direct {v3, v2, v0, v1, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 35
    .line 36
    .line 37
    iget v0, p0, Lp0/E;->b:I

    .line 38
    .line 39
    add-int/2addr v0, p1

    .line 40
    iput v0, p0, Lp0/E;->b:I

    .line 41
    .line 42
    return-object v3
.end method

.method public final w()S
    .locals 4

    .line 1
    iget-object v0, p0, Lp0/E;->a:[B

    .line 2
    .line 3
    iget v1, p0, Lp0/E;->b:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    aget-byte v3, v0, v1

    .line 8
    .line 9
    and-int/lit16 v3, v3, 0xff

    .line 10
    .line 11
    shl-int/lit8 v3, v3, 0x8

    .line 12
    .line 13
    add-int/lit8 v1, v1, 0x2

    .line 14
    .line 15
    iput v1, p0, Lp0/E;->b:I

    .line 16
    .line 17
    aget-byte v0, v0, v2

    .line 18
    .line 19
    and-int/lit16 v0, v0, 0xff

    .line 20
    .line 21
    or-int/2addr v0, v3

    .line 22
    int-to-short v0, v0

    .line 23
    return v0
.end method

.method public final x(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lp0/E;->a:[B

    .line 4
    .line 5
    iget v2, p0, Lp0/E;->b:I

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p1, p2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 8
    .line 9
    .line 10
    iget p2, p0, Lp0/E;->b:I

    .line 11
    .line 12
    add-int/2addr p2, p1

    .line 13
    iput p2, p0, Lp0/E;->b:I

    .line 14
    .line 15
    return-object v0
.end method

.method public final y()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Lp0/E;->z()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lp0/E;->z()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Lp0/E;->z()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p0}, Lp0/E;->z()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    shl-int/lit8 v0, v0, 0x15

    .line 18
    .line 19
    shl-int/lit8 v1, v1, 0xe

    .line 20
    .line 21
    or-int/2addr v0, v1

    .line 22
    shl-int/lit8 v1, v2, 0x7

    .line 23
    .line 24
    or-int/2addr v0, v1

    .line 25
    or-int/2addr v0, v3

    .line 26
    return v0
.end method

.method public final z()I
    .locals 3

    .line 1
    iget-object v0, p0, Lp0/E;->a:[B

    .line 2
    .line 3
    iget v1, p0, Lp0/E;->b:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iput v2, p0, Lp0/E;->b:I

    .line 8
    .line 9
    aget-byte v0, v0, v1

    .line 10
    .line 11
    and-int/lit16 v0, v0, 0xff

    .line 12
    .line 13
    return v0
.end method
