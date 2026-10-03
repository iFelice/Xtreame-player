.class public final La/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, La/x;->b:Ljava/lang/Object;

    .line 5
    .line 6
    new-instance p1, Lu6/i;

    .line 7
    .line 8
    invoke-direct {p1}, Lu6/i;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, La/x;->c:Ljava/lang/Object;

    .line 12
    .line 13
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    .line 15
    const/16 v0, 0x21

    .line 16
    .line 17
    if-lt p1, v0, :cond_0

    .line 18
    .line 19
    new-instance p1, La/s;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-direct {p1, p0, v0}, La/s;-><init>(La/x;I)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, La/x;->d:Ljava/lang/Object;

    .line 26
    .line 27
    sget-object p1, La/u;->a:La/u;

    .line 28
    .line 29
    new-instance v0, La/s;

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    invoke-direct {v0, p0, v1}, La/s;-><init>(La/x;I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, La/u;->a(LC6/a;)Landroid/window/OnBackInvokedCallback;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, La/x;->e:Ljava/lang/Object;

    .line 40
    .line 41
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Le0/m;LY/D;)V
    .locals 2

    .line 1
    const-string v0, "owner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "onBackPressedCallback"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lz4/q0;->h(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Le0/m;->h()Le0/o;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p1, Le0/o;->L:Le0/j;

    .line 16
    .line 17
    sget-object v1, Le0/j;->G:Le0/j;

    .line 18
    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    new-instance v0, La/v;

    .line 23
    .line 24
    invoke-direct {v0, p0, p1, p2}, La/v;-><init>(La/x;Le0/B;LY/D;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p2, La/q;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 33
    .line 34
    const/16 v0, 0x21

    .line 35
    .line 36
    if-lt p1, v0, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0}, La/x;->c()V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, La/x;->d:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p1, LC6/a;

    .line 44
    .line 45
    iput-object p1, p2, La/q;->c:LC6/a;

    .line 46
    .line 47
    :cond_1
    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, La/x;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lu6/i;

    .line 4
    .line 5
    invoke-virtual {v0}, Lu6/i;->b()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->listIterator(I)Ljava/util/ListIterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    move-object v2, v1

    .line 24
    check-cast v2, La/q;

    .line 25
    .line 26
    iget-boolean v2, v2, La/q;->a:Z

    .line 27
    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v1, 0x0

    .line 32
    :goto_0
    check-cast v1, La/q;

    .line 33
    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    check-cast v1, LY/D;

    .line 37
    .line 38
    iget v0, v1, LY/D;->d:I

    .line 39
    .line 40
    iget-object v1, v1, LY/D;->e:Ljava/lang/Object;

    .line 41
    .line 42
    packed-switch v0, :pswitch_data_0

    .line 43
    .line 44
    .line 45
    check-cast v1, Landroid/animation/AnimatorSet;

    .line 46
    .line 47
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :pswitch_0
    check-cast v1, LY/K;

    .line 52
    .line 53
    const/4 v0, 0x1

    .line 54
    invoke-virtual {v1, v0}, LY/K;->x(Z)Z

    .line 55
    .line 56
    .line 57
    iget-object v0, v1, LY/K;->h:LY/D;

    .line 58
    .line 59
    iget-boolean v0, v0, La/q;->a:Z

    .line 60
    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    invoke-virtual {v1}, LY/K;->M()Z

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    iget-object v0, v1, LY/K;->g:La/x;

    .line 68
    .line 69
    invoke-virtual {v0}, La/x;->b()V

    .line 70
    .line 71
    .line 72
    :goto_1
    return-void

    .line 73
    :cond_3
    iget-object v0, p0, La/x;->b:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v0, Ljava/lang/Runnable;

    .line 76
    .line 77
    if-eqz v0, :cond_4

    .line 78
    .line 79
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 80
    .line 81
    .line 82
    :cond_4
    return-void

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c()V
    .locals 7

    .line 1
    iget-object v0, p0, La/x;->c:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lu6/i;

    .line 4
    .line 5
    instance-of v1, v0, Ljava/util/Collection;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Lu6/i;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-virtual {v0}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, La/q;

    .line 34
    .line 35
    iget-boolean v1, v1, La/q;->a:Z

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    :goto_0
    iget-object v1, p0, La/x;->f:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v1, Landroid/window/OnBackInvokedDispatcher;

    .line 43
    .line 44
    iget-object v4, p0, La/x;->e:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v4, Landroid/window/OnBackInvokedCallback;

    .line 47
    .line 48
    if-eqz v1, :cond_4

    .line 49
    .line 50
    if-eqz v4, :cond_4

    .line 51
    .line 52
    sget-object v5, La/u;->a:La/u;

    .line 53
    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    iget-boolean v6, p0, La/x;->a:Z

    .line 57
    .line 58
    if-nez v6, :cond_3

    .line 59
    .line 60
    invoke-virtual {v5, v1, v3, v4}, La/u;->b(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    iput-boolean v2, p0, La/x;->a:Z

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    if-nez v0, :cond_4

    .line 67
    .line 68
    iget-boolean v0, p0, La/x;->a:Z

    .line 69
    .line 70
    if-eqz v0, :cond_4

    .line 71
    .line 72
    invoke-virtual {v5, v1, v4}, La/u;->c(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    iput-boolean v3, p0, La/x;->a:Z

    .line 76
    .line 77
    :cond_4
    :goto_1
    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/se;->e:Lcom/google/android/gms/internal/ads/re;

    .line 2
    .line 3
    new-instance v7, LK/a;

    .line 4
    .line 5
    const/16 v5, 0x8

    .line 6
    .line 7
    const/4 v6, 0x0

    .line 8
    move-object v1, v7

    .line 9
    move-object v2, p0

    .line 10
    move-object v3, p1

    .line 11
    move-object v4, p2

    .line 12
    invoke-direct/range {v1 .. v6}, LK/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/re;->execute(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lo3/I;->k(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, La/x;->d:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Lcom/google/android/gms/internal/ads/Ef;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v0, "message"

    .line 11
    .line 12
    const-string v1, "action"

    .line 13
    .line 14
    invoke-static {v0, p1, v1, p2}, La/r;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string p2, "onError"

    .line 19
    .line 20
    invoke-virtual {p0, p2, p1}, La/x;->d(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public final f(Lcom/google/android/gms/internal/ads/Ef;Lcom/google/android/gms/internal/ads/dz;)V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    const-string p1, "adWebview missing"

    .line 5
    .line 6
    const-string p2, "onLMDShow"

    .line 7
    .line 8
    invoke-virtual {p0, p1, p2}, La/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iput-object p1, p0, La/x;->d:Ljava/lang/Object;

    .line 13
    .line 14
    iget-boolean v1, p0, La/x;->a:Z

    .line 15
    .line 16
    if-nez v1, :cond_2

    .line 17
    .line 18
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/Ef;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0, p1}, La/x;->g(Landroid/content/Context;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const-string p1, "LMDOverlay not bound"

    .line 30
    .line 31
    const-string p2, "on_play_store_bind"

    .line 32
    .line 33
    invoke-virtual {p0, p1, p2}, La/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    :goto_0
    sget-object p1, Lcom/google/android/gms/internal/ads/Q7;->Na:Lcom/google/android/gms/internal/ads/J7;

    .line 38
    .line 39
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 40
    .line 41
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 42
    .line 43
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Ljava/lang/Boolean;

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    iget-object v1, p2, Lcom/google/android/gms/internal/ads/dz;->b:Ljava/lang/String;

    .line 54
    .line 55
    if-eqz p1, :cond_3

    .line 56
    .line 57
    iput-object v1, p0, La/x;->c:Ljava/lang/Object;

    .line 58
    .line 59
    :cond_3
    iget-object p1, p0, La/x;->f:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast p1, LC2/g;

    .line 62
    .line 63
    if-nez p1, :cond_4

    .line 64
    .line 65
    new-instance p1, LC2/g;

    .line 66
    .line 67
    const/4 v2, 0x6

    .line 68
    invoke-direct {p1, p0, v2}, LC2/g;-><init>(Ljava/lang/Object;I)V

    .line 69
    .line 70
    .line 71
    iput-object p1, p0, La/x;->f:Ljava/lang/Object;

    .line 72
    .line 73
    :cond_4
    iget-object p1, p0, La/x;->e:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast p1, Lcom/google/android/gms/internal/ads/Xu;

    .line 76
    .line 77
    if-eqz p1, :cond_7

    .line 78
    .line 79
    iget-object v2, p0, La/x;->f:Ljava/lang/Object;

    .line 80
    .line 81
    move-object v6, v2

    .line 82
    check-cast v6, LC2/g;

    .line 83
    .line 84
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/Xu;->H:Ljava/lang/Object;

    .line 85
    .line 86
    move-object v4, p1

    .line 87
    check-cast v4, Lcom/google/android/gms/internal/ads/jz;

    .line 88
    .line 89
    iget-object p1, v4, Lcom/google/android/gms/internal/ads/jz;->a:Lcom/google/android/gms/internal/ads/pz;

    .line 90
    .line 91
    if-nez p1, :cond_5

    .line 92
    .line 93
    new-array p1, v0, [Ljava/lang/Object;

    .line 94
    .line 95
    const-string p2, "Play Store not found."

    .line 96
    .line 97
    const/4 v0, 0x0

    .line 98
    aput-object p2, p1, v0

    .line 99
    .line 100
    const-string p2, "error: %s"

    .line 101
    .line 102
    sget-object v0, Lcom/google/android/gms/internal/ads/jz;->c:Lcom/google/android/gms/internal/ads/J;

    .line 103
    .line 104
    invoke-virtual {v0, p2, p1}, Lcom/google/android/gms/internal/ads/J;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_5
    const/4 v2, 0x0

    .line 109
    filled-new-array {v2, v1}, [Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    const-string v2, "Failed to apply OverlayDisplayShowRequest: missing appId and sessionToken."

    .line 118
    .line 119
    invoke-static {v6, v2, v1}, Lcom/google/android/gms/internal/ads/jz;->c(LC2/g;Ljava/lang/String;Ljava/util/List;)Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-nez v1, :cond_6

    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_6
    new-instance v1, LK/a;

    .line 127
    .line 128
    const/16 v7, 0x19

    .line 129
    .line 130
    const/4 v8, 0x0

    .line 131
    move-object v3, v1

    .line 132
    move-object v5, p2

    .line 133
    invoke-direct/range {v3 .. v8}, LK/a;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 134
    .line 135
    .line 136
    new-instance p2, Lcom/google/android/gms/internal/ads/mz;

    .line 137
    .line 138
    invoke-direct {p2, p1, v1, v0}, Lcom/google/android/gms/internal/ads/mz;-><init>(Lcom/google/android/gms/internal/ads/pz;Ljava/lang/Runnable;I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/pz;->a(Ljava/lang/Runnable;)V

    .line 142
    .line 143
    .line 144
    :cond_7
    :goto_1
    return-void
.end method

.method public final declared-synchronized g(Landroid/content/Context;)Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qz;->a(Landroid/content/Context;)Z

    .line 3
    .line 4
    .line 5
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    monitor-exit p0

    .line 10
    return v1

    .line 11
    :cond_0
    :try_start_1
    new-instance v0, Lcom/google/android/gms/internal/ads/Xu;

    .line 12
    .line 13
    new-instance v2, Lcom/google/android/gms/internal/ads/jz;

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    move-object p1, v3

    .line 22
    :cond_1
    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/jz;-><init>(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    const/16 p1, 0x10

    .line 26
    .line 27
    invoke-direct {v0, v2, p1}, Lcom/google/android/gms/internal/ads/Xu;-><init>(Ljava/lang/Object;I)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, La/x;->e:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p1

    .line 34
    goto :goto_1

    .line 35
    :catch_0
    move-exception p1

    .line 36
    :try_start_2
    const-string v0, "Error connecting LMD Overlay service"

    .line 37
    .line 38
    invoke-static {v0}, Lo3/I;->k(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v0, "LastMileDeliveryOverlay.bindLastMileDeliveryService"

    .line 42
    .line 43
    sget-object v2, Lk3/l;->A:Lk3/l;

    .line 44
    .line 45
    iget-object v2, v2, Lk3/l;->g:Lcom/google/android/gms/internal/ads/le;

    .line 46
    .line 47
    invoke-virtual {v2, v0, p1}, Lcom/google/android/gms/internal/ads/le;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    iget-object p1, p0, La/x;->e:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast p1, Lcom/google/android/gms/internal/ads/Xu;

    .line 53
    .line 54
    if-nez p1, :cond_2

    .line 55
    .line 56
    iput-boolean v1, p0, La/x;->a:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 57
    .line 58
    monitor-exit p0

    .line 59
    return v1

    .line 60
    :cond_2
    :try_start_3
    iget-object p1, p0, La/x;->f:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p1, LC2/g;

    .line 63
    .line 64
    if-nez p1, :cond_3

    .line 65
    .line 66
    new-instance p1, LC2/g;

    .line 67
    .line 68
    const/4 v0, 0x6

    .line 69
    invoke-direct {p1, p0, v0}, LC2/g;-><init>(Ljava/lang/Object;I)V

    .line 70
    .line 71
    .line 72
    iput-object p1, p0, La/x;->f:Ljava/lang/Object;

    .line 73
    .line 74
    :cond_3
    const/4 p1, 0x1

    .line 75
    iput-boolean p1, p0, La/x;->a:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 76
    .line 77
    monitor-exit p0

    .line 78
    return p1

    .line 79
    :goto_1
    monitor-exit p0

    .line 80
    throw p1
.end method

.method public final h()Lcom/google/android/gms/internal/ads/fz;
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/Q7;->Na:Lcom/google/android/gms/internal/ads/J7;

    .line 2
    .line 3
    sget-object v1, Ll3/q;->d:Ll3/q;

    .line 4
    .line 5
    iget-object v1, v1, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, La/x;->c:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, La/x;->c:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Ljava/lang/String;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p0, La/x;->b:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v0, Ljava/lang/String;

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    move-object v3, v1

    .line 42
    move-object v1, v0

    .line 43
    move-object v0, v3

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const-string v0, "Missing session token and/or appId"

    .line 46
    .line 47
    const-string v2, "onLMDupdate"

    .line 48
    .line 49
    invoke-virtual {p0, v0, v2}, La/x;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    move-object v0, v1

    .line 53
    :goto_0
    new-instance v2, Lcom/google/android/gms/internal/ads/fz;

    .line 54
    .line 55
    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/internal/ads/fz;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-object v2
.end method
