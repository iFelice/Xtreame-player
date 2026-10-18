.class public final LU6/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public G:Ljava/lang/String;

.field public final H:LX6/a;

.field public I:D

.field public J:D

.field public K:D

.field public L:D

.field public final M:Ljava/util/ArrayList;

.field public final N:LX6/a;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, LX6/a;

    .line 7
    .line 8
    invoke-direct {v1}, LX6/a;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v1, p0, LU6/d;->H:LX6/a;

    .line 12
    .line 13
    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    iput-wide v1, p0, LU6/d;->I:D

    .line 19
    .line 20
    const-wide v3, -0x10000000000001L

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    iput-wide v3, p0, LU6/d;->J:D

    .line 26
    .line 27
    iput-wide v1, p0, LU6/d;->K:D

    .line 28
    .line 29
    iput-wide v3, p0, LU6/d;->L:D

    .line 30
    .line 31
    new-instance v5, Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v5, p0, LU6/d;->M:Ljava/util/ArrayList;

    .line 37
    .line 38
    new-instance v5, LX6/a;

    .line 39
    .line 40
    invoke-direct {v5}, LX6/a;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-object v5, p0, LU6/d;->N:LX6/a;

    .line 44
    .line 45
    iput-object v0, p0, LU6/d;->G:Ljava/lang/String;

    .line 46
    .line 47
    iput-wide v1, p0, LU6/d;->I:D

    .line 48
    .line 49
    iput-wide v3, p0, LU6/d;->J:D

    .line 50
    .line 51
    iput-wide v1, p0, LU6/d;->K:D

    .line 52
    .line 53
    iput-wide v3, p0, LU6/d;->L:D

    .line 54
    .line 55
    invoke-virtual {p0}, LU6/d;->b()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    const/4 v1, 0x0

    .line 60
    :goto_0
    if-ge v1, v0, :cond_0

    .line 61
    .line 62
    monitor-enter p0

    .line 63
    :try_start_0
    iget-object v2, p0, LU6/d;->H:LX6/a;

    .line 64
    .line 65
    iget-object v2, v2, LX6/a;->G:Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Ljava/lang/Double;

    .line 72
    .line 73
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 74
    .line 75
    .line 76
    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit p0

    .line 78
    invoke-virtual {p0, v1}, LU6/d;->d(I)D

    .line 79
    .line 80
    .line 81
    move-result-wide v4

    .line 82
    invoke-virtual {p0, v2, v3, v4, v5}, LU6/d;->e(DD)V

    .line 83
    .line 84
    .line 85
    add-int/lit8 v1, v1, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    .line 89
    monitor-exit p0

    .line 90
    throw v0

    .line 91
    :cond_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(DD)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :goto_0
    :try_start_0
    iget-object v0, p0, LU6/d;->H:LX6/a;

    .line 3
    .line 4
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-static {p1, p2}, Ljava/lang/Math;->ulp(D)D

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    add-double/2addr p1, v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, LU6/d;->H:LX6/a;

    .line 21
    .line 22
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v0, v1, v2}, LX6/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1, p2, p3, p4}, LU6/d;->e(DD)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    .line 36
    monitor-exit p0

    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    monitor-exit p0

    .line 40
    throw p1
.end method

.method public final declared-synchronized b()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, LU6/d;->H:LX6/a;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/AbstractMap;->size()I

    .line 5
    .line 6
    .line 7
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    .line 9
    return v0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    monitor-exit p0

    .line 12
    throw v0
.end method

.method public final declared-synchronized c(DDZ)Ljava/util/SortedMap;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p5, :cond_2

    .line 3
    .line 4
    :try_start_0
    iget-object p5, p0, LU6/d;->H:LX6/a;

    .line 5
    .line 6
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p5, v0}, Ljava/util/TreeMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    .line 11
    .line 12
    .line 13
    move-result-object p5

    .line 14
    invoke-interface {p5}, Ljava/util/Map;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    invoke-interface {p5}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Ljava/lang/Double;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 27
    .line 28
    .line 29
    move-result-wide p1

    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_2

    .line 33
    :cond_0
    :goto_0
    iget-object p5, p0, LU6/d;->H:LX6/a;

    .line 34
    .line 35
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p5, v0}, Ljava/util/TreeMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    .line 40
    .line 41
    .line 42
    move-result-object p5

    .line 43
    invoke-interface {p5}, Ljava/util/Map;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    invoke-interface {p5}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    .line 50
    .line 51
    .line 52
    move-result-object p5

    .line 53
    invoke-interface {p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object p5

    .line 57
    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Ljava/lang/Double;

    .line 62
    .line 63
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_1

    .line 68
    .line 69
    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p3

    .line 73
    check-cast p3, Ljava/lang/Double;

    .line 74
    .line 75
    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    .line 76
    .line 77
    .line 78
    move-result-wide p3

    .line 79
    goto :goto_1

    .line 80
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 81
    .line 82
    .line 83
    move-result-wide v0

    .line 84
    add-double/2addr p3, v0

    .line 85
    :cond_2
    :goto_1
    cmpg-double p5, p1, p3

    .line 86
    .line 87
    if-gtz p5, :cond_3

    .line 88
    .line 89
    iget-object p5, p0, LU6/d;->H:LX6/a;

    .line 90
    .line 91
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    invoke-virtual {p5, p1, p2}, Ljava/util/TreeMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    .line 100
    .line 101
    .line 102
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    monitor-exit p0

    .line 104
    return-object p1

    .line 105
    :cond_3
    :try_start_1
    new-instance p1, Ljava/util/TreeMap;

    .line 106
    .line 107
    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    .line 109
    .line 110
    monitor-exit p0

    .line 111
    return-object p1

    .line 112
    :goto_2
    monitor-exit p0

    .line 113
    throw p1
.end method

.method public final declared-synchronized d(I)D
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, LU6/d;->H:LX6/a;

    .line 3
    .line 4
    iget-object v1, v0, LX6/a;->G:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Ljava/lang/Double;

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 17
    .line 18
    .line 19
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    monitor-exit p0

    .line 21
    return-wide v0

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    monitor-exit p0

    .line 24
    throw p1
.end method

.method public final e(DD)V
    .locals 2

    .line 1
    iget-wide v0, p0, LU6/d;->I:D

    .line 2
    .line 3
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iput-wide v0, p0, LU6/d;->I:D

    .line 8
    .line 9
    iget-wide v0, p0, LU6/d;->J:D

    .line 10
    .line 11
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(DD)D

    .line 12
    .line 13
    .line 14
    move-result-wide p1

    .line 15
    iput-wide p1, p0, LU6/d;->J:D

    .line 16
    .line 17
    iget-wide p1, p0, LU6/d;->K:D

    .line 18
    .line 19
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(DD)D

    .line 20
    .line 21
    .line 22
    move-result-wide p1

    .line 23
    iput-wide p1, p0, LU6/d;->K:D

    .line 24
    .line 25
    iget-wide p1, p0, LU6/d;->L:D

    .line 26
    .line 27
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->max(DD)D

    .line 28
    .line 29
    .line 30
    move-result-wide p1

    .line 31
    iput-wide p1, p0, LU6/d;->L:D

    .line 32
    .line 33
    return-void
.end method
