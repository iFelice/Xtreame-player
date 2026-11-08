.class public final Lcom/google/android/gms/internal/ads/l0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/e0;

.field public final b:I

.field public final c:I

.field public final d:J

.field public final e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:J

.field public l:[J

.field public m:[I


# direct methods
.method public constructor <init>(IIJILcom/google/android/gms/internal/ads/e0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    const/4 v1, 0x2

    .line 6
    if-eq p2, v0, :cond_0

    .line 7
    .line 8
    const/4 p2, 0x2

    .line 9
    :cond_0
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/l0;->d:J

    .line 10
    .line 11
    iput p5, p0, Lcom/google/android/gms/internal/ads/l0;->e:I

    .line 12
    .line 13
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/l0;->a:Lcom/google/android/gms/internal/ads/e0;

    .line 14
    .line 15
    if-ne p2, v1, :cond_1

    .line 16
    .line 17
    const/high16 p3, 0x63640000

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/high16 p3, 0x62770000

    .line 21
    .line 22
    :goto_0
    div-int/lit8 p4, p1, 0xa

    .line 23
    .line 24
    rem-int/lit8 p1, p1, 0xa

    .line 25
    .line 26
    add-int/lit8 p1, p1, 0x30

    .line 27
    .line 28
    shl-int/lit8 p1, p1, 0x8

    .line 29
    .line 30
    add-int/lit8 p4, p4, 0x30

    .line 31
    .line 32
    or-int/2addr p1, p4

    .line 33
    or-int/2addr p3, p1

    .line 34
    iput p3, p0, Lcom/google/android/gms/internal/ads/l0;->b:I

    .line 35
    .line 36
    if-ne p2, v1, :cond_2

    .line 37
    .line 38
    const/high16 p2, 0x62640000

    .line 39
    .line 40
    or-int/2addr p1, p2

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    const/4 p1, -0x1

    .line 43
    :goto_1
    iput p1, p0, Lcom/google/android/gms/internal/ads/l0;->c:I

    .line 44
    .line 45
    const-wide/16 p1, -0x1

    .line 46
    .line 47
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/l0;->k:J

    .line 48
    .line 49
    const/16 p1, 0x200

    .line 50
    .line 51
    new-array p2, p1, [J

    .line 52
    .line 53
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/l0;->l:[J

    .line 54
    .line 55
    new-array p1, p1, [I

    .line 56
    .line 57
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/l0;->m:[I

    .line 58
    .line 59
    return-void
.end method


# virtual methods
.method public final a(J)Lcom/google/android/gms/internal/ads/X;
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/l0;->j:I

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/l0;->d:J

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    int-to-long v3, v2

    .line 9
    mul-long v0, v0, v3

    .line 10
    .line 11
    iget v3, p0, Lcom/google/android/gms/internal/ads/l0;->e:I

    .line 12
    .line 13
    int-to-long v3, v3

    .line 14
    div-long/2addr v0, v3

    .line 15
    div-long/2addr p1, v0

    .line 16
    long-to-int p2, p1

    .line 17
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/l0;->m:[I

    .line 18
    .line 19
    invoke-static {p1, p2, v2, v2}, Lcom/google/android/gms/internal/ads/Et;->j([IIZZ)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/l0;->m:[I

    .line 24
    .line 25
    aget v0, v0, p1

    .line 26
    .line 27
    if-ne v0, p2, :cond_0

    .line 28
    .line 29
    new-instance p2, Lcom/google/android/gms/internal/ads/X;

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/l0;->b(I)Lcom/google/android/gms/internal/ads/Z;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-direct {p2, p1, p1}, Lcom/google/android/gms/internal/ads/X;-><init>(Lcom/google/android/gms/internal/ads/Z;Lcom/google/android/gms/internal/ads/Z;)V

    .line 36
    .line 37
    .line 38
    return-object p2

    .line 39
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/l0;->b(I)Lcom/google/android/gms/internal/ads/Z;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    add-int/2addr p1, v2

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/l0;->l:[J

    .line 45
    .line 46
    array-length v0, v0

    .line 47
    if-ge p1, v0, :cond_1

    .line 48
    .line 49
    new-instance v0, Lcom/google/android/gms/internal/ads/X;

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/l0;->b(I)Lcom/google/android/gms/internal/ads/Z;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-direct {v0, p2, p1}, Lcom/google/android/gms/internal/ads/X;-><init>(Lcom/google/android/gms/internal/ads/Z;Lcom/google/android/gms/internal/ads/Z;)V

    .line 56
    .line 57
    .line 58
    return-object v0

    .line 59
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/X;

    .line 60
    .line 61
    invoke-direct {p1, p2, p2}, Lcom/google/android/gms/internal/ads/X;-><init>(Lcom/google/android/gms/internal/ads/Z;Lcom/google/android/gms/internal/ads/Z;)V

    .line 62
    .line 63
    .line 64
    return-object p1

    .line 65
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/X;

    .line 66
    .line 67
    new-instance p2, Lcom/google/android/gms/internal/ads/Z;

    .line 68
    .line 69
    const-wide/16 v0, 0x0

    .line 70
    .line 71
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/l0;->k:J

    .line 72
    .line 73
    invoke-direct {p2, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/Z;-><init>(JJ)V

    .line 74
    .line 75
    .line 76
    invoke-direct {p1, p2, p2}, Lcom/google/android/gms/internal/ads/X;-><init>(Lcom/google/android/gms/internal/ads/Z;Lcom/google/android/gms/internal/ads/Z;)V

    .line 77
    .line 78
    .line 79
    return-object p1
.end method

.method public final b(I)Lcom/google/android/gms/internal/ads/Z;
    .locals 7

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/Z;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/l0;->m:[I

    .line 4
    .line 5
    aget v1, v1, p1

    .line 6
    .line 7
    int-to-long v1, v1

    .line 8
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/l0;->d:J

    .line 9
    .line 10
    const/4 v5, 0x1

    .line 11
    int-to-long v5, v5

    .line 12
    mul-long v3, v3, v5

    .line 13
    .line 14
    iget v5, p0, Lcom/google/android/gms/internal/ads/l0;->e:I

    .line 15
    .line 16
    int-to-long v5, v5

    .line 17
    div-long/2addr v3, v5

    .line 18
    mul-long v3, v3, v1

    .line 19
    .line 20
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/l0;->l:[J

    .line 21
    .line 22
    aget-wide v5, v1, p1

    .line 23
    .line 24
    invoke-direct {v0, v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/Z;-><init>(JJ)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method
