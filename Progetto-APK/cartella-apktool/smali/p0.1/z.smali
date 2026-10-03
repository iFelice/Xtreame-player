.class public final Lp0/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/d;
.implements Lcom/google/android/gms/internal/ads/q1;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ltz p1, :cond_0

    .line 7
    .line 8
    const/high16 v2, 0x40000000    # 2.0f

    .line 9
    .line 10
    if-gt p1, v2, :cond_0

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v2, 0x0

    .line 15
    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/H1;->d(Z)V

    .line 16
    .line 17
    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eq v2, v1, :cond_2

    .line 26
    .line 27
    add-int/lit8 p1, p1, -0x1

    .line 28
    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    shl-int/2addr p1, v1

    .line 34
    :cond_2
    iput v0, p0, Lp0/z;->a:I

    .line 35
    .line 36
    const/4 v2, -0x1

    .line 37
    iput v2, p0, Lp0/z;->b:I

    .line 38
    .line 39
    iput v0, p0, Lp0/z;->c:I

    .line 40
    .line 41
    new-array v0, p1, [J

    .line 42
    .line 43
    iput-object v0, p0, Lp0/z;->e:Ljava/lang/Object;

    .line 44
    .line 45
    sub-int/2addr p1, v1

    .line 46
    iput p1, p0, Lp0/z;->d:I

    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    return v0
.end method

.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Lp0/z;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public final c()I
    .locals 2

    .line 1
    iget v0, p0, Lp0/z;->b:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lp0/z;->e:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lp0/E;

    .line 10
    .line 11
    invoke-virtual {v0}, Lp0/E;->z()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :cond_0
    const/16 v1, 0x10

    .line 17
    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lp0/z;->e:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Lp0/E;

    .line 23
    .line 24
    invoke-virtual {v0}, Lp0/E;->F()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    return v0

    .line 29
    :cond_1
    iget v0, p0, Lp0/z;->c:I

    .line 30
    .line 31
    add-int/lit8 v1, v0, 0x1

    .line 32
    .line 33
    iput v1, p0, Lp0/z;->c:I

    .line 34
    .line 35
    rem-int/lit8 v0, v0, 0x2

    .line 36
    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    iget-object v0, p0, Lp0/z;->e:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v0, Lp0/E;

    .line 42
    .line 43
    invoke-virtual {v0}, Lp0/E;->z()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iput v0, p0, Lp0/z;->d:I

    .line 48
    .line 49
    and-int/lit16 v0, v0, 0xf0

    .line 50
    .line 51
    shr-int/lit8 v0, v0, 0x4

    .line 52
    .line 53
    return v0

    .line 54
    :cond_2
    iget v0, p0, Lp0/z;->d:I

    .line 55
    .line 56
    and-int/lit8 v0, v0, 0xf

    .line 57
    .line 58
    return v0
.end method

.method public final d(J)V
    .locals 6

    .line 1
    iget v0, p0, Lp0/z;->c:I

    .line 2
    .line 3
    iget-object v1, p0, Lp0/z;->e:Ljava/lang/Object;

    .line 4
    .line 5
    move-object v2, v1

    .line 6
    check-cast v2, [J

    .line 7
    .line 8
    array-length v2, v2

    .line 9
    if-ne v0, v2, :cond_1

    .line 10
    .line 11
    check-cast v1, [J

    .line 12
    .line 13
    array-length v0, v1

    .line 14
    shl-int/lit8 v0, v0, 0x1

    .line 15
    .line 16
    if-ltz v0, :cond_0

    .line 17
    .line 18
    new-array v2, v0, [J

    .line 19
    .line 20
    array-length v3, v1

    .line 21
    iget v4, p0, Lp0/z;->a:I

    .line 22
    .line 23
    sub-int/2addr v3, v4

    .line 24
    const/4 v5, 0x0

    .line 25
    invoke-static {v1, v4, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lp0/z;->e:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v1, [J

    .line 31
    .line 32
    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    .line 34
    .line 35
    iput v5, p0, Lp0/z;->a:I

    .line 36
    .line 37
    iget v1, p0, Lp0/z;->c:I

    .line 38
    .line 39
    add-int/lit8 v1, v1, -0x1

    .line 40
    .line 41
    iput v1, p0, Lp0/z;->b:I

    .line 42
    .line 43
    iput-object v2, p0, Lp0/z;->e:Ljava/lang/Object;

    .line 44
    .line 45
    add-int/lit8 v0, v0, -0x1

    .line 46
    .line 47
    iput v0, p0, Lp0/z;->d:I

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_1
    :goto_0
    iget v0, p0, Lp0/z;->b:I

    .line 57
    .line 58
    add-int/lit8 v0, v0, 0x1

    .line 59
    .line 60
    iget v1, p0, Lp0/z;->d:I

    .line 61
    .line 62
    and-int/2addr v0, v1

    .line 63
    iput v0, p0, Lp0/z;->b:I

    .line 64
    .line 65
    iget-object v1, p0, Lp0/z;->e:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v1, [J

    .line 68
    .line 69
    aput-wide p1, v1, v0

    .line 70
    .line 71
    iget p1, p0, Lp0/z;->c:I

    .line 72
    .line 73
    add-int/lit8 p1, p1, 0x1

    .line 74
    .line 75
    iput p1, p0, Lp0/z;->c:I

    .line 76
    .line 77
    return-void
.end method

.method public final e()J
    .locals 5

    .line 1
    iget v0, p0, Lp0/z;->c:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lp0/z;->e:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, [J

    .line 8
    .line 9
    iget v2, p0, Lp0/z;->a:I

    .line 10
    .line 11
    aget-wide v3, v1, v2

    .line 12
    .line 13
    add-int/lit8 v2, v2, 0x1

    .line 14
    .line 15
    iget v1, p0, Lp0/z;->d:I

    .line 16
    .line 17
    and-int/2addr v1, v2

    .line 18
    iput v1, p0, Lp0/z;->a:I

    .line 19
    .line 20
    add-int/lit8 v0, v0, -0x1

    .line 21
    .line 22
    iput v0, p0, Lp0/z;->c:I

    .line 23
    .line 24
    return-wide v3

    .line 25
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 28
    .line 29
    .line 30
    throw v0
.end method

.method public final f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lp0/z;->e:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Landroid/view/View;

    .line 5
    .line 6
    iget v2, p0, Lp0/z;->c:I

    .line 7
    .line 8
    check-cast v0, Landroid/view/View;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iget v3, p0, Lp0/z;->a:I

    .line 15
    .line 16
    sub-int/2addr v0, v3

    .line 17
    sub-int/2addr v2, v0

    .line 18
    invoke-static {v1, v2}, LN/N;->i(Landroid/view/View;I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lp0/z;->e:Ljava/lang/Object;

    .line 22
    .line 23
    move-object v1, v0

    .line 24
    check-cast v1, Landroid/view/View;

    .line 25
    .line 26
    iget v2, p0, Lp0/z;->d:I

    .line 27
    .line 28
    check-cast v0, Landroid/view/View;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iget v3, p0, Lp0/z;->b:I

    .line 35
    .line 36
    sub-int/2addr v0, v3

    .line 37
    sub-int/2addr v2, v0

    .line 38
    invoke-static {v1, v2}, LN/N;->h(Landroid/view/View;I)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final zza()I
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    return v0
.end method

.method public final zzb()I
    .locals 1

    .line 1
    iget v0, p0, Lp0/z;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public final zzc()I
    .locals 2

    .line 1
    iget v0, p0, Lp0/z;->b:I

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lp0/z;->e:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lcom/google/android/gms/internal/ads/jr;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :cond_0
    const/16 v1, 0x10

    .line 17
    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lp0/z;->e:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Lcom/google/android/gms/internal/ads/jr;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jr;->A()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    return v0

    .line 29
    :cond_1
    iget v0, p0, Lp0/z;->c:I

    .line 30
    .line 31
    add-int/lit8 v1, v0, 0x1

    .line 32
    .line 33
    iput v1, p0, Lp0/z;->c:I

    .line 34
    .line 35
    rem-int/lit8 v0, v0, 0x2

    .line 36
    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    iget-object v0, p0, Lp0/z;->e:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v0, Lcom/google/android/gms/internal/ads/jr;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iput v0, p0, Lp0/z;->d:I

    .line 48
    .line 49
    and-int/lit16 v0, v0, 0xf0

    .line 50
    .line 51
    shr-int/lit8 v0, v0, 0x4

    .line 52
    .line 53
    return v0

    .line 54
    :cond_2
    iget v0, p0, Lp0/z;->d:I

    .line 55
    .line 56
    and-int/lit8 v0, v0, 0xf

    .line 57
    .line 58
    return v0
.end method
