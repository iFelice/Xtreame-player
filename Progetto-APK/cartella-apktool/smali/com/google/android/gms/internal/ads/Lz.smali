.class public abstract Lcom/google/android/gms/internal/ads/Lz;
.super Lcom/google/android/gms/internal/ads/gB;
.source "SourceFile"


# instance fields
.field public H:Ljava/lang/Object;

.field public I:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/gB;-><init>(I)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/Lz;->I:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 9

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/Lz;->I:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-eq v0, v1, :cond_7

    .line 5
    .line 6
    add-int/lit8 v2, v0, -0x1

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v0, :cond_6

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    if-eqz v2, :cond_5

    .line 13
    .line 14
    const/4 v4, 0x2

    .line 15
    const/4 v5, 0x0

    .line 16
    if-eq v2, v4, :cond_4

    .line 17
    .line 18
    iput v1, p0, Lcom/google/android/gms/internal/ads/Lz;->I:I

    .line 19
    .line 20
    move-object v1, p0

    .line 21
    check-cast v1, Lcom/google/android/gms/internal/ads/AA;

    .line 22
    .line 23
    const/4 v2, 0x3

    .line 24
    iget v4, v1, Lcom/google/android/gms/internal/ads/AA;->J:I

    .line 25
    .line 26
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/AA;->L:Ljava/lang/Object;

    .line 27
    .line 28
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/AA;->K:Ljava/util/Iterator;

    .line 29
    .line 30
    packed-switch v4, :pswitch_data_0

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_1

    .line 38
    .line 39
    move-object v4, v6

    .line 40
    check-cast v4, Lcom/google/android/gms/internal/ads/YA;

    .line 41
    .line 42
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/YA;->H:Ljava/util/Set;

    .line 43
    .line 44
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v8

    .line 48
    invoke-interface {v4, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_0

    .line 53
    .line 54
    :goto_0
    move-object v3, v8

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    iput v2, v1, Lcom/google/android/gms/internal/ads/Lz;->I:I

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    :pswitch_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-eqz v4, :cond_3

    .line 64
    .line 65
    move-object v4, v6

    .line 66
    check-cast v4, Lcom/google/android/gms/internal/ads/yz;

    .line 67
    .line 68
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v8

    .line 72
    invoke-interface {v4, v8}, Lcom/google/android/gms/internal/ads/yz;->zza(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-eqz v4, :cond_2

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    iput v2, v1, Lcom/google/android/gms/internal/ads/Lz;->I:I

    .line 80
    .line 81
    :goto_1
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/Lz;->H:Ljava/lang/Object;

    .line 82
    .line 83
    iget v1, p0, Lcom/google/android/gms/internal/ads/Lz;->I:I

    .line 84
    .line 85
    if-eq v1, v2, :cond_4

    .line 86
    .line 87
    iput v0, p0, Lcom/google/android/gms/internal/ads/Lz;->I:I

    .line 88
    .line 89
    return v0

    .line 90
    :cond_4
    return v5

    .line 91
    :cond_5
    return v0

    .line 92
    :cond_6
    throw v3

    .line 93
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 94
    .line 95
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 96
    .line 97
    .line 98
    throw v0

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Lz;->hasNext()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    iput v0, p0, Lcom/google/android/gms/internal/ads/Lz;->I:I

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Lz;->H:Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Lz;->H:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 19
    .line 20
    .line 21
    throw v0
.end method
