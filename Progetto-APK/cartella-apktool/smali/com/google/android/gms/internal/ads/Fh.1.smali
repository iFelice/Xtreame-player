.class public final Lcom/google/android/gms/internal/ads/Fh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/uA;

.field public final b:Ljava/util/ArrayList;

.field public c:[Ljava/nio/ByteBuffer;

.field public d:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/PA;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Fh;->a:Lcom/google/android/gms/internal/ads/uA;

    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Fh;->b:Ljava/util/ArrayList;

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    new-array v0, p1, [Ljava/nio/ByteBuffer;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Fh;->c:[Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    sget-object v0, Lcom/google/android/gms/internal/ads/Th;->e:Lcom/google/android/gms/internal/ads/Th;

    .line 19
    .line 20
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/Fh;->d:Z

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/Th;)Lcom/google/android/gms/internal/ads/Th;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/Th;->e:Lcom/google/android/gms/internal/ads/Th;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/Th;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_2

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Fh;->a:Lcom/google/android/gms/internal/ads/uA;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-ge v0, v2, :cond_1

    .line 17
    .line 18
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/google/android/gms/internal/ads/ti;

    .line 23
    .line 24
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/ti;->a(Lcom/google/android/gms/internal/ads/Th;)Lcom/google/android/gms/internal/ads/Th;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/ti;->zzg()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    sget-object p1, Lcom/google/android/gms/internal/ads/Th;->e:Lcom/google/android/gms/internal/ads/Th;

    .line 35
    .line 36
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/Th;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    xor-int/lit8 p1, p1, 0x1

    .line 41
    .line 42
    invoke-static {p1}, Lo3/r;->M(Z)V

    .line 43
    .line 44
    .line 45
    move-object p1, v2

    .line 46
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    return-object p1

    .line 50
    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/ei;

    .line 51
    .line 52
    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/ei;-><init>(Lcom/google/android/gms/internal/ads/Th;)V

    .line 53
    .line 54
    .line 55
    throw v0
.end method

.method public final b()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Fh;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/Fh;->d:Z

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Fh;->a:Lcom/google/android/gms/internal/ads/uA;

    .line 11
    .line 12
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    if-ge v2, v4, :cond_1

    .line 17
    .line 18
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Lcom/google/android/gms/internal/ads/ti;

    .line 23
    .line 24
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/ti;->zzc()V

    .line 25
    .line 26
    .line 27
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/ti;->zzg()Z

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-eqz v4, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    new-array v2, v2, [Ljava/nio/ByteBuffer;

    .line 44
    .line 45
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/Fh;->c:[Ljava/nio/ByteBuffer;

    .line 46
    .line 47
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Fh;->f()I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-gt v1, v2, :cond_2

    .line 52
    .line 53
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Fh;->c:[Ljava/nio/ByteBuffer;

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    check-cast v3, Lcom/google/android/gms/internal/ads/ti;

    .line 60
    .line 61
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/ti;->zzb()Ljava/nio/ByteBuffer;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    aput-object v3, v2, v1

    .line 66
    .line 67
    add-int/lit8 v1, v1, 0x1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    return-void
.end method

.method public final c()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Fh;->a:Lcom/google/android/gms/internal/ads/uA;

    .line 4
    .line 5
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    .line 6
    .line 7
    .line 8
    move-result v3

    .line 9
    if-ge v1, v3, :cond_0

    .line 10
    .line 11
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Lcom/google/android/gms/internal/ads/ti;

    .line 16
    .line 17
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/ti;->zzc()V

    .line 18
    .line 19
    .line 20
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/ti;->zzf()V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-array v1, v0, [Ljava/nio/ByteBuffer;

    .line 27
    .line 28
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Fh;->c:[Ljava/nio/ByteBuffer;

    .line 29
    .line 30
    sget-object v1, Lcom/google/android/gms/internal/ads/Th;->e:Lcom/google/android/gms/internal/ads/Th;

    .line 31
    .line 32
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/Fh;->d:Z

    .line 33
    .line 34
    return-void
.end method

.method public final d()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/Fh;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Fh;->b:Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Fh;->f()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/google/android/gms/internal/ads/ti;

    .line 16
    .line 17
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ti;->zzh()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Fh;->c:[Ljava/nio/ByteBuffer;

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Fh;->f()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    aget-object v0, v0, v1

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    return v0

    .line 39
    :cond_0
    const/4 v0, 0x0

    .line 40
    return v0
.end method

.method public final e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Fh;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/Fh;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/Fh;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Fh;->a:Lcom/google/android/gms/internal/ads/uA;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    iget-object v4, p1, Lcom/google/android/gms/internal/ads/Fh;->a:Lcom/google/android/gms/internal/ads/uA;

    .line 20
    .line 21
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-ne v3, v4, :cond_4

    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    :goto_0
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    if-ge v3, v4, :cond_3

    .line 33
    .line 34
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    iget-object v5, p1, Lcom/google/android/gms/internal/ads/Fh;->a:Lcom/google/android/gms/internal/ads/uA;

    .line 39
    .line 40
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    if-eq v4, v5, :cond_2

    .line 45
    .line 46
    return v2

    .line 47
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    return v0

    .line 51
    :cond_4
    return v2
.end method

.method public final f()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Fh;->c:[Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    add-int/lit8 v0, v0, -0x1

    .line 5
    .line 6
    return v0
.end method

.method public final g(Ljava/nio/ByteBuffer;)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Fh;->f()I

    .line 5
    .line 6
    .line 7
    move-result v3

    .line 8
    if-gt v1, v3, :cond_6

    .line 9
    .line 10
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Fh;->c:[Ljava/nio/ByteBuffer;

    .line 11
    .line 12
    aget-object v3, v3, v1

    .line 13
    .line 14
    invoke-virtual {v3}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-nez v3, :cond_5

    .line 19
    .line 20
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Fh;->b:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    check-cast v4, Lcom/google/android/gms/internal/ads/ti;

    .line 27
    .line 28
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/ti;->zzh()Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-eqz v5, :cond_0

    .line 33
    .line 34
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/Fh;->c:[Ljava/nio/ByteBuffer;

    .line 35
    .line 36
    aget-object v4, v4, v1

    .line 37
    .line 38
    invoke-virtual {v4}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-nez v4, :cond_5

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Fh;->f()I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-ge v1, v4, :cond_5

    .line 49
    .line 50
    add-int/lit8 v4, v1, 0x1

    .line 51
    .line 52
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Lcom/google/android/gms/internal/ads/ti;

    .line 57
    .line 58
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/ti;->zzd()V

    .line 59
    .line 60
    .line 61
    goto :goto_4

    .line 62
    :cond_0
    if-lez v1, :cond_1

    .line 63
    .line 64
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Fh;->c:[Ljava/nio/ByteBuffer;

    .line 65
    .line 66
    add-int/lit8 v5, v1, -0x1

    .line 67
    .line 68
    aget-object v3, v3, v5

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_1
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-eqz v3, :cond_2

    .line 76
    .line 77
    move-object v3, p1

    .line 78
    goto :goto_2

    .line 79
    :cond_2
    sget-object v3, Lcom/google/android/gms/internal/ads/ti;->a:Ljava/nio/ByteBuffer;

    .line 80
    .line 81
    :goto_2
    invoke-virtual {v3}, Ljava/nio/Buffer;->remaining()I

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    int-to-long v5, v5

    .line 86
    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/ads/ti;->b(Ljava/nio/ByteBuffer;)V

    .line 87
    .line 88
    .line 89
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/Fh;->c:[Ljava/nio/ByteBuffer;

    .line 90
    .line 91
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/ti;->zzb()Ljava/nio/ByteBuffer;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    aput-object v4, v7, v1

    .line 96
    .line 97
    invoke-virtual {v3}, Ljava/nio/Buffer;->remaining()I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    int-to-long v3, v3

    .line 102
    sub-long/2addr v5, v3

    .line 103
    const-wide/16 v3, 0x0

    .line 104
    .line 105
    const/4 v7, 0x1

    .line 106
    cmp-long v8, v5, v3

    .line 107
    .line 108
    if-gtz v8, :cond_4

    .line 109
    .line 110
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Fh;->c:[Ljava/nio/ByteBuffer;

    .line 111
    .line 112
    aget-object v3, v3, v1

    .line 113
    .line 114
    invoke-virtual {v3}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    if-eqz v3, :cond_3

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_3
    const/4 v7, 0x0

    .line 122
    :cond_4
    :goto_3
    or-int/2addr v2, v7

    .line 123
    :cond_5
    :goto_4
    add-int/lit8 v1, v1, 0x1

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_6
    if-eqz v2, :cond_7

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_7
    return-void
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Fh;->a:Lcom/google/android/gms/internal/ads/uA;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/uA;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
