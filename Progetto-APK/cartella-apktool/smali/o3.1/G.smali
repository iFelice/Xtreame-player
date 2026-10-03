.class public final Lo3/G;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public b:Z

.field public c:Z

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lo3/G;->a:I

    .line 8
    iput-boolean v0, p0, Lo3/G;->b:Z

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lo3/G;->e:Ljava/lang/Object;

    new-instance v0, Lf/G;

    const/16 v1, 0x8

    .line 9
    invoke-direct {v0, p0, v1}, Lf/G;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lo3/G;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;ZZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lo3/G;->a:I

    .line 3
    iput-object p1, p0, Lo3/G;->d:Ljava/lang/Object;

    const-string p1, ""

    iput-object p1, p0, Lo3/G;->e:Ljava/lang/Object;

    iput-object p1, p0, Lo3/G;->f:Ljava/lang/Object;

    iput-boolean p2, p0, Lo3/G;->b:Z

    iput-boolean p3, p0, Lo3/G;->c:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 11
    iput v0, p0, Lo3/G;->a:I

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/ads/bD;

    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/bD;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lo3/G;->e:Ljava/lang/Object;

    .line 13
    iput-object v0, p0, Lo3/G;->f:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lo3/G;->b:Z

    .line 15
    iput-boolean v0, p0, Lo3/G;->c:Z

    .line 16
    iput-object p1, p0, Lo3/G;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 4
    const/4 p2, 0x2

    iput p2, p0, Lo3/G;->a:I

    .line 5
    invoke-direct {p0, p1}, Lo3/G;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/bD;

    .line 2
    .line 3
    const/16 v1, 0x12

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/bD;-><init>(ILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lo3/G;->f:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Lcom/google/android/gms/internal/ads/bD;

    .line 12
    .line 13
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 14
    .line 15
    iput-object v0, p0, Lo3/G;->f:Ljava/lang/Object;

    .line 16
    .line 17
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 18
    .line 19
    iput-object p2, v0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 20
    .line 21
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ly4/i;

    .line 2
    .line 3
    const/16 v1, 0x12

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/bD;-><init>(ILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lo3/G;->f:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Lcom/google/android/gms/internal/ads/bD;

    .line 12
    .line 13
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 14
    .line 15
    iput-object v0, p0, Lo3/G;->f:Ljava/lang/Object;

    .line 16
    .line 17
    iput-object p1, v0, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 18
    .line 19
    iput-object p2, v0, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 20
    .line 21
    return-void
.end method

.method public final declared-synchronized c(Landroid/content/Context;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lo3/G;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lo3/G;->f:Ljava/lang/Object;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    iput-object p1, p0, Lo3/G;->f:Ljava/lang/Object;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto :goto_2

    .line 21
    :cond_1
    :goto_0
    iget-object p1, p0, Lo3/G;->f:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p1, Landroid/content/Context;

    .line 24
    .line 25
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/Q7;->a(Landroid/content/Context;)V

    .line 26
    .line 27
    .line 28
    sget-object p1, Lcom/google/android/gms/internal/ads/Q7;->B3:Lcom/google/android/gms/internal/ads/J7;

    .line 29
    .line 30
    sget-object v0, Ll3/q;->d:Ll3/q;

    .line 31
    .line 32
    iget-object v1, v0, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 33
    .line 34
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Ljava/lang/Boolean;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    iput-boolean p1, p0, Lo3/G;->c:Z

    .line 45
    .line 46
    new-instance p1, Landroid/content/IntentFilter;

    .line 47
    .line 48
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v1, "android.intent.action.SCREEN_ON"

    .line 52
    .line 53
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 57
    .line 58
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string v1, "android.intent.action.USER_PRESENT"

    .line 62
    .line 63
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    sget-object v1, Lcom/google/android/gms/internal/ads/Q7;->na:Lcom/google/android/gms/internal/ads/J7;

    .line 67
    .line 68
    iget-object v0, v0, Ll3/q;->c:Lcom/google/android/gms/internal/ads/O7;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/O7;->a(Lcom/google/android/gms/internal/ads/K7;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Ljava/lang/Boolean;

    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_2

    .line 81
    .line 82
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 83
    .line 84
    const/16 v1, 0x21

    .line 85
    .line 86
    if-lt v0, v1, :cond_2

    .line 87
    .line 88
    iget-object v0, p0, Lo3/G;->f:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v0, Landroid/content/Context;

    .line 91
    .line 92
    iget-object v1, p0, Lo3/G;->d:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v1, Landroid/content/BroadcastReceiver;

    .line 95
    .line 96
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/Hf;->u(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_2
    iget-object v0, p0, Lo3/G;->f:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v0, Landroid/content/Context;

    .line 103
    .line 104
    iget-object v1, p0, Lo3/G;->d:Ljava/lang/Object;

    .line 105
    .line 106
    check-cast v1, Landroid/content/BroadcastReceiver;

    .line 107
    .line 108
    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 109
    .line 110
    .line 111
    :goto_1
    const/4 p1, 0x1

    .line 112
    iput-boolean p1, p0, Lo3/G;->b:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    .line 114
    monitor-exit p0

    .line 115
    return-void

    .line 116
    :goto_2
    monitor-exit p0

    .line 117
    throw p1
.end method

.method public final d(JLjava/lang/String;)Lcom/google/android/gms/internal/measurement/W1;
    .locals 1

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget-object p2, Lcom/google/android/gms/internal/measurement/X1;->f:Ljava/lang/Object;

    .line 6
    .line 7
    new-instance p2, Lcom/google/android/gms/internal/measurement/W1;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-direct {p2, p0, p3, p1, v0}, Lcom/google/android/gms/internal/measurement/W1;-><init>(Lo3/G;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 11
    .line 12
    .line 13
    return-object p2
.end method

.method public final declared-synchronized e(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lo3/G;->c:Z

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lo3/G;->e:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p1, Ljava/util/Map;

    .line 9
    .line 10
    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    :try_start_1
    invoke-virtual {p1, p2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    .line 19
    .line 20
    monitor-exit p0

    .line 21
    return-void

    .line 22
    :goto_0
    monitor-exit p0

    .line 23
    throw p1
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/W1;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/measurement/X1;->f:Ljava/lang/Object;

    .line 2
    .line 3
    new-instance v0, Lcom/google/android/gms/internal/measurement/W1;

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/W1;-><init>(Lo3/G;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public final g(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/W1;
    .locals 2

    .line 1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/measurement/X1;->f:Ljava/lang/Object;

    .line 6
    .line 7
    new-instance v0, Lcom/google/android/gms/internal/measurement/W1;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/gms/internal/measurement/W1;-><init>(Lo3/G;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    iget v1, p0, Lo3/G;->a:I

    .line 3
    .line 4
    packed-switch v1, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :pswitch_0
    iget-boolean v1, p0, Lo3/G;->b:Z

    .line 13
    .line 14
    iget-boolean v2, p0, Lo3/G;->c:Z

    .line 15
    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const/16 v4, 0x20

    .line 19
    .line 20
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 21
    .line 22
    .line 23
    iget-object v4, p0, Lo3/G;->d:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v4, Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const/16 v4, 0x7b

    .line 31
    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-object v4, p0, Lo3/G;->e:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v4, Lcom/google/android/gms/internal/ads/bD;

    .line 38
    .line 39
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v4, Lcom/google/android/gms/internal/ads/bD;

    .line 42
    .line 43
    const-string v5, ""

    .line 44
    .line 45
    :goto_0
    if-eqz v4, :cond_9

    .line 46
    .line 47
    iget-object v6, v4, Lcom/google/android/gms/internal/ads/bD;->H:Ljava/lang/Object;

    .line 48
    .line 49
    instance-of v7, v4, Ly4/i;

    .line 50
    .line 51
    if-nez v7, :cond_5

    .line 52
    .line 53
    if-nez v6, :cond_0

    .line 54
    .line 55
    if-nez v1, :cond_8

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_0
    if-eqz v2, :cond_5

    .line 59
    .line 60
    instance-of v7, v6, Ljava/lang/CharSequence;

    .line 61
    .line 62
    if-eqz v7, :cond_1

    .line 63
    .line 64
    move-object v7, v6

    .line 65
    check-cast v7, Ljava/lang/CharSequence;

    .line 66
    .line 67
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    if-nez v7, :cond_5

    .line 72
    .line 73
    goto/16 :goto_4

    .line 74
    .line 75
    :cond_1
    instance-of v7, v6, Ljava/util/Collection;

    .line 76
    .line 77
    if-eqz v7, :cond_2

    .line 78
    .line 79
    move-object v7, v6

    .line 80
    check-cast v7, Ljava/util/Collection;

    .line 81
    .line 82
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    goto :goto_1

    .line 87
    :cond_2
    instance-of v7, v6, Ljava/util/Map;

    .line 88
    .line 89
    if-eqz v7, :cond_3

    .line 90
    .line 91
    move-object v7, v6

    .line 92
    check-cast v7, Ljava/util/Map;

    .line 93
    .line 94
    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    goto :goto_1

    .line 99
    :cond_3
    instance-of v7, v6, Ly4/j;

    .line 100
    .line 101
    if-eqz v7, :cond_4

    .line 102
    .line 103
    move-object v7, v6

    .line 104
    check-cast v7, Ly4/j;

    .line 105
    .line 106
    invoke-virtual {v7}, Ly4/j;->b()Z

    .line 107
    .line 108
    .line 109
    move-result v7

    .line 110
    xor-int/2addr v7, v0

    .line 111
    :goto_1
    if-nez v7, :cond_8

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_4
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    move-result-object v7

    .line 118
    invoke-virtual {v7}, Ljava/lang/Class;->isArray()Z

    .line 119
    .line 120
    .line 121
    move-result v7

    .line 122
    if-eqz v7, :cond_5

    .line 123
    .line 124
    invoke-static {v6}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 125
    .line 126
    .line 127
    move-result v7

    .line 128
    if-nez v7, :cond_5

    .line 129
    .line 130
    goto :goto_4

    .line 131
    :cond_5
    :goto_2
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/bD;->J:Ljava/lang/Object;

    .line 135
    .line 136
    check-cast v5, Ljava/lang/String;

    .line 137
    .line 138
    if-eqz v5, :cond_6

    .line 139
    .line 140
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const/16 v5, 0x3d

    .line 144
    .line 145
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    :cond_6
    if-eqz v6, :cond_7

    .line 149
    .line 150
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    if-eqz v5, :cond_7

    .line 159
    .line 160
    new-array v5, v0, [Ljava/lang/Object;

    .line 161
    .line 162
    const/4 v7, 0x0

    .line 163
    aput-object v6, v5, v7

    .line 164
    .line 165
    invoke-static {v5}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v5

    .line 169
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 170
    .line 171
    .line 172
    move-result v6

    .line 173
    sub-int/2addr v6, v0

    .line 174
    invoke-virtual {v3, v5, v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    goto :goto_3

    .line 178
    :cond_7
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    :goto_3
    const-string v5, ", "

    .line 182
    .line 183
    :cond_8
    :goto_4
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/bD;->I:Ljava/lang/Object;

    .line 184
    .line 185
    check-cast v4, Lcom/google/android/gms/internal/ads/bD;

    .line 186
    .line 187
    goto/16 :goto_0

    .line 188
    .line 189
    :cond_9
    const/16 v0, 0x7d

    .line 190
    .line 191
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    return-object v0

    .line 199
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
