.class public Lcom/google/android/gms/internal/ads/Qz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final synthetic G:I

.field public final H:Ljava/util/Iterator;

.field public I:Ljava/lang/Object;

.field public final synthetic J:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/Rz;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/google/android/gms/internal/ads/Qz;->G:I

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Qz;->J:Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Rz;->J:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Qz;->H:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/Rz;I)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x3

    .line 28
    iput p2, p0, Lcom/google/android/gms/internal/ads/Qz;->G:I

    .line 29
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Qz;->J:Ljava/lang/Object;

    .line 30
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Rz;->J:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Qz;->H:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/Yz;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 9
    iput v0, p0, Lcom/google/android/gms/internal/ads/Qz;->G:I

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Qz;->J:Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Yz;->I:Ljava/util/Collection;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Qz;->I:Ljava/lang/Object;

    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 11
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 13
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Qz;->H:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/Yz;I)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x5

    .line 15
    iput p2, p0, Lcom/google/android/gms/internal/ads/Qz;->G:I

    .line 16
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Qz;->J:Ljava/lang/Object;

    .line 17
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Yz;->I:Ljava/util/Collection;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Qz;->I:Ljava/lang/Object;

    .line 18
    instance-of p2, p1, Ljava/util/List;

    if-eqz p2, :cond_0

    .line 19
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    goto :goto_0

    .line 20
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 21
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Qz;->H:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/Yz;Ljava/util/ListIterator;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/google/android/gms/internal/ads/Qz;->G:I

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Qz;->J:Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Yz;->I:Ljava/util/Collection;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Qz;->I:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Qz;->H:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/Yz;Ljava/util/ListIterator;I)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x5

    .line 23
    iput p3, p0, Lcom/google/android/gms/internal/ads/Qz;->G:I

    .line 24
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Qz;->J:Ljava/lang/Object;

    .line 25
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Yz;->I:Ljava/util/Collection;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Qz;->I:Ljava/lang/Object;

    .line 26
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Qz;->H:Ljava/util/Iterator;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/AbstractSet;Ljava/util/Iterator;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lcom/google/android/gms/internal/ads/Qz;->G:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/Qz;->H:Ljava/util/Iterator;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/Qz;->J:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Qz;->J:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lcom/google/android/gms/internal/ads/Yz;

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Yz;->c()V

    .line 7
    .line 8
    .line 9
    check-cast v0, Lcom/google/android/gms/internal/ads/Yz;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Yz;->I:Ljava/util/Collection;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Qz;->I:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Ljava/util/Collection;

    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 23
    .line 24
    .line 25
    throw v0
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Qz;->J:Ljava/lang/Object;

    .line 2
    .line 3
    move-object v1, v0

    .line 4
    check-cast v1, Lcom/google/android/gms/internal/ads/Yz;

    .line 5
    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/Yz;->zzb()V

    .line 7
    .line 8
    .line 9
    check-cast v0, Lcom/google/android/gms/internal/ads/Yz;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/Yz;->I:Ljava/util/Collection;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Qz;->I:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Ljava/util/Collection;

    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    .line 23
    .line 24
    .line 25
    throw v0
.end method

