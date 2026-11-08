.class public final LP2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:[B

.field public c:I

.field public d:I


# direct methods
.method public synthetic constructor <init>(I[BII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, LP2/b;->a:I

    iput-object p2, p0, LP2/b;->b:[B

    iput p1, p0, LP2/b;->c:I

    iput p3, p0, LP2/b;->d:I

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 6

    .line 2
    iput p2, p0, LP2/b;->a:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/16 v2, 0x100

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p2, v2, [B

    iput-object p2, p0, LP2/b;->b:[B

    const/4 p2, 0x0

    :goto_0
    if-ge p2, v2, :cond_0

    iget-object v0, p0, LP2/b;->b:[B

    int-to-byte v3, p2

    aput-byte v3, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_1
    if-ge p2, v2, :cond_1

    iget-object v3, p0, LP2/b;->b:[B

    .line 4
    aget-byte v4, v3, p2

    add-int/2addr v0, v4

    array-length v5, p1

    rem-int v5, p2, v5

    aget-byte v5, p1, v5

    add-int/2addr v0, v5

    and-int/lit16 v0, v0, 0xff

    aget-byte v5, v3, v0

    .line 5
    aput-byte v5, v3, p2

    aput-byte v4, v3, v0

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    iput v1, p0, LP2/b;->c:I

    iput v1, p0, LP2/b;->d:I

    return-void

    .line 6
    :cond_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, LP2/b;->b:[B

    return-void

    .line 8
    :cond_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p2, v2, [B

    iput-object p2, p0, LP2/b;->b:[B

    const/4 p2, 0x0

    :goto_2
    if-ge p2, v2, :cond_4

    iget-object v0, p0, LP2/b;->b:[B

    int-to-byte v3, p2

    aput-byte v3, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    const/4 v0, 0x0

    :goto_3
    if-ge p2, v2, :cond_5

    iget-object v3, p0, LP2/b;->b:[B

    .line 9
    aget-byte v4, v3, p2

    add-int/2addr v0, v4

    array-length v5, p1

    rem-int v5, p2, v5

    aget-byte v5, p1, v5

    add-int/2addr v0, v5

    and-int/lit16 v0, v0, 0xff

    aget-byte v5, v3, v0

    .line 10
    aput-byte v5, v3, p2

    aput-byte v4, v3, v0

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_5
    iput v1, p0, LP2/b;->c:I

    iput v1, p0, LP2/b;->d:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 1
    iget-object v0, p0, LP2/b;->b:[B

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    iget v1, p0, LP2/b;->c:I

    .line 5
    .line 6
    sub-int/2addr v0, v1

    .line 7
    mul-int/lit8 v0, v0, 0x8

    .line 8
    .line 9
    iget v1, p0, LP2/b;->d:I

    .line 10
    .line 11
    sub-int/2addr v0, v1

    .line 12
    return v0
.end method

.method public final b(I)I
    .locals 8

    .line 1
    if-lez p1, :cond_4

    .line 2
    .line 3
    const/16 v0, 0x20

    .line 4
    .line 5
    if-gt p1, v0, :cond_4

    .line 6
    .line 7
    invoke-virtual {p0}, LP2/b;->a()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-gt p1, v0, :cond_4

    .line 12
    .line 13
    iget v0, p0, LP2/b;->d:I

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    const/16 v2, 0xff

    .line 17
    .line 18
    const/16 v3, 0x8

    .line 19
    .line 20
    if-lez v0, :cond_1

    .line 21
    .line 22
    rsub-int/lit8 v0, v0, 0x8

    .line 23
    .line 24
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    sub-int/2addr v0, v4

    .line 29
    rsub-int/lit8 v5, v4, 0x8

    .line 30
    .line 31
    shr-int v5, v2, v5

    .line 32
    .line 33
    shl-int/2addr v5, v0

    .line 34
    iget-object v6, p0, LP2/b;->b:[B

    .line 35
    .line 36
    iget v7, p0, LP2/b;->c:I

    .line 37
    .line 38
    aget-byte v6, v6, v7

    .line 39
    .line 40
    and-int/2addr v5, v6

    .line 41
    shr-int v0, v5, v0

    .line 42
    .line 43
    sub-int/2addr p1, v4

    .line 44
    iget v5, p0, LP2/b;->d:I

    .line 45
    .line 46
    add-int/2addr v5, v4

    .line 47
    iput v5, p0, LP2/b;->d:I

    .line 48
    .line 49
    if-ne v5, v3, :cond_0

    .line 50
    .line 51
    iput v1, p0, LP2/b;->d:I

    .line 52
    .line 53
    add-int/lit8 v7, v7, 0x1

    .line 54
    .line 55
    iput v7, p0, LP2/b;->c:I

    .line 56
    .line 57
    :cond_0
    move v1, v0

    .line 58
    :cond_1
    if-lez p1, :cond_3

    .line 59
    .line 60
    :goto_0
    if-lt p1, v3, :cond_2

    .line 61
    .line 62
    shl-int/lit8 v0, v1, 0x8

    .line 63
    .line 64
    iget-object v1, p0, LP2/b;->b:[B

    .line 65
    .line 66
    iget v4, p0, LP2/b;->c:I

    .line 67
    .line 68
    aget-byte v1, v1, v4

    .line 69
    .line 70
    and-int/2addr v1, v2

    .line 71
    or-int/2addr v1, v0

    .line 72
    add-int/lit8 v4, v4, 0x1

    .line 73
    .line 74
    iput v4, p0, LP2/b;->c:I

    .line 75
    .line 76
    add-int/lit8 p1, p1, -0x8

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    if-lez p1, :cond_3

    .line 80
    .line 81
    rsub-int/lit8 v0, p1, 0x8

    .line 82
    .line 83
    shr-int/2addr v2, v0

    .line 84
    shl-int/2addr v2, v0

    .line 85
    shl-int/2addr v1, p1

    .line 86
    iget-object v3, p0, LP2/b;->b:[B

    .line 87
    .line 88
    iget v4, p0, LP2/b;->c:I

    .line 89
    .line 90
    aget-byte v3, v3, v4

    .line 91
    .line 92
    and-int/2addr v2, v3

    .line 93
    shr-int v0, v2, v0

    .line 94
    .line 95
    or-int/2addr v1, v0

    .line 96
    iget v0, p0, LP2/b;->d:I

    .line 97
    .line 98
    add-int/2addr v0, p1

    .line 99
    iput v0, p0, LP2/b;->d:I

    .line 100
    .line 101
    :cond_3
    return v1

    .line 102
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 103
    .line 104
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw v0
.end method

.method public final c([B)V
    .locals 8

    .line 1
    iget v0, p0, LP2/b;->a:I

    .line 2
    .line 3
    const/16 v1, 0x100

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget v0, p0, LP2/b;->c:I

    .line 10
    .line 11
    iget v3, p0, LP2/b;->d:I

    .line 12
    .line 13
    :goto_0
    if-ge v2, v1, :cond_0

    .line 14
    .line 15
    add-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    and-int/lit16 v0, v0, 0xff

    .line 18
    .line 19
    iget-object v4, p0, LP2/b;->b:[B

    .line 20
    .line 21
    aget-byte v5, v4, v0

    .line 22
    .line 23
    add-int/2addr v3, v5

    .line 24
    and-int/lit16 v3, v3, 0xff

    .line 25
    .line 26
    aget-byte v6, v4, v3

    .line 27
    .line 28
    aput-byte v6, v4, v0

    .line 29
    .line 30
    aput-byte v5, v4, v3

    .line 31
    .line 32
    aget-byte v6, p1, v2

    .line 33
    .line 34
    aget-byte v7, v4, v0

    .line 35
    .line 36
    add-int/2addr v7, v5

    .line 37
    and-int/lit16 v5, v7, 0xff

    .line 38
    .line 39
    aget-byte v4, v4, v5

    .line 40
    .line 41
    xor-int/2addr v4, v6

    .line 42
    int-to-byte v4, v4

    .line 43
    aput-byte v4, p1, v2

    .line 44
    .line 45
    add-int/lit8 v2, v2, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iput v0, p0, LP2/b;->c:I

    .line 49
    .line 50
    iput v3, p0, LP2/b;->d:I

    .line 51
    .line 52
    return-void

    .line 53
    :pswitch_0
    iget v0, p0, LP2/b;->c:I

    .line 54
    .line 55
    iget v3, p0, LP2/b;->d:I

    .line 56
    .line 57
    :goto_1
    if-ge v2, v1, :cond_1

    .line 58
    .line 59
    add-int/lit8 v0, v0, 0x1

    .line 60
    .line 61
    iget-object v4, p0, LP2/b;->b:[B

    .line 62
    .line 63
    and-int/lit16 v0, v0, 0xff

    .line 64
    .line 65
    aget-byte v5, v4, v0

    .line 66
    .line 67
    add-int/2addr v3, v5

    .line 68
    and-int/lit16 v3, v3, 0xff

    .line 69
    .line 70
    aget-byte v6, v4, v3

    .line 71
    .line 72
    aput-byte v6, v4, v0

    .line 73
    .line 74
    aput-byte v5, v4, v3

    .line 75
    .line 76
    aget-byte v6, p1, v2

    .line 77
    .line 78
    aget-byte v7, v4, v0

    .line 79
    .line 80
    add-int/2addr v7, v5

    .line 81
    and-int/lit16 v5, v7, 0xff

    .line 82
    .line 83
    aget-byte v4, v4, v5

    .line 84
    .line 85
    xor-int/2addr v4, v6

    .line 86
    int-to-byte v4, v4

    .line 87
    aput-byte v4, p1, v2

    .line 88
    .line 89
    add-int/lit8 v2, v2, 0x1

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_1
    iput v0, p0, LP2/b;->c:I

    .line 93
    .line 94
    iput v3, p0, LP2/b;->d:I

    .line 95
    .line 96
    return-void

    .line 97
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
