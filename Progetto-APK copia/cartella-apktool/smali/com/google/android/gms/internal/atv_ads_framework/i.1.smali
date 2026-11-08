.class public abstract Lcom/google/android/gms/internal/atv_ads_framework/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public G:Ljava/lang/String;

.field public H:I

.field public final I:Ljava/lang/CharSequence;

.field public J:I

.field public K:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/atv_ads_framework/x0;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x2

    .line 5
    iput p1, p0, Lcom/google/android/gms/internal/atv_ads_framework/i;->H:I

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/google/android/gms/internal/atv_ads_framework/i;->J:I

    .line 9
    .line 10
    const p1, 0x7fffffff

    .line 11
    .line 12
    .line 13
    iput p1, p0, Lcom/google/android/gms/internal/atv_ads_framework/i;->K:I

    .line 14
    .line 15
    iput-object p2, p0, Lcom/google/android/gms/internal/atv_ads_framework/i;->I:Ljava/lang/CharSequence;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 11

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/i;->H:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-eq v0, v1, :cond_d

    .line 5
    .line 6
    add-int/lit8 v2, v0, -0x1

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v0, :cond_c

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    if-eqz v2, :cond_b

    .line 13
    .line 14
    const/4 v4, 0x2

    .line 15
    const/4 v5, 0x0

    .line 16
    if-eq v2, v4, :cond_a

    .line 17
    .line 18
    iput v1, p0, Lcom/google/android/gms/internal/atv_ads_framework/i;->H:I

    .line 19
    .line 20
    iget v1, p0, Lcom/google/android/gms/internal/atv_ads_framework/i;->J:I

    .line 21
    .line 22
    :cond_0
    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/atv_ads_framework/i;->J:I

    .line 23
    .line 24
    const/4 v4, -0x1

    .line 25
    const/4 v6, 0x3

    .line 26
    if-eq v2, v4, :cond_9

    .line 27
    .line 28
    move-object v7, p0

    .line 29
    check-cast v7, Lcom/google/android/gms/internal/atv_ads_framework/h;

    .line 30
    .line 31
    iget-object v7, v7, Lcom/google/android/gms/internal/atv_ads_framework/i;->I:Ljava/lang/CharSequence;

    .line 32
    .line 33
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    .line 34
    .line 35
    .line 36
    move-result v8

    .line 37
    invoke-static {v2, v8}, Lcom/google/android/gms/internal/ads/Cw;->T0(II)V

    .line 38
    .line 39
    .line 40
    :goto_1
    if-ge v2, v8, :cond_2

    .line 41
    .line 42
    invoke-interface {v7, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 43
    .line 44
    .line 45
    move-result v9

    .line 46
    const/16 v10, 0x3a

    .line 47
    .line 48
    if-ne v9, v10, :cond_1

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    const/4 v2, -0x1

    .line 55
    :goto_2
    iget-object v7, p0, Lcom/google/android/gms/internal/atv_ads_framework/i;->I:Ljava/lang/CharSequence;

    .line 56
    .line 57
    if-ne v2, v4, :cond_3

    .line 58
    .line 59
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    iput v4, p0, Lcom/google/android/gms/internal/atv_ads_framework/i;->J:I

    .line 64
    .line 65
    const/4 v8, -0x1

    .line 66
    goto :goto_3

    .line 67
    :cond_3
    add-int/lit8 v8, v2, 0x1

    .line 68
    .line 69
    iput v8, p0, Lcom/google/android/gms/internal/atv_ads_framework/i;->J:I

    .line 70
    .line 71
    :goto_3
    if-ne v8, v1, :cond_4

    .line 72
    .line 73
    add-int/lit8 v8, v8, 0x1

    .line 74
    .line 75
    iput v8, p0, Lcom/google/android/gms/internal/atv_ads_framework/i;->J:I

    .line 76
    .line 77
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-le v8, v2, :cond_0

    .line 82
    .line 83
    iput v4, p0, Lcom/google/android/gms/internal/atv_ads_framework/i;->J:I

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_4
    if-ge v1, v2, :cond_5

    .line 87
    .line 88
    invoke-interface {v7, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 89
    .line 90
    .line 91
    :cond_5
    if-ge v1, v2, :cond_6

    .line 92
    .line 93
    add-int/lit8 v3, v2, -0x1

    .line 94
    .line 95
    invoke-interface {v7, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 96
    .line 97
    .line 98
    :cond_6
    iget v3, p0, Lcom/google/android/gms/internal/atv_ads_framework/i;->K:I

    .line 99
    .line 100
    if-ne v3, v0, :cond_7

    .line 101
    .line 102
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    iput v4, p0, Lcom/google/android/gms/internal/atv_ads_framework/i;->J:I

    .line 107
    .line 108
    if-le v2, v1, :cond_8

    .line 109
    .line 110
    add-int/lit8 v3, v2, -0x1

    .line 111
    .line 112
    invoke-interface {v7, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 113
    .line 114
    .line 115
    goto :goto_4

    .line 116
    :cond_7
    add-int/2addr v3, v4

    .line 117
    iput v3, p0, Lcom/google/android/gms/internal/atv_ads_framework/i;->K:I

    .line 118
    .line 119
    :cond_8
    :goto_4
    invoke-interface {v7, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    goto :goto_5

    .line 128
    :cond_9
    iput v6, p0, Lcom/google/android/gms/internal/atv_ads_framework/i;->H:I

    .line 129
    .line 130
    :goto_5
    iput-object v3, p0, Lcom/google/android/gms/internal/atv_ads_framework/i;->G:Ljava/lang/String;

    .line 131
    .line 132
    iget v1, p0, Lcom/google/android/gms/internal/atv_ads_framework/i;->H:I

    .line 133
    .line 134
    if-eq v1, v6, :cond_a

    .line 135
    .line 136
    iput v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/i;->H:I

    .line 137
    .line 138
    return v0

    .line 139
    :cond_a
    return v5

    .line 140
    :cond_b
    return v0

    .line 141
    :cond_c
    throw v3

    .line 142
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 143
    .line 144
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 145
    .line 146
    .line 147
    throw v0
.end method

.method public final b()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/atv_ads_framework/i;->a()Z

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
    iput v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/i;->H:I

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/atv_ads_framework/i;->G:Ljava/lang/String;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput-object v1, p0, Lcom/google/android/gms/internal/atv_ads_framework/i;->G:Ljava/lang/String;

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

.method public final c()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method public final bridge synthetic hasNext()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/atv_ads_framework/i;->a()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/atv_ads_framework/i;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic remove()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/atv_ads_framework/i;->c()V

    const/4 v0, 0x0

    throw v0
.end method
