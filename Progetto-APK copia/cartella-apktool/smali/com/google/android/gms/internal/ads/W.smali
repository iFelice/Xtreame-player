.class public final Lcom/google/android/gms/internal/ads/W;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/Y;


# instance fields
.field public final a:[J

.field public final b:[J

.field public final c:J

.field public final d:Z


# direct methods
.method public constructor <init>(J[J[J)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    array-length v0, p3

    .line 5
    array-length v1, p4

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
    if-lez v1, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    const/4 v0, 0x0

    .line 21
    :goto_1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/W;->d:Z

    .line 22
    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    aget-wide v4, p4, v3

    .line 26
    .line 27
    const-wide/16 v6, 0x0

    .line 28
    .line 29
    cmp-long v0, v4, v6

    .line 30
    .line 31
    if-lez v0, :cond_2

    .line 32
    .line 33
    add-int/lit8 v0, v1, 0x1

    .line 34
    .line 35
    new-array v4, v0, [J

    .line 36
    .line 37
    iput-object v4, p0, Lcom/google/android/gms/internal/ads/W;->a:[J

    .line 38
    .line 39
    new-array v0, v0, [J

    .line 40
    .line 41
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/W;->b:[J

    .line 42
    .line 43
    invoke-static {p3, v3, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    .line 45
    .line 46
    invoke-static {p4, v3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 47
    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_2
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/W;->a:[J

    .line 51
    .line 52
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/W;->b:[J

    .line 53
    .line 54
    :goto_2
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/W;->c:J

    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public final b(J)Lcom/google/android/gms/internal/ads/X;
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/W;->d:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance p1, Lcom/google/android/gms/internal/ads/X;

    .line 6
    .line 7
    sget-object p2, Lcom/google/android/gms/internal/ads/Z;->c:Lcom/google/android/gms/internal/ads/Z;

    .line 8
    .line 9
    invoke-direct {p1, p2, p2}, Lcom/google/android/gms/internal/ads/X;-><init>(Lcom/google/android/gms/internal/ads/Z;Lcom/google/android/gms/internal/ads/Z;)V

    .line 10
    .line 11
    .line 12
    return-object p1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/W;->b:[J

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-static {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/Et;->k([JJZ)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    new-instance v3, Lcom/google/android/gms/internal/ads/Z;

    .line 21
    .line 22
    aget-wide v4, v0, v2

    .line 23
    .line 24
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/W;->a:[J

    .line 25
    .line 26
    aget-wide v7, v6, v2

    .line 27
    .line 28
    invoke-direct {v3, v4, v5, v7, v8}, Lcom/google/android/gms/internal/ads/Z;-><init>(JJ)V

    .line 29
    .line 30
    .line 31
    cmp-long v7, v4, p1

    .line 32
    .line 33
    if-eqz v7, :cond_2

    .line 34
    .line 35
    array-length p1, v0

    .line 36
    add-int/lit8 p1, p1, -0x1

    .line 37
    .line 38
    if-ne v2, p1, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    add-int/2addr v2, v1

    .line 42
    new-instance p1, Lcom/google/android/gms/internal/ads/Z;

    .line 43
    .line 44
    aget-wide v4, v0, v2

    .line 45
    .line 46
    aget-wide v0, v6, v2

    .line 47
    .line 48
    invoke-direct {p1, v4, v5, v0, v1}, Lcom/google/android/gms/internal/ads/Z;-><init>(JJ)V

    .line 49
    .line 50
    .line 51
    new-instance p2, Lcom/google/android/gms/internal/ads/X;

    .line 52
    .line 53
    invoke-direct {p2, v3, p1}, Lcom/google/android/gms/internal/ads/X;-><init>(Lcom/google/android/gms/internal/ads/Z;Lcom/google/android/gms/internal/ads/Z;)V

    .line 54
    .line 55
    .line 56
    return-object p2

    .line 57
    :cond_2
    :goto_0
    new-instance p1, Lcom/google/android/gms/internal/ads/X;

    .line 58
    .line 59
    invoke-direct {p1, v3, v3}, Lcom/google/android/gms/internal/ads/X;-><init>(Lcom/google/android/gms/internal/ads/Z;Lcom/google/android/gms/internal/ads/Z;)V

    .line 60
    .line 61
    .line 62
    return-object p1
.end method

.method public final zza()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/W;->c:J

    return-wide v0
.end method

.method public final zzh()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/W;->d:Z

    return v0
.end method
