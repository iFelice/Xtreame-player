.class public final Li1/i;
.super Lcom/bumptech/glide/d;
.source "SourceFile"


# static fields
.field public static final f:LN/i;


# instance fields
.field public final e:Li1/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, LN/i;

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    invoke-direct {v0, v1}, LN/i;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Li1/i;->f:LN/i;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(LN/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Li1/i;->e:Li1/g;

    .line 5
    .line 6
    return-void
.end method

.method public static A(ILp0/E;)Li1/f;
    .locals 6

    .line 1
    invoke-virtual {p1}, Lp0/E;->z()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Li1/i;->K(I)Ljava/nio/charset/Charset;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    add-int/lit8 p0, p0, -0x1

    .line 10
    .line 11
    new-array v2, p0, [B

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-virtual {p1, v3, v2, p0}, Lp0/E;->j(I[BI)V

    .line 15
    .line 16
    .line 17
    invoke-static {v3, v2}, Li1/i;->N(I[B)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    new-instance v4, Ljava/lang/String;

    .line 22
    .line 23
    sget-object v5, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 24
    .line 25
    invoke-direct {v4, v2, v3, p1, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v4}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    add-int/lit8 p1, p1, 0x1

    .line 33
    .line 34
    invoke-static {p1, v2, v0}, Li1/i;->M(I[BI)I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    invoke-static {v2, p1, v4, v1}, Li1/i;->D([BIILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {v0}, Li1/i;->J(I)I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    add-int/2addr v5, v4

    .line 47
    invoke-static {v5, v2, v0}, Li1/i;->M(I[BI)I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    invoke-static {v2, v5, v4, v1}, Li1/i;->D([BIILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {v0}, Li1/i;->J(I)I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    add-int/2addr v0, v4

    .line 60
    if-gt p0, v0, :cond_0

    .line 61
    .line 62
    sget-object p0, Lp0/M;->b:[B

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    invoke-static {v2, v0, p0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    :goto_0
    new-instance v0, Li1/f;

    .line 70
    .line 71
    invoke-direct {v0, v3, p1, v1, p0}, Li1/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 72
    .line 73
    .line 74
    return-object v0
.end method

.method public static B(ILp0/E;)Li1/m;
    .locals 10

    .line 1
    invoke-virtual {p1}, Lp0/E;->F()I

    .line 2
    .line 3
    .line 4
    move-result v1

    .line 5
    invoke-virtual {p1}, Lp0/E;->C()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-virtual {p1}, Lp0/E;->C()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-virtual {p1}, Lp0/E;->z()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p1}, Lp0/E;->z()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    new-instance v5, Lp0/D;

    .line 22
    .line 23
    invoke-direct {v5}, Lp0/D;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v5, p1}, Lp0/D;->q(Lp0/E;)V

    .line 27
    .line 28
    .line 29
    add-int/lit8 p0, p0, -0xa

    .line 30
    .line 31
    mul-int/lit8 p0, p0, 0x8

    .line 32
    .line 33
    add-int p1, v0, v4

    .line 34
    .line 35
    div-int/2addr p0, p1

    .line 36
    new-array p1, p0, [I

    .line 37
    .line 38
    new-array v6, p0, [I

    .line 39
    .line 40
    const/4 v7, 0x0

    .line 41
    :goto_0
    if-ge v7, p0, :cond_0

    .line 42
    .line 43
    invoke-virtual {v5, v0}, Lp0/D;->i(I)I

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    invoke-virtual {v5, v4}, Lp0/D;->i(I)I

    .line 48
    .line 49
    .line 50
    move-result v9

    .line 51
    aput v8, p1, v7

    .line 52
    .line 53
    aput v9, v6, v7

    .line 54
    .line 55
    add-int/lit8 v7, v7, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    new-instance p0, Li1/m;

    .line 59
    .line 60
    move-object v0, p0

    .line 61
    move-object v4, p1

    .line 62
    move-object v5, v6

    .line 63
    invoke-direct/range {v0 .. v5}, Li1/m;-><init>(III[I[I)V

    .line 64
    .line 65
    .line 66
    return-object p0
.end method

.method public static C(ILp0/E;)Li1/n;
    .locals 4

    .line 1
    new-array v0, p0, [B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v1, v0, p0}, Lp0/E;->j(I[BI)V

    .line 5
    .line 6
    .line 7
    invoke-static {v1, v0}, Li1/i;->N(I[B)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    new-instance v2, Ljava/lang/String;

    .line 12
    .line 13
    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 14
    .line 15
    invoke-direct {v2, v0, v1, p1, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 16
    .line 17
    .line 18
    add-int/lit8 p1, p1, 0x1

    .line 19
    .line 20
    if-gt p0, p1, :cond_0

    .line 21
    .line 22
    sget-object p0, Lp0/M;->b:[B

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-static {v0, p1, p0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    :goto_0
    new-instance p1, Li1/n;

    .line 30
    .line 31
    invoke-direct {p1, p0, v2}, Li1/n;-><init>([BLjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-object p1
.end method

.method public static D([BIILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    .line 1
    if-le p2, p1, :cond_1

    .line 2
    .line 3
    array-length v0, p0

    .line 4
    if-le p2, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Ljava/lang/String;

    .line 8
    .line 9
    sub-int/2addr p2, p1

    .line 10
    invoke-direct {v0, p0, p1, p2, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 11
    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_1
    :goto_0
    const-string p0, ""

    .line 15
    .line 16
    return-object p0
.end method

.method public static E(ILp0/E;Ljava/lang/String;)Li1/o;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ge p0, v1, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lp0/E;->z()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    sub-int/2addr p0, v1

    .line 11
    new-array v1, p0, [B

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-virtual {p1, v3, v1, p0}, Lp0/E;->j(I[BI)V

    .line 15
    .line 16
    .line 17
    invoke-static {v2, v1, v3}, Li1/i;->F(I[BI)Lz4/d0;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    new-instance p1, Li1/o;

    .line 22
    .line 23
    invoke-direct {p1, p2, v0, p0}, Li1/o;-><init>(Ljava/lang/String;Ljava/lang/String;Lz4/d0;)V

    .line 24
    .line 25
    .line 26
    return-object p1
.end method

.method public static F(I[BI)Lz4/d0;
    .locals 6

    .line 1
    array-length v0, p1

    .line 2
    const-string v1, ""

    .line 3
    .line 4
    if-lt p2, v0, :cond_0

    .line 5
    .line 6
    invoke-static {v1}, Lz4/H;->x(Ljava/lang/Object;)Lz4/d0;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0

    .line 11
    :cond_0
    invoke-static {}, Lz4/H;->q()Lz4/E;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {p2, p1, p0}, Li1/i;->M(I[BI)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    :goto_0
    if-ge p2, v2, :cond_1

    .line 20
    .line 21
    new-instance v3, Ljava/lang/String;

    .line 22
    .line 23
    sub-int v4, v2, p2

    .line 24
    .line 25
    invoke-static {p0}, Li1/i;->K(I)Ljava/nio/charset/Charset;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-direct {v3, p1, p2, v4, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v3}, Lz4/B;->g0(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p0}, Li1/i;->J(I)I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    add-int/2addr p2, v2

    .line 40
    invoke-static {p2, p1, p0}, Li1/i;->M(I[BI)I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {v0}, Lz4/E;->m0()Lz4/d0;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    invoke-static {v1}, Lz4/H;->x(Ljava/lang/Object;)Lz4/d0;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    :cond_2
    return-object p0
.end method

.method public static G(ILp0/E;)Li1/o;
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ge p0, v0, :cond_0

    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lp0/E;->z()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    sub-int/2addr p0, v0

    .line 11
    new-array v0, p0, [B

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {p1, v2, v0, p0}, Lp0/E;->j(I[BI)V

    .line 15
    .line 16
    .line 17
    invoke-static {v2, v0, v1}, Li1/i;->M(I[BI)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    new-instance p1, Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v1}, Li1/i;->K(I)Ljava/nio/charset/Charset;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-direct {p1, v0, v2, p0, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v1}, Li1/i;->J(I)I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    add-int/2addr v2, p0

    .line 35
    invoke-static {v1, v0, v2}, Li1/i;->F(I[BI)Lz4/d0;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    new-instance v0, Li1/o;

    .line 40
    .line 41
    const-string v1, "TXXX"

    .line 42
    .line 43
    invoke-direct {v0, v1, p1, p0}, Li1/o;-><init>(Ljava/lang/String;Ljava/lang/String;Lz4/d0;)V

    .line 44
    .line 45
    .line 46
    return-object v0
.end method

.method public static H(ILp0/E;Ljava/lang/String;)Li1/p;
    .locals 3

    .line 1
    new-array v0, p0, [B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v1, v0, p0}, Lp0/E;->j(I[BI)V

    .line 5
    .line 6
    .line 7
    invoke-static {v1, v0}, Li1/i;->N(I[B)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    new-instance p1, Ljava/lang/String;

    .line 12
    .line 13
    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 14
    .line 15
    invoke-direct {p1, v0, v1, p0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 16
    .line 17
    .line 18
    new-instance p0, Li1/p;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p2, v0, p1}, Li1/p;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-object p0
.end method

.method public static I(ILp0/E;)Li1/p;
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ge p0, v0, :cond_0

    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lp0/E;->z()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    sub-int/2addr p0, v0

    .line 11
    new-array v0, p0, [B

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {p1, v2, v0, p0}, Lp0/E;->j(I[BI)V

    .line 15
    .line 16
    .line 17
    invoke-static {v2, v0, v1}, Li1/i;->M(I[BI)I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    new-instance p1, Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v1}, Li1/i;->K(I)Ljava/nio/charset/Charset;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-direct {p1, v0, v2, p0, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v1}, Li1/i;->J(I)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    add-int/2addr v1, p0

    .line 35
    invoke-static {v1, v0}, Li1/i;->N(I[B)I

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 40
    .line 41
    invoke-static {v0, v1, p0, v2}, Li1/i;->D([BIILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    new-instance v0, Li1/p;

    .line 46
    .line 47
    const-string v1, "WXXX"

    .line 48
    .line 49
    invoke-direct {v0, v1, p1, p0}, Li1/p;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-object v0
.end method

.method public static J(I)I
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x3

    .line 4
    if-ne p0, v0, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x2

    .line 8
    goto :goto_1

    .line 9
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 10
    :goto_1
    return p0
.end method

.method public static K(I)Ljava/nio/charset/Charset;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_2

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p0, v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    if-eq p0, v0, :cond_0

    .line 9
    .line 10
    sget-object p0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_0
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_1
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_2
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    .line 20
    .line 21
    return-object p0
.end method

.method public static L(IIIII)Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x3

    .line 4
    const/4 v3, 0x2

    .line 5
    if-ne p0, v3, :cond_0

    .line 6
    .line 7
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    new-array p4, v2, [Ljava/lang/Object;

    .line 22
    .line 23
    aput-object p1, p4, v1

    .line 24
    .line 25
    aput-object p2, p4, v0

    .line 26
    .line 27
    aput-object p3, p4, v3

    .line 28
    .line 29
    const-string p1, "%c%c%c"

    .line 30
    .line 31
    invoke-static {p0, p1, p4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 37
    .line 38
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object p4

    .line 54
    const/4 v4, 0x4

    .line 55
    new-array v4, v4, [Ljava/lang/Object;

    .line 56
    .line 57
    aput-object p1, v4, v1

    .line 58
    .line 59
    aput-object p2, v4, v0

    .line 60
    .line 61
    aput-object p3, v4, v3

    .line 62
    .line 63
    aput-object p4, v4, v2

    .line 64
    .line 65
    const-string p1, "%c%c%c%c"

    .line 66
    .line 67
    invoke-static {p0, p1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    :goto_0
    return-object p0
.end method

.method public static M(I[BI)I
    .locals 2

    .line 1
    invoke-static {p0, p1}, Li1/i;->N(I[B)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz p2, :cond_3

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    if-ne p2, v1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    :goto_0
    array-length p2, p1

    .line 12
    add-int/lit8 p2, p2, -0x1

    .line 13
    .line 14
    if-ge v0, p2, :cond_2

    .line 15
    .line 16
    sub-int p2, v0, p0

    .line 17
    .line 18
    rem-int/lit8 p2, p2, 0x2

    .line 19
    .line 20
    if-nez p2, :cond_1

    .line 21
    .line 22
    add-int/lit8 p2, v0, 0x1

    .line 23
    .line 24
    aget-byte p2, p1, p2

    .line 25
    .line 26
    if-nez p2, :cond_1

    .line 27
    .line 28
    return v0

    .line 29
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 30
    .line 31
    invoke-static {v0, p1}, Li1/i;->N(I[B)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    array-length p0, p1

    .line 37
    return p0

    .line 38
    :cond_3
    :goto_1
    return v0
.end method

.method public static N(I[B)I
    .locals 1

    .line 1
    :goto_0
    array-length v0, p1

    .line 2
    if-ge p0, v0, :cond_1

    .line 3
    .line 4
    aget-byte v0, p1, p0

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return p0

    .line 9
    :cond_0
    add-int/lit8 p0, p0, 0x1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    array-length p0, p1

    .line 13
    return p0
.end method

.method public static O(ILp0/E;)I
    .locals 5

    .line 1
    iget-object v0, p1, Lp0/E;->a:[B

    .line 2
    .line 3
    iget p1, p1, Lp0/E;->b:I

    .line 4
    .line 5
    move v1, p1

    .line 6
    :goto_0
    add-int/lit8 v2, v1, 0x1

    .line 7
    .line 8
    add-int v3, p1, p0

    .line 9
    .line 10
    if-ge v2, v3, :cond_1

    .line 11
    .line 12
    aget-byte v3, v0, v1

    .line 13
    .line 14
    const/16 v4, 0xff

    .line 15
    .line 16
    and-int/2addr v3, v4

    .line 17
    if-ne v3, v4, :cond_0

    .line 18
    .line 19
    aget-byte v3, v0, v2

    .line 20
    .line 21
    if-nez v3, :cond_0

    .line 22
    .line 23
    sub-int v3, v1, p1

    .line 24
    .line 25
    add-int/lit8 v1, v1, 0x2

    .line 26
    .line 27
    sub-int v3, p0, v3

    .line 28
    .line 29
    add-int/lit8 v3, v3, -0x2

    .line 30
    .line 31
    invoke-static {v0, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 32
    .line 33
    .line 34
    add-int/lit8 p0, p0, -0x1

    .line 35
    .line 36
    :cond_0
    move v1, v2

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    return p0
.end method

.method public static P(Lp0/E;IIZ)Z
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    iget v2, v1, Lp0/E;->b:I

    .line 6
    .line 7
    :goto_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lp0/E;->a()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v4, 0x1

    .line 12
    move/from16 v5, p2

    .line 13
    .line 14
    if-lt v3, v5, :cond_c

    .line 15
    .line 16
    const/4 v3, 0x3

    .line 17
    const/4 v6, 0x0

    .line 18
    if-lt v0, v3, :cond_0

    .line 19
    .line 20
    invoke-virtual/range {p0 .. p0}, Lp0/E;->l()I

    .line 21
    .line 22
    .line 23
    move-result v7

    .line 24
    invoke-virtual/range {p0 .. p0}, Lp0/E;->B()J

    .line 25
    .line 26
    .line 27
    move-result-wide v8

    .line 28
    invoke-virtual/range {p0 .. p0}, Lp0/E;->F()I

    .line 29
    .line 30
    .line 31
    move-result v10

    .line 32
    goto :goto_1

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    goto/16 :goto_5

    .line 35
    .line 36
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lp0/E;->C()I

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    invoke-virtual/range {p0 .. p0}, Lp0/E;->C()I

    .line 41
    .line 42
    .line 43
    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    int-to-long v8, v8

    .line 45
    const/4 v10, 0x0

    .line 46
    :goto_1
    const-wide/16 v11, 0x0

    .line 47
    .line 48
    if-nez v7, :cond_1

    .line 49
    .line 50
    cmp-long v7, v8, v11

    .line 51
    .line 52
    if-nez v7, :cond_1

    .line 53
    .line 54
    if-nez v10, :cond_1

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Lp0/E;->L(I)V

    .line 57
    .line 58
    .line 59
    return v4

    .line 60
    :cond_1
    const/4 v7, 0x4

    .line 61
    if-ne v0, v7, :cond_3

    .line 62
    .line 63
    if-nez p3, :cond_3

    .line 64
    .line 65
    const-wide/32 v13, 0x808080

    .line 66
    .line 67
    .line 68
    and-long/2addr v13, v8

    .line 69
    cmp-long v15, v13, v11

    .line 70
    .line 71
    if-eqz v15, :cond_2

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Lp0/E;->L(I)V

    .line 74
    .line 75
    .line 76
    return v6

    .line 77
    :cond_2
    const-wide/16 v11, 0xff

    .line 78
    .line 79
    and-long v13, v8, v11

    .line 80
    .line 81
    const/16 v15, 0x8

    .line 82
    .line 83
    shr-long v15, v8, v15

    .line 84
    .line 85
    and-long/2addr v15, v11

    .line 86
    const/16 v17, 0x7

    .line 87
    .line 88
    shl-long v15, v15, v17

    .line 89
    .line 90
    or-long/2addr v13, v15

    .line 91
    const/16 v15, 0x10

    .line 92
    .line 93
    shr-long v15, v8, v15

    .line 94
    .line 95
    and-long/2addr v15, v11

    .line 96
    const/16 v17, 0xe

    .line 97
    .line 98
    shl-long v15, v15, v17

    .line 99
    .line 100
    or-long/2addr v13, v15

    .line 101
    const/16 v15, 0x18

    .line 102
    .line 103
    shr-long/2addr v8, v15

    .line 104
    and-long/2addr v8, v11

    .line 105
    const/16 v11, 0x15

    .line 106
    .line 107
    shl-long/2addr v8, v11

    .line 108
    or-long/2addr v8, v13

    .line 109
    :cond_3
    if-ne v0, v7, :cond_5

    .line 110
    .line 111
    and-int/lit8 v3, v10, 0x40

    .line 112
    .line 113
    if-eqz v3, :cond_4

    .line 114
    .line 115
    const/4 v3, 0x1

    .line 116
    goto :goto_2

    .line 117
    :cond_4
    const/4 v3, 0x0

    .line 118
    :goto_2
    and-int/lit8 v7, v10, 0x1

    .line 119
    .line 120
    if-eqz v7, :cond_8

    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_5
    if-ne v0, v3, :cond_7

    .line 124
    .line 125
    and-int/lit8 v3, v10, 0x20

    .line 126
    .line 127
    if-eqz v3, :cond_6

    .line 128
    .line 129
    const/4 v3, 0x1

    .line 130
    goto :goto_3

    .line 131
    :cond_6
    const/4 v3, 0x0

    .line 132
    :goto_3
    and-int/lit16 v7, v10, 0x80

    .line 133
    .line 134
    if-eqz v7, :cond_8

    .line 135
    .line 136
    goto :goto_4

    .line 137
    :cond_7
    const/4 v3, 0x0

    .line 138
    :cond_8
    const/4 v4, 0x0

    .line 139
    :goto_4
    if-eqz v4, :cond_9

    .line 140
    .line 141
    add-int/lit8 v3, v3, 0x4

    .line 142
    .line 143
    :cond_9
    int-to-long v3, v3

    .line 144
    cmp-long v7, v8, v3

    .line 145
    .line 146
    if-gez v7, :cond_a

    .line 147
    .line 148
    invoke-virtual {v1, v2}, Lp0/E;->L(I)V

    .line 149
    .line 150
    .line 151
    return v6

    .line 152
    :cond_a
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lp0/E;->a()I

    .line 153
    .line 154
    .line 155
    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    int-to-long v3, v3

    .line 157
    cmp-long v7, v3, v8

    .line 158
    .line 159
    if-gez v7, :cond_b

    .line 160
    .line 161
    invoke-virtual {v1, v2}, Lp0/E;->L(I)V

    .line 162
    .line 163
    .line 164
    return v6

    .line 165
    :cond_b
    long-to-int v3, v8

    .line 166
    :try_start_2
    invoke-virtual {v1, v3}, Lp0/E;->M(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 167
    .line 168
    .line 169
    goto/16 :goto_0

    .line 170
    .line 171
    :cond_c
    invoke-virtual {v1, v2}, Lp0/E;->L(I)V

    .line 172
    .line 173
    .line 174
    return v4

    .line 175
    :goto_5
    invoke-virtual {v1, v2}, Lp0/E;->L(I)V

    .line 176
    .line 177
    .line 178
    throw v0
.end method

.method public static v(IILp0/E;)Li1/a;
    .locals 7

    .line 1
    invoke-virtual {p2}, Lp0/E;->z()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Li1/i;->K(I)Ljava/nio/charset/Charset;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    add-int/lit8 p0, p0, -0x1

    .line 10
    .line 11
    new-array v2, p0, [B

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-virtual {p2, v3, v2, p0}, Lp0/E;->j(I[BI)V

    .line 15
    .line 16
    .line 17
    const-string p2, "image/"

    .line 18
    .line 19
    const/4 v4, 0x2

    .line 20
    if-ne p1, v4, :cond_1

    .line 21
    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance p2, Ljava/lang/String;

    .line 28
    .line 29
    const/4 v5, 0x3

    .line 30
    sget-object v6, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 31
    .line 32
    invoke-direct {p2, v2, v3, v5, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p2}, Ly4/k;->h0(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const-string p2, "image/jpg"

    .line 47
    .line 48
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-eqz p2, :cond_0

    .line 53
    .line 54
    const-string p1, "image/jpeg"

    .line 55
    .line 56
    :cond_0
    move-object p2, p1

    .line 57
    const/4 p1, 0x2

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-static {v3, v2}, Li1/i;->N(I[B)I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    new-instance v5, Ljava/lang/String;

    .line 64
    .line 65
    sget-object v6, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 66
    .line 67
    invoke-direct {v5, v2, v3, p1, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 68
    .line 69
    .line 70
    invoke-static {v5}, Ly4/k;->h0(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    const/16 v5, 0x2f

    .line 75
    .line 76
    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(I)I

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    const/4 v6, -0x1

    .line 81
    if-ne v5, v6, :cond_2

    .line 82
    .line 83
    invoke-virtual {p2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    goto :goto_0

    .line 88
    :cond_2
    move-object p2, v3

    .line 89
    :goto_0
    add-int/lit8 v3, p1, 0x1

    .line 90
    .line 91
    aget-byte v3, v2, v3

    .line 92
    .line 93
    and-int/lit16 v3, v3, 0xff

    .line 94
    .line 95
    add-int/2addr p1, v4

    .line 96
    invoke-static {p1, v2, v0}, Li1/i;->M(I[BI)I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    new-instance v5, Ljava/lang/String;

    .line 101
    .line 102
    sub-int v6, v4, p1

    .line 103
    .line 104
    invoke-direct {v5, v2, p1, v6, v1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 105
    .line 106
    .line 107
    invoke-static {v0}, Li1/i;->J(I)I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    add-int/2addr p1, v4

    .line 112
    if-gt p0, p1, :cond_3

    .line 113
    .line 114
    sget-object p0, Lp0/M;->b:[B

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_3
    invoke-static {v2, p1, p0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 118
    .line 119
    .line 120
    move-result-object p0

    .line 121
    :goto_1
    new-instance p1, Li1/a;

    .line 122
    .line 123
    invoke-direct {p1, p2, v5, v3, p0}, Li1/a;-><init>(Ljava/lang/String;Ljava/lang/String;I[B)V

    .line 124
    .line 125
    .line 126
    return-object p1
.end method

.method public static w(Lp0/E;IIZILi1/g;)Li1/c;
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    iget v1, v0, Lp0/E;->b:I

    .line 3
    .line 4
    iget-object v2, v0, Lp0/E;->a:[B

    .line 5
    .line 6
    invoke-static {v1, v2}, Li1/i;->N(I[B)I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    new-instance v4, Ljava/lang/String;

    .line 11
    .line 12
    iget-object v3, v0, Lp0/E;->a:[B

    .line 13
    .line 14
    sub-int v5, v2, v1

    .line 15
    .line 16
    sget-object v6, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 17
    .line 18
    invoke-direct {v4, v3, v1, v5, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    invoke-virtual {p0, v2}, Lp0/E;->L(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lp0/E;->l()I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    invoke-virtual {p0}, Lp0/E;->l()I

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    invoke-virtual {p0}, Lp0/E;->B()J

    .line 35
    .line 36
    .line 37
    move-result-wide v2

    .line 38
    const-wide/16 v7, -0x1

    .line 39
    .line 40
    const-wide v9, 0xffffffffL

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    cmp-long v11, v2, v9

    .line 46
    .line 47
    if-nez v11, :cond_0

    .line 48
    .line 49
    move-wide v11, v7

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    move-wide v11, v2

    .line 52
    :goto_0
    invoke-virtual {p0}, Lp0/E;->B()J

    .line 53
    .line 54
    .line 55
    move-result-wide v2

    .line 56
    cmp-long v13, v2, v9

    .line 57
    .line 58
    if-nez v13, :cond_1

    .line 59
    .line 60
    move-wide v9, v7

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    move-wide v9, v2

    .line 63
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .line 67
    .line 68
    add-int v1, v1, p1

    .line 69
    .line 70
    :cond_2
    :goto_2
    iget v3, v0, Lp0/E;->b:I

    .line 71
    .line 72
    if-ge v3, v1, :cond_3

    .line 73
    .line 74
    move/from16 v3, p2

    .line 75
    .line 76
    move/from16 v7, p3

    .line 77
    .line 78
    move/from16 v8, p4

    .line 79
    .line 80
    move-object/from16 v13, p5

    .line 81
    .line 82
    invoke-static {v3, p0, v7, v8, v13}, Li1/i;->z(ILp0/E;ZILi1/g;)Li1/j;

    .line 83
    .line 84
    .line 85
    move-result-object v14

    .line 86
    if-eqz v14, :cond_2

    .line 87
    .line 88
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_3
    const/4 v0, 0x0

    .line 93
    new-array v0, v0, [Li1/j;

    .line 94
    .line 95
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v0, [Li1/j;

    .line 100
    .line 101
    new-instance v1, Li1/c;

    .line 102
    .line 103
    move-object v3, v1

    .line 104
    move-wide v7, v11

    .line 105
    move-object v11, v0

    .line 106
    invoke-direct/range {v3 .. v11}, Li1/c;-><init>(Ljava/lang/String;IIJJ[Li1/j;)V

    .line 107
    .line 108
    .line 109
    return-object v1
.end method

.method public static x(Lp0/E;IIZILi1/g;)Li1/d;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lp0/E;->b:I

    .line 4
    .line 5
    iget-object v2, v0, Lp0/E;->a:[B

    .line 6
    .line 7
    invoke-static {v1, v2}, Li1/i;->N(I[B)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    new-instance v3, Ljava/lang/String;

    .line 12
    .line 13
    iget-object v4, v0, Lp0/E;->a:[B

    .line 14
    .line 15
    sub-int v5, v2, v1

    .line 16
    .line 17
    sget-object v6, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 18
    .line 19
    invoke-direct {v3, v4, v1, v5, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 20
    .line 21
    .line 22
    const/4 v4, 0x1

    .line 23
    add-int/2addr v2, v4

    .line 24
    invoke-virtual {v0, v2}, Lp0/E;->L(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual/range {p0 .. p0}, Lp0/E;->z()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    and-int/lit8 v5, v2, 0x2

    .line 32
    .line 33
    const/4 v6, 0x0

    .line 34
    if-eqz v5, :cond_0

    .line 35
    .line 36
    const/4 v5, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v5, 0x0

    .line 39
    :goto_0
    and-int/2addr v2, v4

    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/4 v2, 0x0

    .line 45
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lp0/E;->z()I

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    new-array v8, v7, [Ljava/lang/String;

    .line 50
    .line 51
    const/4 v9, 0x0

    .line 52
    :goto_2
    if-ge v9, v7, :cond_2

    .line 53
    .line 54
    iget v10, v0, Lp0/E;->b:I

    .line 55
    .line 56
    iget-object v11, v0, Lp0/E;->a:[B

    .line 57
    .line 58
    invoke-static {v10, v11}, Li1/i;->N(I[B)I

    .line 59
    .line 60
    .line 61
    move-result v11

    .line 62
    new-instance v12, Ljava/lang/String;

    .line 63
    .line 64
    iget-object v13, v0, Lp0/E;->a:[B

    .line 65
    .line 66
    sub-int v14, v11, v10

    .line 67
    .line 68
    sget-object v15, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 69
    .line 70
    invoke-direct {v12, v13, v10, v14, v15}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 71
    .line 72
    .line 73
    aput-object v12, v8, v9

    .line 74
    .line 75
    add-int/2addr v11, v4

    .line 76
    invoke-virtual {v0, v11}, Lp0/E;->L(I)V

    .line 77
    .line 78
    .line 79
    add-int/lit8 v9, v9, 0x1

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .line 86
    .line 87
    add-int v1, v1, p1

    .line 88
    .line 89
    :cond_3
    :goto_3
    iget v7, v0, Lp0/E;->b:I

    .line 90
    .line 91
    if-ge v7, v1, :cond_4

    .line 92
    .line 93
    move/from16 v7, p2

    .line 94
    .line 95
    move/from16 v9, p3

    .line 96
    .line 97
    move/from16 v10, p4

    .line 98
    .line 99
    move-object/from16 v11, p5

    .line 100
    .line 101
    invoke-static {v7, v0, v9, v10, v11}, Li1/i;->z(ILp0/E;ZILi1/g;)Li1/j;

    .line 102
    .line 103
    .line 104
    move-result-object v12

    .line 105
    if-eqz v12, :cond_3

    .line 106
    .line 107
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    goto :goto_3

    .line 111
    :cond_4
    new-array v0, v6, [Li1/j;

    .line 112
    .line 113
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    check-cast v0, [Li1/j;

    .line 118
    .line 119
    new-instance v1, Li1/d;

    .line 120
    .line 121
    move-object/from16 p0, v1

    .line 122
    .line 123
    move-object/from16 p1, v3

    .line 124
    .line 125
    move/from16 p2, v5

    .line 126
    .line 127
    move/from16 p3, v2

    .line 128
    .line 129
    move-object/from16 p4, v8

    .line 130
    .line 131
    move-object/from16 p5, v0

    .line 132
    .line 133
    invoke-direct/range {p0 .. p5}, Li1/d;-><init>(Ljava/lang/String;ZZ[Ljava/lang/String;[Li1/j;)V

    .line 134
    .line 135
    .line 136
    return-object v1
.end method

.method public static y(ILp0/E;)Li1/e;
    .locals 7

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ge p0, v0, :cond_0

    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lp0/E;->z()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-static {v1}, Li1/i;->K(I)Ljava/nio/charset/Charset;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x3

    .line 15
    new-array v4, v3, [B

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    invoke-virtual {p1, v5, v4, v3}, Lp0/E;->j(I[BI)V

    .line 19
    .line 20
    .line 21
    new-instance v6, Ljava/lang/String;

    .line 22
    .line 23
    invoke-direct {v6, v4, v5, v3}, Ljava/lang/String;-><init>([BII)V

    .line 24
    .line 25
    .line 26
    sub-int/2addr p0, v0

    .line 27
    new-array v0, p0, [B

    .line 28
    .line 29
    invoke-virtual {p1, v5, v0, p0}, Lp0/E;->j(I[BI)V

    .line 30
    .line 31
    .line 32
    invoke-static {v5, v0, v1}, Li1/i;->M(I[BI)I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    new-instance p1, Ljava/lang/String;

    .line 37
    .line 38
    invoke-direct {p1, v0, v5, p0, v2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 39
    .line 40
    .line 41
    invoke-static {v1}, Li1/i;->J(I)I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    add-int/2addr v3, p0

    .line 46
    invoke-static {v3, v0, v1}, Li1/i;->M(I[BI)I

    .line 47
    .line 48
    .line 49
    move-result p0

    .line 50
    invoke-static {v0, v3, p0, v2}, Li1/i;->D([BIILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    new-instance v0, Li1/e;

    .line 55
    .line 56
    invoke-direct {v0, v6, p1, p0}, Li1/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-object v0
.end method

.method public static z(ILp0/E;ZILi1/g;)Li1/j;
    .locals 20

    .line 1
    move/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p1

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Lp0/E;->z()I

    .line 6
    .line 7
    .line 8
    move-result v9

    .line 9
    invoke-virtual/range {p1 .. p1}, Lp0/E;->z()I

    .line 10
    .line 11
    .line 12
    move-result v10

    .line 13
    invoke-virtual/range {p1 .. p1}, Lp0/E;->z()I

    .line 14
    .line 15
    .line 16
    move-result v11

    .line 17
    const/4 v1, 0x3

    .line 18
    if-lt v7, v1, :cond_0

    .line 19
    .line 20
    invoke-virtual/range {p1 .. p1}, Lp0/E;->z()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    move v12, v2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v12, 0x0

    .line 27
    :goto_0
    const/4 v2, 0x4

    .line 28
    if-ne v7, v2, :cond_1

    .line 29
    .line 30
    invoke-virtual/range {p1 .. p1}, Lp0/E;->D()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-nez p2, :cond_3

    .line 35
    .line 36
    and-int/lit16 v4, v3, 0xff

    .line 37
    .line 38
    shr-int/lit8 v5, v3, 0x8

    .line 39
    .line 40
    and-int/lit16 v5, v5, 0xff

    .line 41
    .line 42
    shl-int/lit8 v5, v5, 0x7

    .line 43
    .line 44
    or-int/2addr v4, v5

    .line 45
    shr-int/lit8 v5, v3, 0x10

    .line 46
    .line 47
    and-int/lit16 v5, v5, 0xff

    .line 48
    .line 49
    shl-int/lit8 v5, v5, 0xe

    .line 50
    .line 51
    or-int/2addr v4, v5

    .line 52
    shr-int/lit8 v3, v3, 0x18

    .line 53
    .line 54
    and-int/lit16 v3, v3, 0xff

    .line 55
    .line 56
    shl-int/lit8 v3, v3, 0x15

    .line 57
    .line 58
    or-int/2addr v3, v4

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    if-ne v7, v1, :cond_2

    .line 61
    .line 62
    invoke-virtual/range {p1 .. p1}, Lp0/E;->D()I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lp0/E;->C()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    :cond_3
    :goto_1
    if-lt v7, v1, :cond_4

    .line 72
    .line 73
    invoke-virtual/range {p1 .. p1}, Lp0/E;->F()I

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    goto :goto_2

    .line 78
    :cond_4
    const/4 v4, 0x0

    .line 79
    :goto_2
    const/4 v13, 0x0

    .line 80
    if-nez v9, :cond_5

    .line 81
    .line 82
    if-nez v10, :cond_5

    .line 83
    .line 84
    if-nez v11, :cond_5

    .line 85
    .line 86
    if-nez v12, :cond_5

    .line 87
    .line 88
    if-nez v3, :cond_5

    .line 89
    .line 90
    if-nez v4, :cond_5

    .line 91
    .line 92
    iget v0, v8, Lp0/E;->c:I

    .line 93
    .line 94
    invoke-virtual {v8, v0}, Lp0/E;->L(I)V

    .line 95
    .line 96
    .line 97
    return-object v13

    .line 98
    :cond_5
    iget v5, v8, Lp0/E;->b:I

    .line 99
    .line 100
    add-int v14, v5, v3

    .line 101
    .line 102
    iget v5, v8, Lp0/E;->c:I

    .line 103
    .line 104
    const-string v15, "Id3Decoder"

    .line 105
    .line 106
    if-le v14, v5, :cond_6

    .line 107
    .line 108
    const-string v0, "Frame size exceeds remaining tag data"

    .line 109
    .line 110
    invoke-static {v15, v0}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    iget v0, v8, Lp0/E;->c:I

    .line 114
    .line 115
    invoke-virtual {v8, v0}, Lp0/E;->L(I)V

    .line 116
    .line 117
    .line 118
    return-object v13

    .line 119
    :cond_6
    const/4 v5, 0x2

    .line 120
    const/16 v6, 0x4c

    .line 121
    .line 122
    const/16 v0, 0x4f

    .line 123
    .line 124
    const/16 v2, 0x4d

    .line 125
    .line 126
    const/16 v13, 0x43

    .line 127
    .line 128
    if-eqz p4, :cond_9

    .line 129
    .line 130
    move-object/from16 v1, p4

    .line 131
    .line 132
    check-cast v1, LN/i;

    .line 133
    .line 134
    iget v1, v1, LN/i;->G:I

    .line 135
    .line 136
    packed-switch v1, :pswitch_data_0

    .line 137
    .line 138
    .line 139
    if-ne v9, v13, :cond_7

    .line 140
    .line 141
    if-ne v10, v0, :cond_7

    .line 142
    .line 143
    if-ne v11, v2, :cond_7

    .line 144
    .line 145
    if-eq v12, v2, :cond_9

    .line 146
    .line 147
    if-eq v7, v5, :cond_9

    .line 148
    .line 149
    :cond_7
    if-ne v9, v2, :cond_8

    .line 150
    .line 151
    if-ne v10, v6, :cond_8

    .line 152
    .line 153
    if-ne v11, v6, :cond_8

    .line 154
    .line 155
    const/16 v1, 0x54

    .line 156
    .line 157
    if-eq v12, v1, :cond_9

    .line 158
    .line 159
    if-ne v7, v5, :cond_8

    .line 160
    .line 161
    goto :goto_4

    .line 162
    :cond_8
    :pswitch_0
    invoke-virtual {v8, v14}, Lp0/E;->L(I)V

    .line 163
    .line 164
    .line 165
    :goto_3
    const/4 v1, 0x0

    .line 166
    return-object v1

    .line 167
    :cond_9
    :goto_4
    const/4 v1, 0x1

    .line 168
    const/4 v6, 0x3

    .line 169
    if-ne v7, v6, :cond_d

    .line 170
    .line 171
    and-int/lit16 v6, v4, 0x80

    .line 172
    .line 173
    if-eqz v6, :cond_a

    .line 174
    .line 175
    const/4 v6, 0x1

    .line 176
    goto :goto_5

    .line 177
    :cond_a
    const/4 v6, 0x0

    .line 178
    :goto_5
    and-int/lit8 v16, v4, 0x40

    .line 179
    .line 180
    if-eqz v16, :cond_b

    .line 181
    .line 182
    const/16 v16, 0x1

    .line 183
    .line 184
    goto :goto_6

    .line 185
    :cond_b
    const/16 v16, 0x0

    .line 186
    .line 187
    :goto_6
    and-int/lit8 v4, v4, 0x20

    .line 188
    .line 189
    if-eqz v4, :cond_c

    .line 190
    .line 191
    const/4 v4, 0x1

    .line 192
    goto :goto_7

    .line 193
    :cond_c
    const/4 v4, 0x0

    .line 194
    :goto_7
    move/from16 v17, v16

    .line 195
    .line 196
    const/16 v18, 0x0

    .line 197
    .line 198
    move/from16 v16, v6

    .line 199
    .line 200
    goto :goto_d

    .line 201
    :cond_d
    const/4 v6, 0x4

    .line 202
    if-ne v7, v6, :cond_13

    .line 203
    .line 204
    and-int/lit8 v6, v4, 0x40

    .line 205
    .line 206
    if-eqz v6, :cond_e

    .line 207
    .line 208
    const/4 v6, 0x1

    .line 209
    goto :goto_8

    .line 210
    :cond_e
    const/4 v6, 0x0

    .line 211
    :goto_8
    and-int/lit8 v16, v4, 0x8

    .line 212
    .line 213
    if-eqz v16, :cond_f

    .line 214
    .line 215
    const/16 v16, 0x1

    .line 216
    .line 217
    goto :goto_9

    .line 218
    :cond_f
    const/16 v16, 0x0

    .line 219
    .line 220
    :goto_9
    and-int/lit8 v17, v4, 0x4

    .line 221
    .line 222
    if-eqz v17, :cond_10

    .line 223
    .line 224
    const/16 v17, 0x1

    .line 225
    .line 226
    goto :goto_a

    .line 227
    :cond_10
    const/16 v17, 0x0

    .line 228
    .line 229
    :goto_a
    and-int/lit8 v18, v4, 0x2

    .line 230
    .line 231
    if-eqz v18, :cond_11

    .line 232
    .line 233
    const/16 v18, 0x1

    .line 234
    .line 235
    goto :goto_b

    .line 236
    :cond_11
    const/16 v18, 0x0

    .line 237
    .line 238
    :goto_b
    and-int/2addr v4, v1

    .line 239
    if-eqz v4, :cond_12

    .line 240
    .line 241
    const/4 v4, 0x1

    .line 242
    goto :goto_c

    .line 243
    :cond_12
    const/4 v4, 0x0

    .line 244
    :goto_c
    move/from16 v19, v16

    .line 245
    .line 246
    move/from16 v16, v4

    .line 247
    .line 248
    move v4, v6

    .line 249
    move/from16 v6, v19

    .line 250
    .line 251
    goto :goto_d

    .line 252
    :cond_13
    const/4 v4, 0x0

    .line 253
    const/4 v6, 0x0

    .line 254
    const/16 v16, 0x0

    .line 255
    .line 256
    const/16 v17, 0x0

    .line 257
    .line 258
    const/16 v18, 0x0

    .line 259
    .line 260
    :goto_d
    if-nez v6, :cond_2a

    .line 261
    .line 262
    if-eqz v17, :cond_14

    .line 263
    .line 264
    goto/16 :goto_17

    .line 265
    .line 266
    :cond_14
    if-eqz v4, :cond_15

    .line 267
    .line 268
    add-int/lit8 v3, v3, -0x1

    .line 269
    .line 270
    invoke-virtual {v8, v1}, Lp0/E;->M(I)V

    .line 271
    .line 272
    .line 273
    :cond_15
    if-eqz v16, :cond_16

    .line 274
    .line 275
    add-int/lit8 v3, v3, -0x4

    .line 276
    .line 277
    const/4 v1, 0x4

    .line 278
    invoke-virtual {v8, v1}, Lp0/E;->M(I)V

    .line 279
    .line 280
    .line 281
    :cond_16
    if-eqz v18, :cond_17

    .line 282
    .line 283
    invoke-static {v3, v8}, Li1/i;->O(ILp0/E;)I

    .line 284
    .line 285
    .line 286
    move-result v3

    .line 287
    :cond_17
    move v6, v3

    .line 288
    const/16 v1, 0x58

    .line 289
    .line 290
    const/16 v3, 0x54

    .line 291
    .line 292
    if-ne v9, v3, :cond_1a

    .line 293
    .line 294
    if-ne v10, v1, :cond_18

    .line 295
    .line 296
    if-ne v11, v1, :cond_18

    .line 297
    .line 298
    if-eq v7, v5, :cond_19

    .line 299
    .line 300
    if-ne v12, v1, :cond_18

    .line 301
    .line 302
    goto :goto_e

    .line 303
    :cond_18
    const/16 v3, 0x54

    .line 304
    .line 305
    goto :goto_11

    .line 306
    :cond_19
    :goto_e
    :try_start_0
    invoke-static {v6, v8}, Li1/i;->G(ILp0/E;)Li1/o;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    :goto_f
    move v13, v6

    .line 311
    goto/16 :goto_13

    .line 312
    .line 313
    :catchall_0
    move-exception v0

    .line 314
    goto/16 :goto_14

    .line 315
    .line 316
    :catch_0
    move-exception v0

    .line 317
    :goto_10
    move v13, v6

    .line 318
    goto/16 :goto_15

    .line 319
    .line 320
    :catch_1
    move-exception v0

    .line 321
    goto :goto_10

    .line 322
    :cond_1a
    :goto_11
    if-ne v9, v3, :cond_1b

    .line 323
    .line 324
    invoke-static {v7, v9, v10, v11, v12}, Li1/i;->L(IIIII)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    invoke-static {v6, v8, v0}, Li1/i;->E(ILp0/E;Ljava/lang/String;)Li1/o;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    goto :goto_f

    .line 333
    :cond_1b
    const/16 v3, 0x57

    .line 334
    .line 335
    if-ne v9, v3, :cond_1d

    .line 336
    .line 337
    if-ne v10, v1, :cond_1d

    .line 338
    .line 339
    if-ne v11, v1, :cond_1d

    .line 340
    .line 341
    if-eq v7, v5, :cond_1c

    .line 342
    .line 343
    if-ne v12, v1, :cond_1d

    .line 344
    .line 345
    :cond_1c
    invoke-static {v6, v8}, Li1/i;->I(ILp0/E;)Li1/p;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    goto :goto_f

    .line 350
    :cond_1d
    if-ne v9, v3, :cond_1e

    .line 351
    .line 352
    invoke-static {v7, v9, v10, v11, v12}, Li1/i;->L(IIIII)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    invoke-static {v6, v8, v0}, Li1/i;->H(ILp0/E;Ljava/lang/String;)Li1/p;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    goto :goto_f

    .line 361
    :cond_1e
    const/16 v1, 0x49

    .line 362
    .line 363
    const/16 v3, 0x50

    .line 364
    .line 365
    if-ne v9, v3, :cond_1f

    .line 366
    .line 367
    const/16 v4, 0x52

    .line 368
    .line 369
    if-ne v10, v4, :cond_1f

    .line 370
    .line 371
    if-ne v11, v1, :cond_1f

    .line 372
    .line 373
    const/16 v4, 0x56

    .line 374
    .line 375
    if-ne v12, v4, :cond_1f

    .line 376
    .line 377
    invoke-static {v6, v8}, Li1/i;->C(ILp0/E;)Li1/n;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    goto :goto_f

    .line 382
    :cond_1f
    const/16 v4, 0x47

    .line 383
    .line 384
    if-ne v9, v4, :cond_21

    .line 385
    .line 386
    const/16 v4, 0x45

    .line 387
    .line 388
    if-ne v10, v4, :cond_21

    .line 389
    .line 390
    if-ne v11, v0, :cond_21

    .line 391
    .line 392
    const/16 v4, 0x42

    .line 393
    .line 394
    if-eq v12, v4, :cond_20

    .line 395
    .line 396
    if-ne v7, v5, :cond_21

    .line 397
    .line 398
    :cond_20
    invoke-static {v6, v8}, Li1/i;->A(ILp0/E;)Li1/f;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    goto :goto_f

    .line 403
    :cond_21
    const/16 v4, 0x41

    .line 404
    .line 405
    if-ne v7, v5, :cond_22

    .line 406
    .line 407
    if-ne v9, v3, :cond_23

    .line 408
    .line 409
    if-ne v10, v1, :cond_23

    .line 410
    .line 411
    if-ne v11, v13, :cond_23

    .line 412
    .line 413
    goto :goto_12

    .line 414
    :cond_22
    if-ne v9, v4, :cond_23

    .line 415
    .line 416
    if-ne v10, v3, :cond_23

    .line 417
    .line 418
    if-ne v11, v1, :cond_23

    .line 419
    .line 420
    if-ne v12, v13, :cond_23

    .line 421
    .line 422
    :goto_12
    invoke-static {v6, v7, v8}, Li1/i;->v(IILp0/E;)Li1/a;

    .line 423
    .line 424
    .line 425
    move-result-object v0

    .line 426
    goto :goto_f

    .line 427
    :cond_23
    if-ne v9, v13, :cond_25

    .line 428
    .line 429
    if-ne v10, v0, :cond_25

    .line 430
    .line 431
    if-ne v11, v2, :cond_25

    .line 432
    .line 433
    if-eq v12, v2, :cond_24

    .line 434
    .line 435
    if-ne v7, v5, :cond_25

    .line 436
    .line 437
    :cond_24
    invoke-static {v6, v8}, Li1/i;->y(ILp0/E;)Li1/e;

    .line 438
    .line 439
    .line 440
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    goto/16 :goto_f

    .line 442
    .line 443
    :cond_25
    if-ne v9, v13, :cond_26

    .line 444
    .line 445
    const/16 v1, 0x48

    .line 446
    .line 447
    if-ne v10, v1, :cond_26

    .line 448
    .line 449
    if-ne v11, v4, :cond_26

    .line 450
    .line 451
    if-ne v12, v3, :cond_26

    .line 452
    .line 453
    move-object/from16 v1, p1

    .line 454
    .line 455
    move v2, v6

    .line 456
    move/from16 v3, p0

    .line 457
    .line 458
    move/from16 v4, p2

    .line 459
    .line 460
    move/from16 v5, p3

    .line 461
    .line 462
    move v13, v6

    .line 463
    move-object/from16 v6, p4

    .line 464
    .line 465
    :try_start_1
    invoke-static/range {v1 .. v6}, Li1/i;->w(Lp0/E;IIZILi1/g;)Li1/c;

    .line 466
    .line 467
    .line 468
    move-result-object v0

    .line 469
    goto :goto_13

    .line 470
    :catch_2
    move-exception v0

    .line 471
    goto :goto_15

    .line 472
    :catch_3
    move-exception v0

    .line 473
    goto :goto_15

    .line 474
    :cond_26
    if-ne v9, v13, :cond_27

    .line 475
    .line 476
    const/16 v1, 0x54

    .line 477
    .line 478
    if-ne v10, v1, :cond_27

    .line 479
    .line 480
    if-ne v11, v0, :cond_27

    .line 481
    .line 482
    if-ne v12, v13, :cond_27

    .line 483
    .line 484
    move-object/from16 v1, p1

    .line 485
    .line 486
    move v2, v6

    .line 487
    move/from16 v3, p0

    .line 488
    .line 489
    move/from16 v4, p2

    .line 490
    .line 491
    move/from16 v5, p3

    .line 492
    .line 493
    move v13, v6

    .line 494
    move-object/from16 v6, p4

    .line 495
    .line 496
    invoke-static/range {v1 .. v6}, Li1/i;->x(Lp0/E;IIZILi1/g;)Li1/d;

    .line 497
    .line 498
    .line 499
    move-result-object v0

    .line 500
    goto :goto_13

    .line 501
    :cond_27
    move v13, v6

    .line 502
    if-ne v9, v2, :cond_28

    .line 503
    .line 504
    const/16 v0, 0x4c

    .line 505
    .line 506
    if-ne v10, v0, :cond_28

    .line 507
    .line 508
    if-ne v11, v0, :cond_28

    .line 509
    .line 510
    const/16 v0, 0x54

    .line 511
    .line 512
    if-ne v12, v0, :cond_28

    .line 513
    .line 514
    invoke-static {v13, v8}, Li1/i;->B(ILp0/E;)Li1/m;

    .line 515
    .line 516
    .line 517
    move-result-object v0

    .line 518
    goto :goto_13

    .line 519
    :cond_28
    invoke-static {v7, v9, v10, v11, v12}, Li1/i;->L(IIIII)Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v0

    .line 523
    new-array v1, v13, [B

    .line 524
    .line 525
    const/4 v2, 0x0

    .line 526
    invoke-virtual {v8, v2, v1, v13}, Lp0/E;->j(I[BI)V

    .line 527
    .line 528
    .line 529
    new-instance v2, Li1/b;

    .line 530
    .line 531
    invoke-direct {v2, v1, v0}, Li1/b;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 532
    .line 533
    .line 534
    move-object v0, v2

    .line 535
    :goto_13
    invoke-virtual {v8, v14}, Lp0/E;->L(I)V

    .line 536
    .line 537
    .line 538
    const/4 v1, 0x0

    .line 539
    goto :goto_16

    .line 540
    :goto_14
    invoke-virtual {v8, v14}, Lp0/E;->L(I)V

    .line 541
    .line 542
    .line 543
    throw v0

    .line 544
    :goto_15
    invoke-virtual {v8, v14}, Lp0/E;->L(I)V

    .line 545
    .line 546
    .line 547
    move-object v1, v0

    .line 548
    const/4 v0, 0x0

    .line 549
    :goto_16
    if-nez v0, :cond_29

    .line 550
    .line 551
    new-instance v2, Ljava/lang/StringBuilder;

    .line 552
    .line 553
    const-string v3, "Failed to decode frame: id="

    .line 554
    .line 555
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 556
    .line 557
    .line 558
    invoke-static {v7, v9, v10, v11, v12}, Li1/i;->L(IIIII)Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object v3

    .line 562
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    .line 564
    .line 565
    const-string v3, ", frameSize="

    .line 566
    .line 567
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    .line 569
    .line 570
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 571
    .line 572
    .line 573
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 574
    .line 575
    .line 576
    move-result-object v2

    .line 577
    invoke-static {v15, v2, v1}, Lp0/x;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 578
    .line 579
    .line 580
    :cond_29
    return-object v0

    .line 581
    :cond_2a
    :goto_17
    const-string v0, "Skipping unsupported compressed or encrypted frame"

    .line 582
    .line 583
    invoke-static {v15, v0}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    .line 585
    .line 586
    invoke-virtual {v8, v14}, Lp0/E;->L(I)V

    .line 587
    .line 588
    .line 589
    goto/16 :goto_3

    .line 590
    .line 591
    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final h(Le1/a;Ljava/nio/ByteBuffer;)Lm0/N;
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    invoke-virtual {p0, p2, p1}, Li1/i;->u(I[B)Lm0/N;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final u(I[B)Lm0/N;
    .locals 12

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    new-instance v3, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v4, Lp0/E;

    .line 10
    .line 11
    invoke-direct {v4, p2, p1}, Lp0/E;-><init>([BI)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v4}, Lp0/E;->a()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    const/4 p2, 0x2

    .line 19
    const-string v5, "Id3Decoder"

    .line 20
    .line 21
    const/16 v6, 0xa

    .line 22
    .line 23
    const/4 v7, 0x0

    .line 24
    if-ge p1, v6, :cond_0

    .line 25
    .line 26
    const-string p1, "Data too short to be an ID3 tag"

    .line 27
    .line 28
    invoke-static {v5, p1}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    move-object v10, v7

    .line 32
    goto/16 :goto_3

    .line 33
    .line 34
    :cond_0
    invoke-virtual {v4}, Lp0/E;->C()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    const v8, 0x494433

    .line 39
    .line 40
    .line 41
    if-eq p1, v8, :cond_1

    .line 42
    .line 43
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    new-array v8, v1, [Ljava/lang/Object;

    .line 48
    .line 49
    aput-object p1, v8, v2

    .line 50
    .line 51
    const-string p1, "%06X"

    .line 52
    .line 53
    invoke-static {p1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const-string v8, "Unexpected first three bytes of ID3 tag header: 0x"

    .line 58
    .line 59
    invoke-virtual {v8, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {v5, p1}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {v4}, Lp0/E;->z()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    invoke-virtual {v4, v1}, Lp0/E;->M(I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4}, Lp0/E;->z()I

    .line 75
    .line 76
    .line 77
    move-result v8

    .line 78
    invoke-virtual {v4}, Lp0/E;->y()I

    .line 79
    .line 80
    .line 81
    move-result v9

    .line 82
    if-ne p1, p2, :cond_2

    .line 83
    .line 84
    and-int/lit8 v10, v8, 0x40

    .line 85
    .line 86
    if-eqz v10, :cond_5

    .line 87
    .line 88
    const-string p1, "Skipped ID3 tag with majorVersion=2 and undefined compression scheme"

    .line 89
    .line 90
    invoke-static {v5, p1}, Lp0/x;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_2
    const/4 v10, 0x3

    .line 95
    if-ne p1, v10, :cond_3

    .line 96
    .line 97
    and-int/lit8 v10, v8, 0x40

    .line 98
    .line 99
    if-eqz v10, :cond_5

    .line 100
    .line 101
    invoke-virtual {v4}, Lp0/E;->l()I

    .line 102
    .line 103
    .line 104
    move-result v10

    .line 105
    invoke-virtual {v4, v10}, Lp0/E;->M(I)V

    .line 106
    .line 107
    .line 108
    add-int/2addr v10, v0

    .line 109
    sub-int/2addr v9, v10

    .line 110
    goto :goto_1

    .line 111
    :cond_3
    if-ne p1, v0, :cond_7

    .line 112
    .line 113
    and-int/lit8 v10, v8, 0x40

    .line 114
    .line 115
    if-eqz v10, :cond_4

    .line 116
    .line 117
    invoke-virtual {v4}, Lp0/E;->y()I

    .line 118
    .line 119
    .line 120
    move-result v10

    .line 121
    add-int/lit8 v11, v10, -0x4

    .line 122
    .line 123
    invoke-virtual {v4, v11}, Lp0/E;->M(I)V

    .line 124
    .line 125
    .line 126
    sub-int/2addr v9, v10

    .line 127
    :cond_4
    and-int/lit8 v10, v8, 0x10

    .line 128
    .line 129
    if-eqz v10, :cond_5

    .line 130
    .line 131
    add-int/lit8 v9, v9, -0xa

    .line 132
    .line 133
    :cond_5
    :goto_1
    if-ge p1, v0, :cond_6

    .line 134
    .line 135
    and-int/lit16 v8, v8, 0x80

    .line 136
    .line 137
    if-eqz v8, :cond_6

    .line 138
    .line 139
    const/4 v8, 0x1

    .line 140
    goto :goto_2

    .line 141
    :cond_6
    const/4 v8, 0x0

    .line 142
    :goto_2
    new-instance v10, Li1/h;

    .line 143
    .line 144
    invoke-direct {v10, v8, p1, v9}, Li1/h;-><init>(ZII)V

    .line 145
    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_7
    const-string v8, "Skipped ID3 tag with unsupported majorVersion="

    .line 149
    .line 150
    invoke-static {v8, p1, v5}, Lcom/google/protobuf/U2;->v(Ljava/lang/String;ILjava/lang/String;)V

    .line 151
    .line 152
    .line 153
    goto :goto_0

    .line 154
    :goto_3
    if-nez v10, :cond_8

    .line 155
    .line 156
    return-object v7

    .line 157
    :cond_8
    iget p1, v4, Lp0/E;->b:I

    .line 158
    .line 159
    iget v8, v10, Li1/h;->a:I

    .line 160
    .line 161
    if-ne v8, p2, :cond_9

    .line 162
    .line 163
    const/4 v6, 0x6

    .line 164
    :cond_9
    iget p2, v10, Li1/h;->c:I

    .line 165
    .line 166
    iget-boolean v9, v10, Li1/h;->b:Z

    .line 167
    .line 168
    if-eqz v9, :cond_a

    .line 169
    .line 170
    invoke-static {p2, v4}, Li1/i;->O(ILp0/E;)I

    .line 171
    .line 172
    .line 173
    move-result p2

    .line 174
    :cond_a
    add-int/2addr p1, p2

    .line 175
    invoke-virtual {v4, p1}, Lp0/E;->K(I)V

    .line 176
    .line 177
    .line 178
    invoke-static {v4, v8, v6, v2}, Li1/i;->P(Lp0/E;IIZ)Z

    .line 179
    .line 180
    .line 181
    move-result p1

    .line 182
    if-nez p1, :cond_c

    .line 183
    .line 184
    if-ne v8, v0, :cond_b

    .line 185
    .line 186
    invoke-static {v4, v0, v6, v1}, Li1/i;->P(Lp0/E;IIZ)Z

    .line 187
    .line 188
    .line 189
    move-result p1

    .line 190
    if-eqz p1, :cond_b

    .line 191
    .line 192
    goto :goto_4

    .line 193
    :cond_b
    const-string p1, "Failed to validate ID3 tag with majorVersion="

    .line 194
    .line 195
    invoke-static {p1, v8, v5}, Lcom/google/protobuf/U2;->v(Ljava/lang/String;ILjava/lang/String;)V

    .line 196
    .line 197
    .line 198
    return-object v7

    .line 199
    :cond_c
    const/4 v1, 0x0

    .line 200
    :cond_d
    :goto_4
    invoke-virtual {v4}, Lp0/E;->a()I

    .line 201
    .line 202
    .line 203
    move-result p1

    .line 204
    if-lt p1, v6, :cond_e

    .line 205
    .line 206
    iget-object p1, p0, Li1/i;->e:Li1/g;

    .line 207
    .line 208
    invoke-static {v8, v4, v1, v6, p1}, Li1/i;->z(ILp0/E;ZILi1/g;)Li1/j;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    if-eqz p1, :cond_d

    .line 213
    .line 214
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    goto :goto_4

    .line 218
    :cond_e
    new-instance p1, Lm0/N;

    .line 219
    .line 220
    invoke-direct {p1, v3}, Lm0/N;-><init>(Ljava/util/List;)V

    .line 221
    .line 222
    .line 223
    return-object p1
.end method
