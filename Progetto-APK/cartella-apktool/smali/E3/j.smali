.class public final LE3/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LC3/f;


# static fields
.field public static final k:LH3/b;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:LX3/d;

.field public final c:LH3/n;

.field public final d:La3/b;

.field public final e:LE3/d;

.field public f:LC3/I;

.field public g:Lg4/i;

.field public final h:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final i:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final j:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, LH3/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "RemoteMediaClient"

    .line 5
    .line 6
    invoke-direct {v0, v2, v1}, LH3/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, LE3/j;->k:LH3/b;

    .line 10
    .line 11
    sget-object v0, LH3/n;->u:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(LH3/n;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LE3/j;->h:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, LE3/j;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 17
    .line 18
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, LE3/j;->j:Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    .line 30
    new-instance v0, Ljava/lang/Object;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, LE3/j;->a:Ljava/lang/Object;

    .line 36
    .line 37
    new-instance v0, LX3/d;

    .line 38
    .line 39
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const/4 v2, 0x1

    .line 44
    invoke-direct {v0, v1, v2}, LX3/d;-><init>(Landroid/os/Looper;I)V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, LE3/j;->b:LX3/d;

    .line 48
    .line 49
    new-instance v0, La3/b;

    .line 50
    .line 51
    invoke-direct {v0, p0}, La3/b;-><init>(LE3/j;)V

    .line 52
    .line 53
    .line 54
    iput-object v0, p0, LE3/j;->d:La3/b;

    .line 55
    .line 56
    iput-object p1, p0, LE3/j;->c:LH3/n;

    .line 57
    .line 58
    new-instance v1, LC2/g;

    .line 59
    .line 60
    invoke-direct {v1, p0}, LC2/g;-><init>(LE3/j;)V

    .line 61
    .line 62
    .line 63
    iput-object v1, p1, LH3/n;->h:LC2/g;

    .line 64
    .line 65
    iput-object v0, p1, LH3/q;->c:La3/b;

    .line 66
    .line 67
    new-instance p1, LE3/d;

    .line 68
    .line 69
    invoke-direct {p1, p0}, LE3/d;-><init>(LE3/j;)V

    .line 70
    .line 71
    .line 72
    iput-object p1, p0, LE3/j;->e:LE3/d;

    .line 73
    .line 74
    return-void
.end method

.method public static q()LE3/p;
    .locals 4

    .line 1
    new-instance v0, LE3/p;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/google/android/gms/common/api/Status;

    .line 7
    .line 8
    const/16 v2, 0x11

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-direct {v1, v2, v3, v3, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;LJ3/b;)V

    .line 12
    .line 13
    .line 14
    new-instance v2, LE3/o;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-direct {v2, v1, v3}, LE3/o;-><init>(Lcom/google/android/gms/common/api/Status;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->L0(Lcom/google/android/gms/common/api/o;)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public static final u(LE3/r;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p0}, LE3/r;->S0()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catchall_0
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/16 v2, 0x834

    .line 9
    .line 10
    invoke-direct {v0, v2, v1, v1, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;LJ3/b;)V

    .line 11
    .line 12
    .line 13
    new-instance v1, LE3/o;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v1, v0, v2}, LE3/o;-><init>(Lcom/google/android/gms/common/api/Status;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->L0(Lcom/google/android/gms/common/api/o;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    return-void

    .line 23
    :catch_0
    move-exception p0

    .line 24
    throw p0
.end method


# virtual methods
.method public final a()J
    .locals 3

    .line 1
    iget-object v0, p0, LE3/j;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "Must be called from the main thread."

    .line 5
    .line 6
    invoke-static {v1}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, LE3/j;->c:LH3/n;

    .line 10
    .line 11
    invoke-virtual {v1}, LH3/n;->o()J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    monitor-exit v0

    .line 16
    return-wide v1

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw v1
.end method

.method public final b()LC3/p;
    .locals 4

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, LE3/j;->d()LC3/r;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_0
    iget v2, v0, LC3/r;->R:I

    .line 15
    .line 16
    iget-object v3, v0, LC3/r;->d0:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Ljava/lang/Integer;

    .line 23
    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object v0, v0, LC3/r;->W:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    move-object v1, v0

    .line 38
    check-cast v1, LC3/p;

    .line 39
    .line 40
    :goto_0
    return-object v1
.end method

.method public final c()Lcom/google/android/gms/cast/MediaInfo;
    .locals 2

    .line 1
    iget-object v0, p0, LE3/j;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "Must be called from the main thread."

    .line 5
    .line 6
    invoke-static {v1}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, LE3/j;->c:LH3/n;

    .line 10
    .line 11
    iget-object v1, v1, LH3/n;->f:LC3/r;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v1, v1, LC3/r;->G:Lcom/google/android/gms/cast/MediaInfo;

    .line 18
    .line 19
    :goto_0
    monitor-exit v0

    .line 20
    return-object v1

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1
.end method

.method public final d()LC3/r;
    .locals 2

    .line 1
    iget-object v0, p0, LE3/j;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "Must be called from the main thread."

    .line 5
    .line 6
    invoke-static {v1}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, LE3/j;->c:LH3/n;

    .line 10
    .line 11
    iget-object v1, v1, LH3/n;->f:LC3/r;

    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-object v1

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw v1
.end method

.method public final e()I
    .locals 2

    .line 1
    iget-object v0, p0, LE3/j;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "Must be called from the main thread."

    .line 5
    .line 6
    invoke-static {v1}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, LE3/j;->d()LC3/r;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    iget v1, v1, LC3/r;->K:I

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x1

    .line 19
    :goto_0
    monitor-exit v0

    .line 20
    return v1

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1
.end method

.method public final f()J
    .locals 3

    .line 1
    iget-object v0, p0, LE3/j;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "Must be called from the main thread."

    .line 5
    .line 6
    invoke-static {v1}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, LE3/j;->c:LH3/n;

    .line 10
    .line 11
    iget-object v1, v1, LH3/n;->f:LC3/r;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v1, v1, LC3/r;->G:Lcom/google/android/gms/cast/MediaInfo;

    .line 18
    .line 19
    :goto_0
    if-eqz v1, :cond_1

    .line 20
    .line 21
    iget-wide v1, v1, Lcom/google/android/gms/cast/MediaInfo;->K:J

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    const-wide/16 v1, 0x0

    .line 25
    .line 26
    :goto_1
    monitor-exit v0

    .line 27
    return-wide v1

    .line 28
    :catchall_0
    move-exception v1

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw v1
.end method

.method public final g()Z
    .locals 2

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, LE3/j;->h()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-nez v1, :cond_2

    .line 11
    .line 12
    invoke-static {v0}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, LE3/j;->d()LC3/r;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget v0, v0, LC3/r;->K:I

    .line 22
    .line 23
    const/4 v1, 0x5

    .line 24
    if-ne v0, v1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p0}, LE3/j;->l()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {p0}, LE3/j;->k()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    invoke-virtual {p0}, LE3/j;->j()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 v0, 0x0

    .line 47
    return v0

    .line 48
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 49
    return v0
.end method

.method public final h()Z
    .locals 2

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, LE3/j;->d()LC3/r;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget v0, v0, LC3/r;->K:I

    .line 13
    .line 14
    const/4 v1, 0x4

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    return v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return v0
.end method

.method public final i()Z
    .locals 2

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, LE3/j;->c()Lcom/google/android/gms/cast/MediaInfo;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    iget v0, v0, Lcom/google/android/gms/cast/MediaInfo;->H:I

    .line 14
    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    return v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return v0
.end method

.method public final j()Z
    .locals 1

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, LE3/j;->d()LC3/r;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget v0, v0, LC3/r;->R:I

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    return v0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    return v0
.end method

.method public final k()Z
    .locals 4

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, LE3/j;->d()LC3/r;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    iget v0, v0, LC3/r;->K:I

    .line 14
    .line 15
    const/4 v2, 0x3

    .line 16
    const/4 v3, 0x1

    .line 17
    if-eq v0, v2, :cond_2

    .line 18
    .line 19
    invoke-virtual {p0}, LE3/j;->i()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_3

    .line 24
    .line 25
    iget-object v0, p0, LE3/j;->a:Ljava/lang/Object;

    .line 26
    .line 27
    monitor-enter v0

    .line 28
    :try_start_0
    const-string v2, "Must be called from the main thread."

    .line 29
    .line 30
    invoke-static {v2}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, LE3/j;->d()LC3/r;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    iget v2, v2, LC3/r;->L:I

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v2, 0x0

    .line 43
    :goto_0
    monitor-exit v0

    .line 44
    const/4 v0, 0x2

    .line 45
    if-eq v2, v0, :cond_1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    return v3

    .line 49
    :catchall_0
    move-exception v1

    .line 50
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw v1

    .line 52
    :cond_2
    const/4 v1, 0x1

    .line 53
    :cond_3
    :goto_1
    return v1
.end method

.method public final l()Z
    .locals 2

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, LE3/j;->d()LC3/r;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget v0, v0, LC3/r;->K:I

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    return v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return v0
.end method

.method public final m()Z
    .locals 1

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, LE3/j;->d()LC3/r;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-boolean v0, v0, LC3/r;->X:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    return v0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    return v0
.end method

.method public final n(Ljava/lang/String;)V
    .locals 44

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    const/4 v4, 0x0

    .line 4
    const/4 v5, 0x1

    .line 5
    move-object/from16 v6, p0

    .line 6
    .line 7
    iget-object v7, v6, LE3/j;->c:LH3/n;

    .line 8
    .line 9
    iget-object v8, v7, LH3/n;->o:LH3/p;

    .line 10
    .line 11
    iget-object v9, v7, LH3/n;->n:LH3/p;

    .line 12
    .line 13
    const-string v10, "insertBefore"

    .line 14
    .line 15
    new-array v11, v5, [Ljava/lang/Object;

    .line 16
    .line 17
    aput-object v1, v11, v4

    .line 18
    .line 19
    const-string v12, "message received: %s"

    .line 20
    .line 21
    iget-object v13, v7, LH3/q;->a:LH3/b;

    .line 22
    .line 23
    invoke-virtual {v13, v12, v11}, LH3/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget-object v11, v13, LH3/b;->a:Ljava/lang/String;

    .line 27
    .line 28
    :try_start_0
    new-instance v12, Lorg/json/JSONObject;

    .line 29
    .line 30
    invoke-direct {v12, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v14, "type"

    .line 34
    .line 35
    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v14

    .line 39
    const-string v15, "requestId"

    .line 40
    .line 41
    const-wide/16 v0, -0x1

    .line 42
    .line 43
    invoke-virtual {v12, v15, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 44
    .line 45
    .line 46
    move-result-wide v0

    .line 47
    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    .line 48
    .line 49
    .line 50
    move-result v15
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    const/16 v16, 0x3

    .line 52
    .line 53
    const-string v3, "QUEUE_ITEMS"

    .line 54
    .line 55
    const-string v2, "QUEUE_CHANGE"

    .line 56
    .line 57
    const-string v5, "QUEUE_ITEM_IDS"

    .line 58
    .line 59
    sparse-switch v15, :sswitch_data_0

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :sswitch_0
    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v14

    .line 67
    if-eqz v14, :cond_0

    .line 68
    .line 69
    const/4 v14, 0x6

    .line 70
    goto :goto_1

    .line 71
    :sswitch_1
    const-string v15, "MEDIA_STATUS"

    .line 72
    .line 73
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v14

    .line 77
    if-eqz v14, :cond_0

    .line 78
    .line 79
    const/4 v14, 0x0

    .line 80
    goto :goto_1

    .line 81
    :sswitch_2
    const-string v15, "INVALID_PLAYER_STATE"

    .line 82
    .line 83
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v14

    .line 87
    if-eqz v14, :cond_0

    .line 88
    .line 89
    const/4 v14, 0x1

    .line 90
    goto :goto_1

    .line 91
    :sswitch_3
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v14

    .line 95
    if-eqz v14, :cond_0

    .line 96
    .line 97
    const/4 v14, 0x7

    .line 98
    goto :goto_1

    .line 99
    :sswitch_4
    const-string v15, "ERROR"

    .line 100
    .line 101
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v14

    .line 105
    if-eqz v14, :cond_0

    .line 106
    .line 107
    const/4 v14, 0x5

    .line 108
    goto :goto_1

    .line 109
    :sswitch_5
    const-string v15, "LOAD_FAILED"

    .line 110
    .line 111
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v14

    .line 115
    if-eqz v14, :cond_0

    .line 116
    .line 117
    const/4 v14, 0x2

    .line 118
    goto :goto_1

    .line 119
    :sswitch_6
    const-string v15, "INVALID_REQUEST"

    .line 120
    .line 121
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v14

    .line 125
    if-eqz v14, :cond_0

    .line 126
    .line 127
    const/4 v14, 0x4

    .line 128
    goto :goto_1

    .line 129
    :sswitch_7
    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v14

    .line 133
    if-eqz v14, :cond_0

    .line 134
    .line 135
    const/16 v14, 0x8

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :sswitch_8
    const-string v15, "LOAD_CANCELLED"

    .line 139
    .line 140
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v14

    .line 144
    if-eqz v14, :cond_0

    .line 145
    .line 146
    const/4 v14, 0x3

    .line 147
    goto :goto_1

    .line 148
    :cond_0
    :goto_0
    const/4 v14, -0x1

    .line 149
    :goto_1
    iget-object v15, v7, LH3/n;->j:LH3/p;

    .line 150
    .line 151
    const-string v4, "itemIds"

    .line 152
    .line 153
    iget-object v6, v7, LH3/q;->d:Ljava/util/List;

    .line 154
    .line 155
    move-object/from16 v18, v8

    .line 156
    .line 157
    const/4 v8, 0x0

    .line 158
    packed-switch v14, :pswitch_data_0

    .line 159
    .line 160
    .line 161
    goto/16 :goto_12

    .line 162
    .line 163
    :pswitch_0
    :try_start_1
    iget-object v2, v7, LH3/n;->s:LH3/p;

    .line 164
    .line 165
    const/4 v4, 0x0

    .line 166
    invoke-virtual {v2, v8, v4, v0, v1}, LH3/p;->b(LH3/m;IJ)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v7, v12, v3}, LH3/n;->h(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    iget-object v0, v7, LH3/n;->h:LC2/g;

    .line 173
    .line 174
    if-eqz v0, :cond_17

    .line 175
    .line 176
    const-string v0, "items"

    .line 177
    .line 178
    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    new-array v1, v1, [LC3/p;

    .line 187
    .line 188
    const/4 v2, 0x0

    .line 189
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 190
    .line 191
    .line 192
    move-result v3

    .line 193
    if-ge v2, v3, :cond_1

    .line 194
    .line 195
    new-instance v3, LC3/o;

    .line 196
    .line 197
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    invoke-direct {v3, v4}, LC3/o;-><init>(Lorg/json/JSONObject;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v3}, LC3/o;->a()LC3/p;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    aput-object v3, v1, v2

    .line 209
    .line 210
    const/4 v3, 0x1

    .line 211
    add-int/2addr v2, v3

    .line 212
    goto :goto_2

    .line 213
    :catch_0
    move-exception v0

    .line 214
    goto/16 :goto_11

    .line 215
    .line 216
    :cond_1
    iget-object v0, v7, LH3/n;->h:LC2/g;

    .line 217
    .line 218
    invoke-virtual {v0, v1}, LC2/g;->x([LC3/p;)V

    .line 219
    .line 220
    .line 221
    goto/16 :goto_12

    .line 222
    .line 223
    :pswitch_1
    iget-object v3, v7, LH3/n;->t:LH3/p;

    .line 224
    .line 225
    const/4 v5, 0x0

    .line 226
    invoke-virtual {v3, v8, v5, v0, v1}, LH3/p;->b(LH3/m;IJ)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v7, v12, v2}, LH3/n;->h(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    iget-object v0, v7, LH3/n;->h:LC2/g;

    .line 233
    .line 234
    if-eqz v0, :cond_17

    .line 235
    .line 236
    const-string v0, "changeType"

    .line 237
    .line 238
    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    invoke-static {v1}, LH3/n;->m(Lorg/json/JSONArray;)[I

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    const/4 v2, 0x0

    .line 251
    invoke-virtual {v12, v10, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 252
    .line 253
    .line 254
    move-result v3

    .line 255
    if-eqz v1, :cond_17

    .line 256
    .line 257
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 261
    .line 262
    .line 263
    move-result v2

    .line 264
    sparse-switch v2, :sswitch_data_1

    .line 265
    .line 266
    .line 267
    :goto_3
    const/4 v2, -0x1

    .line 268
    goto :goto_4

    .line 269
    :sswitch_9
    const-string v2, "ITEMS_CHANGE"

    .line 270
    .line 271
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    move-result v0

    .line 275
    if-nez v0, :cond_2

    .line 276
    .line 277
    goto :goto_3

    .line 278
    :cond_2
    const/4 v2, 0x3

    .line 279
    goto :goto_4

    .line 280
    :sswitch_a
    const-string v2, "UPDATE"

    .line 281
    .line 282
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    if-nez v0, :cond_3

    .line 287
    .line 288
    goto :goto_3

    .line 289
    :cond_3
    const/4 v2, 0x2

    .line 290
    goto :goto_4

    .line 291
    :sswitch_b
    const-string v2, "REMOVE"

    .line 292
    .line 293
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    move-result v0

    .line 297
    if-nez v0, :cond_4

    .line 298
    .line 299
    goto :goto_3

    .line 300
    :cond_4
    const/4 v2, 0x1

    .line 301
    goto :goto_4

    .line 302
    :sswitch_c
    const-string v2, "INSERT"

    .line 303
    .line 304
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 305
    .line 306
    .line 307
    move-result v0

    .line 308
    if-nez v0, :cond_5

    .line 309
    .line 310
    goto :goto_3

    .line 311
    :cond_5
    const/4 v2, 0x0

    .line 312
    :goto_4
    packed-switch v2, :pswitch_data_1

    .line 313
    .line 314
    .line 315
    goto/16 :goto_12

    .line 316
    .line 317
    :pswitch_2
    :try_start_2
    iget-object v0, v7, LH3/n;->h:LC2/g;

    .line 318
    .line 319
    invoke-virtual {v0, v1}, LC2/g;->B([I)V

    .line 320
    .line 321
    .line 322
    goto/16 :goto_12

    .line 323
    .line 324
    :pswitch_3
    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    invoke-static {v0}, LH3/n;->m(Lorg/json/JSONArray;)[I

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    const-string v1, "A list of item IDs is expected in a QUEUE UPDATE message."

    .line 333
    .line 334
    invoke-static {v0, v1}, Lcom/bumptech/glide/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    const-string v1, "reorderItemIds"

    .line 338
    .line 339
    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    if-eqz v1, :cond_6

    .line 344
    .line 345
    invoke-static {v0}, LH3/a;->d([I)Ljava/util/ArrayList;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    const/4 v2, 0x0

    .line 350
    invoke-virtual {v12, v10, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 351
    .line 352
    .line 353
    move-result v3

    .line 354
    invoke-static {v1}, LH3/n;->m(Lorg/json/JSONArray;)[I

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    invoke-static {v1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 359
    .line 360
    .line 361
    invoke-static {v1}, LH3/a;->d([I)Ljava/util/ArrayList;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    iget-object v2, v7, LH3/n;->h:LC2/g;

    .line 366
    .line 367
    invoke-virtual {v2, v0, v1, v3}, LC2/g;->z(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 368
    .line 369
    .line 370
    goto/16 :goto_12

    .line 371
    .line 372
    :cond_6
    iget-object v1, v7, LH3/n;->h:LC2/g;

    .line 373
    .line 374
    invoke-virtual {v1, v0}, LC2/g;->v([I)V

    .line 375
    .line 376
    .line 377
    goto/16 :goto_12

    .line 378
    .line 379
    :pswitch_4
    iget-object v0, v7, LH3/n;->h:LC2/g;

    .line 380
    .line 381
    invoke-virtual {v0, v1}, LC2/g;->y([I)V

    .line 382
    .line 383
    .line 384
    goto/16 :goto_12

    .line 385
    .line 386
    :pswitch_5
    iget-object v0, v7, LH3/n;->h:LC2/g;

    .line 387
    .line 388
    invoke-virtual {v0, v1, v3}, LC2/g;->w([II)V

    .line 389
    .line 390
    .line 391
    goto/16 :goto_12

    .line 392
    .line 393
    :pswitch_6
    iget-object v2, v7, LH3/n;->r:LH3/p;

    .line 394
    .line 395
    const/4 v3, 0x0

    .line 396
    invoke-virtual {v2, v8, v3, v0, v1}, LH3/p;->b(LH3/m;IJ)V

    .line 397
    .line 398
    .line 399
    invoke-virtual {v7, v12, v5}, LH3/n;->h(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    iget-object v0, v7, LH3/n;->h:LC2/g;

    .line 403
    .line 404
    if-eqz v0, :cond_17

    .line 405
    .line 406
    invoke-virtual {v12, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    invoke-static {v0}, LH3/n;->m(Lorg/json/JSONArray;)[I

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    if-eqz v0, :cond_17

    .line 415
    .line 416
    iget-object v1, v7, LH3/n;->h:LC2/g;

    .line 417
    .line 418
    invoke-virtual {v1, v0}, LC2/g;->v([I)V

    .line 419
    .line 420
    .line 421
    goto/16 :goto_12

    .line 422
    .line 423
    :pswitch_7
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 424
    .line 425
    .line 426
    move-result-object v2

    .line 427
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 428
    .line 429
    .line 430
    move-result v3

    .line 431
    if-eqz v3, :cond_7

    .line 432
    .line 433
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    move-result-object v3

    .line 437
    check-cast v3, LH3/p;

    .line 438
    .line 439
    invoke-static {v12}, LH3/n;->f(Lorg/json/JSONObject;)LH3/m;

    .line 440
    .line 441
    .line 442
    move-result-object v4

    .line 443
    const/16 v5, 0x834

    .line 444
    .line 445
    invoke-virtual {v3, v4, v5, v0, v1}, LH3/p;->b(LH3/m;IJ)V

    .line 446
    .line 447
    .line 448
    goto :goto_5

    .line 449
    :cond_7
    iget-object v0, v7, LH3/n;->h:LC2/g;

    .line 450
    .line 451
    if-nez v0, :cond_8

    .line 452
    .line 453
    goto/16 :goto_12

    .line 454
    .line 455
    :cond_8
    invoke-static {v12}, Lcom/google/android/gms/cast/MediaError;->i(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/MediaError;

    .line 456
    .line 457
    .line 458
    iget-object v0, v7, LH3/n;->h:LC2/g;

    .line 459
    .line 460
    iget-object v0, v0, LC2/g;->H:Ljava/lang/Object;

    .line 461
    .line 462
    check-cast v0, LE3/j;

    .line 463
    .line 464
    iget-object v0, v0, LE3/j;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 465
    .line 466
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 471
    .line 472
    .line 473
    move-result v1

    .line 474
    if-eqz v1, :cond_17

    .line 475
    .line 476
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object v1

    .line 480
    check-cast v1, LE3/h;

    .line 481
    .line 482
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 483
    .line 484
    .line 485
    goto :goto_6

    .line 486
    :pswitch_8
    const-string v2, "received unexpected error: Invalid Request."

    .line 487
    .line 488
    const/4 v3, 0x0

    .line 489
    new-array v4, v3, [Ljava/lang/Object;

    .line 490
    .line 491
    invoke-virtual {v13, v2, v4}, LH3/b;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 492
    .line 493
    .line 494
    move-result-object v2

    .line 495
    invoke-static {v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    .line 497
    .line 498
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 499
    .line 500
    .line 501
    move-result-object v2

    .line 502
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 503
    .line 504
    .line 505
    move-result v3

    .line 506
    if-eqz v3, :cond_17

    .line 507
    .line 508
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 509
    .line 510
    .line 511
    move-result-object v3

    .line 512
    check-cast v3, LH3/p;

    .line 513
    .line 514
    invoke-static {v12}, LH3/n;->f(Lorg/json/JSONObject;)LH3/m;

    .line 515
    .line 516
    .line 517
    move-result-object v4

    .line 518
    const/16 v5, 0x7d1

    .line 519
    .line 520
    invoke-virtual {v3, v4, v5, v0, v1}, LH3/p;->b(LH3/m;IJ)V

    .line 521
    .line 522
    .line 523
    goto :goto_7

    .line 524
    :pswitch_9
    invoke-static {v12}, LH3/n;->f(Lorg/json/JSONObject;)LH3/m;

    .line 525
    .line 526
    .line 527
    move-result-object v2

    .line 528
    const/16 v3, 0x835

    .line 529
    .line 530
    invoke-virtual {v15, v2, v3, v0, v1}, LH3/p;->b(LH3/m;IJ)V

    .line 531
    .line 532
    .line 533
    goto/16 :goto_12

    .line 534
    .line 535
    :pswitch_a
    invoke-static {v12}, LH3/n;->f(Lorg/json/JSONObject;)LH3/m;

    .line 536
    .line 537
    .line 538
    move-result-object v2

    .line 539
    const/16 v3, 0x834

    .line 540
    .line 541
    invoke-virtual {v15, v2, v3, v0, v1}, LH3/p;->b(LH3/m;IJ)V

    .line 542
    .line 543
    .line 544
    goto/16 :goto_12

    .line 545
    .line 546
    :pswitch_b
    const-string v2, "received unexpected error: Invalid Player State."

    .line 547
    .line 548
    const/4 v3, 0x0

    .line 549
    new-array v4, v3, [Ljava/lang/Object;

    .line 550
    .line 551
    invoke-virtual {v13, v2, v4}, LH3/b;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v2

    .line 555
    invoke-static {v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    .line 557
    .line 558
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 559
    .line 560
    .line 561
    move-result-object v2

    .line 562
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 563
    .line 564
    .line 565
    move-result v3

    .line 566
    if-eqz v3, :cond_17

    .line 567
    .line 568
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 569
    .line 570
    .line 571
    move-result-object v3

    .line 572
    check-cast v3, LH3/p;

    .line 573
    .line 574
    invoke-static {v12}, LH3/n;->f(Lorg/json/JSONObject;)LH3/m;

    .line 575
    .line 576
    .line 577
    move-result-object v4

    .line 578
    const/16 v5, 0x834

    .line 579
    .line 580
    invoke-virtual {v3, v4, v5, v0, v1}, LH3/p;->b(LH3/m;IJ)V

    .line 581
    .line 582
    .line 583
    goto :goto_8

    .line 584
    :pswitch_c
    const-string v2, "status"

    .line 585
    .line 586
    invoke-virtual {v12, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 587
    .line 588
    .line 589
    move-result-object v2

    .line 590
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 591
    .line 592
    .line 593
    move-result v3

    .line 594
    if-lez v3, :cond_15

    .line 595
    .line 596
    const/4 v3, 0x0

    .line 597
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 598
    .line 599
    .line 600
    move-result-object v2

    .line 601
    invoke-virtual {v15, v0, v1}, LH3/p;->c(J)Z

    .line 602
    .line 603
    .line 604
    move-result v3

    .line 605
    invoke-virtual {v9}, LH3/p;->d()Z

    .line 606
    .line 607
    .line 608
    move-result v4

    .line 609
    if-eqz v4, :cond_a

    .line 610
    .line 611
    invoke-virtual {v9, v0, v1}, LH3/p;->c(J)Z

    .line 612
    .line 613
    .line 614
    move-result v4

    .line 615
    if-eqz v4, :cond_9

    .line 616
    .line 617
    goto :goto_a

    .line 618
    :cond_9
    :goto_9
    const/4 v4, 0x1

    .line 619
    goto :goto_b

    .line 620
    :cond_a
    :goto_a
    invoke-virtual/range {v18 .. v18}, LH3/p;->d()Z

    .line 621
    .line 622
    .line 623
    move-result v4

    .line 624
    if-eqz v4, :cond_b

    .line 625
    .line 626
    move-object/from16 v4, v18

    .line 627
    .line 628
    invoke-virtual {v4, v0, v1}, LH3/p;->c(J)Z

    .line 629
    .line 630
    .line 631
    move-result v4

    .line 632
    if-nez v4, :cond_b

    .line 633
    .line 634
    goto :goto_9

    .line 635
    :cond_b
    const/4 v4, 0x0

    .line 636
    :goto_b
    if-nez v3, :cond_d

    .line 637
    .line 638
    iget-object v3, v7, LH3/n;->f:LC3/r;

    .line 639
    .line 640
    if-nez v3, :cond_c

    .line 641
    .line 642
    goto :goto_d

    .line 643
    :cond_c
    invoke-virtual {v3, v2, v4}, LC3/r;->i(Lorg/json/JSONObject;I)I

    .line 644
    .line 645
    .line 646
    move-result v2

    .line 647
    :goto_c
    const/4 v3, 0x1

    .line 648
    goto :goto_e

    .line 649
    :cond_d
    :goto_d
    new-instance v3, LC3/r;

    .line 650
    .line 651
    const/16 v38, 0x0

    .line 652
    .line 653
    const/16 v39, 0x0

    .line 654
    .line 655
    const/16 v40, 0x0

    .line 656
    .line 657
    const/16 v41, 0x0

    .line 658
    .line 659
    const/16 v42, 0x0

    .line 660
    .line 661
    const/16 v43, 0x0

    .line 662
    .line 663
    const/16 v18, 0x0

    .line 664
    .line 665
    const-wide/16 v19, 0x0

    .line 666
    .line 667
    const/16 v21, 0x0

    .line 668
    .line 669
    const-wide/16 v22, 0x0

    .line 670
    .line 671
    const/16 v24, 0x0

    .line 672
    .line 673
    const/16 v25, 0x0

    .line 674
    .line 675
    const-wide/16 v26, 0x0

    .line 676
    .line 677
    const-wide/16 v28, 0x0

    .line 678
    .line 679
    const-wide/16 v30, 0x0

    .line 680
    .line 681
    const/16 v32, 0x0

    .line 682
    .line 683
    const/16 v33, 0x0

    .line 684
    .line 685
    const/16 v34, 0x0

    .line 686
    .line 687
    const/16 v35, 0x0

    .line 688
    .line 689
    const/16 v36, 0x0

    .line 690
    .line 691
    const/16 v37, 0x0

    .line 692
    .line 693
    move-object/from16 v17, v3

    .line 694
    .line 695
    invoke-direct/range {v17 .. v43}, LC3/r;-><init>(Lcom/google/android/gms/cast/MediaInfo;JIDIIJJDZ[JIILjava/lang/String;ILjava/util/ArrayList;ZLC3/c;LC3/v;LC3/j;LC3/n;)V

    .line 696
    .line 697
    .line 698
    const/4 v4, 0x0

    .line 699
    invoke-virtual {v3, v2, v4}, LC3/r;->i(Lorg/json/JSONObject;I)I

    .line 700
    .line 701
    .line 702
    iput-object v3, v7, LH3/n;->f:LC3/r;

    .line 703
    .line 704
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 705
    .line 706
    .line 707
    move-result-wide v2

    .line 708
    iput-wide v2, v7, LH3/n;->e:J

    .line 709
    .line 710
    const/16 v2, 0x7f

    .line 711
    .line 712
    goto :goto_c

    .line 713
    :goto_e
    and-int/lit8 v4, v2, 0x1

    .line 714
    .line 715
    if-eqz v4, :cond_e

    .line 716
    .line 717
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 718
    .line 719
    .line 720
    move-result-wide v3

    .line 721
    iput-wide v3, v7, LH3/n;->e:J

    .line 722
    .line 723
    const/4 v3, -0x1

    .line 724
    iput v3, v7, LH3/n;->i:I

    .line 725
    .line 726
    invoke-virtual {v7}, LH3/n;->l()V

    .line 727
    .line 728
    .line 729
    :cond_e
    const/4 v3, 0x2

    .line 730
    and-int/lit8 v4, v2, 0x2

    .line 731
    .line 732
    if-eqz v4, :cond_f

    .line 733
    .line 734
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 735
    .line 736
    .line 737
    move-result-wide v3

    .line 738
    iput-wide v3, v7, LH3/n;->e:J

    .line 739
    .line 740
    invoke-virtual {v7}, LH3/n;->l()V

    .line 741
    .line 742
    .line 743
    :cond_f
    and-int/lit16 v3, v2, 0x80

    .line 744
    .line 745
    if-eqz v3, :cond_10

    .line 746
    .line 747
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 748
    .line 749
    .line 750
    move-result-wide v3

    .line 751
    iput-wide v3, v7, LH3/n;->e:J

    .line 752
    .line 753
    :cond_10
    const/4 v3, 0x4

    .line 754
    and-int/2addr v3, v2

    .line 755
    if-eqz v3, :cond_11

    .line 756
    .line 757
    invoke-virtual {v7}, LH3/n;->i()V

    .line 758
    .line 759
    .line 760
    :cond_11
    const/16 v3, 0x8

    .line 761
    .line 762
    and-int/2addr v3, v2

    .line 763
    if-eqz v3, :cond_12

    .line 764
    .line 765
    invoke-virtual {v7}, LH3/n;->k()V

    .line 766
    .line 767
    .line 768
    :cond_12
    and-int/lit8 v3, v2, 0x10

    .line 769
    .line 770
    if-eqz v3, :cond_13

    .line 771
    .line 772
    invoke-virtual {v7}, LH3/n;->j()V

    .line 773
    .line 774
    .line 775
    :cond_13
    and-int/lit8 v3, v2, 0x20

    .line 776
    .line 777
    if-eqz v3, :cond_14

    .line 778
    .line 779
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 780
    .line 781
    .line 782
    move-result-wide v3

    .line 783
    iput-wide v3, v7, LH3/n;->e:J

    .line 784
    .line 785
    iget-object v3, v7, LH3/n;->h:LC2/g;

    .line 786
    .line 787
    if-eqz v3, :cond_14

    .line 788
    .line 789
    invoke-virtual {v3}, LC2/g;->t()V

    .line 790
    .line 791
    .line 792
    :cond_14
    and-int/lit8 v2, v2, 0x40

    .line 793
    .line 794
    if-eqz v2, :cond_16

    .line 795
    .line 796
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 797
    .line 798
    .line 799
    move-result-wide v2

    .line 800
    iput-wide v2, v7, LH3/n;->e:J

    .line 801
    .line 802
    invoke-virtual {v7}, LH3/n;->l()V

    .line 803
    .line 804
    .line 805
    goto :goto_f

    .line 806
    :cond_15
    iput-object v8, v7, LH3/n;->f:LC3/r;

    .line 807
    .line 808
    invoke-virtual {v7}, LH3/n;->l()V

    .line 809
    .line 810
    .line 811
    invoke-virtual {v7}, LH3/n;->i()V

    .line 812
    .line 813
    .line 814
    invoke-virtual {v7}, LH3/n;->k()V

    .line 815
    .line 816
    .line 817
    invoke-virtual {v7}, LH3/n;->j()V

    .line 818
    .line 819
    .line 820
    :cond_16
    :goto_f
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 821
    .line 822
    .line 823
    move-result-object v2

    .line 824
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 825
    .line 826
    .line 827
    move-result v3

    .line 828
    if-eqz v3, :cond_17

    .line 829
    .line 830
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 831
    .line 832
    .line 833
    move-result-object v3

    .line 834
    check-cast v3, LH3/p;

    .line 835
    .line 836
    const/4 v4, 0x0

    .line 837
    invoke-virtual {v3, v8, v4, v0, v1}, LH3/p;->b(LH3/m;IJ)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 838
    .line 839
    .line 840
    goto :goto_10

    .line 841
    :goto_11
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 842
    .line 843
    .line 844
    move-result-object v0

    .line 845
    const/4 v1, 0x2

    .line 846
    new-array v1, v1, [Ljava/lang/Object;

    .line 847
    .line 848
    const/4 v2, 0x0

    .line 849
    aput-object v0, v1, v2

    .line 850
    .line 851
    const/4 v2, 0x1

    .line 852
    aput-object p1, v1, v2

    .line 853
    .line 854
    const-string v0, "Message is malformed (%s); ignoring: %s"

    .line 855
    .line 856
    invoke-virtual {v13, v0, v1}, LH3/b;->c(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 857
    .line 858
    .line 859
    move-result-object v0

    .line 860
    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    .line 862
    .line 863
    :cond_17
    :goto_12
    return-void

    .line 864
    nop

    .line 865
    :sswitch_data_0
    .sparse-switch
        -0x6d1d76e8 -> :sswitch_8
        -0x6ab4c52e -> :sswitch_7
        -0x430e23f9 -> :sswitch_6
        -0xfa7664a -> :sswitch_5
        0x3f2d9e8 -> :sswitch_4
        0x93422be -> :sswitch_3
        0x19b9b2fb -> :sswitch_2
        0x3115c4cd -> :sswitch_1
        0x7d988afa -> :sswitch_0
    .end sparse-switch

    .line 866
    .line 867
    .line 868
    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    .line 874
    .line 875
    .line 876
    .line 877
    .line 878
    .line 879
    .line 880
    .line 881
    .line 882
    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    .line 888
    .line 889
    .line 890
    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    .line 896
    .line 897
    .line 898
    .line 899
    .line 900
    .line 901
    .line 902
    .line 903
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 904
    .line 905
    .line 906
    .line 907
    .line 908
    .line 909
    .line 910
    .line 911
    .line 912
    .line 913
    .line 914
    .line 915
    .line 916
    .line 917
    .line 918
    .line 919
    .line 920
    .line 921
    .line 922
    .line 923
    .line 924
    .line 925
    :sswitch_data_1
    .sparse-switch
        -0x7efc4947 -> :sswitch_c
        -0x7022137c -> :sswitch_b
        -0x6a6cd337 -> :sswitch_a
        0x42ef412f -> :sswitch_9
    .end sparse-switch

    .line 926
    .line 927
    .line 928
    .line 929
    .line 930
    .line 931
    .line 932
    .line 933
    .line 934
    .line 935
    .line 936
    .line 937
    .line 938
    .line 939
    .line 940
    .line 941
    .line 942
    .line 943
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final o()V
    .locals 4

    .line 1
    const-string v0, "Must be called from the main thread."

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, LE3/j;->e()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x4

    .line 11
    const/4 v3, 0x2

    .line 12
    if-eq v1, v2, :cond_2

    .line 13
    .line 14
    if-ne v1, v3, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    invoke-static {v0}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, LE3/j;->t()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    invoke-static {}, LE3/j;->q()LE3/p;

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, LE3/l;

    .line 31
    .line 32
    const/4 v1, 0x3

    .line 33
    invoke-direct {v0, p0, v1}, LE3/l;-><init>(LE3/j;I)V

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, LE3/j;->u(LE3/r;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    return-void

    .line 40
    :cond_2
    :goto_1
    invoke-static {v0}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, LE3/j;->t()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_3

    .line 48
    .line 49
    invoke-static {}, LE3/j;->q()LE3/p;

    .line 50
    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_3
    new-instance v0, LE3/l;

    .line 54
    .line 55
    invoke-direct {v0, p0, v3}, LE3/l;-><init>(LE3/j;I)V

    .line 56
    .line 57
    .line 58
    invoke-static {v0}, LE3/j;->u(LE3/r;)V

    .line 59
    .line 60
    .line 61
    :goto_2
    return-void
.end method

.method public final p()I
    .locals 3

    .line 1
    invoke-virtual {p0}, LE3/j;->c()Lcom/google/android/gms/cast/MediaInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    invoke-virtual {p0}, LE3/j;->g()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, LE3/j;->h()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v2, 0x6

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    return v2

    .line 23
    :cond_1
    invoke-virtual {p0}, LE3/j;->l()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    const/4 v0, 0x3

    .line 30
    return v0

    .line 31
    :cond_2
    invoke-virtual {p0}, LE3/j;->k()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    const/4 v0, 0x2

    .line 38
    return v0

    .line 39
    :cond_3
    invoke-virtual {p0}, LE3/j;->j()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_4

    .line 44
    .line 45
    invoke-virtual {p0}, LE3/j;->b()LC3/p;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-eqz v0, :cond_4

    .line 50
    .line 51
    iget-object v0, v0, LC3/p;->G:Lcom/google/android/gms/cast/MediaInfo;

    .line 52
    .line 53
    if-eqz v0, :cond_4

    .line 54
    .line 55
    return v2

    .line 56
    :cond_4
    :goto_0
    return v1
.end method

.method public final r()V
    .locals 4

    .line 1
    iget-object v0, p0, LE3/j;->f:LC3/I;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v1, "Must be called from the main thread."

    .line 7
    .line 8
    invoke-static {v1}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, LE3/j;->c:LH3/n;

    .line 12
    .line 13
    iget-object v1, v1, LH3/q;->b:Ljava/lang/String;

    .line 14
    .line 15
    check-cast v0, LC3/F;

    .line 16
    .line 17
    invoke-static {v1}, LH3/a;->c(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v2, v0, LC3/F;->s:Ljava/util/HashMap;

    .line 21
    .line 22
    monitor-enter v2

    .line 23
    :try_start_0
    iget-object v3, v0, LC3/F;->s:Ljava/util/HashMap;

    .line 24
    .line 25
    invoke-virtual {v3, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    invoke-static {}, LK3/s;->a()LK3/r;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    new-instance v3, LC3/A;

    .line 34
    .line 35
    invoke-direct {v3, v0, v1, p0}, LC3/A;-><init>(LC3/F;Ljava/lang/String;LE3/j;)V

    .line 36
    .line 37
    .line 38
    iput-object v3, v2, LK3/r;->c:Ljava/lang/Object;

    .line 39
    .line 40
    const/16 v1, 0x20dd

    .line 41
    .line 42
    iput v1, v2, LK3/r;->a:I

    .line 43
    .line 44
    invoke-virtual {v2}, LK3/r;->a()LK3/O;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/j;->doWrite(LK3/s;)Lg4/h;

    .line 49
    .line 50
    .line 51
    const-string v0, "Must be called from the main thread."

    .line 52
    .line 53
    invoke-static {v0}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, LE3/j;->t()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_1

    .line 61
    .line 62
    invoke-static {}, LE3/j;->q()LE3/p;

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    new-instance v0, LE3/k;

    .line 67
    .line 68
    invoke-direct {v0, p0}, LE3/k;-><init>(LE3/j;)V

    .line 69
    .line 70
    .line 71
    invoke-static {v0}, LE3/j;->u(LE3/r;)V

    .line 72
    .line 73
    .line 74
    :goto_0
    return-void

    .line 75
    :catchall_0
    move-exception v0

    .line 76
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    throw v0
.end method

.method public final s(LC3/F;)V
    .locals 5

    .line 1
    iget-object v0, p0, LE3/j;->f:LC3/I;

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    if-eqz v0, :cond_2

    .line 7
    .line 8
    iget-object v1, p0, LE3/j;->c:LH3/n;

    .line 9
    .line 10
    invoke-virtual {v1}, LH3/n;->n()V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, LE3/j;->e:LE3/d;

    .line 14
    .line 15
    invoke-virtual {v1}, LE3/d;->c()V

    .line 16
    .line 17
    .line 18
    const-string v1, "Must be called from the main thread."

    .line 19
    .line 20
    invoke-static {v1}, Lcom/bumptech/glide/c;->d(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, LE3/j;->c:LH3/n;

    .line 24
    .line 25
    iget-object v1, v1, LH3/q;->b:Ljava/lang/String;

    .line 26
    .line 27
    check-cast v0, LC3/F;

    .line 28
    .line 29
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    iget-object v2, v0, LC3/F;->s:Ljava/util/HashMap;

    .line 36
    .line 37
    monitor-enter v2

    .line 38
    :try_start_0
    iget-object v3, v0, LC3/F;->s:Ljava/util/HashMap;

    .line 39
    .line 40
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, LC3/f;

    .line 45
    .line 46
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    invoke-static {}, LK3/s;->a()LK3/r;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    new-instance v4, LC3/A;

    .line 52
    .line 53
    invoke-direct {v4, v0, v3, v1}, LC3/A;-><init>(LC3/F;LC3/f;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iput-object v4, v2, LK3/r;->c:Ljava/lang/Object;

    .line 57
    .line 58
    const/16 v1, 0x20de

    .line 59
    .line 60
    iput v1, v2, LK3/r;->a:I

    .line 61
    .line 62
    invoke-virtual {v2}, LK3/r;->a()LK3/O;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/j;->doWrite(LK3/s;)Lg4/h;

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, LE3/j;->d:La3/b;

    .line 70
    .line 71
    const/4 v1, 0x0

    .line 72
    iput-object v1, v0, La3/b;->H:Ljava/lang/Object;

    .line 73
    .line 74
    iget-object v0, p0, LE3/j;->b:LX3/d;

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catchall_0
    move-exception p1

    .line 81
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    throw p1

    .line 83
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 84
    .line 85
    const-string v0, "Channel namespace cannot be null or empty"

    .line 86
    .line 87
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p1

    .line 91
    :cond_2
    :goto_0
    iput-object p1, p0, LE3/j;->f:LC3/I;

    .line 92
    .line 93
    if-eqz p1, :cond_3

    .line 94
    .line 95
    iget-object v0, p0, LE3/j;->d:La3/b;

    .line 96
    .line 97
    iput-object p1, v0, La3/b;->H:Ljava/lang/Object;

    .line 98
    .line 99
    :cond_3
    :goto_1
    return-void
.end method

.method public final t()Z
    .locals 1

    .line 1
    iget-object v0, p0, LE3/j;->f:LC3/I;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method
