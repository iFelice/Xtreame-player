.class public abstract Lcom/google/android/gms/internal/ads/hA;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final synthetic G:I

.field public H:I

.field public I:I

.field public J:I

.field public final synthetic K:Ljava/util/AbstractMap;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/jA;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/hA;->G:I

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hA;->K:Ljava/util/AbstractMap;

    .line 6
    iget v1, p1, Lcom/google/android/gms/internal/ads/jA;->K:I

    .line 7
    iput v1, p0, Lcom/google/android/gms/internal/ads/hA;->H:I

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/jA;->isEmpty()Z

    move-result p1

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    const/4 v0, -0x1

    .line 9
    :cond_0
    iput v0, p0, Lcom/google/android/gms/internal/ads/hA;->I:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/hA;->J:I

    return-void
.end method

.method public constructor <init>(Lz4/t;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 11
    iput v0, p0, Lcom/google/android/gms/internal/ads/hA;->G:I

    .line 12
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hA;->K:Ljava/util/AbstractMap;

    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    iput v0, p0, Lcom/google/android/gms/internal/ads/hA;->H:I

    .line 15
    invoke-virtual {p1}, Lz4/t;->isEmpty()Z

    move-result p1

    const/4 v0, -0x1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/hA;->I:I

    .line 17
    iput v0, p0, Lcom/google/android/gms/internal/ads/hA;->J:I

    return-void
.end method

.method public synthetic constructor <init>(Lz4/t;I)V
    .locals 0

    .line 1
    const/4 p2, 0x1

    iput p2, p0, Lcom/google/android/gms/internal/ads/hA;->G:I

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/hA;-><init>(Lz4/t;)V

    return-void
.end method


# virtual methods
.method public abstract a(I)Ljava/lang/Object;
.end method

.method public abstract b(I)Ljava/lang/Object;
.end method

.method public final hasNext()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/hA;->G:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/ads/hA;->I:I

    .line 9
    .line 10
    if-ltz v0, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    :cond_0
    return v1

    .line 14
    :pswitch_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/hA;->I:I

    .line 15
    .line 16
    if-ltz v0, :cond_1

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    :cond_1
    return v1

    .line 20
    nop

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hA;->K:Ljava/util/AbstractMap;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    iget v2, p0, Lcom/google/android/gms/internal/ads/hA;->G:I

    .line 5
    .line 6
    packed-switch v2, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    move-object v2, v0

    .line 10
    check-cast v2, Lz4/t;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget v2, p0, Lcom/google/android/gms/internal/ads/hA;->H:I

    .line 16
    .line 17
    if-nez v2, :cond_2

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/hA;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    iget v2, p0, Lcom/google/android/gms/internal/ads/hA;->I:I

    .line 26
    .line 27
    iput v2, p0, Lcom/google/android/gms/internal/ads/hA;->J:I

    .line 28
    .line 29
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/hA;->a(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v0, Lz4/t;

    .line 34
    .line 35
    iget v3, p0, Lcom/google/android/gms/internal/ads/hA;->I:I

    .line 36
    .line 37
    add-int/lit8 v3, v3, 0x1

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    if-gez v3, :cond_0

    .line 43
    .line 44
    move v1, v3

    .line 45
    :cond_0
    iput v1, p0, Lcom/google/android/gms/internal/ads/hA;->I:I

    .line 46
    .line 47
    return-object v2

    .line 48
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 49
    .line 50
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 51
    .line 52
    .line 53
    throw v0

    .line 54
    :cond_2
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 55
    .line 56
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 57
    .line 58
    .line 59
    throw v0

    .line 60
    :pswitch_0
    move-object v2, v0

    .line 61
    check-cast v2, Lcom/google/android/gms/internal/ads/jA;

    .line 62
    .line 63
    iget v2, v2, Lcom/google/android/gms/internal/ads/jA;->K:I

    .line 64
    .line 65
    iget v3, p0, Lcom/google/android/gms/internal/ads/hA;->H:I

    .line 66
    .line 67
    if-ne v2, v3, :cond_5

    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/hA;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_4

    .line 74
    .line 75
    iget v2, p0, Lcom/google/android/gms/internal/ads/hA;->I:I

    .line 76
    .line 77
    iput v2, p0, Lcom/google/android/gms/internal/ads/hA;->J:I

    .line 78
    .line 79
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/hA;->b(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    check-cast v0, Lcom/google/android/gms/internal/ads/jA;

    .line 84
    .line 85
    iget v3, p0, Lcom/google/android/gms/internal/ads/hA;->I:I

    .line 86
    .line 87
    add-int/lit8 v3, v3, 0x1

    .line 88
    .line 89
    iget v0, v0, Lcom/google/android/gms/internal/ads/jA;->L:I

    .line 90
    .line 91
    if-ge v3, v0, :cond_3

    .line 92
    .line 93
    move v1, v3

    .line 94
    :cond_3
    iput v1, p0, Lcom/google/android/gms/internal/ads/hA;->I:I

    .line 95
    .line 96
    return-object v2

    .line 97
    :cond_4
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 98
    .line 99
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 100
    .line 101
    .line 102
    throw v0

    .line 103
    :cond_5
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 104
    .line 105
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 106
    .line 107
    .line 108
    throw v0

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hA;->K:Ljava/util/AbstractMap;

    .line 2
    .line 3
    const-string v1, "no calls to next() since the last call to remove()"

    .line 4
    .line 5
    iget v2, p0, Lcom/google/android/gms/internal/ads/hA;->G:I

    .line 6
    .line 7
    const/4 v3, -0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x1

    .line 10
    packed-switch v2, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    move-object v2, v0

    .line 14
    check-cast v2, Lz4/t;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    iget v2, p0, Lcom/google/android/gms/internal/ads/hA;->H:I

    .line 20
    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    iget v2, p0, Lcom/google/android/gms/internal/ads/hA;->J:I

    .line 24
    .line 25
    if-ltz v2, :cond_0

    .line 26
    .line 27
    const/4 v4, 0x1

    .line 28
    :cond_0
    invoke-static {v1, v4}, Ly4/k;->v(Ljava/lang/String;Z)V

    .line 29
    .line 30
    .line 31
    iget v1, p0, Lcom/google/android/gms/internal/ads/hA;->H:I

    .line 32
    .line 33
    add-int/lit8 v1, v1, 0x20

    .line 34
    .line 35
    iput v1, p0, Lcom/google/android/gms/internal/ads/hA;->H:I

    .line 36
    .line 37
    check-cast v0, Lz4/t;

    .line 38
    .line 39
    iget v1, p0, Lcom/google/android/gms/internal/ads/hA;->J:I

    .line 40
    .line 41
    invoke-virtual {v0}, Lz4/t;->c()[Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    aget-object v1, v2, v1

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Lz4/t;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    iget v0, p0, Lcom/google/android/gms/internal/ads/hA;->I:I

    .line 51
    .line 52
    sub-int/2addr v0, v5

    .line 53
    iput v0, p0, Lcom/google/android/gms/internal/ads/hA;->I:I

    .line 54
    .line 55
    iput v3, p0, Lcom/google/android/gms/internal/ads/hA;->J:I

    .line 56
    .line 57
    return-void

    .line 58
    :cond_1
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 59
    .line 60
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 61
    .line 62
    .line 63
    throw v0

    .line 64
    :pswitch_0
    move-object v2, v0

    .line 65
    check-cast v2, Lcom/google/android/gms/internal/ads/jA;

    .line 66
    .line 67
    iget v2, v2, Lcom/google/android/gms/internal/ads/jA;->K:I

    .line 68
    .line 69
    iget v6, p0, Lcom/google/android/gms/internal/ads/hA;->H:I

    .line 70
    .line 71
    if-ne v2, v6, :cond_3

    .line 72
    .line 73
    iget v2, p0, Lcom/google/android/gms/internal/ads/hA;->J:I

    .line 74
    .line 75
    if-ltz v2, :cond_2

    .line 76
    .line 77
    const/4 v4, 0x1

    .line 78
    :cond_2
    invoke-static {v1, v4}, Lf/b;->E0(Ljava/lang/String;Z)V

    .line 79
    .line 80
    .line 81
    iget v1, p0, Lcom/google/android/gms/internal/ads/hA;->H:I

    .line 82
    .line 83
    add-int/lit8 v1, v1, 0x20

    .line 84
    .line 85
    iput v1, p0, Lcom/google/android/gms/internal/ads/hA;->H:I

    .line 86
    .line 87
    iget v1, p0, Lcom/google/android/gms/internal/ads/hA;->J:I

    .line 88
    .line 89
    check-cast v0, Lcom/google/android/gms/internal/ads/jA;

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/jA;->b()[Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    aget-object v1, v2, v1

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/jA;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    iget v0, p0, Lcom/google/android/gms/internal/ads/hA;->I:I

    .line 101
    .line 102
    add-int/2addr v0, v3

    .line 103
    iput v0, p0, Lcom/google/android/gms/internal/ads/hA;->I:I

    .line 104
    .line 105
    iput v3, p0, Lcom/google/android/gms/internal/ads/hA;->J:I

    .line 106
    .line 107
    return-void

    .line 108
    :cond_3
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 109
    .line 110
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 111
    .line 112
    .line 113
    throw v0

    .line 114
    nop

    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
