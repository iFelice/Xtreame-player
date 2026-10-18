.class public final Li2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Li2/b;

.field public final b:[Lj2/b;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lm2/o;Li2/b;)V
    .locals 12

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x2

    .line 3
    const/4 v2, 0x4

    .line 4
    const/4 v3, 0x0

    .line 5
    const-string v4, "trackers"

    .line 6
    .line 7
    invoke-static {p1, v4}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v4, Lj2/a;

    .line 11
    .line 12
    iget-object v5, p1, Lm2/o;->G:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v5, Lk2/f;

    .line 15
    .line 16
    invoke-direct {v4, v5, v3}, Lj2/a;-><init>(Lk2/f;I)V

    .line 17
    .line 18
    .line 19
    new-instance v5, Lj2/a;

    .line 20
    .line 21
    iget-object v6, p1, Lm2/o;->H:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v6, Lk2/a;

    .line 24
    .line 25
    invoke-direct {v5, v6}, Lj2/a;-><init>(Lk2/a;)V

    .line 26
    .line 27
    .line 28
    new-instance v6, Lj2/a;

    .line 29
    .line 30
    iget-object v7, p1, Lm2/o;->J:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v7, Lk2/f;

    .line 33
    .line 34
    invoke-direct {v6, v7, v2}, Lj2/a;-><init>(Lk2/f;I)V

    .line 35
    .line 36
    .line 37
    new-instance v7, Lj2/a;

    .line 38
    .line 39
    iget-object v8, p1, Lm2/o;->I:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v8, Lk2/f;

    .line 42
    .line 43
    invoke-direct {v7, v8, v1}, Lj2/a;-><init>(Lk2/f;I)V

    .line 44
    .line 45
    .line 46
    new-instance v8, Lj2/a;

    .line 47
    .line 48
    iget-object v9, p1, Lm2/o;->I:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v9, Lk2/f;

    .line 51
    .line 52
    invoke-direct {v8, v9, v0}, Lj2/a;-><init>(Lk2/f;I)V

    .line 53
    .line 54
    .line 55
    new-instance v9, Lj2/d;

    .line 56
    .line 57
    iget-object v10, p1, Lm2/o;->I:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v10, Lk2/f;

    .line 60
    .line 61
    const-string v11, "tracker"

    .line 62
    .line 63
    invoke-static {v10, v11}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-direct {v9, v10}, Lj2/b;-><init>(Lk2/f;)V

    .line 67
    .line 68
    .line 69
    new-instance v10, Lj2/c;

    .line 70
    .line 71
    iget-object p1, p1, Lm2/o;->I:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast p1, Lk2/f;

    .line 74
    .line 75
    invoke-static {p1, v11}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-direct {v10, p1}, Lj2/b;-><init>(Lk2/f;)V

    .line 79
    .line 80
    .line 81
    const/4 p1, 0x7

    .line 82
    new-array p1, p1, [Lj2/b;

    .line 83
    .line 84
    aput-object v4, p1, v3

    .line 85
    .line 86
    const/4 v3, 0x1

    .line 87
    aput-object v5, p1, v3

    .line 88
    .line 89
    aput-object v6, p1, v1

    .line 90
    .line 91
    aput-object v7, p1, v0

    .line 92
    .line 93
    aput-object v8, p1, v2

    .line 94
    .line 95
    const/4 v0, 0x5

    .line 96
    aput-object v9, p1, v0

    .line 97
    .line 98
    const/4 v0, 0x6

    .line 99
    aput-object v10, p1, v0

    .line 100
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    .line 103
    .line 104
    iput-object p2, p0, Li2/c;->a:Li2/b;

    .line 105
    .line 106
    iput-object p1, p0, Li2/c;->b:[Lj2/b;

    .line 107
    .line 108
    new-instance p1, Ljava/lang/Object;

    .line 109
    .line 110
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 111
    .line 112
    .line 113
    iput-object p1, p0, Li2/c;->c:Ljava/lang/Object;

    .line 114
    .line 115
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 7

    .line 1
    const-string v0, "workSpecId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Li2/c;->c:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Li2/c;->b:[Lj2/b;

    .line 10
    .line 11
    array-length v2, v1

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    :goto_0
    if-ge v4, v2, :cond_1

    .line 15
    .line 16
    aget-object v5, v1, v4

    .line 17
    .line 18
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    iget-object v6, v5, Lj2/b;->d:Ljava/lang/Object;

    .line 22
    .line 23
    if-eqz v6, :cond_0

    .line 24
    .line 25
    invoke-virtual {v5, v6}, Lj2/b;->b(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v6

    .line 29
    if-eqz v6, :cond_0

    .line 30
    .line 31
    iget-object v6, v5, Lj2/b;->c:Ljava/util/ArrayList;

    .line 32
    .line 33
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    if-eqz v6, :cond_0

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    goto :goto_2

    .line 45
    :cond_1
    const/4 v5, 0x0

    .line 46
    :goto_1
    if-eqz v5, :cond_2

    .line 47
    .line 48
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    sget-object v2, Li2/d;->a:Ljava/lang/String;

    .line 53
    .line 54
    new-instance v4, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v6, "Work "

    .line 60
    .line 61
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string p1, " constrained by "

    .line 68
    .line 69
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {v1, v2, p1}, Ld2/n;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .line 89
    .line 90
    :cond_2
    if-nez v5, :cond_3

    .line 91
    .line 92
    const/4 v3, 0x1

    .line 93
    :cond_3
    monitor-exit v0

    .line 94
    return v3

    .line 95
    :goto_2
    monitor-exit v0

    .line 96
    throw p1
.end method

.method public final b(Ljava/util/ArrayList;)V
    .locals 2

    .line 1
    const-string v0, "workSpecs"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Li2/c;->c:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Li2/c;->a:Li2/b;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v1, p1}, Li2/b;->e(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    :cond_0
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit v0

    .line 20
    throw p1
.end method

.method public final c(Ljava/util/Collection;)V
    .locals 8

    .line 1
    const-string v0, "workSpecs"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Li2/c;->c:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Li2/c;->b:[Lj2/b;

    .line 10
    .line 11
    array-length v2, v1

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    :goto_0
    if-ge v4, v2, :cond_1

    .line 15
    .line 16
    aget-object v5, v1, v4

    .line 17
    .line 18
    iget-object v6, v5, Lj2/b;->e:Li2/c;

    .line 19
    .line 20
    if-eqz v6, :cond_0

    .line 21
    .line 22
    const/4 v6, 0x0

    .line 23
    iput-object v6, v5, Lj2/b;->e:Li2/c;

    .line 24
    .line 25
    iget-object v7, v5, Lj2/b;->d:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-virtual {v5, v6, v7}, Lj2/b;->d(Li2/c;Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_3

    .line 35
    :cond_1
    iget-object v1, p0, Li2/c;->b:[Lj2/b;

    .line 36
    .line 37
    array-length v2, v1

    .line 38
    const/4 v4, 0x0

    .line 39
    :goto_1
    if-ge v4, v2, :cond_2

    .line 40
    .line 41
    aget-object v5, v1, v4

    .line 42
    .line 43
    move-object v6, p1

    .line 44
    check-cast v6, Ljava/util/Collection;

    .line 45
    .line 46
    invoke-virtual {v5, v6}, Lj2/b;->c(Ljava/util/Collection;)V

    .line 47
    .line 48
    .line 49
    add-int/lit8 v4, v4, 0x1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    iget-object p1, p0, Li2/c;->b:[Lj2/b;

    .line 53
    .line 54
    array-length v1, p1

    .line 55
    :goto_2
    if-ge v3, v1, :cond_4

    .line 56
    .line 57
    aget-object v2, p1, v3

    .line 58
    .line 59
    iget-object v4, v2, Lj2/b;->e:Li2/c;

    .line 60
    .line 61
    if-eq v4, p0, :cond_3

    .line 62
    .line 63
    iput-object p0, v2, Lj2/b;->e:Li2/c;

    .line 64
    .line 65
    iget-object v4, v2, Lj2/b;->d:Ljava/lang/Object;

    .line 66
    .line 67
    invoke-virtual {v2, p0, v4}, Lj2/b;->d(Li2/c;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .line 69
    .line 70
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_4
    monitor-exit v0

    .line 74
    return-void

    .line 75
    :goto_3
    monitor-exit v0

    .line 76
    throw p1
.end method

.method public final d()V
    .locals 7

    .line 1
    iget-object v0, p0, Li2/c;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Li2/c;->b:[Lj2/b;

    .line 5
    .line 6
    array-length v2, v1

    .line 7
    const/4 v3, 0x0

    .line 8
    :goto_0
    if-ge v3, v2, :cond_1

    .line 9
    .line 10
    aget-object v4, v1, v3

    .line 11
    .line 12
    iget-object v5, v4, Lj2/b;->b:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v6

    .line 18
    xor-int/lit8 v6, v6, 0x1

    .line 19
    .line 20
    if-eqz v6, :cond_0

    .line 21
    .line 22
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 23
    .line 24
    .line 25
    iget-object v5, v4, Lj2/b;->a:Lk2/f;

    .line 26
    .line 27
    invoke-virtual {v5, v4}, Lk2/f;->b(Lj2/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception v1

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :goto_1
    monitor-exit v0

    .line 38
    throw v1
.end method