.method public final hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/Qz;->G:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Qz;->H:Ljava/util/Iterator;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Qz;->a()V

    .line 9
    .line 10
    .line 11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :pswitch_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    return v0

    .line 21
    :pswitch_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    return v0

    .line 26
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Qz;->b()V

    .line 27
    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    return v0

    .line 34
    :pswitch_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    return v0

    .line 39
    :pswitch_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    return v0

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/Qz;->G:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/Qz;->J:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Qz;->H:Ljava/util/Iterator;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Qz;->a()V

    .line 11
    .line 12
    .line 13
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0

    .line 18
    :pswitch_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Ljava/util/Map$Entry;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Qz;->I:Ljava/lang/Object;

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0

    .line 31
    :pswitch_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Ljava/util/Map$Entry;

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Ljava/util/Collection;

    .line 42
    .line 43
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/Qz;->I:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v1, Lcom/google/android/gms/internal/ads/Rz;

    .line 46
    .line 47
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/Rz;->e(Ljava/util/Map$Entry;)Lz4/D;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    return-object v0

    .line 52
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/Qz;->b()V

    .line 53
    .line 54
    .line 55
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    return-object v0

    .line 60
    :pswitch_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Ljava/util/Map$Entry;

    .line 65
    .line 66
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/Qz;->I:Ljava/lang/Object;

    .line 67
    .line 68
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    return-object v0

    .line 73
    :pswitch_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Ljava/util/Map$Entry;

    .line 78
    .line 79
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    check-cast v2, Ljava/util/Collection;

    .line 84
    .line 85
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/Qz;->I:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v1, Lcom/google/android/gms/internal/ads/Rz;

    .line 88
    .line 89
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/Rz;->f(Ljava/util/Map$Entry;)Lcom/google/android/gms/internal/ads/qA;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    return-object v0

    .line 94
    nop

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/Qz;->G:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "no calls to next() since the last call to remove()"

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x1

    .line 8
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/Qz;->J:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/Qz;->H:Ljava/util/Iterator;

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 16
    .line 17
    .line 18
    check-cast v5, Lcom/google/android/gms/internal/ads/Yz;

    .line 19
    .line 20
    iget-object v0, v5, Lcom/google/android/gms/internal/ads/Yz;->L:Ljava/io/Serializable;

    .line 21
    .line 22
    check-cast v0, Lz4/c;

    .line 23
    .line 24
    iget v1, v0, Lz4/c;->K:I

    .line 25
    .line 26
    sub-int/2addr v1, v4

    .line 27
    iput v1, v0, Lz4/c;->K:I

    .line 28
    .line 29
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/Yz;->i()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Qz;->I:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast v0, Ljava/util/Map$Entry;

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    const/4 v3, 0x1

    .line 40
    :cond_0
    invoke-static {v2, v3}, Ly4/k;->v(Ljava/lang/String;Z)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Qz;->I:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Ljava/util/Map$Entry;

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Ljava/util/Collection;

    .line 52
    .line 53
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 54
    .line 55
    .line 56
    check-cast v5, Lz4/f;

    .line 57
    .line 58
    iget-object v2, v5, Lz4/f;->I:Lz4/c;

    .line 59
    .line 60
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    iget v4, v2, Lz4/c;->K:I

    .line 65
    .line 66
    sub-int/2addr v4, v3

    .line 67
    iput v4, v2, Lz4/c;->K:I

    .line 68
    .line 69
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 70
    .line 71
    .line 72
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Qz;->I:Ljava/lang/Object;

    .line 73
    .line 74
    return-void

    .line 75
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Qz;->I:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v0, Ljava/util/Collection;

    .line 78
    .line 79
    if-eqz v0, :cond_1

    .line 80
    .line 81
    const/4 v3, 0x1

    .line 82
    :cond_1
    invoke-static {v2, v3}, Ly4/k;->v(Ljava/lang/String;Z)V

    .line 83
    .line 84
    .line 85
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 86
    .line 87
    .line 88
    check-cast v5, Lcom/google/android/gms/internal/ads/Rz;

    .line 89
    .line 90
    iget-object v0, v5, Lcom/google/android/gms/internal/ads/Rz;->K:Ljava/io/Serializable;

    .line 91
    .line 92
    check-cast v0, Lz4/c;

    .line 93
    .line 94
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/Qz;->I:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v2, Ljava/util/Collection;

    .line 97
    .line 98
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    iget v3, v0, Lz4/c;->K:I

    .line 103
    .line 104
    sub-int/2addr v3, v2

    .line 105
    iput v3, v0, Lz4/c;->K:I

    .line 106
    .line 107
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Qz;->I:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast v0, Ljava/util/Collection;

    .line 110
    .line 111
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 112
    .line 113
    .line 114
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Qz;->I:Ljava/lang/Object;

    .line 115
    .line 116
    return-void

    .line 117
    :pswitch_2
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 118
    .line 119
    .line 120
    check-cast v5, Lcom/google/android/gms/internal/ads/Yz;

    .line 121
    .line 122
    iget-object v0, v5, Lcom/google/android/gms/internal/ads/Yz;->L:Ljava/io/Serializable;

    .line 123
    .line 124
    check-cast v0, Lcom/google/android/gms/internal/ads/Mz;

    .line 125
    .line 126
    iget v1, v0, Lcom/google/android/gms/internal/ads/Mz;->K:I

    .line 127
    .line 128
    add-int/lit8 v1, v1, -0x1

    .line 129
    .line 130
    iput v1, v0, Lcom/google/android/gms/internal/ads/Mz;->K:I

    .line 131
    .line 132
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/Yz;->l()V

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Qz;->I:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast v0, Ljava/util/Map$Entry;

    .line 139
    .line 140
    if-eqz v0, :cond_2

    .line 141
    .line 142
    const/4 v3, 0x1

    .line 143
    :cond_2
    invoke-static {v2, v3}, Lf/b;->E0(Ljava/lang/String;Z)V

    .line 144
    .line 145
    .line 146
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Qz;->I:Ljava/lang/Object;

    .line 147
    .line 148
    check-cast v0, Ljava/util/Map$Entry;

    .line 149
    .line 150
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    check-cast v0, Ljava/util/Collection;

    .line 155
    .line 156
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 157
    .line 158
    .line 159
    check-cast v5, Lcom/google/android/gms/internal/ads/Sz;

    .line 160
    .line 161
    iget-object v2, v5, Lcom/google/android/gms/internal/ads/Sz;->I:Lcom/google/android/gms/internal/ads/Mz;

    .line 162
    .line 163
    iget v3, v2, Lcom/google/android/gms/internal/ads/Mz;->K:I

    .line 164
    .line 165
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    sub-int/2addr v3, v4

    .line 170
    iput v3, v2, Lcom/google/android/gms/internal/ads/Mz;->K:I

    .line 171
    .line 172
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 173
    .line 174
    .line 175
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Qz;->I:Ljava/lang/Object;

    .line 176
    .line 177
    return-void

    .line 178
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Qz;->I:Ljava/lang/Object;

    .line 179
    .line 180
    check-cast v0, Ljava/util/Collection;

    .line 181
    .line 182
    if-eqz v0, :cond_3

    .line 183
    .line 184
    const/4 v3, 0x1

    .line 185
    :cond_3
    invoke-static {v2, v3}, Lf/b;->E0(Ljava/lang/String;Z)V

    .line 186
    .line 187
    .line 188
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 189
    .line 190
    .line 191
    check-cast v5, Lcom/google/android/gms/internal/ads/Rz;

    .line 192
    .line 193
    iget-object v0, v5, Lcom/google/android/gms/internal/ads/Rz;->K:Ljava/io/Serializable;

    .line 194
    .line 195
    check-cast v0, Lcom/google/android/gms/internal/ads/Mz;

    .line 196
    .line 197
    iget v2, v0, Lcom/google/android/gms/internal/ads/Mz;->K:I

    .line 198
    .line 199
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/Qz;->I:Ljava/lang/Object;

    .line 200
    .line 201
    check-cast v3, Ljava/util/Collection;

    .line 202
    .line 203
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    .line 204
    .line 205
    .line 206
    move-result v3

    .line 207
    sub-int/2addr v2, v3

    .line 208
    iput v2, v0, Lcom/google/android/gms/internal/ads/Mz;->K:I

    .line 209
    .line 210
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/Qz;->I:Ljava/lang/Object;

    .line 211
    .line 212
    check-cast v0, Ljava/util/Collection;

    .line 213
    .line 214
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 215
    .line 216
    .line 217
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/Qz;->I:Ljava/lang/Object;

    .line 218
    .line 219
    return-void

    .line 220
    nop

    .line 221
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
