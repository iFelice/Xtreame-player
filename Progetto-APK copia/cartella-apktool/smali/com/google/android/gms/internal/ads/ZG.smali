.class public final Lcom/google/android/gms/internal/ads/ZG;
.super Lcom/google/android/gms/internal/ads/dH;
.source "SourceFile"


# instance fields
.field public final c:Ljava/lang/Iterable;

.field public final d:Ljava/util/Iterator;

.field public e:Ljava/nio/ByteBuffer;

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:J

.field public l:J

.field public m:J


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, 0x7fffffff

    .line 5
    .line 6
    .line 7
    iput v0, p0, Lcom/google/android/gms/internal/ads/ZG;->h:I

    .line 8
    .line 9
    iput p2, p0, Lcom/google/android/gms/internal/ads/ZG;->f:I

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ZG;->d:Ljava/util/Iterator;

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/google/android/gms/internal/ads/ZG;->j:I

    .line 19
    .line 20
    if-nez p2, :cond_0

    .line 21
    .line 22
    sget-object p1, Lcom/google/android/gms/internal/ads/yH;->c:Ljava/nio/ByteBuffer;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ZG;->e:Ljava/nio/ByteBuffer;

    .line 25
    .line 26
    const-wide/16 p1, 0x0

    .line 27
    .line 28
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/ZG;->k:J

    .line 29
    .line 30
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/ZG;->l:J

    .line 31
    .line 32
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/ZG;->m:J

    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ZG;->D()V

    .line 36
    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public final A()J
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const-wide/16 v1, 0x0

    .line 3
    .line 4
    :goto_0
    const/16 v3, 0x40

    .line 5
    .line 6
    if-ge v0, v3, :cond_1

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ZG;->E()B

    .line 9
    .line 10
    .line 11
    move-result v3

    .line 12
    and-int/lit8 v4, v3, 0x7f

    .line 13
    .line 14
    int-to-long v4, v4

    .line 15
    shl-long/2addr v4, v0

    .line 16
    or-long/2addr v1, v4

    .line 17
    and-int/lit16 v3, v3, 0x80

    .line 18
    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    return-wide v1

    .line 22
    :cond_0
    add-int/lit8 v0, v0, 0x7

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/AH;

    .line 26
    .line 27
    const-string v1, "CodedInputStream encountered a malformed varint."

    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0
.end method

