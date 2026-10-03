.class public final Lcom/google/android/gms/internal/measurement/S2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/Y2;


# instance fields
.field public final a:Lcom/google/android/gms/internal/measurement/P2;

.field public final b:Lcom/google/android/gms/internal/measurement/q2;

.field public final c:LS3/g;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/q2;Lcom/google/android/gms/internal/measurement/P2;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/n2;->a:LS3/g;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/S2;->b:Lcom/google/android/gms/internal/measurement/q2;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/S2;->c:LS3/g;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/S2;->a:Lcom/google/android/gms/internal/measurement/P2;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p1}, LA0/O;->I(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    throw p1
.end method

.method public final b(Ljava/lang/Object;Lcom/google/android/gms/internal/measurement/l2;)V
    .locals 0

    .line 1
    invoke-static {p1}, LA0/O;->I(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    throw p1
.end method

.method public final c(Ljava/lang/Object;[BIILcom/google/android/gms/internal/ads/SG;)V
    .locals 0

    .line 1
    move-object p2, p1

    .line 2
    check-cast p2, Lcom/google/android/gms/internal/measurement/s2;

    .line 3
    .line 4
    iget-object p3, p2, Lcom/google/android/gms/internal/measurement/s2;->zzc:Lcom/google/android/gms/internal/measurement/b3;

    .line 5
    .line 6
    sget-object p4, Lcom/google/android/gms/internal/measurement/b3;->f:Lcom/google/android/gms/internal/measurement/b3;

    .line 7
    .line 8
    if-eq p3, p4, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/measurement/b3;->b()Lcom/google/android/gms/internal/measurement/b3;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    iput-object p3, p2, Lcom/google/android/gms/internal/measurement/s2;->zzc:Lcom/google/android/gms/internal/measurement/b3;

    .line 16
    .line 17
    :goto_0
    invoke-static {p1}, LA0/O;->I(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    throw p1
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/measurement/s2;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/s2;->zzc:Lcom/google/android/gms/internal/measurement/b3;

    .line 4
    .line 5
    check-cast p2, Lcom/google/android/gms/internal/measurement/s2;

    .line 6
    .line 7
    iget-object p2, p2, Lcom/google/android/gms/internal/measurement/s2;->zzc:Lcom/google/android/gms/internal/measurement/b3;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/measurement/b3;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    return p1

    .line 17
    :cond_0
    const/4 p1, 0x1

    .line 18
    return p1
.end method

.method public final zza(Ljava/lang/Object;)I
    .locals 6

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/measurement/s2;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/s2;->zzc:Lcom/google/android/gms/internal/measurement/b3;

    .line 4
    .line 5
    iget v0, p1, Lcom/google/android/gms/internal/measurement/b3;->d:I

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    if-ne v0, v1, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    iget v2, p1, Lcom/google/android/gms/internal/measurement/b3;->a:I

    .line 13
    .line 14
    if-ge v0, v2, :cond_0

    .line 15
    .line 16
    iget-object v2, p1, Lcom/google/android/gms/internal/measurement/b3;->b:[I

    .line 17
    .line 18
    aget v2, v2, v0

    .line 19
    .line 20
    ushr-int/lit8 v2, v2, 0x3

    .line 21
    .line 22
    iget-object v3, p1, Lcom/google/android/gms/internal/measurement/b3;->c:[Ljava/lang/Object;

    .line 23
    .line 24
    aget-object v3, v3, v0

    .line 25
    .line 26
    check-cast v3, Lcom/google/android/gms/internal/measurement/i2;

    .line 27
    .line 28
    const/16 v4, 0x8

    .line 29
    .line 30
    invoke-static {v4}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    add-int/2addr v4, v4

    .line 35
    const/16 v5, 0x10

    .line 36
    .line 37
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    add-int/2addr v2, v5

    .line 46
    const/16 v5, 0x18

    .line 47
    .line 48
    invoke-static {v5}, Lcom/google/android/gms/internal/measurement/k2;->G(I)I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    invoke-virtual {v3}, Lcom/google/android/gms/internal/measurement/i2;->n()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    invoke-static {v3, v3, v5}, Lcom/google/android/gms/internal/ads/uc;->z(III)I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    add-int/2addr v4, v2

    .line 61
    add-int/2addr v4, v3

    .line 62
    add-int/2addr v1, v4

    .line 63
    add-int/lit8 v0, v0, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    iput v1, p1, Lcom/google/android/gms/internal/measurement/b3;->d:I

    .line 67
    .line 68
    move v0, v1

    .line 69
    :cond_1
    return v0
.end method

.method public final zzb(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/measurement/s2;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/s2;->zzc:Lcom/google/android/gms/internal/measurement/b3;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/b3;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public final zze()Lcom/google/android/gms/internal/measurement/s2;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/S2;->a:Lcom/google/android/gms/internal/measurement/P2;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/google/android/gms/internal/measurement/s2;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/google/android/gms/internal/measurement/s2;

    .line 8
    .line 9
    const/4 v1, 0x4

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/s2;->p(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/google/android/gms/internal/measurement/s2;

    .line 15
    .line 16
    return-object v0

    .line 17
    :cond_0
    check-cast v0, Lcom/google/android/gms/internal/measurement/s2;

    .line 18
    .line 19
    const/4 v1, 0x5

    .line 20
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/measurement/s2;->p(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/google/android/gms/internal/measurement/r2;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/r2;->f()Lcom/google/android/gms/internal/measurement/s2;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method

.method public final zzf(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/S2;->b:Lcom/google/android/gms/internal/measurement/q2;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/q2;->a(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/S2;->c:LS3/g;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, LA0/O;->I(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    throw p1
.end method

.method public final zzg(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/Z2;->s(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
