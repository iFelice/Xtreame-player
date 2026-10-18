.class public final Lcom/google/android/gms/internal/ads/fI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final synthetic G:I

.field public H:I

.field public I:Z

.field public J:Ljava/util/Iterator;

.field public final synthetic K:Ljava/util/AbstractMap;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/l2;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Lcom/google/android/gms/internal/ads/fI;->G:I

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fI;->K:Ljava/util/AbstractMap;

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/google/android/gms/internal/ads/fI;->H:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/protobuf/l2;I)V
    .locals 0

    const/4 p2, 0x2

    iput p2, p0, Lcom/google/android/gms/internal/ads/fI;->G:I

    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/fI;-><init>(Lcom/google/protobuf/l2;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/AbstractMap;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/ads/fI;->G:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/fI;->K:Ljava/util/AbstractMap;

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/fI;->H:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Iterator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fI;->J:Ljava/util/Iterator;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fI;->K:Ljava/util/AbstractMap;

    .line 6
    .line 7
    check-cast v0, Lcom/google/protobuf/l2;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/google/protobuf/l2;->I:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/fI;->J:Ljava/util/Iterator;

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fI;->J:Ljava/util/Iterator;

    .line 22
    .line 23
    return-object v0
.end method

.method public final b()Ljava/util/Iterator;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/fI;->G:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fI;->K:Ljava/util/AbstractMap;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fI;->J:Ljava/util/Iterator;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fI;->J:Ljava/util/Iterator;

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    check-cast v1, Lcom/google/android/gms/internal/ads/dI;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    throw v0

    .line 22
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fI;->J:Ljava/util/Iterator;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/fI;->J:Ljava/util/Iterator;

    .line 27
    .line 28
    return-object v0

    .line 29
    :cond_1
    check-cast v1, Lcom/google/android/gms/internal/ads/dI;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    throw v0

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final hasNext()Z
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/fI;->G:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/fI;->K:Ljava/util/AbstractMap;

    .line 5
    .line 6
    const/4 v3, 0x1

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget v0, p0, Lcom/google/android/gms/internal/ads/fI;->H:I

    .line 11
    .line 12
    add-int/2addr v0, v3

    .line 13
    check-cast v2, Lcom/google/protobuf/l2;

    .line 14
    .line 15
    iget-object v4, v2, Lcom/google/protobuf/l2;->H:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    if-lt v0, v4, :cond_0

    .line 22
    .line 23
    iget-object v0, v2, Lcom/google/protobuf/l2;->I:Ljava/util/Map;

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/fI;->a()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    :cond_0
    const/4 v1, 0x1

    .line 42
    :cond_1
    return v1

    .line 43
    :pswitch_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/fI;->H:I

    .line 44
    .line 45
    add-int/2addr v0, v3

    .line 46
    check-cast v2, Lcom/google/android/gms/internal/ads/dI;

    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    if-gez v0, :cond_2

    .line 52
    .line 53
    return v3

    .line 54
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    const/4 v0, 0x0

    .line 58
    throw v0

    .line 59
    :pswitch_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/fI;->H:I

    .line 60
    .line 61
    add-int/2addr v0, v3

    .line 62
    check-cast v2, Lcom/google/android/gms/internal/ads/dI;

    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    if-gez v0, :cond_3

    .line 68
    .line 69
    return v3

    .line 70
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    const/4 v0, 0x0

    .line 74
    throw v0

    .line 75
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final next()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/fI;->G:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/fI;->K:Ljava/util/AbstractMap;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/fI;->I:Z

    .line 10
    .line 11
    iget v0, p0, Lcom/google/android/gms/internal/ads/fI;->H:I

    .line 12
    .line 13
    add-int/2addr v0, v2

    .line 14
    iput v0, p0, Lcom/google/android/gms/internal/ads/fI;->H:I

    .line 15
    .line 16
    check-cast v1, Lcom/google/protobuf/l2;

    .line 17
    .line 18
    iget-object v2, v1, Lcom/google/protobuf/l2;->H:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-ge v0, v2, :cond_0

    .line 25
    .line 26
    iget-object v0, v1, Lcom/google/protobuf/l2;->H:Ljava/util/List;

    .line 27
    .line 28
    iget v1, p0, Lcom/google/android/gms/internal/ads/fI;->H:I

    .line 29
    .line 30
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Ljava/util/Map$Entry;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/fI;->a()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Ljava/util/Map$Entry;

    .line 46
    .line 47
    :goto_0
    return-object v0

    .line 48
    :pswitch_0
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/fI;->I:Z

    .line 49
    .line 50
    iget v0, p0, Lcom/google/android/gms/internal/ads/fI;->H:I

    .line 51
    .line 52
    add-int/2addr v0, v2

    .line 53
    iput v0, p0, Lcom/google/android/gms/internal/ads/fI;->H:I

    .line 54
    .line 55
    check-cast v1, Lcom/google/android/gms/internal/ads/dI;

    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    if-ltz v0, :cond_1

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/fI;->b()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Ljava/util/Map$Entry;

    .line 71
    .line 72
    return-object v0

    .line 73
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    const/4 v0, 0x0

    .line 77
    throw v0

    .line 78
    :pswitch_1
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/fI;->I:Z

    .line 79
    .line 80
    iget v0, p0, Lcom/google/android/gms/internal/ads/fI;->H:I

    .line 81
    .line 82
    add-int/2addr v0, v2

    .line 83
    iput v0, p0, Lcom/google/android/gms/internal/ads/fI;->H:I

    .line 84
    .line 85
    check-cast v1, Lcom/google/android/gms/internal/ads/dI;

    .line 86
    .line 87
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 88
    .line 89
    .line 90
    if-ltz v0, :cond_2

    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/fI;->b()Ljava/util/Iterator;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, Ljava/util/Map$Entry;

    .line 101
    .line 102
    return-object v0

    .line 103
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 104
    .line 105
    .line 106
    const/4 v0, 0x0

    .line 107
    throw v0

    .line 108
    nop

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/fI;->G:I

    .line 2
    .line 3
    const-string v1, "remove() was called before next()"

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/fI;->K:Ljava/util/AbstractMap;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/fI;->I:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/fI;->I:Z

    .line 16
    .line 17
    check-cast v2, Lcom/google/protobuf/l2;

    .line 18
    .line 19
    sget v0, Lcom/google/protobuf/l2;->M:I

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/google/protobuf/l2;->b()V

    .line 22
    .line 23
    .line 24
    iget v0, p0, Lcom/google/android/gms/internal/ads/fI;->H:I

    .line 25
    .line 26
    iget-object v1, v2, Lcom/google/protobuf/l2;->H:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-ge v0, v1, :cond_0

    .line 33
    .line 34
    iget v0, p0, Lcom/google/android/gms/internal/ads/fI;->H:I

    .line 35
    .line 36
    add-int/lit8 v1, v0, -0x1

    .line 37
    .line 38
    iput v1, p0, Lcom/google/android/gms/internal/ads/fI;->H:I

    .line 39
    .line 40
    invoke-virtual {v2, v0}, Lcom/google/protobuf/l2;->n(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/fI;->a()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 49
    .line 50
    .line 51
    :goto_0
    return-void

    .line 52
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v0

    .line 58
    :pswitch_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/fI;->I:Z

    .line 59
    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/fI;->I:Z

    .line 63
    .line 64
    check-cast v2, Lcom/google/android/gms/internal/ads/dI;

    .line 65
    .line 66
    sget v0, Lcom/google/android/gms/internal/ads/dI;->G:I

    .line 67
    .line 68
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/dI;->k()V

    .line 69
    .line 70
    .line 71
    iget v0, p0, Lcom/google/android/gms/internal/ads/fI;->H:I

    .line 72
    .line 73
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    if-gez v0, :cond_2

    .line 77
    .line 78
    add-int/lit8 v1, v0, -0x1

    .line 79
    .line 80
    iput v1, p0, Lcom/google/android/gms/internal/ads/fI;->H:I

    .line 81
    .line 82
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/dI;->j(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/fI;->b()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 91
    .line 92
    .line 93
    :goto_1
    return-void

    .line 94
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 95
    .line 96
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw v0

    .line 100
    :pswitch_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/fI;->I:Z

    .line 101
    .line 102
    if-eqz v0, :cond_5

    .line 103
    .line 104
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/fI;->I:Z

    .line 105
    .line 106
    check-cast v2, Lcom/google/android/gms/internal/ads/dI;

    .line 107
    .line 108
    sget v0, Lcom/google/android/gms/internal/ads/dI;->G:I

    .line 109
    .line 110
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/dI;->k()V

    .line 111
    .line 112
    .line 113
    iget v0, p0, Lcom/google/android/gms/internal/ads/fI;->H:I

    .line 114
    .line 115
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 116
    .line 117
    .line 118
    if-gez v0, :cond_4

    .line 119
    .line 120
    add-int/lit8 v1, v0, -0x1

    .line 121
    .line 122
    iput v1, p0, Lcom/google/android/gms/internal/ads/fI;->H:I

    .line 123
    .line 124
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/dI;->j(I)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/fI;->b()Ljava/util/Iterator;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 133
    .line 134
    .line 135
    :goto_2
    return-void

    .line 136
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 137
    .line 138
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw v0

    .line 142
    nop

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
