.class public final Lcom/google/android/gms/internal/ads/jr;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:[C

.field public static final e:[C

.field public static final f:Lcom/google/android/gms/internal/ads/zA;


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
    sput-object v2, Lcom/google/android/gms/internal/ads/jr;->d:[C

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
    sput-object v3, Lcom/google/android/gms/internal/ads/jr;->e:[C

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
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/zA;->u(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zA;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sput-object v0, Lcom/google/android/gms/internal/ads/jr;->f:Lcom/google/android/gms/internal/ads/zA;

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

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/ads/Et;->f:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/jr;->a:[B

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/jr;->a:[B

    iput p1, p0, Lcom/google/android/gms/internal/ads/jr;->c:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/jr;->a:[B

    array-length p1, p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/jr;->c:I

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/jr;->a:[B

    iput p2, p0, Lcom/google/android/gms/internal/ads/jr;->c:I

    return-void
.end method


# virtual methods
.method public final A()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/ads/jr;->b:I

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
    iput v1, p0, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 14
    .line 15
    aget-byte v0, v0, v2

    .line 16
    .line 17
    and-int/lit16 v0, v0, 0xff

    .line 18
    .line 19
    shl-int/lit8 v1, v3, 0x8

    .line 20
    .line 21
    or-int/2addr v0, v1

    .line 22
    return v0
.end method

.method public final B()J
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 4
    .line 5
    iget v2, v0, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 6
    .line 7
    add-int/lit8 v3, v2, 0x1

    .line 8
    .line 9
    aget-byte v4, v1, v2

    .line 10
    .line 11
    int-to-long v4, v4

    .line 12
    add-int/lit8 v6, v2, 0x2

    .line 13
    .line 14
    aget-byte v3, v1, v3

    .line 15
    .line 16
    int-to-long v7, v3

    .line 17
    add-int/lit8 v3, v2, 0x3

    .line 18
    .line 19
    aget-byte v6, v1, v6

    .line 20
    .line 21
    int-to-long v9, v6

    .line 22
    add-int/lit8 v6, v2, 0x4

    .line 23
    .line 24
    aget-byte v3, v1, v3

    .line 25
    .line 26
    int-to-long v11, v3

    .line 27
    add-int/lit8 v3, v2, 0x5

    .line 28
    .line 29
    aget-byte v6, v1, v6

    .line 30
    .line 31
    int-to-long v13, v6

    .line 32
    add-int/lit8 v6, v2, 0x6

    .line 33
    .line 34
    aget-byte v3, v1, v3

    .line 35
    .line 36
    move-wide v15, v4

    .line 37
    int-to-long v3, v3

    .line 38
    add-int/lit8 v5, v2, 0x7

    .line 39
    .line 40
    aget-byte v6, v1, v6

    .line 41
    .line 42
    move-wide/from16 v17, v3

    .line 43
    .line 44
    int-to-long v3, v6

    .line 45
    const/16 v6, 0x8

    .line 46
    .line 47
    add-int/2addr v2, v6

    .line 48
    iput v2, v0, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 49
    .line 50
    aget-byte v1, v1, v5

    .line 51
    .line 52
    int-to-long v1, v1

    .line 53
    const-wide/16 v19, 0xff

    .line 54
    .line 55
    and-long v7, v7, v19

    .line 56
    .line 57
    and-long v9, v9, v19

    .line 58
    .line 59
    and-long v11, v11, v19

    .line 60
    .line 61
    and-long v13, v13, v19

    .line 62
    .line 63
    and-long v17, v17, v19

    .line 64
    .line 65
    and-long v3, v3, v19

    .line 66
    .line 67
    and-long v1, v1, v19

    .line 68
    .line 69
    and-long v15, v15, v19

    .line 70
    .line 71
    shl-long v5, v7, v6

    .line 72
    .line 73
    or-long/2addr v5, v15

    .line 74
    const/16 v7, 0x10

    .line 75
    .line 76
    shl-long v7, v9, v7

    .line 77
    .line 78
    or-long/2addr v5, v7

    .line 79
    const/16 v7, 0x18

    .line 80
    .line 81
    shl-long v7, v11, v7

    .line 82
    .line 83
    or-long/2addr v5, v7

    .line 84
    const/16 v7, 0x20

    .line 85
    .line 86
    shl-long v7, v13, v7

    .line 87
    .line 88
    or-long/2addr v5, v7

    .line 89
    const/16 v7, 0x28

    .line 90
    .line 91
    shl-long v7, v17, v7

    .line 92
    .line 93
    or-long/2addr v5, v7

    .line 94
    const/16 v7, 0x30

    .line 95
    .line 96
    shl-long/2addr v3, v7

    .line 97
    or-long/2addr v3, v5

    .line 98
    const/16 v5, 0x38

    .line 99
    .line 100
    shl-long/2addr v1, v5

    .line 101
    or-long/2addr v1, v3

    .line 102
    return-wide v1
.end method

.method public final C()J
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/ads/jr;->b:I

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
    add-int/lit8 v5, v1, 0x2

    .line 11
    .line 12
    aget-byte v2, v0, v2

    .line 13
    .line 14
    int-to-long v6, v2

    .line 15
    add-int/lit8 v2, v1, 0x3

    .line 16
    .line 17
    aget-byte v5, v0, v5

    .line 18
    .line 19
    int-to-long v8, v5

    .line 20
    add-int/lit8 v1, v1, 0x4

    .line 21
    .line 22
    iput v1, p0, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 23
    .line 24
    aget-byte v0, v0, v2

    .line 25
    .line 26
    int-to-long v0, v0

    .line 27
    const-wide/16 v10, 0xff

    .line 28
    .line 29
    and-long v5, v6, v10

    .line 30
    .line 31
    and-long v7, v8, v10

    .line 32
    .line 33
    and-long/2addr v0, v10

    .line 34
    and-long v2, v3, v10

    .line 35
    .line 36
    const/16 v4, 0x8

    .line 37
    .line 38
    shl-long v4, v5, v4

    .line 39
    .line 40
    or-long/2addr v2, v4

    .line 41
    const/16 v4, 0x10

    .line 42
    .line 43
    shl-long v4, v7, v4

    .line 44
    .line 45
    or-long/2addr v2, v4

    .line 46
    const/16 v4, 0x18

    .line 47
    .line 48
    shl-long/2addr v0, v4

    .line 49
    or-long/2addr v0, v2

    .line 50
    return-wide v0
.end method

.method public final D()J
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 4
    .line 5
    iget v2, v0, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 6
    .line 7
    add-int/lit8 v3, v2, 0x1

    .line 8
    .line 9
    aget-byte v4, v1, v2

    .line 10
    .line 11
    int-to-long v4, v4

    .line 12
    add-int/lit8 v6, v2, 0x2

    .line 13
    .line 14
    aget-byte v3, v1, v3

    .line 15
    .line 16
    int-to-long v7, v3

    .line 17
    add-int/lit8 v3, v2, 0x3

    .line 18
    .line 19
    aget-byte v6, v1, v6

    .line 20
    .line 21
    int-to-long v9, v6

    .line 22
    add-int/lit8 v6, v2, 0x4

    .line 23
    .line 24
    aget-byte v3, v1, v3

    .line 25
    .line 26
    int-to-long v11, v3

    .line 27
    add-int/lit8 v3, v2, 0x5

    .line 28
    .line 29
    aget-byte v6, v1, v6

    .line 30
    .line 31
    int-to-long v13, v6

    .line 32
    add-int/lit8 v6, v2, 0x6

    .line 33
    .line 34
    aget-byte v3, v1, v3

    .line 35
    .line 36
    move-wide v15, v13

    .line 37
    int-to-long v13, v3

    .line 38
    add-int/lit8 v3, v2, 0x7

    .line 39
    .line 40
    aget-byte v6, v1, v6

    .line 41
    .line 42
    move-wide/from16 v17, v13

    .line 43
    .line 44
    int-to-long v13, v6

    .line 45
    const/16 v6, 0x8

    .line 46
    .line 47
    add-int/2addr v2, v6

    .line 48
    iput v2, v0, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 49
    .line 50
    aget-byte v1, v1, v3

    .line 51
    .line 52
    int-to-long v1, v1

    .line 53
    const-wide/16 v19, 0xff

    .line 54
    .line 55
    and-long v3, v4, v19

    .line 56
    .line 57
    and-long v7, v7, v19

    .line 58
    .line 59
    and-long v9, v9, v19

    .line 60
    .line 61
    and-long v11, v11, v19

    .line 62
    .line 63
    and-long v15, v15, v19

    .line 64
    .line 65
    and-long v17, v17, v19

    .line 66
    .line 67
    and-long v13, v13, v19

    .line 68
    .line 69
    const/16 v5, 0x38

    .line 70
    .line 71
    shl-long/2addr v3, v5

    .line 72
    const/16 v5, 0x30

    .line 73
    .line 74
    shl-long/2addr v7, v5

    .line 75
    or-long/2addr v3, v7

    .line 76
    const/16 v5, 0x28

    .line 77
    .line 78
    shl-long v7, v9, v5

    .line 79
    .line 80
    or-long/2addr v3, v7

    .line 81
    const/16 v5, 0x20

    .line 82
    .line 83
    shl-long v7, v11, v5

    .line 84
    .line 85
    or-long/2addr v3, v7

    .line 86
    const/16 v5, 0x18

    .line 87
    .line 88
    shl-long v7, v15, v5

    .line 89
    .line 90
    or-long/2addr v3, v7

    .line 91
    const/16 v5, 0x10

    .line 92
    .line 93
    shl-long v7, v17, v5

    .line 94
    .line 95
    or-long/2addr v3, v7

    .line 96
    shl-long v5, v13, v6

    .line 97
    .line 98
    or-long/2addr v3, v5

    .line 99
    and-long v1, v1, v19

    .line 100
    .line 101
    or-long/2addr v1, v3

    .line 102
    return-wide v1
.end method

.method public final E()J
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/ads/jr;->b:I

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
    add-int/lit8 v5, v1, 0x2

    .line 11
    .line 12
    aget-byte v2, v0, v2

    .line 13
    .line 14
    int-to-long v6, v2

    .line 15
    add-int/lit8 v2, v1, 0x3

    .line 16
    .line 17
    aget-byte v5, v0, v5

    .line 18
    .line 19
    int-to-long v8, v5

    .line 20
    add-int/lit8 v1, v1, 0x4

    .line 21
    .line 22
    iput v1, p0, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 23
    .line 24
    aget-byte v0, v0, v2

    .line 25
    .line 26
    int-to-long v0, v0

    .line 27
    const-wide/16 v10, 0xff

    .line 28
    .line 29
    and-long v2, v3, v10

    .line 30
    .line 31
    and-long v4, v6, v10

    .line 32
    .line 33
    and-long v6, v8, v10

    .line 34
    .line 35
    const/16 v8, 0x18

    .line 36
    .line 37
    shl-long/2addr v2, v8

    .line 38
    const/16 v8, 0x10

    .line 39
    .line 40
    shl-long/2addr v4, v8

    .line 41
    or-long/2addr v2, v4

    .line 42
    const/16 v4, 0x8

    .line 43
    .line 44
    shl-long v4, v6, v4

    .line 45
    .line 46
    or-long/2addr v2, v4

    .line 47
    and-long/2addr v0, v10

    .line 48
    or-long/2addr v0, v2

    .line 49
    return-wide v0
.end method

.method public final F()J
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/jr;->D()J

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

.method public final G()J
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/ads/jr;->b:I

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
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x6

    .line 12
    const/4 v6, 0x1

    .line 13
    if-ltz v3, :cond_2

    .line 14
    .line 15
    shl-int v7, v6, v3

    .line 16
    .line 17
    int-to-long v8, v7

    .line 18
    and-long/2addr v8, v0

    .line 19
    const-wide/16 v10, 0x0

    .line 20
    .line 21
    cmp-long v12, v8, v10

    .line 22
    .line 23
    if-nez v12, :cond_1

    .line 24
    .line 25
    if-ge v3, v5, :cond_0

    .line 26
    .line 27
    add-int/lit8 v7, v7, -0x1

    .line 28
    .line 29
    int-to-long v7, v7

    .line 30
    and-long/2addr v0, v7

    .line 31
    rsub-int/lit8 v4, v3, 0x7

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    if-ne v3, v2, :cond_2

    .line 35
    .line 36
    const/4 v4, 0x1

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    add-int/lit8 v3, v3, -0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    :goto_1
    if-eqz v4, :cond_5

    .line 42
    .line 43
    :goto_2
    if-ge v6, v4, :cond_4

    .line 44
    .line 45
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 46
    .line 47
    iget v3, p0, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 48
    .line 49
    add-int/2addr v3, v6

    .line 50
    aget-byte v2, v2, v3

    .line 51
    .line 52
    and-int/lit16 v3, v2, 0xc0

    .line 53
    .line 54
    const/16 v7, 0x80

    .line 55
    .line 56
    if-ne v3, v7, :cond_3

    .line 57
    .line 58
    shl-long/2addr v0, v5

    .line 59
    and-int/lit8 v2, v2, 0x3f

    .line 60
    .line 61
    int-to-long v2, v2

    .line 62
    or-long/2addr v0, v2

    .line 63
    add-int/lit8 v6, v6, 0x1

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_3
    new-instance v2, Ljava/lang/NumberFormatException;

    .line 67
    .line 68
    const-string v3, "Invalid UTF-8 sequence continuation byte: "

    .line 69
    .line 70
    invoke-static {v3, v0, v1}, LA0/O;->z(Ljava/lang/String;J)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-direct {v2, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw v2

    .line 78
    :cond_4
    iget v2, p0, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 79
    .line 80
    add-int/2addr v2, v4

    .line 81
    iput v2, p0, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 82
    .line 83
    return-wide v0

    .line 84
    :cond_5
    new-instance v2, Ljava/lang/NumberFormatException;

    .line 85
    .line 86
    const-string v3, "Invalid UTF-8 sequence first byte: "

    .line 87
    .line 88
    invoke-static {v3, v0, v1}, LA0/O;->z(Ljava/lang/String;J)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-direct {v2, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw v2
.end method

.method public final H()Ljava/lang/String;
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/jr;->c:I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/jr;->c:I

    .line 9
    .line 10
    if-ge v1, v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 13
    .line 14
    aget-byte v0, v0, v1

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    add-int/lit8 v1, v1, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 22
    .line 23
    iget v2, p0, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 24
    .line 25
    sub-int v3, v1, v2

    .line 26
    .line 27
    sget v4, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 28
    .line 29
    new-instance v4, Ljava/lang/String;

    .line 30
    .line 31
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 32
    .line 33
    invoke-direct {v4, v0, v2, v3, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 34
    .line 35
    .line 36
    iput v1, p0, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 37
    .line 38
    iget v0, p0, Lcom/google/android/gms/internal/ads/jr;->c:I

    .line 39
    .line 40
    if-ge v1, v0, :cond_1

    .line 41
    .line 42
    add-int/lit8 v1, v1, 0x1

    .line 43
    .line 44
    iput v1, p0, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 45
    .line 46
    :cond_1
    return-object v4

    .line 47
    :cond_2
    const/4 v0, 0x0

    .line 48
    return-object v0
.end method

.method public final I(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/jr;->f:Lcom/google/android/gms/internal/ads/zA;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/pA;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "Unsupported charset: "

    .line 12
    .line 13
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Lo3/r;->L(ZLjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget v0, p0, Lcom/google/android/gms/internal/ads/jr;->c:I

    .line 21
    .line 22
    iget v1, p0, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 23
    .line 24
    sub-int/2addr v0, v1

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    return-object p1

    .line 29
    :cond_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/jr;->c()Ljava/nio/charset/Charset;

    .line 38
    .line 39
    .line 40
    :cond_1
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 41
    .line 42
    invoke-virtual {p1, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    const/4 v3, 0x1

    .line 47
    if-nez v1, :cond_4

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    const/4 v3, 0x2

    .line 63
    if-nez v0, :cond_4

    .line 64
    .line 65
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_4

    .line 72
    .line 73
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 83
    .line 84
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw v0

    .line 96
    :cond_4
    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 97
    .line 98
    :goto_1
    iget v1, p0, Lcom/google/android/gms/internal/ads/jr;->c:I

    .line 99
    .line 100
    add-int/lit8 v2, v3, -0x1

    .line 101
    .line 102
    sub-int v2, v1, v2

    .line 103
    .line 104
    const/16 v4, 0xd

    .line 105
    .line 106
    if-ge v0, v2, :cond_a

    .line 107
    .line 108
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 109
    .line 110
    invoke-virtual {p1, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    const/16 v2, 0xa

    .line 115
    .line 116
    if-nez v1, :cond_5

    .line 117
    .line 118
    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 119
    .line 120
    invoke-virtual {p1, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-eqz v1, :cond_6

    .line 125
    .line 126
    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 127
    .line 128
    aget-byte v1, v1, v0

    .line 129
    .line 130
    sget v5, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 131
    .line 132
    if-eq v1, v2, :cond_b

    .line 133
    .line 134
    if-ne v1, v4, :cond_6

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_6
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    .line 138
    .line 139
    invoke-virtual {p1, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-nez v1, :cond_7

    .line 144
    .line 145
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    .line 146
    .line 147
    invoke-virtual {p1, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    if-eqz v1, :cond_8

    .line 152
    .line 153
    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 154
    .line 155
    aget-byte v5, v1, v0

    .line 156
    .line 157
    if-nez v5, :cond_8

    .line 158
    .line 159
    add-int/lit8 v5, v0, 0x1

    .line 160
    .line 161
    aget-byte v1, v1, v5

    .line 162
    .line 163
    sget v5, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 164
    .line 165
    if-eq v1, v2, :cond_b

    .line 166
    .line 167
    if-ne v1, v4, :cond_8

    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_8
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    .line 171
    .line 172
    invoke-virtual {p1, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    if-eqz v1, :cond_9

    .line 177
    .line 178
    add-int/lit8 v1, v0, 0x1

    .line 179
    .line 180
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 181
    .line 182
    aget-byte v1, v5, v1

    .line 183
    .line 184
    if-nez v1, :cond_9

    .line 185
    .line 186
    aget-byte v1, v5, v0

    .line 187
    .line 188
    sget v5, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 189
    .line 190
    if-eq v1, v2, :cond_b

    .line 191
    .line 192
    if-ne v1, v4, :cond_9

    .line 193
    .line 194
    goto :goto_2

    .line 195
    :cond_9
    add-int/2addr v0, v3

    .line 196
    goto :goto_1

    .line 197
    :cond_a
    move v0, v1

    .line 198
    :cond_b
    :goto_2
    iget v1, p0, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 199
    .line 200
    sub-int/2addr v0, v1

    .line 201
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/jr;->b(ILjava/nio/charset/Charset;)Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    iget v1, p0, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 206
    .line 207
    iget v2, p0, Lcom/google/android/gms/internal/ads/jr;->c:I

    .line 208
    .line 209
    if-eq v1, v2, :cond_c

    .line 210
    .line 211
    sget-object v1, Lcom/google/android/gms/internal/ads/jr;->d:[C

    .line 212
    .line 213
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/ads/jr;->m(Ljava/nio/charset/Charset;[C)C

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    if-ne v1, v4, :cond_c

    .line 218
    .line 219
    sget-object v1, Lcom/google/android/gms/internal/ads/jr;->e:[C

    .line 220
    .line 221
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/ads/jr;->m(Ljava/nio/charset/Charset;[C)C

    .line 222
    .line 223
    .line 224
    :cond_c
    return-object v0
.end method

.method public final a(I)Ljava/lang/String;
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
    iget v0, p0, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 7
    .line 8
    add-int v1, v0, p1

    .line 9
    .line 10
    add-int/lit8 v1, v1, -0x1

    .line 11
    .line 12
    iget v2, p0, Lcom/google/android/gms/internal/ads/jr;->c:I

    .line 13
    .line 14
    if-ge v1, v2, :cond_1

    .line 15
    .line 16
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/jr;->a:[B

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
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 27
    .line 28
    sget v3, Lcom/google/android/gms/internal/ads/Et;->a:I

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
    iget v0, p0, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 38
    .line 39
    add-int/2addr v0, p1

    .line 40
    iput v0, p0, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 41
    .line 42
    return-object v3
.end method

.method public final b(ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jr;->a:[B

    iget v2, p0, Lcom/google/android/gms/internal/ads/jr;->b:I

    invoke-direct {v0, v1, v2, p1, p2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    add-int/2addr v2, p1

    iput v2, p0, Lcom/google/android/gms/internal/ads/jr;->b:I

    return-object v0
.end method

.method public final c()Ljava/nio/charset/Charset;
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/jr;->c:I

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 4
    .line 5
    sub-int/2addr v0, v1

    .line 6
    const/4 v2, 0x3

    .line 7
    if-lt v0, v2, :cond_1

    .line 8
    .line 9
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 10
    .line 11
    aget-byte v4, v3, v1

    .line 12
    .line 13
    const/16 v5, -0x11

    .line 14
    .line 15
    if-ne v4, v5, :cond_1

    .line 16
    .line 17
    add-int/lit8 v4, v1, 0x1

    .line 18
    .line 19
    aget-byte v4, v3, v4

    .line 20
    .line 21
    const/16 v5, -0x45

    .line 22
    .line 23
    if-ne v4, v5, :cond_1

    .line 24
    .line 25
    add-int/lit8 v4, v1, 0x2

    .line 26
    .line 27
    aget-byte v3, v3, v4

    .line 28
    .line 29
    const/16 v4, -0x41

    .line 30
    .line 31
    if-eq v3, v4, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    add-int/2addr v1, v2

    .line 35
    iput v1, p0, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 36
    .line 37
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 38
    .line 39
    return-object v0

    .line 40
    :cond_1
    :goto_0
    const/4 v2, 0x2

    .line 41
    if-lt v0, v2, :cond_3

    .line 42
    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 44
    .line 45
    aget-byte v3, v0, v1

    .line 46
    .line 47
    const/4 v4, -0x1

    .line 48
    const/4 v5, -0x2

    .line 49
    if-ne v3, v5, :cond_2

    .line 50
    .line 51
    add-int/lit8 v3, v1, 0x1

    .line 52
    .line 53
    aget-byte v0, v0, v3

    .line 54
    .line 55
    if-ne v0, v4, :cond_3

    .line 56
    .line 57
    add-int/2addr v1, v2

    .line 58
    iput v1, p0, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 59
    .line 60
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    .line 61
    .line 62
    return-object v0

    .line 63
    :cond_2
    if-ne v3, v4, :cond_3

    .line 64
    .line 65
    add-int/lit8 v3, v1, 0x1

    .line 66
    .line 67
    aget-byte v0, v0, v3

    .line 68
    .line 69
    if-ne v0, v5, :cond_3

    .line 70
    .line 71
    add-int/2addr v1, v2

    .line 72
    iput v1, p0, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 73
    .line 74
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    .line 75
    .line 76
    return-object v0

    .line 77
    :cond_3
    const/4 v0, 0x0

    .line 78
    return-object v0
.end method

.method public final d()S
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/ads/jr;->b:I

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
    iput v1, p0, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 14
    .line 15
    aget-byte v0, v0, v2

    .line 16
    .line 17
    and-int/lit16 v0, v0, 0xff

    .line 18
    .line 19
    shl-int/lit8 v1, v3, 0x8

    .line 20
    .line 21
    or-int/2addr v0, v1

    .line 22
    int-to-short v0, v0

    .line 23
    return v0
.end method

.method public final e(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jr;->a:[B

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
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final f(I[BI)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 4
    .line 5
    invoke-static {v0, v1, p2, p1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    .line 7
    .line 8
    iget p1, p0, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 9
    .line 10
    add-int/2addr p1, p3

    .line 11
    iput p1, p0, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 12
    .line 13
    return-void
.end method

.method public final g(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jr;->a:[B

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
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/jr;->h(I[B)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final h(I[B)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 2
    .line 3
    iput p1, p0, Lcom/google/android/gms/internal/ads/jr;->c:I

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 7
    .line 8
    return-void
.end method

.method public final i(I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-ltz p1, :cond_0

    .line 3
    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 5
    .line 6
    array-length v1, v1

    .line 7
    if-gt p1, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    :cond_0
    invoke-static {v0}, Lo3/r;->J(Z)V

    .line 11
    .line 12
    .line 13
    iput p1, p0, Lcom/google/android/gms/internal/ads/jr;->c:I

    .line 14
    .line 15
    return-void
.end method

.method public final j(I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-ltz p1, :cond_0

    .line 3
    .line 4
    iget v1, p0, Lcom/google/android/gms/internal/ads/jr;->c:I

    .line 5
    .line 6
    if-gt p1, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    :cond_0
    invoke-static {v0}, Lo3/r;->J(Z)V

    .line 10
    .line 11
    .line 12
    iput p1, p0, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 13
    .line 14
    return-void
.end method

.method public final k(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 2
    .line 3
    add-int/2addr v0, p1

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/jr;->j(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final l()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jr;->a:[B

    return-object v0
.end method

.method public final m(Ljava/nio/charset/Charset;[C)C
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/jr;->n(Ljava/nio/charset/Charset;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    shr-int/lit8 v1, p1, 0x10

    .line 9
    .line 10
    array-length v2, p2

    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_0
    if-ge v3, v2, :cond_1

    .line 13
    .line 14
    int-to-char v4, v1

    .line 15
    aget-char v5, p2, v3

    .line 16
    .line 17
    if-ne v5, v4, :cond_0

    .line 18
    .line 19
    iget p2, p0, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 20
    .line 21
    int-to-char p1, p1

    .line 22
    add-int/2addr p2, p1

    .line 23
    iput p2, p0, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 24
    .line 25
    return v4

    .line 26
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return v0
.end method

.method public final n(Ljava/nio/charset/Charset;)I
    .locals 9

    .line 1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "Out of range: %s"

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/jr;->c:I

    .line 22
    .line 23
    iget v4, p0, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 24
    .line 25
    sub-int/2addr v0, v4

    .line 26
    if-lez v0, :cond_2

    .line 27
    .line 28
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 29
    .line 30
    aget-byte p1, p1, v4

    .line 31
    .line 32
    and-int/lit16 p1, p1, 0xff

    .line 33
    .line 34
    int-to-long v4, p1

    .line 35
    long-to-int p1, v4

    .line 36
    int-to-char p1, p1

    .line 37
    int-to-long v6, p1

    .line 38
    cmp-long v0, v6, v4

    .line 39
    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 v0, 0x0

    .line 45
    :goto_0
    invoke-static {v4, v5, v1, v0}, Lf/b;->C0(JLjava/lang/String;Z)V

    .line 46
    .line 47
    .line 48
    int-to-byte p1, p1

    .line 49
    const/4 v4, 0x1

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    const/4 v4, 0x2

    .line 58
    if-nez v0, :cond_3

    .line 59
    .line 60
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_4

    .line 67
    .line 68
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/ads/jr;->c:I

    .line 69
    .line 70
    iget v5, p0, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 71
    .line 72
    sub-int/2addr v0, v5

    .line 73
    if-lt v0, v4, :cond_4

    .line 74
    .line 75
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 76
    .line 77
    aget-byte v0, p1, v5

    .line 78
    .line 79
    add-int/2addr v5, v3

    .line 80
    aget-byte p1, p1, v5

    .line 81
    .line 82
    shl-int/lit8 v0, v0, 0x8

    .line 83
    .line 84
    :goto_1
    and-int/lit16 p1, p1, 0xff

    .line 85
    .line 86
    or-int/2addr p1, v0

    .line 87
    int-to-char p1, p1

    .line 88
    int-to-byte p1, p1

    .line 89
    goto :goto_2

    .line 90
    :cond_4
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    .line 91
    .line 92
    invoke-virtual {p1, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result p1

    .line 96
    if-eqz p1, :cond_6

    .line 97
    .line 98
    iget p1, p0, Lcom/google/android/gms/internal/ads/jr;->c:I

    .line 99
    .line 100
    iget v0, p0, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 101
    .line 102
    sub-int/2addr p1, v0

    .line 103
    if-lt p1, v4, :cond_6

    .line 104
    .line 105
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 106
    .line 107
    add-int/lit8 v5, v0, 0x1

    .line 108
    .line 109
    aget-byte v5, p1, v5

    .line 110
    .line 111
    aget-byte p1, p1, v0

    .line 112
    .line 113
    shl-int/lit8 v0, v5, 0x8

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :goto_2
    int-to-long v5, p1

    .line 117
    long-to-int p1, v5

    .line 118
    int-to-char p1, p1

    .line 119
    int-to-long v7, p1

    .line 120
    cmp-long v0, v7, v5

    .line 121
    .line 122
    if-nez v0, :cond_5

    .line 123
    .line 124
    const/4 v2, 0x1

    .line 125
    :cond_5
    invoke-static {v5, v6, v1, v2}, Lf/b;->C0(JLjava/lang/String;Z)V

    .line 126
    .line 127
    .line 128
    shl-int/lit8 p1, p1, 0x10

    .line 129
    .line 130
    add-int/2addr p1, v4

    .line 131
    return p1

    .line 132
    :cond_6
    return v2
.end method

.method public final o()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/jr;->c:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/jr;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final p()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/jr;->b:I

    return v0
.end method

.method public final q()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/jr;->c:I

    return v0
.end method

.method public final r()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/ads/jr;->b:I

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
    add-int/lit8 v5, v1, 0x3

    .line 18
    .line 19
    aget-byte v4, v0, v4

    .line 20
    .line 21
    and-int/lit16 v4, v4, 0xff

    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x4

    .line 24
    .line 25
    iput v1, p0, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 26
    .line 27
    aget-byte v0, v0, v5

    .line 28
    .line 29
    and-int/lit16 v0, v0, 0xff

    .line 30
    .line 31
    shl-int/lit8 v1, v3, 0x18

    .line 32
    .line 33
    shl-int/lit8 v2, v2, 0x10

    .line 34
    .line 35
    or-int/2addr v1, v2

    .line 36
    shl-int/lit8 v2, v4, 0x8

    .line 37
    .line 38
    or-int/2addr v1, v2

    .line 39
    or-int/2addr v0, v1

    .line 40
    return v0
.end method

.method public final s()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/ads/jr;->b:I

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
    add-int/lit8 v5, v1, 0x3

    .line 18
    .line 19
    aget-byte v4, v0, v4

    .line 20
    .line 21
    and-int/lit16 v4, v4, 0xff

    .line 22
    .line 23
    add-int/lit8 v1, v1, 0x4

    .line 24
    .line 25
    iput v1, p0, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 26
    .line 27
    aget-byte v0, v0, v5

    .line 28
    .line 29
    and-int/lit16 v0, v0, 0xff

    .line 30
    .line 31
    shl-int/lit8 v1, v2, 0x8

    .line 32
    .line 33
    or-int/2addr v1, v3

    .line 34
    shl-int/lit8 v2, v4, 0x10

    .line 35
    .line 36
    or-int/2addr v1, v2

    .line 37
    shl-int/lit8 v0, v0, 0x18

    .line 38
    .line 39
    or-int/2addr v0, v1

    .line 40
    return v0
.end method

.method public final t()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/jr;->s()I

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

.method public final u()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/ads/jr;->b:I

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
    iput v1, p0, Lcom/google/android/gms/internal/ads/jr;->b:I

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

.method public final v()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    shl-int/lit8 v0, v0, 0x15

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    shl-int/lit8 v1, v1, 0xe

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    shl-int/lit8 v2, v2, 0x7

    .line 18
    .line 19
    or-int/2addr v0, v1

    .line 20
    or-int/2addr v0, v2

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/jr;->w()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    or-int/2addr v0, v1

    .line 26
    return v0
.end method

.method public final w()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iput v2, p0, Lcom/google/android/gms/internal/ads/jr;->b:I

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

.method public final x()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/ads/jr;->b:I

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
    aget-byte v0, v0, v2

    .line 12
    .line 13
    and-int/lit16 v0, v0, 0xff

    .line 14
    .line 15
    add-int/lit8 v1, v1, 0x4

    .line 16
    .line 17
    iput v1, p0, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 18
    .line 19
    shl-int/lit8 v1, v3, 0x8

    .line 20
    .line 21
    or-int/2addr v0, v1

    .line 22
    return v0
.end method

.method public final y()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jr;->a:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/ads/jr;->b:I

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
    add-int/lit8 v1, v1, 0x3

    .line 18
    .line 19
    iput v1, p0, Lcom/google/android/gms/internal/ads/jr;->b:I

    .line 20
    .line 21
    aget-byte v0, v0, v4

    .line 22
    .line 23
    and-int/lit16 v0, v0, 0xff

    .line 24
    .line 25
    shl-int/lit8 v1, v3, 0x10

    .line 26
    .line 27
    shl-int/lit8 v2, v2, 0x8

    .line 28
    .line 29
    or-int/2addr v1, v2

    .line 30
    or-int/2addr v0, v1

    .line 31
    return v0
.end method

.method public final z()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/jr;->r()I

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
