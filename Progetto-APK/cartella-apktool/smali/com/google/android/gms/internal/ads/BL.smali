.class public abstract Lcom/google/android/gms/internal/ads/BL;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(IILcom/google/android/gms/internal/ads/bH;)I
    .locals 3

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    :goto_0
    if-lez v0, :cond_2

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/Et;->n(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    new-instance v2, Landroid/media/AudioFormat$Builder;

    .line 13
    .line 14
    invoke-direct {v2}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2, p0}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2, p1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2, v1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/bH;->a()Lcom/google/android/gms/internal/ads/Of;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/Of;->H:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast v2, Landroid/media/AudioAttributes;

    .line 40
    .line 41
    invoke-static {v1, v2}, LD0/a;->s(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    return v0

    .line 48
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const/4 p0, 0x0

    .line 52
    return p0
.end method

.method public static b(Lcom/google/android/gms/internal/ads/bH;)Lcom/google/android/gms/internal/ads/uA;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/bH;",
            ")",
            "Lcom/google/android/gms/internal/ads/uA;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/rA;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/rA;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/google/android/gms/internal/ads/EL;->e:Lcom/google/android/gms/internal/ads/UA;

    .line 7
    .line 8
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/xA;->H:Lcom/google/android/gms/internal/ads/SA;

    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    new-instance v2, Lcom/google/android/gms/internal/ads/TA;

    .line 13
    .line 14
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/UA;->K:[Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    iget v5, v1, Lcom/google/android/gms/internal/ads/UA;->L:I

    .line 18
    .line 19
    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gms/internal/ads/TA;-><init>([Ljava/lang/Object;II)V

    .line 20
    .line 21
    .line 22
    new-instance v3, Lcom/google/android/gms/internal/ads/SA;

    .line 23
    .line 24
    invoke-direct {v3, v1, v2}, Lcom/google/android/gms/internal/ads/SA;-><init>(Lcom/google/android/gms/internal/ads/xA;Lcom/google/android/gms/internal/ads/TA;)V

    .line 25
    .line 26
    .line 27
    iput-object v3, v1, Lcom/google/android/gms/internal/ads/xA;->H:Lcom/google/android/gms/internal/ads/SA;

    .line 28
    .line 29
    move-object v2, v3

    .line 30
    :cond_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/SA;->n()Lcom/google/android/gms/internal/ads/gB;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Ljava/lang/Integer;

    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/Et;->m(I)I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    sget v5, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 55
    .line 56
    if-lt v5, v4, :cond_1

    .line 57
    .line 58
    new-instance v4, Landroid/media/AudioFormat$Builder;

    .line 59
    .line 60
    invoke-direct {v4}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 61
    .line 62
    .line 63
    const/16 v5, 0xc

    .line 64
    .line 65
    invoke-virtual {v4, v5}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-virtual {v4, v3}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    const v4, 0xbb80

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v4}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-virtual {v3}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/bH;->a()Lcom/google/android/gms/internal/ads/Of;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/Of;->H:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v4, Landroid/media/AudioAttributes;

    .line 91
    .line 92
    invoke-static {v3, v4}, LD0/a;->s(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    if-eqz v3, :cond_1

    .line 97
    .line 98
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/oA;->b(Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_2
    const/4 p0, 0x2

    .line 103
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/oA;->b(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/rA;->h()Lcom/google/android/gms/internal/ads/PA;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    return-object p0
.end method
