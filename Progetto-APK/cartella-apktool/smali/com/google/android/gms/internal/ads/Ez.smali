.class public abstract Lcom/google/android/gms/internal/ads/Ez;
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
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/Ez;->H:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/google/android/gms/internal/ads/Ez;->J:I

    .line 9
    .line 10
    const v0, 0x7fffffff

    .line 11
    .line 12
    .line 13
    iput v0, p0, Lcom/google/android/gms/internal/ads/Ez;->K:I

    .line 14
    .line 15
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Ez;->I:Ljava/lang/CharSequence;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 9

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/Ez;->H:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-eq v0, v1, :cond_b

    .line 5
    .line 6
    add-int/lit8 v2, v0, -0x1

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v0, :cond_a

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    if-eqz v2, :cond_9

    .line 13
    .line 14
    const/4 v4, 0x2

    .line 15
    const/4 v5, 0x0

    .line 16
    if-eq v2, v4, :cond_8

    .line 17
    .line 18
    iput v1, p0, Lcom/google/android/gms/internal/ads/Ez;->H:I

    .line 19
    .line 20
    iget v1, p0, Lcom/google/android/gms/internal/ads/Ez;->J:I

    .line 21
    .line 22
    :cond_0
    :goto_0
    iget v2, p0, Lcom/google/android/gms/internal/ads/Ez;->J:I

    .line 23
    .line 24
    const/4 v4, -0x1

    .line 25
    const/4 v6, 0x3

    .line 26
    if-eq v2, v4, :cond_7

    .line 27
    .line 28
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/Ez;->e(I)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/Ez;->I:Ljava/lang/CharSequence;

    .line 33
    .line 34
    if-ne v2, v4, :cond_1

    .line 35
    .line 36
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    iput v4, p0, Lcom/google/android/gms/internal/ads/Ez;->J:I

    .line 41
    .line 42
    const/4 v8, -0x1

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/Ez;->d(I)I

    .line 45
    .line 46
    .line 47
    move-result v8

    .line 48
    iput v8, p0, Lcom/google/android/gms/internal/ads/Ez;->J:I

    .line 49
    .line 50
    :goto_1
    if-ne v8, v1, :cond_2

    .line 51
    .line 52
    add-int/lit8 v8, v8, 0x1

    .line 53
    .line 54
    iput v8, p0, Lcom/google/android/gms/internal/ads/Ez;->J:I

    .line 55
    .line 56
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-le v8, v2, :cond_0

    .line 61
    .line 62
    iput v4, p0, Lcom/google/android/gms/internal/ads/Ez;->J:I

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    if-ge v1, v2, :cond_3

    .line 66
    .line 67
    invoke-interface {v7, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 68
    .line 69
    .line 70
    :cond_3
    if-ge v1, v2, :cond_4

    .line 71
    .line 72
    add-int/lit8 v3, v2, -0x1

    .line 73
    .line 74
    invoke-interface {v7, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 75
    .line 76
    .line 77
    :cond_4
    iget v3, p0, Lcom/google/android/gms/internal/ads/Ez;->K:I

    .line 78
    .line 79
    if-ne v3, v0, :cond_5

    .line 80
    .line 81
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    iput v4, p0, Lcom/google/android/gms/internal/ads/Ez;->J:I

    .line 86
    .line 87
    if-le v2, v1, :cond_6

    .line 88
    .line 89
    add-int/lit8 v3, v2, -0x1

    .line 90
    .line 91
    invoke-interface {v7, v3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_5
    add-int/2addr v3, v4

    .line 96
    iput v3, p0, Lcom/google/android/gms/internal/ads/Ez;->K:I

    .line 97
    .line 98
    :cond_6
    :goto_2
    invoke-interface {v7, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    goto :goto_3

    .line 107
    :cond_7
    iput v6, p0, Lcom/google/android/gms/internal/ads/Ez;->H:I

    .line 108
    .line 109
    :goto_3
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/Ez;->G:Ljava/lang/String;

    .line 110
    .line 111
    iget v1, p0, Lcom/google/android/gms/internal/ads/Ez;->H:I

    .line 112
    .line 113
    if-eq v1, v6, :cond_8

    .line 114
    .line 115
    iput v0, p0, Lcom/google/android/gms/internal/ads/Ez;->H:I

    .line 116
    .line 117
    return v0

    .line 118
    :cond_8
    return v5

    .line 119
    :cond_9
    return v0

    .line 120
    :cond_a
    throw v3

    .line 121
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 122
    .line 123
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 124
    .line 125
    .line 126
    throw v0
.end method

.method public final b()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Ez;->a()Z

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
    iput v0, p0, Lcom/google/android/gms/internal/ads/Ez;->H:I

    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Ez;->G:Ljava/lang/String;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Ez;->G:Ljava/lang/String;

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

.method public abstract d(I)I
.end method

.method public abstract e(I)I
.end method

.method public final bridge synthetic hasNext()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Ez;->a()Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Ez;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic remove()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Ez;->c()V

    const/4 v0, 0x0

    throw v0
.end method
