.class public final LD3/c;
.super LD3/f;
.source "SourceFile"


# static fields
.field public static final m:LH3/b;


# instance fields
.field public final c:Landroid/content/Context;

.field public final d:Ljava/util/HashSet;

.field public final e:LD3/r;

.field public final f:LD3/b;

.field public final g:Lcom/google/android/gms/internal/cast/q;

.field public final h:LF3/l;

.field public i:LC3/F;

.field public j:LE3/j;

.field public k:Lcom/google/android/gms/cast/CastDevice;

.field public l:Lcom/google/android/gms/internal/cast/P1;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, LH3/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "CastSession"

    .line 5
    .line 6
    invoke-direct {v0, v2, v1}, LH3/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, LD3/c;->m:LH3/b;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;LD3/b;Lcom/google/android/gms/internal/cast/q;LF3/l;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, LD3/f;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    new-instance p2, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, LD3/c;->d:Ljava/util/HashSet;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    iput-object p2, p0, LD3/c;->c:Landroid/content/Context;

    .line 16
    .line 17
    iput-object p4, p0, LD3/c;->f:LD3/b;

    .line 18
    .line 19
    iput-object p5, p0, LD3/c;->g:Lcom/google/android/gms/internal/cast/q;

    .line 20
    .line 21
    iput-object p6, p0, LD3/c;->h:LF3/l;

    .line 22
    .line 23
    invoke-virtual {p0}, LD3/f;->c()LR3/a;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    new-instance p3, LD3/H;

    .line 28
    .line 29
    invoke-direct {p3, p0}, LD3/H;-><init>(LD3/c;)V

    .line 30
    .line 31
    .line 32
    sget-object p5, Lcom/google/android/gms/internal/cast/d;->a:LH3/b;

    .line 33
    .line 34
    const/4 p5, 0x0

    .line 35
    if-nez p2, :cond_0

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/d;->b(Landroid/content/Context;)Lcom/google/android/gms/internal/cast/f;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1, p4, p2, p3}, Lcom/google/android/gms/internal/cast/f;->z3(LD3/b;LR3/a;LD3/H;)LD3/r;

    .line 43
    .line 44
    .line 45
    move-result-object p5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch LD3/d; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    goto :goto_1

    .line 47
    :catch_0
    move-exception p1

    .line 48
    goto :goto_0

    .line 49
    :catch_1
    move-exception p1

    .line 50
    :goto_0
    const-class p2, Lcom/google/android/gms/internal/cast/f;

    .line 51
    .line 52
    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    const/4 p3, 0x2

    .line 57
    new-array p3, p3, [Ljava/lang/Object;

    .line 58
    .line 59
    const-string p4, "newCastSessionImpl"

    .line 60
    .line 61
    const/4 p6, 0x0

    .line 62
    aput-object p4, p3, p6

    .line 63
    .line 64
    const/4 p4, 0x1

    .line 65
    aput-object p2, p3, p4

    .line 66
    .line 67
    const-string p2, "Unable to call %s on %s."

    .line 68
    .line 69
    sget-object p4, Lcom/google/android/gms/internal/cast/d;->a:LH3/b;

    .line 70
    .line 71
    invoke-virtual {p4, p1, p2, p3}, LH3/b;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    :goto_1
    iput-object p5, p0, LD3/c;->e:LD3/r;

    .line 75
    .line 76
    return-void
.end method

.method public static d(LD3/c;I)V
    .locals 6

    .line 1
    iget-object v0, p0, LD3/c;->h:LF3/l;

    .line 2
    .line 3
    iget-boolean v1, v0, LF3/l;->q:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    iput-boolean v1, v0, LF3/l;->q:Z

    .line 11
    .line 12
    iget-object v3, v0, LF3/l;->n:LE3/j;

    .line 13
    .line 14
    if-eqz v3, :cond_1

    .line 15
    .line 16
    iget-object v4, v0, LF3/l;->m:LF3/k;

    .line 17
    .line 18
    const-string v5, "Must be called from the main thread."

    .line 19
    .line 20
    invoke-static {v5}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    if-eqz v4, :cond_1

    .line 24
    .line 25
    iget-object v3, v3, LE3/j;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    :cond_1
    iget-object v3, v0, LF3/l;->c:Lcom/google/android/gms/internal/cast/q;

    .line 31
    .line 32
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/cast/q;->j0(Landroid/support/v4/media/session/MediaSessionCompat;)V

    .line 33
    .line 34
    .line 35
    iget-object v3, v0, LF3/l;->h:LE1/e0;

    .line 36
    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    invoke-virtual {v3}, LE1/e0;->c()V

    .line 40
    .line 41
    .line 42
    iput-object v2, v3, LE1/e0;->h:Ljava/lang/Object;

    .line 43
    .line 44
    :cond_2
    iget-object v3, v0, LF3/l;->i:LE1/e0;

    .line 45
    .line 46
    if-eqz v3, :cond_3

    .line 47
    .line 48
    invoke-virtual {v3}, LE1/e0;->c()V

    .line 49
    .line 50
    .line 51
    iput-object v2, v3, LE1/e0;->h:Ljava/lang/Object;

    .line 52
    .line 53
    :cond_3
    iget-object v3, v0, LF3/l;->p:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 54
    .line 55
    if-eqz v3, :cond_4

    .line 56
    .line 57
    invoke-virtual {v3, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->setCallback(Landroid/support/v4/media/session/MediaSessionCompat$Callback;)V

    .line 58
    .line 59
    .line 60
    iget-object v3, v0, LF3/l;->p:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 61
    .line 62
    new-instance v4, Landroid/support/v4/media/MediaMetadataCompat$Builder;

    .line 63
    .line 64
    invoke-direct {v4}, Landroid/support/v4/media/MediaMetadataCompat$Builder;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4}, Landroid/support/v4/media/MediaMetadataCompat$Builder;->build()Landroid/support/v4/media/MediaMetadataCompat;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v3, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->setMetadata(Landroid/support/v4/media/MediaMetadataCompat;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1, v2}, LF3/l;->j(ILcom/google/android/gms/cast/MediaInfo;)V

    .line 75
    .line 76
    .line 77
    :cond_4
    iget-object v3, v0, LF3/l;->p:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 78
    .line 79
    if-eqz v3, :cond_5

    .line 80
    .line 81
    invoke-virtual {v3, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->setActive(Z)V

    .line 82
    .line 83
    .line 84
    iget-object v1, v0, LF3/l;->p:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 85
    .line 86
    invoke-virtual {v1}, Landroid/support/v4/media/session/MediaSessionCompat;->release()V

    .line 87
    .line 88
    .line 89
    iput-object v2, v0, LF3/l;->p:Landroid/support/v4/media/session/MediaSessionCompat;

    .line 90
    .line 91
    :cond_5
    iput-object v2, v0, LF3/l;->n:LE3/j;

    .line 92
    .line 93
    iput-object v2, v0, LF3/l;->o:Lcom/google/android/gms/cast/CastDevice;

    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, LF3/l;->h()V

    .line 99
    .line 100
    .line 101
    if-nez p1, :cond_6

    .line 102
    .line 103
    invoke-virtual {v0}, LF3/l;->i()V

    .line 104
    .line 105
    .line 106
    :cond_6
    :goto_0
    iget-object p1, p0, LD3/c;->i:LC3/F;

    .line 107
    .line 108
    if-eqz p1, :cond_7

    .line 109
    .line 110
    invoke-static {}, LK3/s;->a()LK3/r;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    sget-object v1, LC3/z;->G:LC3/z;

    .line 115
    .line 116
    iput-object v1, v0, LK3/r;->c:Ljava/lang/Object;

    .line 117
    .line 118
    const/16 v1, 0x20d3

    .line 119
    .line 120
    iput v1, v0, LK3/r;->a:I

    .line 121
    .line 122
    invoke-virtual {v0}, LK3/r;->a()LK3/O;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/j;->doWrite(LK3/s;)Lg4/h;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, LC3/F;->e()V

    .line 130
    .line 131
    .line 132
    iget-object v0, p1, LC3/F;->a:LC3/E;

    .line 133
    .line 134
    const-string v1, "castDeviceControllerListenerKey"

    .line 135
    .line 136
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/common/api/j;->registerListener(Ljava/lang/Object;Ljava/lang/String;)LK3/j;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    iget-object v0, v0, LK3/j;->b:LK3/i;

    .line 141
    .line 142
    const-string v1, "Key must not be null"

    .line 143
    .line 144
    invoke-static {v0, v1}, Lcom/bumptech/glide/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    const/16 v1, 0x20df

    .line 148
    .line 149
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/common/api/j;->doUnregisterEventListener(LK3/i;I)Lg4/h;

    .line 150
    .line 151
    .line 152
    iput-object v2, p0, LD3/c;->i:LC3/F;

    .line 153
    .line 154
    :cond_7
    iput-object v2, p0, LD3/c;->k:Lcom/google/android/gms/cast/CastDevice;

    .line 155
    .line 156
    iget-object p1, p0, LD3/c;->j:LE3/j;

    .line 157
    .line 158
    if-eqz p1, :cond_8

    .line 159
    .line 160
    invoke-virtual {p1, v2}, LE3/j;->s(LC3/F;)V

    .line 161
    .line 162
    .line 163
    iput-object v2, p0, LD3/c;->j:LE3/j;

    .line 164
    .line 165
    :cond_8
    return-void
.end method

.method public static e(LD3/c;Ljava/lang/String;Lg4/h;)V
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    const-string v3, "Must be called from the main thread."

    .line 5
    .line 6
    sget-object v4, LD3/c;->m:LH3/b;

    .line 7
    .line 8
    iget-object v5, p0, LD3/c;->e:LD3/r;

    .line 9
    .line 10
    if-nez v5, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lg4/h;->h()Z

    .line 14
    .line 15
    .line 16
    move-result v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    const/4 v6, 0x5

    .line 18
    iget-object v7, p0, LD3/c;->e:LD3/r;

    .line 19
    .line 20
    if-eqz v5, :cond_2

    .line 21
    .line 22
    :try_start_1
    invoke-virtual {p2}, Lg4/h;->f()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    check-cast p2, LH3/v;

    .line 27
    .line 28
    iget-object v5, p2, LH3/v;->G:Lcom/google/android/gms/common/api/Status;

    .line 29
    .line 30
    if-eqz v5, :cond_1

    .line 31
    .line 32
    iget v8, v5, Lcom/google/android/gms/common/api/Status;->G:I

    .line 33
    .line 34
    if-gtz v8, :cond_1

    .line 35
    .line 36
    const-string v5, "%s() -> success result"

    .line 37
    .line 38
    new-array v6, v2, [Ljava/lang/Object;

    .line 39
    .line 40
    aput-object p1, v6, v1

    .line 41
    .line 42
    invoke-virtual {v4, v5, v6}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    new-instance p1, LE3/j;

    .line 46
    .line 47
    new-instance v5, LH3/n;

    .line 48
    .line 49
    invoke-direct {v5}, LH3/n;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-direct {p1, v5}, LE3/j;-><init>(LH3/n;)V

    .line 53
    .line 54
    .line 55
    iput-object p1, p0, LD3/c;->j:LE3/j;

    .line 56
    .line 57
    iget-object v5, p0, LD3/c;->i:LC3/F;

    .line 58
    .line 59
    invoke-virtual {p1, v5}, LE3/j;->s(LC3/F;)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, LD3/c;->j:LE3/j;

    .line 63
    .line 64
    new-instance v5, LF3/k;

    .line 65
    .line 66
    invoke-direct {v5, p0, v0}, LF3/k;-><init>(Ljava/lang/Object;I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    invoke-static {v3}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p1, LE3/j;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 76
    .line 77
    invoke-virtual {p1, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, LD3/c;->j:LE3/j;

    .line 81
    .line 82
    invoke-virtual {p1}, LE3/j;->r()V

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, LD3/c;->h:LF3/l;

    .line 86
    .line 87
    iget-object v5, p0, LD3/c;->j:LE3/j;

    .line 88
    .line 89
    invoke-static {v3}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    iget-object p0, p0, LD3/c;->k:Lcom/google/android/gms/cast/CastDevice;

    .line 93
    .line 94
    invoke-virtual {p1, v5, p0}, LF3/l;->a(LE3/j;Lcom/google/android/gms/cast/CastDevice;)V

    .line 95
    .line 96
    .line 97
    iget-object p0, p2, LH3/v;->H:LC3/d;

    .line 98
    .line 99
    invoke-static {p0}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    iget-object p1, p2, LH3/v;->I:Ljava/lang/String;

    .line 103
    .line 104
    iget-object v3, p2, LH3/v;->J:Ljava/lang/String;

    .line 105
    .line 106
    invoke-static {v3}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    iget-boolean p2, p2, LH3/v;->K:Z

    .line 110
    .line 111
    check-cast v7, LD3/p;

    .line 112
    .line 113
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    invoke-static {v5, p0}, Lcom/google/android/gms/internal/cast/u;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v5, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v5, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v5, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    .line 128
    .line 129
    const/4 p0, 0x4

    .line 130
    invoke-virtual {v7, p0, v5}, Lcom/google/android/gms/internal/ads/y5;->r1(ILandroid/os/Parcel;)V

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :catch_0
    move-exception p0

    .line 135
    goto :goto_0

    .line 136
    :cond_1
    if-eqz v5, :cond_3

    .line 137
    .line 138
    const-string p0, "%s() -> failure result"

    .line 139
    .line 140
    new-array p2, v2, [Ljava/lang/Object;

    .line 141
    .line 142
    aput-object p1, p2, v1

    .line 143
    .line 144
    invoke-virtual {v4, p0, p2}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    iget p0, v5, Lcom/google/android/gms/common/api/Status;->G:I

    .line 148
    .line 149
    check-cast v7, LD3/p;

    .line 150
    .line 151
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v7, v6, p1}, Lcom/google/android/gms/internal/ads/y5;->r1(ILandroid/os/Parcel;)V

    .line 159
    .line 160
    .line 161
    return-void

    .line 162
    :cond_2
    invoke-virtual {p2}, Lg4/h;->e()Ljava/lang/Exception;

    .line 163
    .line 164
    .line 165
    move-result-object p0

    .line 166
    instance-of p1, p0, Lcom/google/android/gms/common/api/h;

    .line 167
    .line 168
    if-eqz p1, :cond_3

    .line 169
    .line 170
    check-cast p0, Lcom/google/android/gms/common/api/h;

    .line 171
    .line 172
    iget-object p0, p0, Lcom/google/android/gms/common/api/h;->G:Lcom/google/android/gms/common/api/Status;

    .line 173
    .line 174
    iget p0, p0, Lcom/google/android/gms/common/api/Status;->G:I

    .line 175
    .line 176
    check-cast v7, LD3/p;

    .line 177
    .line 178
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v7, v6, p1}, Lcom/google/android/gms/internal/ads/y5;->r1(ILandroid/os/Parcel;)V

    .line 186
    .line 187
    .line 188
    return-void

    .line 189
    :cond_3
    check-cast v7, LD3/p;

    .line 190
    .line 191
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    const/16 p1, 0x9ac

    .line 196
    .line 197
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v7, v6, p0}, Lcom/google/android/gms/internal/ads/y5;->r1(ILandroid/os/Parcel;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 201
    .line 202
    .line 203
    return-void

    .line 204
    :goto_0
    const-class p1, LD3/r;

    .line 205
    .line 206
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    new-array p2, v0, [Ljava/lang/Object;

    .line 211
    .line 212
    const-string v0, "methods"

    .line 213
    .line 214
    aput-object v0, p2, v1

    .line 215
    .line 216
    aput-object p1, p2, v2

    .line 217
    .line 218
    const-string p1, "Unable to call %s on %s."

    .line 219
    .line 220
    invoke-virtual {v4, p0, p1, p2}, LH3/b;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    return-void
.end method


# virtual methods
.method public final f(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/cast/CastDevice;->i(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    iput-object p1, p0, LD3/c;->k:Lcom/google/android/gms/cast/CastDevice;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez p1, :cond_4

    .line 11
    .line 12
    const-string p1, "Must be called from the main thread."

    .line 13
    .line 14
    invoke-static {p1}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, LD3/f;->a:LD3/y;

    .line 18
    .line 19
    const-string v3, "Unable to call %s on %s."

    .line 20
    .line 21
    const-class v4, LD3/y;

    .line 22
    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    :try_start_0
    check-cast p1, LD3/w;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    const/16 v6, 0x9

    .line 32
    .line 33
    invoke-virtual {p1, v6, v5}, Lcom/google/android/gms/internal/ads/y5;->v0(ILandroid/os/Parcel;)Landroid/os/Parcel;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    sget v5, Lcom/google/android/gms/internal/cast/u;->a:I

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-eqz v5, :cond_0

    .line 44
    .line 45
    const/4 v5, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 v5, 0x0

    .line 48
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 49
    .line 50
    .line 51
    if-eqz v5, :cond_2

    .line 52
    .line 53
    iget-object p1, p0, LD3/f;->a:LD3/y;

    .line 54
    .line 55
    if-nez p1, :cond_1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    :try_start_1
    check-cast p1, LD3/w;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    const/16 v6, 0x869

    .line 65
    .line 66
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    .line 68
    .line 69
    const/16 v6, 0xf

    .line 70
    .line 71
    invoke-virtual {p1, v6, v5}, Lcom/google/android/gms/internal/ads/y5;->r1(ILandroid/os/Parcel;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :catch_0
    move-exception p1

    .line 76
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    new-array v0, v0, [Ljava/lang/Object;

    .line 81
    .line 82
    const-string v5, "notifyFailedToResumeSession"

    .line 83
    .line 84
    aput-object v5, v0, v2

    .line 85
    .line 86
    aput-object v4, v0, v1

    .line 87
    .line 88
    sget-object v1, LD3/f;->b:LH3/b;

    .line 89
    .line 90
    invoke-virtual {v1, p1, v3, v0}, LH3/b;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    :goto_1
    return-void

    .line 94
    :catch_1
    move-exception p1

    .line 95
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    new-array v6, v0, [Ljava/lang/Object;

    .line 100
    .line 101
    const-string v7, "isResuming"

    .line 102
    .line 103
    aput-object v7, v6, v2

    .line 104
    .line 105
    aput-object v5, v6, v1

    .line 106
    .line 107
    sget-object v5, LD3/f;->b:LH3/b;

    .line 108
    .line 109
    invoke-virtual {v5, p1, v3, v6}, LH3/b;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    :cond_2
    iget-object p1, p0, LD3/f;->a:LD3/y;

    .line 113
    .line 114
    if-nez p1, :cond_3

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_3
    :try_start_2
    check-cast p1, LD3/w;

    .line 118
    .line 119
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/y5;->j0()Landroid/os/Parcel;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    const/16 v6, 0x867

    .line 124
    .line 125
    invoke-virtual {v5, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    .line 127
    .line 128
    const/16 v6, 0xc

    .line 129
    .line 130
    invoke-virtual {p1, v6, v5}, Lcom/google/android/gms/internal/ads/y5;->r1(ILandroid/os/Parcel;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 131
    .line 132
    .line 133
    goto :goto_2

    .line 134
    :catch_2
    move-exception p1

    .line 135
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    new-array v0, v0, [Ljava/lang/Object;

    .line 140
    .line 141
    const-string v5, "notifyFailedToStartSession"

    .line 142
    .line 143
    aput-object v5, v0, v2

    .line 144
    .line 145
    aput-object v4, v0, v1

    .line 146
    .line 147
    sget-object v1, LD3/f;->b:LH3/b;

    .line 148
    .line 149
    invoke-virtual {v1, p1, v3, v0}, LH3/b;->a(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    .line 151
    .line 152
    :goto_2
    return-void

    .line 153
    :cond_4
    iget-object p1, p0, LD3/c;->i:LC3/F;

    .line 154
    .line 155
    const-string v0, "Key must not be null"

    .line 156
    .line 157
    const-string v3, "castDeviceControllerListenerKey"

    .line 158
    .line 159
    const/4 v4, 0x0

    .line 160
    if-eqz p1, :cond_5

    .line 161
    .line 162
    invoke-static {}, LK3/s;->a()LK3/r;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    sget-object v6, LC3/z;->G:LC3/z;

    .line 167
    .line 168
    iput-object v6, v5, LK3/r;->c:Ljava/lang/Object;

    .line 169
    .line 170
    const/16 v6, 0x20d3

    .line 171
    .line 172
    iput v6, v5, LK3/r;->a:I

    .line 173
    .line 174
    invoke-virtual {v5}, LK3/r;->a()LK3/O;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    invoke-virtual {p1, v5}, Lcom/google/android/gms/common/api/j;->doWrite(LK3/s;)Lg4/h;

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1}, LC3/F;->e()V

    .line 182
    .line 183
    .line 184
    iget-object v5, p1, LC3/F;->a:LC3/E;

    .line 185
    .line 186
    invoke-virtual {p1, v5, v3}, Lcom/google/android/gms/common/api/j;->registerListener(Ljava/lang/Object;Ljava/lang/String;)LK3/j;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    iget-object v5, v5, LK3/j;->b:LK3/i;

    .line 191
    .line 192
    invoke-static {v5, v0}, Lcom/bumptech/glide/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    const/16 v6, 0x20df

    .line 196
    .line 197
    invoke-virtual {p1, v5, v6}, Lcom/google/android/gms/common/api/j;->doUnregisterEventListener(LK3/i;I)Lg4/h;

    .line 198
    .line 199
    .line 200
    iput-object v4, p0, LD3/c;->i:LC3/F;

    .line 201
    .line 202
    :cond_5
    sget-object p1, LD3/c;->m:LH3/b;

    .line 203
    .line 204
    iget-object v5, p0, LD3/c;->k:Lcom/google/android/gms/cast/CastDevice;

    .line 205
    .line 206
    new-array v6, v1, [Ljava/lang/Object;

    .line 207
    .line 208
    aput-object v5, v6, v2

    .line 209
    .line 210
    const-string v5, "Acquiring a connection to Google Play Services for %s"

    .line 211
    .line 212
    invoke-virtual {p1, v5, v6}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    iget-object p1, p0, LD3/c;->k:Lcom/google/android/gms/cast/CastDevice;

    .line 216
    .line 217
    invoke-static {p1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    new-instance v5, Landroid/os/Bundle;

    .line 221
    .line 222
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 223
    .line 224
    .line 225
    iget-object v6, p0, LD3/c;->f:LD3/b;

    .line 226
    .line 227
    if-nez v6, :cond_6

    .line 228
    .line 229
    move-object v6, v4

    .line 230
    goto :goto_3

    .line 231
    :cond_6
    iget-object v6, v6, LD3/b;->L:LE3/b;

    .line 232
    .line 233
    :goto_3
    if-nez v6, :cond_7

    .line 234
    .line 235
    goto :goto_4

    .line 236
    :cond_7
    iget-object v4, v6, LE3/b;->J:LE3/g;

    .line 237
    .line 238
    :goto_4
    if-eqz v6, :cond_8

    .line 239
    .line 240
    iget-boolean v6, v6, LE3/b;->K:Z

    .line 241
    .line 242
    if-eqz v6, :cond_8

    .line 243
    .line 244
    const/4 v6, 0x1

    .line 245
    goto :goto_5

    .line 246
    :cond_8
    const/4 v6, 0x0

    .line 247
    :goto_5
    if-eqz v4, :cond_9

    .line 248
    .line 249
    const/4 v4, 0x1

    .line 250
    goto :goto_6

    .line 251
    :cond_9
    const/4 v4, 0x0

    .line 252
    :goto_6
    const-string v7, "com.google.android.gms.cast.EXTRA_CAST_FRAMEWORK_NOTIFICATION_ENABLED"

    .line 253
    .line 254
    invoke-virtual {v5, v7, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 255
    .line 256
    .line 257
    const-string v4, "com.google.android.gms.cast.EXTRA_CAST_REMOTE_CONTROL_NOTIFICATION_ENABLED"

    .line 258
    .line 259
    invoke-virtual {v5, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 260
    .line 261
    .line 262
    iget-object v4, p0, LD3/c;->g:Lcom/google/android/gms/internal/cast/q;

    .line 263
    .line 264
    iget-boolean v4, v4, Lcom/google/android/gms/internal/cast/q;->L:Z

    .line 265
    .line 266
    const-string v6, "com.google.android.gms.cast.EXTRA_CAST_ALWAYS_FOLLOW_SESSION_ENABLED"

    .line 267
    .line 268
    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 269
    .line 270
    .line 271
    new-instance v4, LB0/w0;

    .line 272
    .line 273
    new-instance v6, LD3/I;

    .line 274
    .line 275
    invoke-direct {v6, p0}, LD3/I;-><init>(LD3/c;)V

    .line 276
    .line 277
    .line 278
    invoke-direct {v4, p1, v6}, LB0/w0;-><init>(Lcom/google/android/gms/cast/CastDevice;LD3/I;)V

    .line 279
    .line 280
    .line 281
    iput-object v5, v4, LB0/w0;->K:Ljava/lang/Object;

    .line 282
    .line 283
    new-instance p1, LC3/e;

    .line 284
    .line 285
    invoke-direct {p1, v4}, LC3/e;-><init>(LB0/w0;)V

    .line 286
    .line 287
    .line 288
    iget-object v4, p0, LD3/c;->c:Landroid/content/Context;

    .line 289
    .line 290
    sget v5, LC3/g;->a:I

    .line 291
    .line 292
    new-instance v5, LC3/F;

    .line 293
    .line 294
    invoke-direct {v5, v4, p1}, LC3/F;-><init>(Landroid/content/Context;LC3/e;)V

    .line 295
    .line 296
    .line 297
    new-instance p1, LD3/j;

    .line 298
    .line 299
    invoke-direct {p1, p0}, LD3/j;-><init>(LD3/c;)V

    .line 300
    .line 301
    .line 302
    iget-object v4, v5, LC3/F;->u:Ljava/util/List;

    .line 303
    .line 304
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    iput-object v5, p0, LD3/c;->i:LC3/F;

    .line 308
    .line 309
    iget-object p1, v5, LC3/F;->a:LC3/E;

    .line 310
    .line 311
    invoke-virtual {v5, p1, v3}, Lcom/google/android/gms/common/api/j;->registerListener(Ljava/lang/Object;Ljava/lang/String;)LK3/j;

    .line 312
    .line 313
    .line 314
    move-result-object p1

    .line 315
    new-instance v3, LK3/n;

    .line 316
    .line 317
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 318
    .line 319
    .line 320
    new-instance v4, LC2/g;

    .line 321
    .line 322
    const/16 v6, 0x15

    .line 323
    .line 324
    invoke-direct {v4, v5, v6}, LC2/g;-><init>(Ljava/lang/Object;I)V

    .line 325
    .line 326
    .line 327
    sget-object v6, LC3/C;->G:LC3/C;

    .line 328
    .line 329
    iput-object p1, v3, LK3/n;->c:LK3/j;

    .line 330
    .line 331
    iput-object v4, v3, LK3/n;->a:LK3/p;

    .line 332
    .line 333
    iput-object v6, v3, LK3/n;->b:LK3/p;

    .line 334
    .line 335
    new-array v4, v1, [LJ3/d;

    .line 336
    .line 337
    sget-object v6, LC3/y;->a:LJ3/d;

    .line 338
    .line 339
    aput-object v6, v4, v2

    .line 340
    .line 341
    iput-object v4, v3, LK3/n;->d:[LJ3/d;

    .line 342
    .line 343
    const/16 v4, 0x20ec

    .line 344
    .line 345
    iput v4, v3, LK3/n;->e:I

    .line 346
    .line 347
    if-eqz p1, :cond_a

    .line 348
    .line 349
    goto :goto_7

    .line 350
    :cond_a
    const/4 v1, 0x0

    .line 351
    :goto_7
    const-string p1, "Must set holder"

    .line 352
    .line 353
    invoke-static {p1, v1}, Lcom/bumptech/glide/c;->a(Ljava/lang/String;Z)V

    .line 354
    .line 355
    .line 356
    iget-object p1, v3, LK3/n;->c:LK3/j;

    .line 357
    .line 358
    iget-object p1, p1, LK3/j;->b:LK3/i;

    .line 359
    .line 360
    invoke-static {p1, v0}, Lcom/bumptech/glide/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    new-instance v0, LK3/o;

    .line 364
    .line 365
    new-instance v1, LK3/K;

    .line 366
    .line 367
    iget-object v2, v3, LK3/n;->c:LK3/j;

    .line 368
    .line 369
    iget-object v4, v3, LK3/n;->d:[LJ3/d;

    .line 370
    .line 371
    iget v6, v3, LK3/n;->e:I

    .line 372
    .line 373
    invoke-direct {v1, v3, v2, v4, v6}, LK3/K;-><init>(LK3/n;LK3/j;[LJ3/d;I)V

    .line 374
    .line 375
    .line 376
    new-instance v2, LK3/L;

    .line 377
    .line 378
    invoke-direct {v2, v3, p1}, LK3/L;-><init>(LK3/n;LK3/i;)V

    .line 379
    .line 380
    .line 381
    invoke-direct {v0, v1, v2}, LK3/o;-><init>(LK3/K;LK3/L;)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v5, v0}, Lcom/google/android/gms/common/api/j;->doRegisterEventListener(LK3/o;)Lg4/h;

    .line 385
    .line 386
    .line 387
    return-void
.end method
