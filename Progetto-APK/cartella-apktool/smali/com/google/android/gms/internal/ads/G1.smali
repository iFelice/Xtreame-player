.class public final Lcom/google/android/gms/internal/ads/G1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/D1;

.field public final b:I

.field public final c:[J

.field public final d:[I

.field public final e:I

.field public final f:[J

.field public final g:[I

.field public final h:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/D1;[J[II[J[IJ)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    array-length v0, p3

    .line 5
    array-length v1, p5

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    invoke-static {v0}, Lo3/r;->J(Z)V

    .line 14
    .line 15
    .line 16
    array-length v0, p2

    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    const/4 v4, 0x1

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    const/4 v4, 0x0

    .line 22
    :goto_1
    invoke-static {v4}, Lo3/r;->J(Z)V

    .line 23
    .line 24
    .line 25
    array-length v4, p6

    .line 26
    if-ne v4, v1, :cond_2

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_2
    const/4 v2, 0x0

    .line 30
    :goto_2
    invoke-static {v2}, Lo3/r;->J(Z)V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/G1;->a:Lcom/google/android/gms/internal/ads/D1;

    .line 34
    .line 35
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/G1;->c:[J

    .line 36
    .line 37
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/G1;->d:[I

    .line 38
    .line 39
    iput p4, p0, Lcom/google/android/gms/internal/ads/G1;->e:I

    .line 40
    .line 41
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/G1;->f:[J

    .line 42
    .line 43
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/G1;->g:[I

    .line 44
    .line 45
    iput-wide p7, p0, Lcom/google/android/gms/internal/ads/G1;->h:J

    .line 46
    .line 47
    iput v0, p0, Lcom/google/android/gms/internal/ads/G1;->b:I

    .line 48
    .line 49
    if-lez v4, :cond_3

    .line 50
    .line 51
    add-int/lit8 v4, v4, -0x1

    .line 52
    .line 53
    aget p1, p6, v4

    .line 54
    .line 55
    const/high16 p2, 0x20000000

    .line 56
    .line 57
    or-int/2addr p1, p2

    .line 58
    aput p1, p6, v4

    .line 59
    .line 60
    :cond_3
    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 6

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/G1;->f:[J

    .line 4
    .line 5
    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-gez v1, :cond_0

    .line 10
    .line 11
    not-int p1, v1

    .line 12
    goto :goto_2

    .line 13
    :cond_0
    :goto_0
    add-int/lit8 v2, v1, 0x1

    .line 14
    .line 15
    array-length v3, v0

    .line 16
    if-ge v2, v3, :cond_2

    .line 17
    .line 18
    aget-wide v3, v0, v2

    .line 19
    .line 20
    cmp-long v5, v3, p1

    .line 21
    .line 22
    if-eqz v5, :cond_1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move v1, v2

    .line 26
    goto :goto_0

    .line 27
    :cond_2
    :goto_1
    move p1, v1

    .line 28
    :goto_2
    array-length p2, v0

    .line 29
    if-ge p1, p2, :cond_4

    .line 30
    .line 31
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/G1;->g:[I

    .line 32
    .line 33
    aget p2, p2, p1

    .line 34
    .line 35
    and-int/lit8 p2, p2, 0x1

    .line 36
    .line 37
    if-eqz p2, :cond_3

    .line 38
    .line 39
    return p1

    .line 40
    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_4
    const/4 p1, -0x1

    .line 44
    return p1
.end method
