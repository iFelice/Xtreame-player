.class public final LK0/f;
.super Lw0/g;
.source "SourceFile"


# instance fields
.field public O:J

.field public P:I

.field public Q:I


# virtual methods
.method public final clear()V
    .locals 1

    .line 1
    invoke-super {p0}, Lw0/g;->clear()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, LK0/f;->P:I

    .line 6
    .line 7
    return-void
.end method

.method public final h(Lw0/g;)Z
    .locals 4

    .line 1
    const/high16 v0, 0x40000000    # 2.0f

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lw0/a;->getFlag(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    xor-int/2addr v0, v1

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lw0/a;->hasSupplementalData()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    xor-int/2addr v0, v1

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lw0/a;->isEndOfStream()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    xor-int/2addr v0, v1

    .line 25
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, LK0/f;->i()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    iget v0, p0, LK0/f;->P:I

    .line 36
    .line 37
    iget v2, p0, LK0/f;->Q:I

    .line 38
    .line 39
    if-lt v0, v2, :cond_1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    iget-object v0, p1, Lw0/g;->I:Ljava/nio/ByteBuffer;

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    iget-object v2, p0, Lw0/g;->I:Ljava/nio/ByteBuffer;

    .line 47
    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    add-int/2addr v0, v2

    .line 59
    const v2, 0x2ee000

    .line 60
    .line 61
    .line 62
    if-le v0, v2, :cond_2

    .line 63
    .line 64
    :goto_0
    const/4 p1, 0x0

    .line 65
    return p1

    .line 66
    :cond_2
    :goto_1
    iget v0, p0, LK0/f;->P:I

    .line 67
    .line 68
    add-int/lit8 v2, v0, 0x1

    .line 69
    .line 70
    iput v2, p0, LK0/f;->P:I

    .line 71
    .line 72
    if-nez v0, :cond_3

    .line 73
    .line 74
    iget-wide v2, p1, Lw0/g;->K:J

    .line 75
    .line 76
    iput-wide v2, p0, Lw0/g;->K:J

    .line 77
    .line 78
    invoke-virtual {p1}, Lw0/a;->isKeyFrame()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_3

    .line 83
    .line 84
    invoke-virtual {p0, v1}, Lw0/a;->setFlags(I)V

    .line 85
    .line 86
    .line 87
    :cond_3
    iget-object v0, p1, Lw0/g;->I:Ljava/nio/ByteBuffer;

    .line 88
    .line 89
    if-eqz v0, :cond_4

    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    invoke-virtual {p0, v2}, Lw0/g;->f(I)V

    .line 96
    .line 97
    .line 98
    iget-object v2, p0, Lw0/g;->I:Ljava/nio/ByteBuffer;

    .line 99
    .line 100
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 101
    .line 102
    .line 103
    :cond_4
    iget-wide v2, p1, Lw0/g;->K:J

    .line 104
    .line 105
    iput-wide v2, p0, LK0/f;->O:J

    .line 106
    .line 107
    return v1
.end method

.method public final i()Z
    .locals 1

    .line 1
    iget v0, p0, LK0/f;->P:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method
