.class public final Lp1/d;
.super Lp1/j;
.source "SourceFile"


# instance fields
.field public n:Landroidx/media3/extractor/FlacStreamMetadata;

.field public o:Lp1/c;


# virtual methods
.method public final b(Lp0/E;)J
    .locals 4

    .line 1
    iget-object v0, p1, Lp0/E;->a:[B

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-byte v2, v0, v1

    .line 5
    .line 6
    const/4 v3, -0x1

    .line 7
    if-ne v2, v3, :cond_2

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    aget-byte v0, v0, v2

    .line 11
    .line 12
    and-int/lit16 v0, v0, 0xff

    .line 13
    .line 14
    const/4 v2, 0x4

    .line 15
    shr-int/2addr v0, v2

    .line 16
    const/4 v3, 0x6

    .line 17
    if-eq v0, v3, :cond_0

    .line 18
    .line 19
    const/4 v3, 0x7

    .line 20
    if-ne v0, v3, :cond_1

    .line 21
    .line 22
    :cond_0
    invoke-virtual {p1, v2}, Lp0/E;->M(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Lp0/E;->G()J

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-static {v0, p1}, LQ3/b;->s(ILp0/E;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-virtual {p1, v1}, Lp0/E;->L(I)V

    .line 33
    .line 34
    .line 35
    int-to-long v0, v0

    .line 36
    return-wide v0

    .line 37
    :cond_2
    const-wide/16 v0, -0x1

    .line 38
    .line 39
    return-wide v0
.end method

.method public final c(Lp0/E;JLm2/c;)Z
    .locals 6

    .line 1
    iget-object v0, p1, Lp0/E;->a:[B

    .line 2
    .line 3
    iget-object v1, p0, Lp1/d;->n:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance p2, Landroidx/media3/extractor/FlacStreamMetadata;

    .line 9
    .line 10
    const/16 p3, 0x11

    .line 11
    .line 12
    invoke-direct {p2, v0, p3}, Landroidx/media3/extractor/FlacStreamMetadata;-><init>([BI)V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Lp1/d;->n:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 16
    .line 17
    iget p1, p1, Lp0/E;->c:I

    .line 18
    .line 19
    const/16 p3, 0x9

    .line 20
    .line 21
    invoke-static {v0, p3, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const/4 p3, 0x0

    .line 26
    invoke-virtual {p2, p1, p3}, Landroidx/media3/extractor/FlacStreamMetadata;->getFormat([BLm0/N;)Lm0/t;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lm0/t;->a()Lm0/s;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string p2, "audio/ogg"

    .line 35
    .line 36
    invoke-static {p2}, Lm0/O;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    iput-object p2, p1, Lm0/s;->m:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {p1}, Lm0/s;->a()Lm0/t;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iput-object p1, p4, Lm2/c;->H:Ljava/lang/Object;

    .line 47
    .line 48
    return v2

    .line 49
    :cond_0
    const/4 v3, 0x0

    .line 50
    aget-byte v0, v0, v3

    .line 51
    .line 52
    and-int/lit8 v4, v0, 0x7f

    .line 53
    .line 54
    const/4 v5, 0x3

    .line 55
    if-ne v4, v5, :cond_1

    .line 56
    .line 57
    invoke-static {p1}, LZ3/C;->i(Lp0/E;)LW0/y;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {v1, p1}, Landroidx/media3/extractor/FlacStreamMetadata;->copyWithSeekTable(LW0/y;)Landroidx/media3/extractor/FlacStreamMetadata;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    iput-object p2, p0, Lp1/d;->n:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 66
    .line 67
    new-instance p3, Lp1/c;

    .line 68
    .line 69
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 70
    .line 71
    .line 72
    iput-object p2, p3, Lp1/c;->G:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 73
    .line 74
    iput-object p1, p3, Lp1/c;->H:LW0/y;

    .line 75
    .line 76
    const-wide/16 p1, -0x1

    .line 77
    .line 78
    iput-wide p1, p3, Lp1/c;->I:J

    .line 79
    .line 80
    iput-wide p1, p3, Lp1/c;->J:J

    .line 81
    .line 82
    iput-object p3, p0, Lp1/d;->o:Lp1/c;

    .line 83
    .line 84
    return v2

    .line 85
    :cond_1
    const/4 p1, -0x1

    .line 86
    if-ne v0, p1, :cond_3

    .line 87
    .line 88
    iget-object p1, p0, Lp1/d;->o:Lp1/c;

    .line 89
    .line 90
    if-eqz p1, :cond_2

    .line 91
    .line 92
    iput-wide p2, p1, Lp1/c;->I:J

    .line 93
    .line 94
    iput-object p1, p4, Lm2/c;->I:Ljava/lang/Object;

    .line 95
    .line 96
    :cond_2
    iget-object p1, p4, Lm2/c;->H:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast p1, Lm0/t;

    .line 99
    .line 100
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    return v3

    .line 104
    :cond_3
    return v2
.end method

.method public final d(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lp1/j;->d(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lp1/d;->n:Landroidx/media3/extractor/FlacStreamMetadata;

    .line 8
    .line 9
    iput-object p1, p0, Lp1/d;->o:Lp1/c;

    .line 10
    .line 11
    :cond_0
    return-void
.end method
