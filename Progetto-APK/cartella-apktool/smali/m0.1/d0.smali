.class public final Lm0/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:I

.field public d:J

.field public e:J

.field public f:Z

.field public g:Lm0/c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x2

    .line 4
    const/4 v3, 0x3

    .line 5
    const/4 v4, 0x4

    .line 6
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/protobuf/U2;->r(IIIII)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lm0/c;->c:Lm0/c;

    .line 5
    .line 6
    iput-object v0, p0, Lm0/d0;->g:Lm0/c;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(II)J
    .locals 2

    .line 1
    iget-object v0, p0, Lm0/d0;->g:Lm0/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lm0/c;->a(I)Lm0/b;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget v0, p1, Lm0/b;->b:I

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    iget-object p1, p1, Lm0/b;->g:[J

    .line 13
    .line 14
    aget-wide v0, p1, p2

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    :goto_0
    return-wide v0
.end method

.method public final b(J)I
    .locals 12

    .line 1
    iget-object v0, p0, Lm0/d0;->g:Lm0/c;

    .line 2
    .line 3
    iget-wide v1, p0, Lm0/d0;->d:J

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 v3, -0x1

    .line 9
    const-wide/high16 v4, -0x8000000000000000L

    .line 10
    .line 11
    cmp-long v6, p1, v4

    .line 12
    .line 13
    if-eqz v6, :cond_5

    .line 14
    .line 15
    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    cmp-long v8, v1, v6

    .line 21
    .line 22
    if-eqz v8, :cond_0

    .line 23
    .line 24
    cmp-long v6, p1, v1

    .line 25
    .line 26
    if-ltz v6, :cond_0

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_0
    const/4 v6, 0x0

    .line 30
    :goto_0
    iget v7, v0, Lm0/c;->a:I

    .line 31
    .line 32
    if-ge v6, v7, :cond_3

    .line 33
    .line 34
    invoke-virtual {v0, v6}, Lm0/c;->a(I)Lm0/b;

    .line 35
    .line 36
    .line 37
    move-result-object v9

    .line 38
    iget-wide v9, v9, Lm0/b;->a:J

    .line 39
    .line 40
    cmp-long v11, v9, v4

    .line 41
    .line 42
    if-eqz v11, :cond_1

    .line 43
    .line 44
    invoke-virtual {v0, v6}, Lm0/c;->a(I)Lm0/b;

    .line 45
    .line 46
    .line 47
    move-result-object v9

    .line 48
    iget-wide v9, v9, Lm0/b;->a:J

    .line 49
    .line 50
    cmp-long v11, v9, p1

    .line 51
    .line 52
    if-lez v11, :cond_2

    .line 53
    .line 54
    :cond_1
    invoke-virtual {v0, v6}, Lm0/c;->a(I)Lm0/b;

    .line 55
    .line 56
    .line 57
    move-result-object v9

    .line 58
    iget v10, v9, Lm0/b;->b:I

    .line 59
    .line 60
    if-eq v10, v3, :cond_3

    .line 61
    .line 62
    invoke-virtual {v9, v3}, Lm0/b;->a(I)I

    .line 63
    .line 64
    .line 65
    move-result v9

    .line 66
    if-ge v9, v10, :cond_2

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    :goto_1
    if-ge v6, v7, :cond_5

    .line 73
    .line 74
    if-eqz v8, :cond_4

    .line 75
    .line 76
    invoke-virtual {v0, v6}, Lm0/c;->a(I)Lm0/b;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iget-wide p1, p1, Lm0/b;->a:J

    .line 81
    .line 82
    cmp-long v0, p1, v1

    .line 83
    .line 84
    if-gtz v0, :cond_5

    .line 85
    .line 86
    :cond_4
    move v3, v6

    .line 87
    :cond_5
    :goto_2
    return v3
.end method

.method public final c(J)I
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lm0/d0;->g:Lm0/c;

    .line 4
    .line 5
    iget-wide v2, v0, Lm0/d0;->d:J

    .line 6
    .line 7
    iget v4, v1, Lm0/c;->a:I

    .line 8
    .line 9
    add-int/lit8 v5, v4, -0x1

    .line 10
    .line 11
    const/4 v6, 0x1

    .line 12
    sub-int/2addr v4, v6

    .line 13
    const/4 v7, 0x0

    .line 14
    const-wide/high16 v8, -0x8000000000000000L

    .line 15
    .line 16
    const/4 v10, -0x1

    .line 17
    if-ne v5, v4, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1, v5}, Lm0/c;->a(I)Lm0/b;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    iget-boolean v11, v4, Lm0/b;->k:Z

    .line 24
    .line 25
    if-eqz v11, :cond_0

    .line 26
    .line 27
    iget-wide v11, v4, Lm0/b;->a:J

    .line 28
    .line 29
    cmp-long v13, v11, v8

    .line 30
    .line 31
    if-nez v13, :cond_0

    .line 32
    .line 33
    iget v4, v4, Lm0/b;->b:I

    .line 34
    .line 35
    if-ne v4, v10, :cond_0

    .line 36
    .line 37
    const/4 v4, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v4, 0x0

    .line 40
    :goto_0
    sub-int/2addr v5, v4

    .line 41
    :goto_1
    if-ltz v5, :cond_5

    .line 42
    .line 43
    cmp-long v4, p1, v8

    .line 44
    .line 45
    if-nez v4, :cond_1

    .line 46
    .line 47
    goto :goto_3

    .line 48
    :cond_1
    invoke-virtual {v1, v5}, Lm0/c;->a(I)Lm0/b;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    iget-wide v11, v4, Lm0/b;->a:J

    .line 53
    .line 54
    cmp-long v13, v11, v8

    .line 55
    .line 56
    if-nez v13, :cond_3

    .line 57
    .line 58
    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    cmp-long v15, v2, v13

    .line 64
    .line 65
    if-eqz v15, :cond_4

    .line 66
    .line 67
    iget-boolean v13, v4, Lm0/b;->k:Z

    .line 68
    .line 69
    if-eqz v13, :cond_2

    .line 70
    .line 71
    cmp-long v13, v11, v8

    .line 72
    .line 73
    if-nez v13, :cond_2

    .line 74
    .line 75
    iget v4, v4, Lm0/b;->b:I

    .line 76
    .line 77
    if-ne v4, v10, :cond_2

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_2
    cmp-long v4, p1, v2

    .line 81
    .line 82
    if-gez v4, :cond_5

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_3
    cmp-long v4, p1, v11

    .line 86
    .line 87
    if-gez v4, :cond_5

    .line 88
    .line 89
    :cond_4
    :goto_2
    add-int/lit8 v5, v5, -0x1

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_5
    :goto_3
    if-ltz v5, :cond_9

    .line 93
    .line 94
    invoke-virtual {v1, v5}, Lm0/c;->a(I)Lm0/b;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    iget v2, v1, Lm0/b;->b:I

    .line 99
    .line 100
    if-ne v2, v10, :cond_6

    .line 101
    .line 102
    goto :goto_5

    .line 103
    :cond_6
    :goto_4
    if-ge v7, v2, :cond_9

    .line 104
    .line 105
    iget-object v3, v1, Lm0/b;->f:[I

    .line 106
    .line 107
    aget v3, v3, v7

    .line 108
    .line 109
    if-eqz v3, :cond_8

    .line 110
    .line 111
    if-ne v3, v6, :cond_7

    .line 112
    .line 113
    goto :goto_5

    .line 114
    :cond_7
    add-int/lit8 v7, v7, 0x1

    .line 115
    .line 116
    goto :goto_4

    .line 117
    :cond_8
    :goto_5
    move v10, v5

    .line 118
    :cond_9
    return v10
.end method

.method public final d(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lm0/d0;->g:Lm0/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lm0/c;->a(I)Lm0/b;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-wide v0, p1, Lm0/b;->a:J

    .line 8
    .line 9
    return-wide v0
.end method

.method public final e(II)I
    .locals 2

    .line 1
    iget-object v0, p0, Lm0/d0;->g:Lm0/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lm0/c;->a(I)Lm0/b;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget v0, p1, Lm0/b;->b:I

    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    if-eq v0, v1, :cond_0

    .line 11
    .line 12
    iget-object p1, p1, Lm0/b;->f:[I

    .line 13
    .line 14
    aget p1, p1, p2

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-class v3, Lm0/d0;

    .line 13
    .line 14
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    check-cast p1, Lm0/d0;

    .line 22
    .line 23
    iget-object v2, p0, Lm0/d0;->a:Ljava/lang/Object;

    .line 24
    .line 25
    iget-object v3, p1, Lm0/d0;->a:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_2

    .line 32
    .line 33
    iget-object v2, p0, Lm0/d0;->b:Ljava/lang/Object;

    .line 34
    .line 35
    iget-object v3, p1, Lm0/d0;->b:Ljava/lang/Object;

    .line 36
    .line 37
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    iget v2, p0, Lm0/d0;->c:I

    .line 44
    .line 45
    iget v3, p1, Lm0/d0;->c:I

    .line 46
    .line 47
    if-ne v2, v3, :cond_2

    .line 48
    .line 49
    iget-wide v2, p0, Lm0/d0;->d:J

    .line 50
    .line 51
    iget-wide v4, p1, Lm0/d0;->d:J

    .line 52
    .line 53
    cmp-long v6, v2, v4

    .line 54
    .line 55
    if-nez v6, :cond_2

    .line 56
    .line 57
    iget-wide v2, p0, Lm0/d0;->e:J

    .line 58
    .line 59
    iget-wide v4, p1, Lm0/d0;->e:J

    .line 60
    .line 61
    cmp-long v6, v2, v4

    .line 62
    .line 63
    if-nez v6, :cond_2

    .line 64
    .line 65
    iget-boolean v2, p0, Lm0/d0;->f:Z

    .line 66
    .line 67
    iget-boolean v3, p1, Lm0/d0;->f:Z

    .line 68
    .line 69
    if-ne v2, v3, :cond_2

    .line 70
    .line 71
    iget-object v2, p0, Lm0/d0;->g:Lm0/c;

    .line 72
    .line 73
    iget-object p1, p1, Lm0/d0;->g:Lm0/c;

    .line 74
    .line 75
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_2

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    const/4 v0, 0x0

    .line 83
    :goto_0
    return v0

    .line 84
    :cond_3
    :goto_1
    return v1
.end method

.method public final f(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lm0/d0;->g:Lm0/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lm0/c;->a(I)Lm0/b;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const/4 v0, -0x1

    .line 8
    invoke-virtual {p1, v0}, Lm0/b;->a(I)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public final g()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lm0/d0;->e:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final h(I)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lm0/d0;->g:Lm0/c;

    .line 2
    .line 3
    iget v1, v0, Lm0/c;->a:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, -0x1

    .line 6
    .line 7
    if-ne p1, v2, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    sub-int/2addr v1, v2

    .line 11
    if-ne p1, v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lm0/c;->a(I)Lm0/b;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-boolean v0, p1, Lm0/b;->k:Z

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-wide v0, p1, Lm0/b;->a:J

    .line 22
    .line 23
    const-wide/high16 v3, -0x8000000000000000L

    .line 24
    .line 25
    cmp-long v5, v0, v3

    .line 26
    .line 27
    if-nez v5, :cond_0

    .line 28
    .line 29
    iget p1, p1, Lm0/b;->b:I

    .line 30
    .line 31
    const/4 v0, -0x1

    .line 32
    if-ne p1, v0, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v2, 0x0

    .line 36
    :goto_0
    return v2
.end method

.method public final hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Lm0/d0;->a:Ljava/lang/Object;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    const/16 v2, 0xd9

    .line 13
    .line 14
    add-int/2addr v2, v0

    .line 15
    mul-int/lit8 v2, v2, 0x1f

    .line 16
    .line 17
    iget-object v0, p0, Lm0/d0;->b:Ljava/lang/Object;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    :goto_1
    add-int/2addr v2, v1

    .line 27
    mul-int/lit8 v2, v2, 0x1f

    .line 28
    .line 29
    iget v0, p0, Lm0/d0;->c:I

    .line 30
    .line 31
    add-int/2addr v2, v0

    .line 32
    mul-int/lit8 v2, v2, 0x1f

    .line 33
    .line 34
    iget-wide v0, p0, Lm0/d0;->d:J

    .line 35
    .line 36
    const/16 v3, 0x20

    .line 37
    .line 38
    ushr-long v4, v0, v3

    .line 39
    .line 40
    xor-long/2addr v0, v4

    .line 41
    long-to-int v1, v0

    .line 42
    add-int/2addr v2, v1

    .line 43
    mul-int/lit8 v2, v2, 0x1f

    .line 44
    .line 45
    iget-wide v0, p0, Lm0/d0;->e:J

    .line 46
    .line 47
    ushr-long v3, v0, v3

    .line 48
    .line 49
    xor-long/2addr v0, v3

    .line 50
    long-to-int v1, v0

    .line 51
    add-int/2addr v2, v1

    .line 52
    mul-int/lit8 v2, v2, 0x1f

    .line 53
    .line 54
    iget-boolean v0, p0, Lm0/d0;->f:Z

    .line 55
    .line 56
    add-int/2addr v2, v0

    .line 57
    mul-int/lit8 v2, v2, 0x1f

    .line 58
    .line 59
    iget-object v0, p0, Lm0/d0;->g:Lm0/c;

    .line 60
    .line 61
    invoke-virtual {v0}, Lm0/c;->hashCode()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    add-int/2addr v0, v2

    .line 66
    return v0
.end method

.method public final i(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lm0/d0;->g:Lm0/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lm0/c;->a(I)Lm0/b;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-boolean p1, p1, Lm0/b;->j:Z

    .line 8
    .line 9
    return p1
.end method
