.class public final Lcom/google/android/gms/internal/ads/aI;
.super Lcom/google/android/gms/internal/ads/XG;
.source "SourceFile"


# static fields
.field public static final N:[I


# instance fields
.field public final I:I

.field public final J:Lcom/google/android/gms/internal/ads/XG;

.field public final K:Lcom/google/android/gms/internal/ads/XG;

.field public final L:I

.field public final M:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2f

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/aI;->N:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x1
        0x2
        0x3
        0x5
        0x8
        0xd
        0x15
        0x22
        0x37
        0x59
        0x90
        0xe9
        0x179
        0x262
        0x3db
        0x63d
        0xa18
        0x1055
        0x1a6d
        0x2ac2
        0x452f
        0x6ff1
        0xb520
        0x12511
        0x1da31
        0x2ff42
        0x4d973
        0x7d8b5
        0xcb228
        0x148add
        0x213d05
        0x35c7e2
        0x5704e7
        0x8cccc9
        0xe3d1b0
        0x1709e79
        0x2547029
        0x3c50ea2
        0x6197ecb
        0x9de8d6d
        0xff80c38
        0x19d699a5
        0x29cea5dd
        0x43a53f82
        0x6d73e55f
        0x7fffffff
    .end array-data
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/XG;Lcom/google/android/gms/internal/ads/XG;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/XG;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aI;->J:Lcom/google/android/gms/internal/ads/XG;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/aI;->K:Lcom/google/android/gms/internal/ads/XG;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/XG;->n()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iput v0, p0, Lcom/google/android/gms/internal/ads/aI;->L:I

    .line 13
    .line 14
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/XG;->n()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    add-int/2addr v1, v0

    .line 19
    iput v1, p0, Lcom/google/android/gms/internal/ads/aI;->I:I

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/XG;->p()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/XG;->p()I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    add-int/lit8 p1, p1, 0x1

    .line 34
    .line 35
    iput p1, p0, Lcom/google/android/gms/internal/ads/aI;->M:I

    .line 36
    .line 37
    return-void
.end method

.method public static A(I)I
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/aI;->N:[I

    .line 2
    .line 3
    const/16 v1, 0x2f

    .line 4
    .line 5
    if-lt p0, v1, :cond_0

    .line 6
    .line 7
    const p0, 0x7fffffff

    .line 8
    .line 9
    .line 10
    return p0

    .line 11
    :cond_0
    aget p0, v0, p0

    .line 12
    .line 13
    return p0
.end method


# virtual methods
.method public final c(I)B
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/aI;->I:I

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/XG;->z(II)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/aI;->i(I)B

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 13

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/XG;

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
    check-cast p1, Lcom/google/android/gms/internal/ads/XG;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/XG;->n()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget v3, p0, Lcom/google/android/gms/internal/ads/aI;->I:I

    .line 18
    .line 19
    if-eq v3, v1, :cond_2

    .line 20
    .line 21
    return v2

    .line 22
    :cond_2
    if-nez v3, :cond_3

    .line 23
    .line 24
    return v0

    .line 25
    :cond_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/XG;->G:I

    .line 26
    .line 27
    iget v4, p1, Lcom/google/android/gms/internal/ads/XG;->G:I

    .line 28
    .line 29
    if-eqz v1, :cond_5

    .line 30
    .line 31
    if-eqz v4, :cond_5

    .line 32
    .line 33
    if-ne v1, v4, :cond_4

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_4
    return v2

    .line 37
    :cond_5
    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/ads/ZH;

    .line 38
    .line 39
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/ZH;-><init>(Lcom/google/android/gms/internal/ads/XG;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ZH;->a()Lcom/google/android/gms/internal/ads/VG;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    new-instance v5, Lcom/google/android/gms/internal/ads/ZH;

    .line 47
    .line 48
    invoke-direct {v5, p1}, Lcom/google/android/gms/internal/ads/ZH;-><init>(Lcom/google/android/gms/internal/ads/XG;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/ZH;->a()Lcom/google/android/gms/internal/ads/VG;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const/4 v6, 0x0

    .line 56
    const/4 v7, 0x0

    .line 57
    const/4 v8, 0x0

    .line 58
    :goto_1
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/VG;->n()I

    .line 59
    .line 60
    .line 61
    move-result v9

    .line 62
    sub-int/2addr v9, v6

    .line 63
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/VG;->n()I

    .line 64
    .line 65
    .line 66
    move-result v10

    .line 67
    sub-int/2addr v10, v7

    .line 68
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    .line 69
    .line 70
    .line 71
    move-result v11

    .line 72
    if-nez v6, :cond_6

    .line 73
    .line 74
    invoke-virtual {v4, p1, v7, v11}, Lcom/google/android/gms/internal/ads/VG;->B(Lcom/google/android/gms/internal/ads/XG;II)Z

    .line 75
    .line 76
    .line 77
    move-result v12

    .line 78
    goto :goto_2

    .line 79
    :cond_6
    invoke-virtual {p1, v4, v6, v11}, Lcom/google/android/gms/internal/ads/VG;->B(Lcom/google/android/gms/internal/ads/XG;II)Z

    .line 80
    .line 81
    .line 82
    move-result v12

    .line 83
    :goto_2
    if-nez v12, :cond_7

    .line 84
    .line 85
    const/4 v0, 0x0

    .line 86
    goto :goto_3

    .line 87
    :cond_7
    add-int/2addr v8, v11

    .line 88
    if-lt v8, v3, :cond_9

    .line 89
    .line 90
    if-ne v8, v3, :cond_8

    .line 91
    .line 92
    :goto_3
    return v0

    .line 93
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 94
    .line 95
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 96
    .line 97
    .line 98
    throw p1

    .line 99
    :cond_9
    if-ne v11, v9, :cond_a

    .line 100
    .line 101
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ZH;->a()Lcom/google/android/gms/internal/ads/VG;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    const/4 v6, 0x0

    .line 106
    goto :goto_4

    .line 107
    :cond_a
    add-int/2addr v6, v11

    .line 108
    :goto_4
    if-ne v11, v10, :cond_b

    .line 109
    .line 110
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/ZH;->a()Lcom/google/android/gms/internal/ads/VG;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    const/4 v7, 0x0

    .line 115
    goto :goto_1

    .line 116
    :cond_b
    add-int/2addr v7, v11

    .line 117
    goto :goto_1
.end method

.method public final i(I)B
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/aI;->L:I

    .line 2
    .line 3
    if-ge p1, v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aI;->J:Lcom/google/android/gms/internal/ads/XG;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/XG;->i(I)B

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aI;->K:Lcom/google/android/gms/internal/ads/XG;

    .line 13
    .line 14
    sub-int/2addr p1, v0

    .line 15
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/XG;->i(I)B

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1
.end method

.method public final synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/YH;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/YH;-><init>(Lcom/google/android/gms/internal/ads/aI;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final n()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/aI;->I:I

    return v0
.end method

.method public final o([BIII)V
    .locals 3

    .line 1
    add-int v0, p2, p4

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aI;->J:Lcom/google/android/gms/internal/ads/XG;

    .line 4
    .line 5
    iget v2, p0, Lcom/google/android/gms/internal/ads/aI;->L:I

    .line 6
    .line 7
    if-gt v0, v2, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/XG;->o([BIII)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aI;->K:Lcom/google/android/gms/internal/ads/XG;

    .line 14
    .line 15
    if-lt p2, v2, :cond_1

    .line 16
    .line 17
    sub-int/2addr p2, v2

    .line 18
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/XG;->o([BIII)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    sub-int/2addr v2, p2

    .line 23
    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/google/android/gms/internal/ads/XG;->o([BIII)V

    .line 24
    .line 25
    .line 26
    add-int/2addr p3, v2

    .line 27
    sub-int/2addr p4, v2

    .line 28
    const/4 p2, 0x0

    .line 29
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/XG;->o([BIII)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final p()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/aI;->M:I

    return v0
.end method

.method public final q()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/aI;->I:I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/ads/aI;->M:I

    .line 4
    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/aI;->A(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-lt v0, v1, :cond_0

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

.method public final r(III)I
    .locals 3

    .line 1
    add-int v0, p2, p3

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aI;->J:Lcom/google/android/gms/internal/ads/XG;

    .line 4
    .line 5
    iget v2, p0, Lcom/google/android/gms/internal/ads/aI;->L:I

    .line 6
    .line 7
    if-gt v0, v2, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/XG;->r(III)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aI;->K:Lcom/google/android/gms/internal/ads/XG;

    .line 15
    .line 16
    if-lt p2, v2, :cond_1

    .line 17
    .line 18
    sub-int/2addr p2, v2

    .line 19
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/XG;->r(III)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1

    .line 24
    :cond_1
    sub-int/2addr v2, p2

    .line 25
    invoke-virtual {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/XG;->r(III)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    const/4 p2, 0x0

    .line 30
    sub-int/2addr p3, v2

    .line 31
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/XG;->r(III)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    return p1
.end method

.method public final s(II)Lcom/google/android/gms/internal/ads/XG;
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/aI;->I:I

    .line 2
    .line 3
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/XG;->v(III)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    sget-object p1, Lcom/google/android/gms/internal/ads/XG;->H:Lcom/google/android/gms/internal/ads/VG;

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    if-ne v1, v0, :cond_1

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aI;->J:Lcom/google/android/gms/internal/ads/XG;

    .line 16
    .line 17
    iget v1, p0, Lcom/google/android/gms/internal/ads/aI;->L:I

    .line 18
    .line 19
    if-gt p2, v1, :cond_2

    .line 20
    .line 21
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/XG;->s(II)Lcom/google/android/gms/internal/ads/XG;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1

    .line 26
    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aI;->K:Lcom/google/android/gms/internal/ads/XG;

    .line 27
    .line 28
    if-lt p1, v1, :cond_3

    .line 29
    .line 30
    sub-int/2addr p2, v1

    .line 31
    sub-int/2addr p1, v1

    .line 32
    invoke-virtual {v2, p1, p2}, Lcom/google/android/gms/internal/ads/XG;->s(II)Lcom/google/android/gms/internal/ads/XG;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    return-object p1

    .line 37
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/XG;->n()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    invoke-virtual {v0, p1, v3}, Lcom/google/android/gms/internal/ads/XG;->s(II)Lcom/google/android/gms/internal/ads/XG;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const/4 v0, 0x0

    .line 46
    sub-int/2addr p2, v1

    .line 47
    invoke-virtual {v2, v0, p2}, Lcom/google/android/gms/internal/ads/XG;->s(II)Lcom/google/android/gms/internal/ads/XG;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    new-instance v0, Lcom/google/android/gms/internal/ads/aI;

    .line 52
    .line 53
    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/aI;-><init>(Lcom/google/android/gms/internal/ads/XG;Lcom/google/android/gms/internal/ads/XG;)V

    .line 54
    .line 55
    .line 56
    return-object v0
.end method

.method public final t()Lcom/google/android/gms/internal/ads/dH;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayDeque;

    .line 7
    .line 8
    iget v2, p0, Lcom/google/android/gms/internal/ads/aI;->M:I

    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/aI;->J:Lcom/google/android/gms/internal/ads/XG;

    .line 17
    .line 18
    :goto_0
    instance-of v3, v2, Lcom/google/android/gms/internal/ads/aI;

    .line 19
    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    check-cast v2, Lcom/google/android/gms/internal/ads/aI;

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/aI;->J:Lcom/google/android/gms/internal/ads/XG;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    check-cast v2, Lcom/google/android/gms/internal/ads/VG;

    .line 31
    .line 32
    :goto_1
    const/4 v3, 0x0

    .line 33
    const/4 v4, 0x1

    .line 34
    if-eqz v2, :cond_1

    .line 35
    .line 36
    const/4 v5, 0x1

    .line 37
    goto :goto_2

    .line 38
    :cond_1
    const/4 v5, 0x0

    .line 39
    :goto_2
    if-eqz v5, :cond_6

    .line 40
    .line 41
    if-eqz v2, :cond_5

    .line 42
    .line 43
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_3

    .line 48
    .line 49
    const/4 v3, 0x0

    .line 50
    goto :goto_4

    .line 51
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    check-cast v3, Lcom/google/android/gms/internal/ads/aI;

    .line 56
    .line 57
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/aI;->K:Lcom/google/android/gms/internal/ads/XG;

    .line 58
    .line 59
    :goto_3
    instance-of v4, v3, Lcom/google/android/gms/internal/ads/aI;

    .line 60
    .line 61
    if-eqz v4, :cond_4

    .line 62
    .line 63
    check-cast v3, Lcom/google/android/gms/internal/ads/aI;

    .line 64
    .line 65
    invoke-virtual {v1, v3}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/aI;->J:Lcom/google/android/gms/internal/ads/XG;

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_4
    check-cast v3, Lcom/google/android/gms/internal/ads/VG;

    .line 72
    .line 73
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/VG;->n()I

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-eqz v4, :cond_2

    .line 78
    .line 79
    :goto_4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/VG;->A()I

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/VG;->n()I

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/VG;->I:[B

    .line 88
    .line 89
    invoke-static {v2, v4, v5}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-object v2, v3

    .line 101
    goto :goto_1

    .line 102
    :cond_5
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 103
    .line 104
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 105
    .line 106
    .line 107
    throw v0

    .line 108
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    const/4 v2, 0x0

    .line 113
    const/4 v5, 0x0

    .line 114
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    if-eqz v6, :cond_9

    .line 119
    .line 120
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v6

    .line 124
    check-cast v6, Ljava/nio/ByteBuffer;

    .line 125
    .line 126
    invoke-virtual {v6}, Ljava/nio/Buffer;->remaining()I

    .line 127
    .line 128
    .line 129
    move-result v7

    .line 130
    add-int/2addr v5, v7

    .line 131
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->hasArray()Z

    .line 132
    .line 133
    .line 134
    move-result v7

    .line 135
    if-eqz v7, :cond_7

    .line 136
    .line 137
    or-int/lit8 v2, v2, 0x1

    .line 138
    .line 139
    goto :goto_5

    .line 140
    :cond_7
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->isDirect()Z

    .line 141
    .line 142
    .line 143
    move-result v6

    .line 144
    if-eqz v6, :cond_8

    .line 145
    .line 146
    or-int/lit8 v2, v2, 0x2

    .line 147
    .line 148
    goto :goto_5

    .line 149
    :cond_8
    or-int/lit8 v2, v2, 0x4

    .line 150
    .line 151
    goto :goto_5

    .line 152
    :cond_9
    const/4 v1, 0x2

    .line 153
    if-ne v2, v1, :cond_a

    .line 154
    .line 155
    new-instance v1, Lcom/google/android/gms/internal/ads/ZG;

    .line 156
    .line 157
    invoke-direct {v1, v0, v5}, Lcom/google/android/gms/internal/ads/ZG;-><init>(Ljava/util/ArrayList;I)V

    .line 158
    .line 159
    .line 160
    goto :goto_7

    .line 161
    :cond_a
    new-instance v1, Lcom/google/android/gms/internal/ads/BH;

    .line 162
    .line 163
    invoke-direct {v1}, Ljava/io/InputStream;-><init>()V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/BH;->G:Ljava/util/Iterator;

    .line 171
    .line 172
    iput v3, v1, Lcom/google/android/gms/internal/ads/BH;->I:I

    .line 173
    .line 174
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    if-eqz v2, :cond_b

    .line 183
    .line 184
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    check-cast v2, Ljava/nio/ByteBuffer;

    .line 189
    .line 190
    iget v2, v1, Lcom/google/android/gms/internal/ads/BH;->I:I

    .line 191
    .line 192
    add-int/2addr v2, v4

    .line 193
    iput v2, v1, Lcom/google/android/gms/internal/ads/BH;->I:I

    .line 194
    .line 195
    goto :goto_6

    .line 196
    :cond_b
    const/4 v0, -0x1

    .line 197
    iput v0, v1, Lcom/google/android/gms/internal/ads/BH;->J:I

    .line 198
    .line 199
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/BH;->E()Z

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    if-nez v0, :cond_c

    .line 204
    .line 205
    sget-object v0, Lcom/google/android/gms/internal/ads/yH;->c:Ljava/nio/ByteBuffer;

    .line 206
    .line 207
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/BH;->H:Ljava/nio/ByteBuffer;

    .line 208
    .line 209
    iput v3, v1, Lcom/google/android/gms/internal/ads/BH;->J:I

    .line 210
    .line 211
    iput v3, v1, Lcom/google/android/gms/internal/ads/BH;->K:I

    .line 212
    .line 213
    const-wide/16 v2, 0x0

    .line 214
    .line 215
    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/BH;->O:J

    .line 216
    .line 217
    :cond_c
    new-instance v0, Lcom/google/android/gms/internal/ads/aH;

    .line 218
    .line 219
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/aH;-><init>(Ljava/io/InputStream;)V

    .line 220
    .line 221
    .line 222
    move-object v1, v0

    .line 223
    :goto_7
    return-object v1
.end method

.method public final u(LS3/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aI;->J:Lcom/google/android/gms/internal/ads/XG;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/XG;->u(LS3/e;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aI;->K:Lcom/google/android/gms/internal/ads/XG;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/XG;->u(LS3/e;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final w()Lcom/google/android/gms/internal/ads/gB;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/YH;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/YH;-><init>(Lcom/google/android/gms/internal/ads/aI;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
