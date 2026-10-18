.class public final Lcom/google/android/gms/internal/ads/gN;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/UN;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/UN;

.field public b:Z

.field public final synthetic c:Lcom/google/android/gms/internal/ads/hN;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/hN;Lcom/google/android/gms/internal/ads/UN;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/gN;->c:Lcom/google/android/gms/internal/ads/hN;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/gN;->a:Lcom/google/android/gms/internal/ads/UN;

    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gN;->c:Lcom/google/android/gms/internal/ads/hN;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hN;->g()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 p1, -0x3

    .line 10
    return p1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gN;->a:Lcom/google/android/gms/internal/ads/UN;

    .line 12
    .line 13
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/UN;->a(J)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public final b(Lcom/google/android/gms/internal/ads/Om;Lcom/google/android/gms/internal/ads/VJ;I)I
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gN;->c:Lcom/google/android/gms/internal/ads/hN;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hN;->g()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, -0x3

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/gN;->b:Z

    .line 12
    .line 13
    const/4 v3, 0x4

    .line 14
    const/4 v4, -0x4

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iput v3, p2, Lq0/e;->b:I

    .line 18
    .line 19
    return v4

    .line 20
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hN;->zzb()J

    .line 21
    .line 22
    .line 23
    move-result-wide v5

    .line 24
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/gN;->a:Lcom/google/android/gms/internal/ads/UN;

    .line 25
    .line 26
    invoke-interface {v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/UN;->b(Lcom/google/android/gms/internal/ads/Om;Lcom/google/android/gms/internal/ads/VJ;I)I

    .line 27
    .line 28
    .line 29
    move-result p3

    .line 30
    const/4 v1, -0x5

    .line 31
    const-wide/high16 v7, -0x8000000000000000L

    .line 32
    .line 33
    if-ne p3, v1, :cond_5

    .line 34
    .line 35
    iget-object p2, p1, Lcom/google/android/gms/internal/ads/Om;->H:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast p2, Lcom/google/android/gms/internal/ads/p0;

    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    const/4 p3, 0x0

    .line 43
    iget v2, p2, Lcom/google/android/gms/internal/ads/p0;->E:I

    .line 44
    .line 45
    iget v3, p2, Lcom/google/android/gms/internal/ads/p0;->D:I

    .line 46
    .line 47
    if-nez v3, :cond_2

    .line 48
    .line 49
    if-eqz v2, :cond_4

    .line 50
    .line 51
    const/4 v3, 0x0

    .line 52
    :cond_2
    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/hN;->K:J

    .line 53
    .line 54
    cmp-long v0, v4, v7

    .line 55
    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_3
    move p3, v2

    .line 60
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/ads/K;

    .line 61
    .line 62
    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/K;-><init>(Lcom/google/android/gms/internal/ads/p0;)V

    .line 63
    .line 64
    .line 65
    iput v3, v0, Lcom/google/android/gms/internal/ads/K;->C:I

    .line 66
    .line 67
    iput p3, v0, Lcom/google/android/gms/internal/ads/K;->D:I

    .line 68
    .line 69
    new-instance p2, Lcom/google/android/gms/internal/ads/p0;

    .line 70
    .line 71
    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/p0;-><init>(Lcom/google/android/gms/internal/ads/K;)V

    .line 72
    .line 73
    .line 74
    iput-object p2, p1, Lcom/google/android/gms/internal/ads/Om;->H:Ljava/lang/Object;

    .line 75
    .line 76
    :cond_4
    return v1

    .line 77
    :cond_5
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/hN;->K:J

    .line 78
    .line 79
    cmp-long p1, v0, v7

    .line 80
    .line 81
    if-eqz p1, :cond_8

    .line 82
    .line 83
    if-ne p3, v4, :cond_6

    .line 84
    .line 85
    iget-wide v9, p2, Lcom/google/android/gms/internal/ads/VJ;->g:J

    .line 86
    .line 87
    cmp-long p1, v9, v0

    .line 88
    .line 89
    if-gez p1, :cond_7

    .line 90
    .line 91
    :cond_6
    if-ne p3, v2, :cond_8

    .line 92
    .line 93
    cmp-long p1, v5, v7

    .line 94
    .line 95
    if-nez p1, :cond_8

    .line 96
    .line 97
    iget-boolean p1, p2, Lcom/google/android/gms/internal/ads/VJ;->f:Z

    .line 98
    .line 99
    if-nez p1, :cond_8

    .line 100
    .line 101
    :cond_7
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/VJ;->e()V

    .line 102
    .line 103
    .line 104
    iput v3, p2, Lq0/e;->b:I

    .line 105
    .line 106
    const/4 p1, 0x1

    .line 107
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/gN;->b:Z

    .line 108
    .line 109
    return v4

    .line 110
    :cond_8
    return p3
.end method

.method public final zzd()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gN;->a:Lcom/google/android/gms/internal/ads/UN;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/UN;->zzd()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final zze()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gN;->c:Lcom/google/android/gms/internal/ads/hN;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hN;->g()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/gN;->a:Lcom/google/android/gms/internal/ads/UN;

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/UN;->zze()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    return v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return v0
.end method