.method public final B()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/ZG;->f:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/ZG;->j:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/ZG;->k:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/ZG;->l:J

    add-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public final C([BI)V
    .locals 13

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ZG;->B()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    .line 6
    .line 7
    if-gt p2, v0, :cond_2

    .line 8
    .line 9
    move v0, p2

    .line 10
    :goto_0
    if-lez v0, :cond_3

    .line 11
    .line 12
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/ZG;->m:J

    .line 13
    .line 14
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/ZG;->k:J

    .line 15
    .line 16
    sub-long/2addr v2, v4

    .line 17
    const-wide/16 v4, 0x0

    .line 18
    .line 19
    cmp-long v6, v2, v4

    .line 20
    .line 21
    if-nez v6, :cond_1

    .line 22
    .line 23
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ZG;->d:Ljava/util/Iterator;

    .line 24
    .line 25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ZG;->D()V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/AH;

    .line 36
    .line 37
    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1

    .line 41
    :cond_1
    :goto_1
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/ZG;->m:J

    .line 42
    .line 43
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/ZG;->k:J

    .line 44
    .line 45
    sub-long/2addr v2, v4

    .line 46
    long-to-int v3, v2

    .line 47
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/ZG;->k:J

    .line 52
    .line 53
    sub-int v3, p2, v0

    .line 54
    .line 55
    int-to-long v11, v2

    .line 56
    int-to-long v7, v3

    .line 57
    sget-object v3, Lcom/google/android/gms/internal/ads/nI;->c:Lcom/google/android/gms/internal/ads/mI;

    .line 58
    .line 59
    move-object v6, p1

    .line 60
    move-wide v9, v11

    .line 61
    invoke-virtual/range {v3 .. v10}, Lcom/google/android/gms/internal/ads/mI;->R0(J[BJJ)V

    .line 62
    .line 63
    .line 64
    sub-int/2addr v0, v2

    .line 65
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/ZG;->k:J

    .line 66
    .line 67
    add-long/2addr v2, v11

    .line 68
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/ZG;->k:J

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    if-gtz p2, :cond_4

    .line 72
    .line 73
    :cond_3
    return-void

    .line 74
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/AH;

    .line 75
    .line 76
    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p1
.end method

.method public final D()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ZG;->d:Ljava/util/Iterator;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ZG;->e:Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    iget v1, p0, Lcom/google/android/gms/internal/ads/ZG;->j:I

    .line 12
    .line 13
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/ZG;->k:J

    .line 14
    .line 15
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/ZG;->l:J

    .line 16
    .line 17
    sub-long/2addr v2, v4

    .line 18
    long-to-int v3, v2

    .line 19
    add-int/2addr v1, v3

    .line 20
    iput v1, p0, Lcom/google/android/gms/internal/ads/ZG;->j:I

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    int-to-long v0, v0

    .line 27
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/ZG;->k:J

    .line 28
    .line 29
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/ZG;->l:J

    .line 30
    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ZG;->e:Ljava/nio/ByteBuffer;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    int-to-long v0, v0

    .line 38
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/ZG;->m:J

    .line 39
    .line 40
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ZG;->e:Ljava/nio/ByteBuffer;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/nI;->h(Ljava/nio/ByteBuffer;)J

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/ZG;->k:J

    .line 47
    .line 48
    add-long/2addr v2, v0

    .line 49
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/ZG;->k:J

    .line 50
    .line 51
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/ZG;->l:J

    .line 52
    .line 53
    add-long/2addr v2, v0

    .line 54
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/ZG;->l:J

    .line 55
    .line 56
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/ZG;->m:J

    .line 57
    .line 58
    add-long/2addr v2, v0

    .line 59
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/ZG;->m:J

    .line 60
    .line 61
    return-void
.end method

.method public final E()B
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/ZG;->m:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/ZG;->k:J

    .line 4
    .line 5
    sub-long/2addr v0, v2

    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    cmp-long v4, v0, v2

    .line 9
    .line 10
    if-nez v4, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ZG;->d:Ljava/util/Iterator;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ZG;->D()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/AH;

    .line 25
    .line 26
    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    .line 27
    .line 28
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v0

    .line 32
    :cond_1
    :goto_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/ZG;->k:J

    .line 33
    .line 34
    const-wide/16 v2, 0x1

    .line 35
    .line 36
    add-long/2addr v2, v0

    .line 37
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/ZG;->k:J

    .line 38
    .line 39
    sget-object v2, Lcom/google/android/gms/internal/ads/nI;->c:Lcom/google/android/gms/internal/ads/mI;

    .line 40
    .line 41
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/mI;->J(J)B

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    return v0
.end method

.method public final F()I
    .locals 8

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/ZG;->m:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/ZG;->k:J

    .line 4
    .line 5
    sub-long/2addr v0, v2

    .line 6
    const-wide/16 v4, 0x4

    .line 7
    .line 8
    cmp-long v6, v0, v4

    .line 9
    .line 10
    if-ltz v6, :cond_0

    .line 11
    .line 12
    add-long/2addr v4, v2

    .line 13
    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/ZG;->k:J

    .line 14
    .line 15
    sget-object v0, Lcom/google/android/gms/internal/ads/nI;->c:Lcom/google/android/gms/internal/ads/mI;

    .line 16
    .line 17
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/mI;->J(J)B

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    and-int/lit16 v1, v1, 0xff

    .line 22
    .line 23
    const-wide/16 v4, 0x1

    .line 24
    .line 25
    add-long/2addr v4, v2

    .line 26
    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/ads/mI;->J(J)B

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    and-int/lit16 v4, v4, 0xff

    .line 31
    .line 32
    shl-int/lit8 v4, v4, 0x8

    .line 33
    .line 34
    const-wide/16 v5, 0x2

    .line 35
    .line 36
    add-long/2addr v5, v2

    .line 37
    invoke-virtual {v0, v5, v6}, Lcom/google/android/gms/internal/ads/mI;->J(J)B

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    and-int/lit16 v5, v5, 0xff

    .line 42
    .line 43
    shl-int/lit8 v5, v5, 0x10

    .line 44
    .line 45
    const-wide/16 v6, 0x3

    .line 46
    .line 47
    add-long/2addr v2, v6

    .line 48
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/mI;->J(J)B

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    and-int/lit16 v0, v0, 0xff

    .line 53
    .line 54
    shl-int/lit8 v0, v0, 0x18

    .line 55
    .line 56
    or-int/2addr v1, v4

    .line 57
    or-int/2addr v1, v5

    .line 58
    or-int/2addr v0, v1

    .line 59
    return v0

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ZG;->E()B

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    and-int/lit16 v0, v0, 0xff

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ZG;->E()B

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    and-int/lit16 v1, v1, 0xff

    .line 71
    .line 72
    shl-int/lit8 v1, v1, 0x8

    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ZG;->E()B

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    and-int/lit16 v2, v2, 0xff

    .line 79
    .line 80
    shl-int/lit8 v2, v2, 0x10

    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ZG;->E()B

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    and-int/lit16 v3, v3, 0xff

    .line 87
    .line 88
    shl-int/lit8 v3, v3, 0x18

    .line 89
    .line 90
    or-int/2addr v0, v1

    .line 91
    or-int/2addr v0, v2

    .line 92
    or-int/2addr v0, v3

    .line 93
    return v0
.end method

.method public final G()I
    .locals 14

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/ZG;->k:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/ZG;->m:J

    .line 4
    .line 5
    cmp-long v4, v2, v0

    .line 6
    .line 7
    if-nez v4, :cond_0

    .line 8
    .line 9
    goto/16 :goto_3

    .line 10
    .line 11
    :cond_0
    const-wide/16 v2, 0x1

    .line 12
    .line 13
    add-long v4, v0, v2

    .line 14
    .line 15
    sget-object v6, Lcom/google/android/gms/internal/ads/nI;->c:Lcom/google/android/gms/internal/ads/mI;

    .line 16
    .line 17
    invoke-virtual {v6, v0, v1}, Lcom/google/android/gms/internal/ads/mI;->J(J)B

    .line 18
    .line 19
    .line 20
    move-result v7

    .line 21
    if-ltz v7, :cond_1

    .line 22
    .line 23
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/ZG;->k:J

    .line 24
    .line 25
    add-long/2addr v0, v2

    .line 26
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/ZG;->k:J

    .line 27
    .line 28
    return v7

    .line 29
    :cond_1
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/ZG;->m:J

    .line 30
    .line 31
    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/ZG;->k:J

    .line 32
    .line 33
    sub-long/2addr v2, v8

    .line 34
    const-wide/16 v8, 0xa

    .line 35
    .line 36
    cmp-long v10, v2, v8

    .line 37
    .line 38
    if-ltz v10, :cond_7

    .line 39
    .line 40
    const-wide/16 v2, 0x2

    .line 41
    .line 42
    add-long/2addr v2, v0

    .line 43
    invoke-virtual {v6, v4, v5}, Lcom/google/android/gms/internal/ads/mI;->J(J)B

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    shl-int/lit8 v4, v4, 0x7

    .line 48
    .line 49
    xor-int/2addr v4, v7

    .line 50
    if-gez v4, :cond_2

    .line 51
    .line 52
    xor-int/lit8 v0, v4, -0x80

    .line 53
    .line 54
    goto/16 :goto_2

    .line 55
    .line 56
    :cond_2
    const-wide/16 v10, 0x3

    .line 57
    .line 58
    add-long/2addr v10, v0

    .line 59
    invoke-virtual {v6, v2, v3}, Lcom/google/android/gms/internal/ads/mI;->J(J)B

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    shl-int/lit8 v2, v2, 0xe

    .line 64
    .line 65
    xor-int/2addr v2, v4

    .line 66
    if-ltz v2, :cond_3

    .line 67
    .line 68
    xor-int/lit16 v0, v2, 0x3f80

    .line 69
    .line 70
    :goto_0
    move-wide v2, v10

    .line 71
    goto :goto_2

    .line 72
    :cond_3
    const-wide/16 v3, 0x4

    .line 73
    .line 74
    add-long/2addr v3, v0

    .line 75
    invoke-virtual {v6, v10, v11}, Lcom/google/android/gms/internal/ads/mI;->J(J)B

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    shl-int/lit8 v5, v5, 0x15

    .line 80
    .line 81
    xor-int/2addr v2, v5

    .line 82
    if-gez v2, :cond_4

    .line 83
    .line 84
    const v0, -0x1fc080

    .line 85
    .line 86
    .line 87
    xor-int/2addr v0, v2

    .line 88
    :goto_1
    move-wide v2, v3

    .line 89
    goto :goto_2

    .line 90
    :cond_4
    const-wide/16 v10, 0x5

    .line 91
    .line 92
    add-long/2addr v10, v0

    .line 93
    invoke-virtual {v6, v3, v4}, Lcom/google/android/gms/internal/ads/mI;->J(J)B

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    shl-int/lit8 v4, v3, 0x1c

    .line 98
    .line 99
    xor-int/2addr v2, v4

    .line 100
    const v4, 0xfe03f80

    .line 101
    .line 102
    .line 103
    xor-int/2addr v2, v4

    .line 104
    if-gez v3, :cond_5

    .line 105
    .line 106
    const-wide/16 v3, 0x6

    .line 107
    .line 108
    add-long/2addr v3, v0

    .line 109
    invoke-virtual {v6, v10, v11}, Lcom/google/android/gms/internal/ads/mI;->J(J)B

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    if-gez v5, :cond_6

    .line 114
    .line 115
    const-wide/16 v10, 0x7

    .line 116
    .line 117
    add-long/2addr v10, v0

    .line 118
    invoke-virtual {v6, v3, v4}, Lcom/google/android/gms/internal/ads/mI;->J(J)B

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    if-gez v3, :cond_5

    .line 123
    .line 124
    const-wide/16 v3, 0x8

    .line 125
    .line 126
    add-long/2addr v3, v0

    .line 127
    invoke-virtual {v6, v10, v11}, Lcom/google/android/gms/internal/ads/mI;->J(J)B

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    if-gez v5, :cond_6

    .line 132
    .line 133
    const-wide/16 v10, 0x9

    .line 134
    .line 135
    add-long/2addr v10, v0

    .line 136
    invoke-virtual {v6, v3, v4}, Lcom/google/android/gms/internal/ads/mI;->J(J)B

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    if-gez v3, :cond_5

    .line 141
    .line 142
    add-long/2addr v0, v8

    .line 143
    invoke-virtual {v6, v10, v11}, Lcom/google/android/gms/internal/ads/mI;->J(J)B

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    if-ltz v3, :cond_7

    .line 148
    .line 149
    move-wide v12, v0

    .line 150
    move v0, v2

    .line 151
    move-wide v2, v12

    .line 152
    goto :goto_2

    .line 153
    :cond_5
    move v0, v2

    .line 154
    goto :goto_0

    .line 155
    :cond_6
    move v0, v2

    .line 156
    goto :goto_1

    .line 157
    :goto_2
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/ZG;->k:J

    .line 158
    .line 159
    return v0

    .line 160
    :cond_7
    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ZG;->A()J

    .line 161
    .line 162
    .line 163
    move-result-wide v0

    .line 164
    long-to-int v1, v0

    .line 165
    return v1
.end method

.method public final H()J
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/ZG;->m:J

    .line 4
    .line 5
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/ZG;->k:J

    .line 6
    .line 7
    sub-long/2addr v1, v3

    .line 8
    const/16 v9, 0x18

    .line 9
    .line 10
    const/16 v10, 0x10

    .line 11
    .line 12
    const/16 v11, 0x8

    .line 13
    .line 14
    const-wide/16 v12, 0xff

    .line 15
    .line 16
    const-wide/16 v14, 0x8

    .line 17
    .line 18
    cmp-long v16, v1, v14

    .line 19
    .line 20
    if-ltz v16, :cond_0

    .line 21
    .line 22
    add-long/2addr v14, v3

    .line 23
    iput-wide v14, v0, Lcom/google/android/gms/internal/ads/ZG;->k:J

    .line 24
    .line 25
    sget-object v1, Lcom/google/android/gms/internal/ads/nI;->c:Lcom/google/android/gms/internal/ads/mI;

    .line 26
    .line 27
    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/ads/mI;->J(J)B

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    int-to-long v14, v2

    .line 32
    and-long/2addr v14, v12

    .line 33
    const-wide/16 v16, 0x1

    .line 34
    .line 35
    add-long v5, v3, v16

    .line 36
    .line 37
    invoke-virtual {v1, v5, v6}, Lcom/google/android/gms/internal/ads/mI;->J(J)B

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    int-to-long v5, v5

    .line 42
    and-long/2addr v5, v12

    .line 43
    shl-long/2addr v5, v11

    .line 44
    const-wide/16 v16, 0x2

    .line 45
    .line 46
    add-long v7, v3, v16

    .line 47
    .line 48
    invoke-virtual {v1, v7, v8}, Lcom/google/android/gms/internal/ads/mI;->J(J)B

    .line 49
    .line 50
    .line 51
    move-result v7

    .line 52
    int-to-long v7, v7

    .line 53
    and-long/2addr v7, v12

    .line 54
    shl-long/2addr v7, v10

    .line 55
    const-wide/16 v10, 0x3

    .line 56
    .line 57
    add-long/2addr v10, v3

    .line 58
    invoke-virtual {v1, v10, v11}, Lcom/google/android/gms/internal/ads/mI;->J(J)B

    .line 59
    .line 60
    .line 61
    move-result v10

    .line 62
    int-to-long v10, v10

    .line 63
    and-long/2addr v10, v12

    .line 64
    shl-long v9, v10, v9

    .line 65
    .line 66
    const-wide/16 v16, 0x4

    .line 67
    .line 68
    add-long v12, v3, v16

    .line 69
    .line 70
    invoke-virtual {v1, v12, v13}, Lcom/google/android/gms/internal/ads/mI;->J(J)B

    .line 71
    .line 72
    .line 73
    move-result v11

    .line 74
    int-to-long v11, v11

    .line 75
    const-wide/16 v16, 0xff

    .line 76
    .line 77
    and-long v11, v11, v16

    .line 78
    .line 79
    const/16 v13, 0x20

    .line 80
    .line 81
    shl-long/2addr v11, v13

    .line 82
    const-wide/16 v20, 0x5

    .line 83
    .line 84
    move-wide/from16 v22, v11

    .line 85
    .line 86
    add-long v11, v3, v20

    .line 87
    .line 88
    invoke-virtual {v1, v11, v12}, Lcom/google/android/gms/internal/ads/mI;->J(J)B

    .line 89
    .line 90
    .line 91
    move-result v11

    .line 92
    int-to-long v11, v11

    .line 93
    and-long v11, v11, v16

    .line 94
    .line 95
    const/16 v13, 0x28

    .line 96
    .line 97
    shl-long/2addr v11, v13

    .line 98
    const-wide/16 v19, 0x6

    .line 99
    .line 100
    move-wide/from16 v24, v11

    .line 101
    .line 102
    add-long v11, v3, v19

    .line 103
    .line 104
    invoke-virtual {v1, v11, v12}, Lcom/google/android/gms/internal/ads/mI;->J(J)B

    .line 105
    .line 106
    .line 107
    move-result v11

    .line 108
    int-to-long v11, v11

    .line 109
    and-long v11, v11, v16

    .line 110
    .line 111
    const/16 v13, 0x30

    .line 112
    .line 113
    shl-long/2addr v11, v13

    .line 114
    const-wide/16 v18, 0x7

    .line 115
    .line 116
    add-long v3, v3, v18

    .line 117
    .line 118
    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/ads/mI;->J(J)B

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    int-to-long v3, v1

    .line 123
    and-long v3, v3, v16

    .line 124
    .line 125
    const/16 v1, 0x38

    .line 126
    .line 127
    shl-long v1, v3, v1

    .line 128
    .line 129
    or-long v3, v14, v5

    .line 130
    .line 131
    or-long/2addr v3, v7

    .line 132
    or-long/2addr v3, v9

    .line 133
    or-long v3, v3, v22

    .line 134
    .line 135
    or-long v3, v3, v24

    .line 136
    .line 137
    or-long/2addr v3, v11

    .line 138
    or-long/2addr v1, v3

    .line 139
    return-wide v1

    .line 140
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/ZG;->E()B

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    int-to-long v3, v1

    .line 145
    const-wide/16 v5, 0xff

    .line 146
    .line 147
    and-long/2addr v3, v5

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/ZG;->E()B

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    int-to-long v7, v1

    .line 153
    and-long/2addr v7, v5

    .line 154
    shl-long/2addr v7, v11

    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/ZG;->E()B

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    int-to-long v11, v1

    .line 160
    and-long/2addr v11, v5

    .line 161
    shl-long v10, v11, v10

    .line 162
    .line 163
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/ZG;->E()B

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    int-to-long v12, v1

    .line 168
    and-long/2addr v12, v5

    .line 169
    shl-long/2addr v12, v9

    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/ZG;->E()B

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    int-to-long v14, v1

    .line 175
    and-long/2addr v14, v5

    .line 176
    const/16 v1, 0x20

    .line 177
    .line 178
    shl-long/2addr v14, v1

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/ZG;->E()B

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    move-wide/from16 v16, v3

    .line 184
    .line 185
    int-to-long v2, v1

    .line 186
    and-long v1, v2, v5

    .line 187
    .line 188
    const/16 v3, 0x28

    .line 189
    .line 190
    shl-long/2addr v1, v3

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/ZG;->E()B

    .line 192
    .line 193
    .line 194
    move-result v3

    .line 195
    int-to-long v3, v3

    .line 196
    and-long/2addr v3, v5

    .line 197
    const/16 v18, 0x30

    .line 198
    .line 199
    shl-long v3, v3, v18

    .line 200
    .line 201
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/ZG;->E()B

    .line 202
    .line 203
    .line 204
    move-result v9

    .line 205
    move-wide/from16 v19, v3

    .line 206
    .line 207
    int-to-long v3, v9

    .line 208
    and-long/2addr v3, v5

    .line 209
    const/16 v5, 0x38

    .line 210
    .line 211
    shl-long/2addr v3, v5

    .line 212
    or-long v5, v16, v7

    .line 213
    .line 214
    or-long/2addr v5, v10

    .line 215
    or-long/2addr v5, v12

    .line 216
    or-long/2addr v5, v14

    .line 217
    or-long/2addr v1, v5

    .line 218
    or-long v1, v1, v19

    .line 219
    .line 220
    or-long/2addr v1, v3

    .line 221
    return-wide v1
.end method

.method public final I()J
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/ZG;->k:J

    .line 4
    .line 5
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/ZG;->m:J

    .line 6
    .line 7
    cmp-long v5, v3, v1

    .line 8
    .line 9
    if-nez v5, :cond_0

    .line 10
    .line 11
    goto/16 :goto_4

    .line 12
    .line 13
    :cond_0
    const-wide/16 v3, 0x1

    .line 14
    .line 15
    add-long v5, v1, v3

    .line 16
    .line 17
    sget-object v7, Lcom/google/android/gms/internal/ads/nI;->c:Lcom/google/android/gms/internal/ads/mI;

    .line 18
    .line 19
    invoke-virtual {v7, v1, v2}, Lcom/google/android/gms/internal/ads/mI;->J(J)B

    .line 20
    .line 21
    .line 22
    move-result v8

    .line 23
    if-ltz v8, :cond_1

    .line 24
    .line 25
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/ZG;->k:J

    .line 26
    .line 27
    add-long/2addr v1, v3

    .line 28
    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/ZG;->k:J

    .line 29
    .line 30
    int-to-long v1, v8

    .line 31
    return-wide v1

    .line 32
    :cond_1
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/ZG;->m:J

    .line 33
    .line 34
    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/ZG;->k:J

    .line 35
    .line 36
    sub-long/2addr v3, v9

    .line 37
    const-wide/16 v9, 0xa

    .line 38
    .line 39
    cmp-long v11, v3, v9

    .line 40
    .line 41
    if-ltz v11, :cond_a

    .line 42
    .line 43
    const-wide/16 v3, 0x2

    .line 44
    .line 45
    add-long/2addr v3, v1

    .line 46
    invoke-virtual {v7, v5, v6}, Lcom/google/android/gms/internal/ads/mI;->J(J)B

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    shl-int/lit8 v5, v5, 0x7

    .line 51
    .line 52
    xor-int/2addr v5, v8

    .line 53
    if-gez v5, :cond_2

    .line 54
    .line 55
    xor-int/lit8 v1, v5, -0x80

    .line 56
    .line 57
    int-to-long v1, v1

    .line 58
    goto/16 :goto_3

    .line 59
    .line 60
    :cond_2
    const-wide/16 v11, 0x3

    .line 61
    .line 62
    add-long/2addr v11, v1

    .line 63
    invoke-virtual {v7, v3, v4}, Lcom/google/android/gms/internal/ads/mI;->J(J)B

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    shl-int/lit8 v3, v3, 0xe

    .line 68
    .line 69
    xor-int/2addr v3, v5

    .line 70
    if-ltz v3, :cond_3

    .line 71
    .line 72
    xor-int/lit16 v1, v3, 0x3f80

    .line 73
    .line 74
    int-to-long v1, v1

    .line 75
    :goto_0
    move-wide v3, v11

    .line 76
    goto/16 :goto_3

    .line 77
    .line 78
    :cond_3
    const-wide/16 v4, 0x4

    .line 79
    .line 80
    add-long/2addr v4, v1

    .line 81
    invoke-virtual {v7, v11, v12}, Lcom/google/android/gms/internal/ads/mI;->J(J)B

    .line 82
    .line 83
    .line 84
    move-result v6

    .line 85
    shl-int/lit8 v6, v6, 0x15

    .line 86
    .line 87
    xor-int/2addr v3, v6

    .line 88
    if-gez v3, :cond_4

    .line 89
    .line 90
    const v1, -0x1fc080

    .line 91
    .line 92
    .line 93
    xor-int/2addr v1, v3

    .line 94
    int-to-long v1, v1

    .line 95
    move-wide v3, v4

    .line 96
    goto/16 :goto_3

    .line 97
    .line 98
    :cond_4
    const-wide/16 v11, 0x5

    .line 99
    .line 100
    add-long/2addr v11, v1

    .line 101
    invoke-virtual {v7, v4, v5}, Lcom/google/android/gms/internal/ads/mI;->J(J)B

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    int-to-long v4, v4

    .line 106
    int-to-long v13, v3

    .line 107
    const/16 v3, 0x1c

    .line 108
    .line 109
    shl-long v3, v4, v3

    .line 110
    .line 111
    xor-long/2addr v3, v13

    .line 112
    const-wide/16 v5, 0x0

    .line 113
    .line 114
    cmp-long v8, v3, v5

    .line 115
    .line 116
    if-ltz v8, :cond_5

    .line 117
    .line 118
    const-wide/32 v1, 0xfe03f80

    .line 119
    .line 120
    .line 121
    :goto_1
    xor-long/2addr v1, v3

    .line 122
    goto :goto_0

    .line 123
    :cond_5
    const-wide/16 v13, 0x6

    .line 124
    .line 125
    add-long/2addr v13, v1

    .line 126
    invoke-virtual {v7, v11, v12}, Lcom/google/android/gms/internal/ads/mI;->J(J)B

    .line 127
    .line 128
    .line 129
    move-result v8

    .line 130
    int-to-long v11, v8

    .line 131
    const/16 v8, 0x23

    .line 132
    .line 133
    shl-long/2addr v11, v8

    .line 134
    xor-long/2addr v3, v11

    .line 135
    cmp-long v8, v3, v5

    .line 136
    .line 137
    if-gez v8, :cond_6

    .line 138
    .line 139
    const-wide v1, -0x7f01fc080L

    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    :goto_2
    xor-long/2addr v1, v3

    .line 145
    move-wide v3, v13

    .line 146
    goto :goto_3

    .line 147
    :cond_6
    const-wide/16 v11, 0x7

    .line 148
    .line 149
    add-long/2addr v11, v1

    .line 150
    invoke-virtual {v7, v13, v14}, Lcom/google/android/gms/internal/ads/mI;->J(J)B

    .line 151
    .line 152
    .line 153
    move-result v8

    .line 154
    int-to-long v13, v8

    .line 155
    const/16 v8, 0x2a

    .line 156
    .line 157
    shl-long/2addr v13, v8

    .line 158
    xor-long/2addr v3, v13

    .line 159
    cmp-long v8, v3, v5

    .line 160
    .line 161
    if-ltz v8, :cond_7

    .line 162
    .line 163
    const-wide v1, 0x3f80fe03f80L

    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_7
    const-wide/16 v13, 0x8

    .line 170
    .line 171
    add-long/2addr v13, v1

    .line 172
    invoke-virtual {v7, v11, v12}, Lcom/google/android/gms/internal/ads/mI;->J(J)B

    .line 173
    .line 174
    .line 175
    move-result v8

    .line 176
    int-to-long v11, v8

    .line 177
    const/16 v8, 0x31

    .line 178
    .line 179
    shl-long/2addr v11, v8

    .line 180
    xor-long/2addr v3, v11

    .line 181
    cmp-long v8, v3, v5

    .line 182
    .line 183
    if-gez v8, :cond_8

    .line 184
    .line 185
    const-wide v1, -0x1fc07f01fc080L

    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_8
    const-wide/16 v11, 0x9

    .line 192
    .line 193
    add-long/2addr v11, v1

    .line 194
    invoke-virtual {v7, v13, v14}, Lcom/google/android/gms/internal/ads/mI;->J(J)B

    .line 195
    .line 196
    .line 197
    move-result v8

    .line 198
    int-to-long v13, v8

    .line 199
    const/16 v8, 0x38

    .line 200
    .line 201
    shl-long/2addr v13, v8

    .line 202
    xor-long/2addr v3, v13

    .line 203
    const-wide v13, 0xfe03f80fe03f80L

    .line 204
    .line 205
    .line 206
    .line 207
    .line 208
    xor-long/2addr v3, v13

    .line 209
    cmp-long v8, v3, v5

    .line 210
    .line 211
    if-gez v8, :cond_9

    .line 212
    .line 213
    add-long/2addr v1, v9

    .line 214
    invoke-virtual {v7, v11, v12}, Lcom/google/android/gms/internal/ads/mI;->J(J)B

    .line 215
    .line 216
    .line 217
    move-result v7

    .line 218
    int-to-long v7, v7

    .line 219
    cmp-long v9, v7, v5

    .line 220
    .line 221
    if-ltz v9, :cond_a

    .line 222
    .line 223
    move-wide v15, v1

    .line 224
    move-wide v1, v3

    .line 225
    move-wide v3, v15

    .line 226
    goto :goto_3

    .line 227
    :cond_9
    move-wide v1, v3

    .line 228
    goto/16 :goto_0

    .line 229
    .line 230
    :goto_3
    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/ZG;->k:J

    .line 231
    .line 232
    return-wide v1

    .line 233
    :cond_a
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/ZG;->A()J

    .line 234
    .line 235
    .line 236
    move-result-wide v1

    .line 237
    return-wide v1
.end method

.method public final a()Z
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/ZG;->j:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/ZG;->k:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/ZG;->l:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/google/android/gms/internal/ads/ZG;->f:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ZG;->I()J

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
    if-eqz v4, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public final f()D
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ZG;->H()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public final g()F
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ZG;->F()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final h()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/ZG;->j:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/ZG;->k:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/ZG;->l:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public final i(I)I
    .locals 3

    .line 1
    if-ltz p1, :cond_2

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ZG;->h()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/2addr v0, p1

    .line 8
    iget p1, p0, Lcom/google/android/gms/internal/ads/ZG;->h:I

    .line 9
    .line 10
    if-gt v0, p1, :cond_1

    .line 11
    .line 12
    iput v0, p0, Lcom/google/android/gms/internal/ads/ZG;->h:I

    .line 13
    .line 14
    iget v1, p0, Lcom/google/android/gms/internal/ads/ZG;->f:I

    .line 15
    .line 16
    iget v2, p0, Lcom/google/android/gms/internal/ads/ZG;->g:I

    .line 17
    .line 18
    add-int/2addr v1, v2

    .line 19
    iput v1, p0, Lcom/google/android/gms/internal/ads/ZG;->f:I

    .line 20
    .line 21
    if-le v1, v0, :cond_0

    .line 22
    .line 23
    sub-int v0, v1, v0

    .line 24
    .line 25
    iput v0, p0, Lcom/google/android/gms/internal/ads/ZG;->g:I

    .line 26
    .line 27
    sub-int/2addr v1, v0

    .line 28
    iput v1, p0, Lcom/google/android/gms/internal/ads/ZG;->f:I

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/google/android/gms/internal/ads/ZG;->g:I

    .line 33
    .line 34
    :goto_0
    return p1

    .line 35
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/AH;

    .line 36
    .line 37
    const-string v0, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    .line 38
    .line 39
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1

    .line 43
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/AH;

    .line 44
    .line 45
    const-string v0, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    .line 46
    .line 47
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1
.end method

.method public final j()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ZG;->G()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final k()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ZG;->F()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final l()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ZG;->G()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final m()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ZG;->F()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final n()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ZG;->G()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dH;->c(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final o()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ZG;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/google/android/gms/internal/ads/ZG;->i:I

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ZG;->G()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iput v0, p0, Lcom/google/android/gms/internal/ads/ZG;->i:I

    .line 16
    .line 17
    ushr-int/lit8 v1, v0, 0x3

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    return v0

    .line 22
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/AH;

    .line 23
    .line 24
    const-string v1, "Protocol message contained an invalid tag (zero)."

    .line 25
    .line 26
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v0
.end method

.method public final p()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ZG;->G()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final q()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ZG;->H()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public final r()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ZG;->I()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public final s()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ZG;->H()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public final t()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ZG;->I()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dH;->d(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0
.end method

.method public final u()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ZG;->I()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public final v()Lcom/google/android/gms/internal/ads/VG;
    .locals 13

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ZG;->G()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_1

    .line 6
    .line 7
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/ZG;->m:J

    .line 8
    .line 9
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/ZG;->k:J

    .line 10
    .line 11
    sub-long/2addr v1, v4

    .line 12
    int-to-long v11, v0

    .line 13
    cmp-long v3, v11, v1

    .line 14
    .line 15
    if-lez v3, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-array v0, v0, [B

    .line 19
    .line 20
    sget-object v3, Lcom/google/android/gms/internal/ads/nI;->c:Lcom/google/android/gms/internal/ads/mI;

    .line 21
    .line 22
    const-wide/16 v7, 0x0

    .line 23
    .line 24
    move-object v6, v0

    .line 25
    move-wide v9, v11

    .line 26
    invoke-virtual/range {v3 .. v10}, Lcom/google/android/gms/internal/ads/mI;->R0(J[BJJ)V

    .line 27
    .line 28
    .line 29
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/ZG;->k:J

    .line 30
    .line 31
    add-long/2addr v1, v11

    .line 32
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/ZG;->k:J

    .line 33
    .line 34
    new-instance v1, Lcom/google/android/gms/internal/ads/VG;

    .line 35
    .line 36
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/VG;-><init>([B)V

    .line 37
    .line 38
    .line 39
    return-object v1

    .line 40
    :cond_1
    :goto_0
    if-lez v0, :cond_3

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ZG;->B()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-le v0, v1, :cond_2

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    new-array v1, v0, [B

    .line 50
    .line 51
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/ZG;->C([BI)V

    .line 52
    .line 53
    .line 54
    new-instance v0, Lcom/google/android/gms/internal/ads/VG;

    .line 55
    .line 56
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/VG;-><init>([B)V

    .line 57
    .line 58
    .line 59
    return-object v0

    .line 60
    :cond_3
    :goto_1
    if-nez v0, :cond_4

    .line 61
    .line 62
    sget-object v0, Lcom/google/android/gms/internal/ads/XG;->H:Lcom/google/android/gms/internal/ads/VG;

    .line 63
    .line 64
    return-object v0

    .line 65
    :cond_4
    if-gez v0, :cond_5

    .line 66
    .line 67
    new-instance v0, Lcom/google/android/gms/internal/ads/AH;

    .line 68
    .line 69
    const-string v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    .line 70
    .line 71
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw v0

    .line 75
    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/ads/AH;

    .line 76
    .line 77
    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    .line 78
    .line 79
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw v0
.end method

.method public final w()Ljava/lang/String;
    .locals 13

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ZG;->G()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_1

    .line 6
    .line 7
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/ZG;->m:J

    .line 8
    .line 9
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/ZG;->k:J

    .line 10
    .line 11
    sub-long/2addr v1, v4

    .line 12
    int-to-long v11, v0

    .line 13
    cmp-long v3, v11, v1

    .line 14
    .line 15
    if-lez v3, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-array v0, v0, [B

    .line 19
    .line 20
    sget-object v3, Lcom/google/android/gms/internal/ads/nI;->c:Lcom/google/android/gms/internal/ads/mI;

    .line 21
    .line 22
    const-wide/16 v7, 0x0

    .line 23
    .line 24
    move-object v6, v0

    .line 25
    move-wide v9, v11

    .line 26
    invoke-virtual/range {v3 .. v10}, Lcom/google/android/gms/internal/ads/mI;->R0(J[BJJ)V

    .line 27
    .line 28
    .line 29
    new-instance v1, Ljava/lang/String;

    .line 30
    .line 31
    sget-object v2, Lcom/google/android/gms/internal/ads/yH;->a:Ljava/nio/charset/Charset;

    .line 32
    .line 33
    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 34
    .line 35
    .line 36
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/ZG;->k:J

    .line 37
    .line 38
    add-long/2addr v2, v11

    .line 39
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/ZG;->k:J

    .line 40
    .line 41
    return-object v1

    .line 42
    :cond_1
    :goto_0
    if-lez v0, :cond_3

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ZG;->B()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-le v0, v1, :cond_2

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    new-array v1, v0, [B

    .line 52
    .line 53
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/ZG;->C([BI)V

    .line 54
    .line 55
    .line 56
    new-instance v0, Ljava/lang/String;

    .line 57
    .line 58
    sget-object v2, Lcom/google/android/gms/internal/ads/yH;->a:Ljava/nio/charset/Charset;

    .line 59
    .line 60
    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 61
    .line 62
    .line 63
    return-object v0

    .line 64
    :cond_3
    :goto_1
    if-nez v0, :cond_4

    .line 65
    .line 66
    const-string v0, ""

    .line 67
    .line 68
    return-object v0

    .line 69
    :cond_4
    if-gez v0, :cond_5

    .line 70
    .line 71
    new-instance v0, Lcom/google/android/gms/internal/ads/AH;

    .line 72
    .line 73
    const-string v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    .line 74
    .line 75
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw v0

    .line 79
    :cond_5
    new-instance v0, Lcom/google/android/gms/internal/ads/AH;

    .line 80
    .line 81
    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    .line 82
    .line 83
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw v0
.end method

.method public final x()Ljava/lang/String;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ZG;->G()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_3

    .line 6
    .line 7
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/ZG;->m:J

    .line 8
    .line 9
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/ZG;->k:J

    .line 10
    .line 11
    sub-long/2addr v1, v3

    .line 12
    int-to-long v5, v0

    .line 13
    cmp-long v7, v5, v1

    .line 14
    .line 15
    if-lez v7, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/ZG;->l:J

    .line 19
    .line 20
    sub-long/2addr v3, v1

    .line 21
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ZG;->e:Ljava/nio/ByteBuffer;

    .line 22
    .line 23
    long-to-int v2, v3

    .line 24
    sget-object v3, Lcom/google/android/gms/internal/ads/pI;->a:Lcom/google/android/gms/internal/ads/fF;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hasArray()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    add-int/2addr v3, v2

    .line 41
    sget-object v2, Lcom/google/android/gms/internal/ads/pI;->a:Lcom/google/android/gms/internal/ads/fF;

    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    invoke-static {v3, v1, v0}, Lcom/google/android/gms/internal/ads/fF;->j(I[BI)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->isDirect()Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_2

    .line 56
    .line 57
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/fF;->k(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/fF;->k(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    :goto_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/ZG;->k:J

    .line 67
    .line 68
    add-long/2addr v1, v5

    .line 69
    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/ZG;->k:J

    .line 70
    .line 71
    return-object v0

    .line 72
    :cond_3
    :goto_1
    if-ltz v0, :cond_5

    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/ZG;->B()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-le v0, v1, :cond_4

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_4
    new-array v1, v0, [B

    .line 82
    .line 83
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/ads/ZG;->C([BI)V

    .line 84
    .line 85
    .line 86
    sget-object v2, Lcom/google/android/gms/internal/ads/pI;->a:Lcom/google/android/gms/internal/ads/fF;

    .line 87
    .line 88
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    const/4 v2, 0x0

    .line 92
    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/ads/fF;->j(I[BI)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    return-object v0

    .line 97
    :cond_5
    :goto_2
    if-nez v0, :cond_6

    .line 98
    .line 99
    const-string v0, ""

    .line 100
    .line 101
    return-object v0

    .line 102
    :cond_6
    if-gtz v0, :cond_7

    .line 103
    .line 104
    new-instance v0, Lcom/google/android/gms/internal/ads/AH;

    .line 105
    .line 106
    const-string v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    .line 107
    .line 108
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw v0

    .line 112
    :cond_7
    new-instance v0, Lcom/google/android/gms/internal/ads/AH;

    .line 113
    .line 114
    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    .line 115
    .line 116
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw v0
.end method

.method public final y()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/ZG;->i:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/AH;

    .line 7
    .line 8
    const-string v1, "Protocol message end-group tag did not match expected tag."

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method public final z(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/ZG;->h:I

    .line 2
    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/ads/ZG;->f:I

    .line 4
    .line 5
    iget v1, p0, Lcom/google/android/gms/internal/ads/ZG;->g:I

    .line 6
    .line 7
    add-int/2addr v0, v1

    .line 8
    iput v0, p0, Lcom/google/android/gms/internal/ads/ZG;->f:I

    .line 9
    .line 10
    if-le v0, p1, :cond_0

    .line 11
    .line 12
    sub-int p1, v0, p1

    .line 13
    .line 14
    iput p1, p0, Lcom/google/android/gms/internal/ads/ZG;->g:I

    .line 15
    .line 16
    sub-int/2addr v0, p1

    .line 17
    iput v0, p0, Lcom/google/android/gms/internal/ads/ZG;->f:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    iput p1, p0, Lcom/google/android/gms/internal/ads/ZG;->g:I

    .line 22
    .line 23
    :goto_0
    return-void
.end method
