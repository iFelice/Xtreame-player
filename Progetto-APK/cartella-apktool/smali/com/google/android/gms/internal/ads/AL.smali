.class public abstract Lcom/google/android/gms/internal/ads/AL;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/media/AudioManager;Lcom/google/android/gms/internal/ads/IL;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lb7/u;->A(Landroid/media/AudioManager;)[Landroid/media/AudioDeviceInfo;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object p0, p1, Lcom/google/android/gms/internal/ads/IL;->a:Landroid/media/AudioDeviceInfo;

    .line 14
    .line 15
    new-array p1, v1, [Landroid/media/AudioDeviceInfo;

    .line 16
    .line 17
    aput-object p0, p1, v0

    .line 18
    .line 19
    move-object p0, p1

    .line 20
    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/AL;->b()Lcom/google/android/gms/internal/ads/zA;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    array-length v2, p0

    .line 25
    const/4 v3, 0x0

    .line 26
    :goto_1
    if-ge v3, v2, :cond_2

    .line 27
    .line 28
    aget-object v4, p0, v3

    .line 29
    .line 30
    invoke-static {v4}, LB0/q;->A(Landroid/media/AudioDeviceInfo;)I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/ads/pA;->contains(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_1

    .line 43
    .line 44
    return v1

    .line 45
    :cond_1
    add-int/2addr v3, v1

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    return v0
.end method

.method private static b()Lcom/google/android/gms/internal/ads/zA;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zA;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/yA;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/yA;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x7

    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const/4 v3, 0x2

    .line 18
    new-array v4, v3, [Ljava/lang/Integer;

    .line 19
    .line 20
    const/4 v5, 0x0

    .line 21
    aput-object v1, v4, v5

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    aput-object v2, v4, v1

    .line 25
    .line 26
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/yA;->d:[Ljava/lang/Object;

    .line 27
    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    :goto_0
    if-ge v2, v3, :cond_1

    .line 32
    .line 33
    aget-object v6, v4, v2

    .line 34
    .line 35
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/yA;->h(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    add-int/2addr v2, v1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-static {v4, v3}, Lcom/google/android/gms/internal/ads/Cw;->O0([Ljava/lang/Object;I)V

    .line 41
    .line 42
    .line 43
    iget v2, v0, Lcom/google/android/gms/internal/ads/oA;->b:I

    .line 44
    .line 45
    add-int/2addr v2, v3

    .line 46
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/oA;->f(I)V

    .line 47
    .line 48
    .line 49
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/oA;->a:[Ljava/lang/Object;

    .line 50
    .line 51
    iget v6, v0, Lcom/google/android/gms/internal/ads/oA;->b:I

    .line 52
    .line 53
    invoke-static {v4, v5, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    .line 55
    .line 56
    iget v2, v0, Lcom/google/android/gms/internal/ads/oA;->b:I

    .line 57
    .line 58
    add-int/2addr v2, v3

    .line 59
    iput v2, v0, Lcom/google/android/gms/internal/ads/oA;->b:I

    .line 60
    .line 61
    :cond_1
    sget v2, Lcom/google/android/gms/internal/ads/Et;->a:I

    .line 62
    .line 63
    const/16 v4, 0x1f

    .line 64
    .line 65
    if-lt v2, v4, :cond_3

    .line 66
    .line 67
    const/16 v4, 0x1a

    .line 68
    .line 69
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    const/16 v6, 0x1b

    .line 74
    .line 75
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    new-array v7, v3, [Ljava/lang/Integer;

    .line 80
    .line 81
    aput-object v4, v7, v5

    .line 82
    .line 83
    aput-object v6, v7, v1

    .line 84
    .line 85
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/yA;->d:[Ljava/lang/Object;

    .line 86
    .line 87
    if-eqz v4, :cond_2

    .line 88
    .line 89
    :goto_1
    if-ge v5, v3, :cond_3

    .line 90
    .line 91
    aget-object v4, v7, v5

    .line 92
    .line 93
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/yA;->h(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    add-int/2addr v5, v1

    .line 97
    goto :goto_1

    .line 98
    :cond_2
    invoke-static {v7, v3}, Lcom/google/android/gms/internal/ads/Cw;->O0([Ljava/lang/Object;I)V

    .line 99
    .line 100
    .line 101
    iget v1, v0, Lcom/google/android/gms/internal/ads/oA;->b:I

    .line 102
    .line 103
    add-int/2addr v1, v3

    .line 104
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/oA;->f(I)V

    .line 105
    .line 106
    .line 107
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/oA;->a:[Ljava/lang/Object;

    .line 108
    .line 109
    iget v4, v0, Lcom/google/android/gms/internal/ads/oA;->b:I

    .line 110
    .line 111
    invoke-static {v7, v5, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    .line 113
    .line 114
    iget v1, v0, Lcom/google/android/gms/internal/ads/oA;->b:I

    .line 115
    .line 116
    add-int/2addr v1, v3

    .line 117
    iput v1, v0, Lcom/google/android/gms/internal/ads/oA;->b:I

    .line 118
    .line 119
    :cond_3
    const/16 v1, 0x21

    .line 120
    .line 121
    if-lt v2, v1, :cond_4

    .line 122
    .line 123
    const/16 v1, 0x1e

    .line 124
    .line 125
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/yA;->h(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yA;->j()Lcom/google/android/gms/internal/ads/zA;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    return-object v0
.end method
