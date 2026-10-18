.class public final LK3/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final U:Lcom/google/android/gms/common/api/Status;

.field public static final V:Lcom/google/android/gms/common/api/Status;

.field public static final W:Ljava/lang/Object;

.field public static X:LK3/f;


# instance fields
.field public G:J

.field public H:Z

.field public I:Lcom/google/android/gms/common/internal/t;

.field public J:LN3/b;

.field public final K:Landroid/content/Context;

.field public final L:LJ3/e;

.field public final M:Lm2/l;

.field public final N:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final O:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final P:Ljava/util/concurrent/ConcurrentHashMap;

.field public final Q:Lr/g;

.field public final R:Lr/g;

.field public final S:LX3/d;

.field public volatile T:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const-string v2, "Sign-out occurred while this API call was in progress."

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-direct {v0, v1, v2, v3, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;LJ3/b;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, LK3/f;->U:Lcom/google/android/gms/common/api/Status;

    .line 11
    .line 12
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 13
    .line 14
    const-string v2, "The user must be signed in to make this API call."

    .line 15
    .line 16
    invoke-direct {v0, v1, v2, v3, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;LJ3/b;)V

    .line 17
    .line 18
    .line 19
    sput-object v0, LK3/f;->V:Lcom/google/android/gms/common/api/Status;

    .line 20
    .line 21
    new-instance v0, Ljava/lang/Object;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 24
    .line 25
    .line 26
    sput-object v0, LK3/f;->W:Ljava/lang/Object;

    .line 27
    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 6

    .line 1
    sget-object v0, LJ3/e;->d:LJ3/e;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x2710

    .line 7
    .line 8
    iput-wide v1, p0, LK3/f;->G:J

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, LK3/f;->H:Z

    .line 12
    .line 13
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 17
    .line 18
    .line 19
    iput-object v2, p0, LK3/f;->N:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 20
    .line 21
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 22
    .line 23
    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 24
    .line 25
    .line 26
    iput-object v2, p0, LK3/f;->O:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 27
    .line 28
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    .line 30
    const/4 v4, 0x5

    .line 31
    const/high16 v5, 0x3f400000    # 0.75f

    .line 32
    .line 33
    invoke-direct {v2, v4, v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 34
    .line 35
    .line 36
    iput-object v2, p0, LK3/f;->P:Ljava/util/concurrent/ConcurrentHashMap;

    .line 37
    .line 38
    new-instance v2, Lr/g;

    .line 39
    .line 40
    invoke-direct {v2, v1}, Lr/g;-><init>(I)V

    .line 41
    .line 42
    .line 43
    iput-object v2, p0, LK3/f;->Q:Lr/g;

    .line 44
    .line 45
    new-instance v2, Lr/g;

    .line 46
    .line 47
    invoke-direct {v2, v1}, Lr/g;-><init>(I)V

    .line 48
    .line 49
    .line 50
    iput-object v2, p0, LK3/f;->R:Lr/g;

    .line 51
    .line 52
    iput-boolean v3, p0, LK3/f;->T:Z

    .line 53
    .line 54
    iput-object p1, p0, LK3/f;->K:Landroid/content/Context;

    .line 55
    .line 56
    new-instance v2, LX3/d;

    .line 57
    .line 58
    invoke-direct {v2, p2, p0, v1}, LX3/d;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;I)V

    .line 59
    .line 60
    .line 61
    iput-object v2, p0, LK3/f;->S:LX3/d;

    .line 62
    .line 63
    iput-object v0, p0, LK3/f;->L:LJ3/e;

    .line 64
    .line 65
    new-instance p2, Lm2/l;

    .line 66
    .line 67
    invoke-direct {p2}, Lm2/l;-><init>()V

    .line 68
    .line 69
    .line 70
    iput-object p2, p0, LK3/f;->M:Lm2/l;

    .line 71
    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    sget-object p2, Lf/b;->K:Ljava/lang/Boolean;

    .line 77
    .line 78
    if-nez p2, :cond_1

    .line 79
    .line 80
    invoke-static {}, LU2/m;->a()Z

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    if-eqz p2, :cond_0

    .line 85
    .line 86
    const-string p2, "android.hardware.type.automotive"

    .line 87
    .line 88
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-eqz p1, :cond_0

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_0
    const/4 v3, 0x0

    .line 96
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    sput-object p1, Lf/b;->K:Ljava/lang/Boolean;

    .line 101
    .line 102
    :cond_1
    sget-object p1, Lf/b;->K:Ljava/lang/Boolean;

    .line 103
    .line 104
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-eqz p1, :cond_2

    .line 109
    .line 110
    iput-boolean v1, p0, LK3/f;->T:Z

    .line 111
    .line 112
    :cond_2
    const/4 p1, 0x6

    .line 113
    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {v2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method public static c(LK3/a;LJ3/b;)Lcom/google/android/gms/common/api/Status;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 2
    .line 3
    iget-object p0, p0, LK3/a;->b:Lcom/google/android/gms/common/api/g;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/google/android/gms/common/api/g;->b:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "API: "

    .line 12
    .line 13
    const-string v3, " is not available on this device. Connection failed with: "

    .line 14
    .line 15
    invoke-static {v2, p0, v3, v1}, Lcom/google/protobuf/U2;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    iget-object v1, p1, LJ3/b;->I:Landroid/app/PendingIntent;

    .line 20
    .line 21
    const/16 v2, 0x11

    .line 22
    .line 23
    invoke-direct {v0, v2, p0, v1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;LJ3/b;)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method public static f(Landroid/content/Context;)LK3/f;
    .locals 4

    .line 1
    sget-object v0, LK3/f;->W:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, LK3/f;->X:LK3/f;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/google/android/gms/common/internal/m;->b()Landroid/os/HandlerThread;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    new-instance v2, LK3/f;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    sget-object v3, LJ3/e;->c:Ljava/lang/Object;

    .line 23
    .line 24
    invoke-direct {v2, p0, v1}, LK3/f;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 25
    .line 26
    .line 27
    sput-object v2, LK3/f;->X:LK3/f;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    :goto_0
    sget-object p0, LK3/f;->X:LK3/f;

    .line 33
    .line 34
    monitor-exit v0

    .line 35
    return-object p0

    .line 36
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p0
.end method


# virtual methods
.method public final a()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, LK3/f;->H:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/internal/r;->a()Lcom/google/android/gms/common/internal/r;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Lcom/google/android/gms/common/internal/r;->a:Lcom/google/android/gms/common/internal/s;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    iget-boolean v0, v0, Lcom/google/android/gms/common/internal/s;->H:Z

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    return v1

    .line 21
    :cond_2
    :goto_0
    iget-object v0, p0, LK3/f;->M:Lm2/l;

    .line 22
    .line 23
    iget-object v0, v0, Lm2/l;->H:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v0, Landroid/util/SparseIntArray;

    .line 26
    .line 27
    const v2, 0xc1fa340

    .line 28
    .line 29
    .line 30
    const/4 v3, -0x1

    .line 31
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eq v0, v3, :cond_4

    .line 36
    .line 37
    if-nez v0, :cond_3

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_3
    return v1

    .line 41
    :cond_4
    :goto_1
    const/4 v0, 0x1

    .line 42
    return v0
.end method

.method public final b(LJ3/b;I)Z
    .locals 8

    .line 1
    iget-object v0, p0, LK3/f;->L:LJ3/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, LK3/f;->K:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {v1}, LQ3/b;->p(Landroid/content/Context;)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    goto :goto_3

    .line 16
    :cond_0
    iget v2, p1, LJ3/b;->H:I

    .line 17
    .line 18
    const/4 v4, 0x1

    .line 19
    iget-object p1, p1, LJ3/b;->I:Landroid/app/PendingIntent;

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    const/4 v5, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v5, 0x0

    .line 28
    :goto_0
    const/high16 v6, 0x8000000

    .line 29
    .line 30
    if-eqz v5, :cond_2

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_2
    const/4 p1, 0x0

    .line 34
    invoke-virtual {v0, v2, v1, p1}, LJ3/e;->b(ILandroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    move-result-object v5

    .line 38
    if-nez v5, :cond_3

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 42
    .line 43
    const/16 v7, 0x17

    .line 44
    .line 45
    if-lt p1, v7, :cond_4

    .line 46
    .line 47
    const/high16 p1, 0xc000000

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_4
    const/high16 p1, 0x8000000

    .line 51
    .line 52
    :goto_1
    invoke-static {v1, v3, v5, p1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    :goto_2
    if-eqz p1, :cond_5

    .line 57
    .line 58
    sget v5, Lcom/google/android/gms/common/api/GoogleApiActivity;->H:I

    .line 59
    .line 60
    new-instance v5, Landroid/content/Intent;

    .line 61
    .line 62
    const-class v7, Lcom/google/android/gms/common/api/GoogleApiActivity;

    .line 63
    .line 64
    invoke-direct {v5, v1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    .line 66
    .line 67
    const-string v7, "pending_intent"

    .line 68
    .line 69
    invoke-virtual {v5, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 70
    .line 71
    .line 72
    const-string p1, "failing_client_id"

    .line 73
    .line 74
    invoke-virtual {v5, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 75
    .line 76
    .line 77
    const-string p1, "notify_manager"

    .line 78
    .line 79
    invoke-virtual {v5, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 80
    .line 81
    .line 82
    sget p1, LX3/c;->a:I

    .line 83
    .line 84
    or-int/2addr p1, v6

    .line 85
    invoke-static {v1, v3, v5, p1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {v0, v1, v2, p1}, LJ3/e;->h(Landroid/content/Context;ILandroid/app/PendingIntent;)V

    .line 90
    .line 91
    .line 92
    const/4 v3, 0x1

    .line 93
    :cond_5
    :goto_3
    return v3
.end method

.method public final d(Lcom/google/android/gms/common/api/j;)LK3/z;
    .locals 3

    .line 1
    iget-object v0, p0, LK3/f;->P:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/j;->getApiKey()LK3/a;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, LK3/z;

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    new-instance v2, LK3/z;

    .line 16
    .line 17
    invoke-direct {v2, p0, p1}, LK3/z;-><init>(LK3/f;Lcom/google/android/gms/common/api/j;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object p1, v2, LK3/z;->H:Lcom/google/android/gms/common/api/e;

    .line 24
    .line 25
    invoke-interface {p1}, Lcom/google/android/gms/common/api/e;->requiresSignIn()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    iget-object p1, p0, LK3/f;->R:Lr/g;

    .line 32
    .line 33
    invoke-virtual {p1, v1}, Lr/g;->add(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-virtual {v2}, LK3/z;->l()V

    .line 37
    .line 38
    .line 39
    return-object v2
.end method

.method public final e(Lg4/i;ILcom/google/android/gms/common/api/j;)V
    .locals 8

    .line 1
    if-eqz p2, :cond_6

    .line 2
    .line 3
    invoke-virtual {p3}, Lcom/google/android/gms/common/api/j;->getApiKey()LK3/a;

    .line 4
    .line 5
    .line 6
    move-result-object v3

    .line 7
    invoke-virtual {p0}, LK3/f;->a()Z

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    if-nez p3, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/internal/r;->a()Lcom/google/android/gms/common/internal/r;

    .line 15
    .line 16
    .line 17
    move-result-object p3

    .line 18
    iget-object p3, p3, Lcom/google/android/gms/common/internal/r;->a:Lcom/google/android/gms/common/internal/s;

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    if-eqz p3, :cond_3

    .line 22
    .line 23
    iget-boolean v1, p3, Lcom/google/android/gms/common/internal/s;->H:Z

    .line 24
    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    iget-object v1, p0, LK3/f;->P:Ljava/util/concurrent/ConcurrentHashMap;

    .line 28
    .line 29
    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, LK3/z;

    .line 34
    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    iget-object v2, v1, LK3/z;->H:Lcom/google/android/gms/common/api/e;

    .line 38
    .line 39
    instance-of v4, v2, Lcom/google/android/gms/common/internal/g;

    .line 40
    .line 41
    if-eqz v4, :cond_2

    .line 42
    .line 43
    check-cast v2, Lcom/google/android/gms/common/internal/g;

    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/g;->hasConnectionInfo()Z

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-eqz v4, :cond_1

    .line 50
    .line 51
    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/g;->isConnecting()Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-nez v4, :cond_1

    .line 56
    .line 57
    invoke-static {v1, v2, p2}, LK3/F;->a(LK3/z;Lcom/google/android/gms/common/internal/g;I)Lcom/google/android/gms/common/internal/j;

    .line 58
    .line 59
    .line 60
    move-result-object p3

    .line 61
    if-eqz p3, :cond_2

    .line 62
    .line 63
    iget v2, v1, LK3/z;->R:I

    .line 64
    .line 65
    add-int/2addr v2, v0

    .line 66
    iput v2, v1, LK3/z;->R:I

    .line 67
    .line 68
    iget-boolean v0, p3, Lcom/google/android/gms/common/internal/j;->I:Z

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    iget-boolean v0, p3, Lcom/google/android/gms/common/internal/s;->I:Z

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    :goto_0
    const/4 p2, 0x0

    .line 75
    goto :goto_4

    .line 76
    :cond_3
    :goto_1
    new-instance p3, LK3/F;

    .line 77
    .line 78
    const-wide/16 v1, 0x0

    .line 79
    .line 80
    if-eqz v0, :cond_4

    .line 81
    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 83
    .line 84
    .line 85
    move-result-wide v4

    .line 86
    goto :goto_2

    .line 87
    :cond_4
    move-wide v4, v1

    .line 88
    :goto_2
    if-eqz v0, :cond_5

    .line 89
    .line 90
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 91
    .line 92
    .line 93
    move-result-wide v0

    .line 94
    move-wide v6, v0

    .line 95
    goto :goto_3

    .line 96
    :cond_5
    move-wide v6, v1

    .line 97
    :goto_3
    move-object v0, p3

    .line 98
    move-object v1, p0

    .line 99
    move v2, p2

    .line 100
    invoke-direct/range {v0 .. v7}, LK3/F;-><init>(LK3/f;ILK3/a;JJ)V

    .line 101
    .line 102
    .line 103
    move-object p2, p3

    .line 104
    :goto_4
    if-eqz p2, :cond_6

    .line 105
    .line 106
    iget-object p3, p0, LK3/f;->S:LX3/d;

    .line 107
    .line 108
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    .line 110
    .line 111
    new-instance v0, LK3/x;

    .line 112
    .line 113
    invoke-direct {v0, p3}, LK3/x;-><init>(LX3/d;)V

    .line 114
    .line 115
    .line 116
    iget-object p1, p1, Lg4/i;->a:Lg4/r;

    .line 117
    .line 118
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    new-instance p3, Lg4/o;

    .line 122
    .line 123
    invoke-direct {p3, v0, p2}, Lg4/o;-><init>(Ljava/util/concurrent/Executor;Lg4/d;)V

    .line 124
    .line 125
    .line 126
    iget-object p2, p1, Lg4/r;->b:LJ2/t;

    .line 127
    .line 128
    invoke-virtual {p2, p3}, LJ2/t;->i(Lg4/p;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Lg4/r;->o()V

    .line 132
    .line 133
    .line 134
    :cond_6
    return-void
.end method

.method public final g(Lcom/google/android/gms/common/api/j;LK3/m;LK3/t;Ljava/lang/Runnable;)Lg4/r;
    .locals 3

    .line 1
    new-instance v0, Lg4/i;

    .line 2
    .line 3
    invoke-direct {v0}, Lg4/i;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p2, LK3/m;->d:I

    .line 7
    .line 8
    invoke-virtual {p0, v0, v1, p1}, LK3/f;->e(Lg4/i;ILcom/google/android/gms/common/api/j;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, LK3/Q;

    .line 12
    .line 13
    new-instance v2, LK3/I;

    .line 14
    .line 15
    invoke-direct {v2, p2, p3, p4}, LK3/I;-><init>(LK3/m;LK3/t;Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {v1, v2, v0}, LK3/Q;-><init>(LK3/I;Lg4/i;)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, LK3/f;->O:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 22
    .line 23
    new-instance p3, LK3/H;

    .line 24
    .line 25
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    invoke-direct {p3, v1, p2, p1}, LK3/H;-><init>(LK3/E;ILcom/google/android/gms/common/api/j;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, LK3/f;->S:LX3/d;

    .line 33
    .line 34
    const/16 p2, 0x8

    .line 35
    .line 36
    invoke-virtual {p1, p2, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 41
    .line 42
    .line 43
    iget-object p1, v0, Lg4/i;->a:Lg4/r;

    .line 44
    .line 45
    return-object p1
.end method

.method public final h(LJ3/b;I)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1, p2}, LK3/f;->b(LJ3/b;I)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, LK3/f;->S:LX3/d;

    .line 8
    .line 9
    const/4 v1, 0x5

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 11

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    const-wide/32 v2, 0x493e0

    .line 6
    .line 7
    .line 8
    const/16 v4, 0x11

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v7, 0x1

    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v1, "Unknown message id: "

    .line 19
    .line 20
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string v0, "GoogleApiManager"

    .line 31
    .line 32
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    return v6

    .line 36
    :pswitch_0
    iput-boolean v6, p0, LK3/f;->H:Z

    .line 37
    .line 38
    goto/16 :goto_f

    .line 39
    .line 40
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p1, LK3/G;

    .line 43
    .line 44
    iget-wide v0, p1, LK3/G;->c:J

    .line 45
    .line 46
    const-wide/16 v2, 0x0

    .line 47
    .line 48
    cmp-long v8, v0, v2

    .line 49
    .line 50
    if-nez v8, :cond_1

    .line 51
    .line 52
    new-instance v0, Lcom/google/android/gms/common/internal/t;

    .line 53
    .line 54
    iget v1, p1, LK3/G;->b:I

    .line 55
    .line 56
    iget-object p1, p1, LK3/G;->a:Lcom/google/android/gms/common/internal/q;

    .line 57
    .line 58
    new-array v2, v7, [Lcom/google/android/gms/common/internal/q;

    .line 59
    .line 60
    aput-object p1, v2, v6

    .line 61
    .line 62
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/internal/t;-><init>(ILjava/util/List;)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, LK3/f;->J:LN3/b;

    .line 70
    .line 71
    if-nez p1, :cond_0

    .line 72
    .line 73
    new-instance p1, LN3/b;

    .line 74
    .line 75
    sget-object v1, LN3/b;->a:Lcom/google/android/gms/common/api/g;

    .line 76
    .line 77
    sget-object v2, Lcom/google/android/gms/common/api/i;->c:Lcom/google/android/gms/common/api/i;

    .line 78
    .line 79
    iget-object v3, p0, LK3/f;->K:Landroid/content/Context;

    .line 80
    .line 81
    sget-object v4, Lcom/google/android/gms/common/internal/v;->c:Lcom/google/android/gms/common/internal/v;

    .line 82
    .line 83
    invoke-direct {p1, v3, v1, v4, v2}, Lcom/google/android/gms/common/api/j;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/api/c;Lcom/google/android/gms/common/api/i;)V

    .line 84
    .line 85
    .line 86
    iput-object p1, p0, LK3/f;->J:LN3/b;

    .line 87
    .line 88
    :cond_0
    iget-object p1, p0, LK3/f;->J:LN3/b;

    .line 89
    .line 90
    invoke-virtual {p1, v0}, LN3/b;->c(Lcom/google/android/gms/common/internal/t;)Lg4/h;

    .line 91
    .line 92
    .line 93
    goto/16 :goto_f

    .line 94
    .line 95
    :cond_1
    iget-object v0, p0, LK3/f;->I:Lcom/google/android/gms/common/internal/t;

    .line 96
    .line 97
    if-eqz v0, :cond_8

    .line 98
    .line 99
    iget-object v1, v0, Lcom/google/android/gms/common/internal/t;->H:Ljava/util/List;

    .line 100
    .line 101
    iget v0, v0, Lcom/google/android/gms/common/internal/t;->G:I

    .line 102
    .line 103
    iget v2, p1, LK3/G;->b:I

    .line 104
    .line 105
    if-ne v0, v2, :cond_4

    .line 106
    .line 107
    if-eqz v1, :cond_2

    .line 108
    .line 109
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    iget v1, p1, LK3/G;->d:I

    .line 114
    .line 115
    if-lt v0, v1, :cond_2

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_2
    iget-object v0, p0, LK3/f;->I:Lcom/google/android/gms/common/internal/t;

    .line 119
    .line 120
    iget-object v1, p1, LK3/G;->a:Lcom/google/android/gms/common/internal/q;

    .line 121
    .line 122
    iget-object v2, v0, Lcom/google/android/gms/common/internal/t;->H:Ljava/util/List;

    .line 123
    .line 124
    if-nez v2, :cond_3

    .line 125
    .line 126
    new-instance v2, Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .line 130
    .line 131
    iput-object v2, v0, Lcom/google/android/gms/common/internal/t;->H:Ljava/util/List;

    .line 132
    .line 133
    :cond_3
    iget-object v0, v0, Lcom/google/android/gms/common/internal/t;->H:Ljava/util/List;

    .line 134
    .line 135
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_4
    :goto_0
    iget-object v0, p0, LK3/f;->S:LX3/d;

    .line 140
    .line 141
    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, LK3/f;->I:Lcom/google/android/gms/common/internal/t;

    .line 145
    .line 146
    if-eqz v0, :cond_8

    .line 147
    .line 148
    iget v1, v0, Lcom/google/android/gms/common/internal/t;->G:I

    .line 149
    .line 150
    if-gtz v1, :cond_5

    .line 151
    .line 152
    invoke-virtual {p0}, LK3/f;->a()Z

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    if-eqz v1, :cond_7

    .line 157
    .line 158
    :cond_5
    iget-object v1, p0, LK3/f;->J:LN3/b;

    .line 159
    .line 160
    if-nez v1, :cond_6

    .line 161
    .line 162
    new-instance v1, LN3/b;

    .line 163
    .line 164
    sget-object v2, Lcom/google/android/gms/common/api/i;->c:Lcom/google/android/gms/common/api/i;

    .line 165
    .line 166
    iget-object v3, p0, LK3/f;->K:Landroid/content/Context;

    .line 167
    .line 168
    sget-object v6, Lcom/google/android/gms/common/internal/v;->c:Lcom/google/android/gms/common/internal/v;

    .line 169
    .line 170
    sget-object v8, LN3/b;->a:Lcom/google/android/gms/common/api/g;

    .line 171
    .line 172
    invoke-direct {v1, v3, v8, v6, v2}, Lcom/google/android/gms/common/api/j;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/api/c;Lcom/google/android/gms/common/api/i;)V

    .line 173
    .line 174
    .line 175
    iput-object v1, p0, LK3/f;->J:LN3/b;

    .line 176
    .line 177
    :cond_6
    iget-object v1, p0, LK3/f;->J:LN3/b;

    .line 178
    .line 179
    invoke-virtual {v1, v0}, LN3/b;->c(Lcom/google/android/gms/common/internal/t;)Lg4/h;

    .line 180
    .line 181
    .line 182
    :cond_7
    iput-object v5, p0, LK3/f;->I:Lcom/google/android/gms/common/internal/t;

    .line 183
    .line 184
    :cond_8
    :goto_1
    iget-object v0, p0, LK3/f;->I:Lcom/google/android/gms/common/internal/t;

    .line 185
    .line 186
    if-nez v0, :cond_22

    .line 187
    .line 188
    new-instance v0, Ljava/util/ArrayList;

    .line 189
    .line 190
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .line 192
    .line 193
    iget-object v1, p1, LK3/G;->a:Lcom/google/android/gms/common/internal/q;

    .line 194
    .line 195
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    new-instance v1, Lcom/google/android/gms/common/internal/t;

    .line 199
    .line 200
    iget v2, p1, LK3/G;->b:I

    .line 201
    .line 202
    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/internal/t;-><init>(ILjava/util/List;)V

    .line 203
    .line 204
    .line 205
    iput-object v1, p0, LK3/f;->I:Lcom/google/android/gms/common/internal/t;

    .line 206
    .line 207
    iget-object v0, p0, LK3/f;->S:LX3/d;

    .line 208
    .line 209
    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    iget-wide v2, p1, LK3/G;->c:J

    .line 214
    .line 215
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 216
    .line 217
    .line 218
    goto/16 :goto_f

    .line 219
    .line 220
    :pswitch_2
    iget-object p1, p0, LK3/f;->I:Lcom/google/android/gms/common/internal/t;

    .line 221
    .line 222
    if-eqz p1, :cond_22

    .line 223
    .line 224
    iget v0, p1, Lcom/google/android/gms/common/internal/t;->G:I

    .line 225
    .line 226
    if-gtz v0, :cond_9

    .line 227
    .line 228
    invoke-virtual {p0}, LK3/f;->a()Z

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    if-eqz v0, :cond_b

    .line 233
    .line 234
    :cond_9
    iget-object v0, p0, LK3/f;->J:LN3/b;

    .line 235
    .line 236
    if-nez v0, :cond_a

    .line 237
    .line 238
    new-instance v0, LN3/b;

    .line 239
    .line 240
    sget-object v1, Lcom/google/android/gms/common/api/i;->c:Lcom/google/android/gms/common/api/i;

    .line 241
    .line 242
    iget-object v2, p0, LK3/f;->K:Landroid/content/Context;

    .line 243
    .line 244
    sget-object v3, Lcom/google/android/gms/common/internal/v;->c:Lcom/google/android/gms/common/internal/v;

    .line 245
    .line 246
    sget-object v4, LN3/b;->a:Lcom/google/android/gms/common/api/g;

    .line 247
    .line 248
    invoke-direct {v0, v2, v4, v3, v1}, Lcom/google/android/gms/common/api/j;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/api/c;Lcom/google/android/gms/common/api/i;)V

    .line 249
    .line 250
    .line 251
    iput-object v0, p0, LK3/f;->J:LN3/b;

    .line 252
    .line 253
    :cond_a
    iget-object v0, p0, LK3/f;->J:LN3/b;

    .line 254
    .line 255
    invoke-virtual {v0, p1}, LN3/b;->c(Lcom/google/android/gms/common/internal/t;)Lg4/h;

    .line 256
    .line 257
    .line 258
    :cond_b
    iput-object v5, p0, LK3/f;->I:Lcom/google/android/gms/common/internal/t;

    .line 259
    .line 260
    goto/16 :goto_f

    .line 261
    .line 262
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 263
    .line 264
    check-cast p1, LK3/A;

    .line 265
    .line 266
    iget-object v0, p0, LK3/f;->P:Ljava/util/concurrent/ConcurrentHashMap;

    .line 267
    .line 268
    iget-object v1, p1, LK3/A;->a:LK3/a;

    .line 269
    .line 270
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v0

    .line 274
    if-eqz v0, :cond_22

    .line 275
    .line 276
    iget-object v0, p0, LK3/f;->P:Ljava/util/concurrent/ConcurrentHashMap;

    .line 277
    .line 278
    iget-object v1, p1, LK3/A;->a:LK3/a;

    .line 279
    .line 280
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v0

    .line 284
    check-cast v0, LK3/z;

    .line 285
    .line 286
    iget-object v1, v0, LK3/z;->P:Ljava/util/ArrayList;

    .line 287
    .line 288
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    move-result v1

    .line 292
    if-eqz v1, :cond_22

    .line 293
    .line 294
    iget-object v1, v0, LK3/z;->S:LK3/f;

    .line 295
    .line 296
    iget-object v2, v1, LK3/f;->S:LX3/d;

    .line 297
    .line 298
    const/16 v3, 0xf

    .line 299
    .line 300
    invoke-virtual {v2, v3, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 301
    .line 302
    .line 303
    iget-object v1, v1, LK3/f;->S:LX3/d;

    .line 304
    .line 305
    const/16 v2, 0x10

    .line 306
    .line 307
    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 308
    .line 309
    .line 310
    iget-object p1, p1, LK3/A;->b:LJ3/d;

    .line 311
    .line 312
    iget-object v1, v0, LK3/z;->G:Ljava/util/LinkedList;

    .line 313
    .line 314
    new-instance v2, Ljava/util/ArrayList;

    .line 315
    .line 316
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    .line 317
    .line 318
    .line 319
    move-result v3

    .line 320
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 321
    .line 322
    .line 323
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 324
    .line 325
    .line 326
    move-result-object v3

    .line 327
    :cond_c
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 328
    .line 329
    .line 330
    move-result v4

    .line 331
    if-eqz v4, :cond_e

    .line 332
    .line 333
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v4

    .line 337
    check-cast v4, LK3/T;

    .line 338
    .line 339
    instance-of v5, v4, LK3/E;

    .line 340
    .line 341
    if-eqz v5, :cond_c

    .line 342
    .line 343
    move-object v5, v4

    .line 344
    check-cast v5, LK3/E;

    .line 345
    .line 346
    invoke-virtual {v5, v0}, LK3/E;->g(LK3/z;)[LJ3/d;

    .line 347
    .line 348
    .line 349
    move-result-object v5

    .line 350
    if-eqz v5, :cond_c

    .line 351
    .line 352
    array-length v8, v5

    .line 353
    const/4 v9, 0x0

    .line 354
    :goto_3
    if-ge v9, v8, :cond_c

    .line 355
    .line 356
    aget-object v10, v5, v9

    .line 357
    .line 358
    invoke-static {v10, p1}, LU4/a;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 359
    .line 360
    .line 361
    move-result v10

    .line 362
    if-eqz v10, :cond_d

    .line 363
    .line 364
    if-ltz v9, :cond_c

    .line 365
    .line 366
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    .line 368
    .line 369
    goto :goto_2

    .line 370
    :cond_d
    add-int/2addr v9, v7

    .line 371
    goto :goto_3

    .line 372
    :cond_e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 373
    .line 374
    .line 375
    move-result v0

    .line 376
    :goto_4
    if-ge v6, v0, :cond_22

    .line 377
    .line 378
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object v3

    .line 382
    check-cast v3, LK3/T;

    .line 383
    .line 384
    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 385
    .line 386
    .line 387
    new-instance v4, Lcom/google/android/gms/common/api/q;

    .line 388
    .line 389
    invoke-direct {v4, p1}, Lcom/google/android/gms/common/api/q;-><init>(LJ3/d;)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v3, v4}, LK3/T;->b(Ljava/lang/RuntimeException;)V

    .line 393
    .line 394
    .line 395
    add-int/2addr v6, v7

    .line 396
    goto :goto_4

    .line 397
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 398
    .line 399
    check-cast p1, LK3/A;

    .line 400
    .line 401
    iget-object v0, p0, LK3/f;->P:Ljava/util/concurrent/ConcurrentHashMap;

    .line 402
    .line 403
    iget-object v1, p1, LK3/A;->a:LK3/a;

    .line 404
    .line 405
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 406
    .line 407
    .line 408
    move-result v0

    .line 409
    if-eqz v0, :cond_22

    .line 410
    .line 411
    iget-object v0, p0, LK3/f;->P:Ljava/util/concurrent/ConcurrentHashMap;

    .line 412
    .line 413
    iget-object v1, p1, LK3/A;->a:LK3/a;

    .line 414
    .line 415
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    check-cast v0, LK3/z;

    .line 420
    .line 421
    iget-object v1, v0, LK3/z;->P:Ljava/util/ArrayList;

    .line 422
    .line 423
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 424
    .line 425
    .line 426
    move-result p1

    .line 427
    if-nez p1, :cond_f

    .line 428
    .line 429
    goto/16 :goto_f

    .line 430
    .line 431
    :cond_f
    iget-boolean p1, v0, LK3/z;->O:Z

    .line 432
    .line 433
    if-nez p1, :cond_22

    .line 434
    .line 435
    iget-object p1, v0, LK3/z;->H:Lcom/google/android/gms/common/api/e;

    .line 436
    .line 437
    invoke-interface {p1}, Lcom/google/android/gms/common/api/e;->isConnected()Z

    .line 438
    .line 439
    .line 440
    move-result p1

    .line 441
    if-nez p1, :cond_10

    .line 442
    .line 443
    invoke-virtual {v0}, LK3/z;->l()V

    .line 444
    .line 445
    .line 446
    goto/16 :goto_f

    .line 447
    .line 448
    :cond_10
    invoke-virtual {v0}, LK3/z;->e()V

    .line 449
    .line 450
    .line 451
    goto/16 :goto_f

    .line 452
    .line 453
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 454
    .line 455
    check-cast p1, LK3/w;

    .line 456
    .line 457
    iget-object v0, p1, LK3/w;->a:LK3/a;

    .line 458
    .line 459
    iget-object v1, p0, LK3/f;->P:Ljava/util/concurrent/ConcurrentHashMap;

    .line 460
    .line 461
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 462
    .line 463
    .line 464
    move-result v1

    .line 465
    if-nez v1, :cond_11

    .line 466
    .line 467
    iget-object p1, p1, LK3/w;->b:Lg4/i;

    .line 468
    .line 469
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 470
    .line 471
    invoke-virtual {p1, v0}, Lg4/i;->b(Ljava/lang/Object;)V

    .line 472
    .line 473
    .line 474
    goto/16 :goto_f

    .line 475
    .line 476
    :cond_11
    iget-object v1, p0, LK3/f;->P:Ljava/util/concurrent/ConcurrentHashMap;

    .line 477
    .line 478
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    move-result-object v0

    .line 482
    check-cast v0, LK3/z;

    .line 483
    .line 484
    invoke-virtual {v0, v6}, LK3/z;->k(Z)Z

    .line 485
    .line 486
    .line 487
    move-result v0

    .line 488
    iget-object p1, p1, LK3/w;->b:Lg4/i;

    .line 489
    .line 490
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 491
    .line 492
    .line 493
    move-result-object v0

    .line 494
    invoke-virtual {p1, v0}, Lg4/i;->b(Ljava/lang/Object;)V

    .line 495
    .line 496
    .line 497
    goto/16 :goto_f

    .line 498
    .line 499
    :pswitch_6
    iget-object v0, p0, LK3/f;->P:Ljava/util/concurrent/ConcurrentHashMap;

    .line 500
    .line 501
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 502
    .line 503
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 504
    .line 505
    .line 506
    move-result v0

    .line 507
    if-eqz v0, :cond_22

    .line 508
    .line 509
    iget-object v0, p0, LK3/f;->P:Ljava/util/concurrent/ConcurrentHashMap;

    .line 510
    .line 511
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 512
    .line 513
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    .line 515
    .line 516
    move-result-object p1

    .line 517
    check-cast p1, LK3/z;

    .line 518
    .line 519
    invoke-virtual {p1, v7}, LK3/z;->k(Z)Z

    .line 520
    .line 521
    .line 522
    goto/16 :goto_f

    .line 523
    .line 524
    :pswitch_7
    iget-object v0, p0, LK3/f;->P:Ljava/util/concurrent/ConcurrentHashMap;

    .line 525
    .line 526
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 527
    .line 528
    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 529
    .line 530
    .line 531
    move-result v0

    .line 532
    if-eqz v0, :cond_22

    .line 533
    .line 534
    iget-object v0, p0, LK3/f;->P:Ljava/util/concurrent/ConcurrentHashMap;

    .line 535
    .line 536
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 537
    .line 538
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    .line 540
    .line 541
    move-result-object p1

    .line 542
    check-cast p1, LK3/z;

    .line 543
    .line 544
    iget-object v0, p1, LK3/z;->S:LK3/f;

    .line 545
    .line 546
    iget-object v2, v0, LK3/f;->S:LX3/d;

    .line 547
    .line 548
    invoke-static {v2}, Lcom/bumptech/glide/c;->c(LX3/d;)V

    .line 549
    .line 550
    .line 551
    iget-boolean v2, p1, LK3/z;->O:Z

    .line 552
    .line 553
    if-eqz v2, :cond_22

    .line 554
    .line 555
    if-eqz v2, :cond_12

    .line 556
    .line 557
    iget-object v2, p1, LK3/z;->S:LK3/f;

    .line 558
    .line 559
    iget-object v3, v2, LK3/f;->S:LX3/d;

    .line 560
    .line 561
    iget-object v4, p1, LK3/z;->I:LK3/a;

    .line 562
    .line 563
    const/16 v8, 0xb

    .line 564
    .line 565
    invoke-virtual {v3, v8, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 566
    .line 567
    .line 568
    iget-object v2, v2, LK3/f;->S:LX3/d;

    .line 569
    .line 570
    invoke-virtual {v2, v1, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 571
    .line 572
    .line 573
    iput-boolean v6, p1, LK3/z;->O:Z

    .line 574
    .line 575
    :cond_12
    iget-object v1, v0, LK3/f;->L:LJ3/e;

    .line 576
    .line 577
    sget v2, LJ3/f;->a:I

    .line 578
    .line 579
    iget-object v0, v0, LK3/f;->K:Landroid/content/Context;

    .line 580
    .line 581
    invoke-virtual {v1, v0, v2}, LJ3/e;->c(Landroid/content/Context;I)I

    .line 582
    .line 583
    .line 584
    move-result v0

    .line 585
    const/16 v1, 0x12

    .line 586
    .line 587
    if-ne v0, v1, :cond_13

    .line 588
    .line 589
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 590
    .line 591
    const/16 v1, 0x15

    .line 592
    .line 593
    const-string v2, "Connection timed out waiting for Google Play services update to complete."

    .line 594
    .line 595
    invoke-direct {v0, v1, v2, v5, v5}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;LJ3/b;)V

    .line 596
    .line 597
    .line 598
    goto :goto_5

    .line 599
    :cond_13
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 600
    .line 601
    const/16 v1, 0x16

    .line 602
    .line 603
    const-string v2, "API failed to connect while resuming due to an unknown error."

    .line 604
    .line 605
    invoke-direct {v0, v1, v2, v5, v5}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;LJ3/b;)V

    .line 606
    .line 607
    .line 608
    :goto_5
    invoke-virtual {p1, v0}, LK3/z;->c(Lcom/google/android/gms/common/api/Status;)V

    .line 609
    .line 610
    .line 611
    iget-object p1, p1, LK3/z;->H:Lcom/google/android/gms/common/api/e;

    .line 612
    .line 613
    const-string v0, "Timing out connection while resuming."

    .line 614
    .line 615
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/e;->disconnect(Ljava/lang/String;)V

    .line 616
    .line 617
    .line 618
    goto/16 :goto_f

    .line 619
    .line 620
    :pswitch_8
    iget-object p1, p0, LK3/f;->R:Lr/g;

    .line 621
    .line 622
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 623
    .line 624
    .line 625
    new-instance v0, Lr/b;

    .line 626
    .line 627
    invoke-direct {v0, p1}, Lr/b;-><init>(Lr/g;)V

    .line 628
    .line 629
    .line 630
    :cond_14
    :goto_6
    invoke-virtual {v0}, Lr/i;->hasNext()Z

    .line 631
    .line 632
    .line 633
    move-result p1

    .line 634
    if-eqz p1, :cond_15

    .line 635
    .line 636
    invoke-virtual {v0}, Lr/i;->next()Ljava/lang/Object;

    .line 637
    .line 638
    .line 639
    move-result-object p1

    .line 640
    check-cast p1, LK3/a;

    .line 641
    .line 642
    iget-object v1, p0, LK3/f;->P:Ljava/util/concurrent/ConcurrentHashMap;

    .line 643
    .line 644
    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 645
    .line 646
    .line 647
    move-result-object p1

    .line 648
    check-cast p1, LK3/z;

    .line 649
    .line 650
    if-eqz p1, :cond_14

    .line 651
    .line 652
    invoke-virtual {p1}, LK3/z;->p()V

    .line 653
    .line 654
    .line 655
    goto :goto_6

    .line 656
    :cond_15
    iget-object p1, p0, LK3/f;->R:Lr/g;

    .line 657
    .line 658
    invoke-virtual {p1}, Lr/g;->clear()V

    .line 659
    .line 660
    .line 661
    goto/16 :goto_f

    .line 662
    .line 663
    :pswitch_9
    iget-object v0, p0, LK3/f;->P:Ljava/util/concurrent/ConcurrentHashMap;

    .line 664
    .line 665
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 666
    .line 667
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 668
    .line 669
    .line 670
    move-result v0

    .line 671
    if-eqz v0, :cond_22

    .line 672
    .line 673
    iget-object v0, p0, LK3/f;->P:Ljava/util/concurrent/ConcurrentHashMap;

    .line 674
    .line 675
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 676
    .line 677
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    .line 679
    .line 680
    move-result-object p1

    .line 681
    check-cast p1, LK3/z;

    .line 682
    .line 683
    iget-object v0, p1, LK3/z;->S:LK3/f;

    .line 684
    .line 685
    iget-object v0, v0, LK3/f;->S:LX3/d;

    .line 686
    .line 687
    invoke-static {v0}, Lcom/bumptech/glide/c;->c(LX3/d;)V

    .line 688
    .line 689
    .line 690
    iget-boolean v0, p1, LK3/z;->O:Z

    .line 691
    .line 692
    if-eqz v0, :cond_22

    .line 693
    .line 694
    invoke-virtual {p1}, LK3/z;->l()V

    .line 695
    .line 696
    .line 697
    goto/16 :goto_f

    .line 698
    .line 699
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 700
    .line 701
    check-cast p1, Lcom/google/android/gms/common/api/j;

    .line 702
    .line 703
    invoke-virtual {p0, p1}, LK3/f;->d(Lcom/google/android/gms/common/api/j;)LK3/z;

    .line 704
    .line 705
    .line 706
    goto/16 :goto_f

    .line 707
    .line 708
    :pswitch_b
    iget-object p1, p0, LK3/f;->K:Landroid/content/Context;

    .line 709
    .line 710
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 711
    .line 712
    .line 713
    move-result-object p1

    .line 714
    instance-of p1, p1, Landroid/app/Application;

    .line 715
    .line 716
    if-eqz p1, :cond_22

    .line 717
    .line 718
    iget-object p1, p0, LK3/f;->K:Landroid/content/Context;

    .line 719
    .line 720
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 721
    .line 722
    .line 723
    move-result-object p1

    .line 724
    check-cast p1, Landroid/app/Application;

    .line 725
    .line 726
    sget-object v0, LK3/b;->K:LK3/b;

    .line 727
    .line 728
    monitor-enter v0

    .line 729
    :try_start_0
    iget-boolean v4, v0, LK3/b;->J:Z

    .line 730
    .line 731
    if-nez v4, :cond_16

    .line 732
    .line 733
    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 734
    .line 735
    .line 736
    invoke-virtual {p1, v0}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 737
    .line 738
    .line 739
    iput-boolean v7, v0, LK3/b;->J:Z

    .line 740
    .line 741
    goto :goto_7

    .line 742
    :catchall_0
    move-exception p1

    .line 743
    goto/16 :goto_a

    .line 744
    .line 745
    :cond_16
    :goto_7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 746
    new-instance p1, LK3/y;

    .line 747
    .line 748
    invoke-direct {p1, p0}, LK3/y;-><init>(LK3/f;)V

    .line 749
    .line 750
    .line 751
    invoke-virtual {v0, p1}, LK3/b;->a(LK3/y;)V

    .line 752
    .line 753
    .line 754
    iget-object p1, v0, LK3/b;->H:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 755
    .line 756
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 757
    .line 758
    .line 759
    move-result v4

    .line 760
    iget-object v0, v0, LK3/b;->G:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 761
    .line 762
    if-nez v4, :cond_1a

    .line 763
    .line 764
    sget-object v4, LP3/c;->d:Ljava/lang/Boolean;

    .line 765
    .line 766
    if-nez v4, :cond_19

    .line 767
    .line 768
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 769
    .line 770
    const/16 v5, 0x1c

    .line 771
    .line 772
    if-lt v4, v5, :cond_17

    .line 773
    .line 774
    invoke-static {}, LN/d0;->x()Z

    .line 775
    .line 776
    .line 777
    move-result v1

    .line 778
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 779
    .line 780
    .line 781
    move-result-object v1

    .line 782
    :goto_8
    move-object v4, v1

    .line 783
    goto :goto_9

    .line 784
    :cond_17
    :try_start_1
    const-class v4, Landroid/os/Process;

    .line 785
    .line 786
    new-array v5, v6, [Lm2/l;

    .line 787
    .line 788
    const-string v8, "isIsolated"

    .line 789
    .line 790
    invoke-static {v4, v8, v5}, Lcom/google/android/gms/internal/ads/Cw;->a1(Ljava/lang/Class;Ljava/lang/String;[Lm2/l;)Ljava/lang/Object;

    .line 791
    .line 792
    .line 793
    move-result-object v4

    .line 794
    new-array v5, v6, [Ljava/lang/Object;

    .line 795
    .line 796
    if-eqz v4, :cond_18

    .line 797
    .line 798
    check-cast v4, Ljava/lang/Boolean;

    .line 799
    .line 800
    goto :goto_9

    .line 801
    :cond_18
    new-instance v4, LY/r;

    .line 802
    .line 803
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/Cw;->R([Ljava/lang/Object;)Ljava/lang/String;

    .line 804
    .line 805
    .line 806
    move-result-object v5

    .line 807
    invoke-direct {v4, v5, v1}, LY/r;-><init>(Ljava/lang/String;I)V

    .line 808
    .line 809
    .line 810
    throw v4
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 811
    :catch_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 812
    .line 813
    goto :goto_8

    .line 814
    :goto_9
    sput-object v4, LP3/c;->d:Ljava/lang/Boolean;

    .line 815
    .line 816
    :cond_19
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 817
    .line 818
    .line 819
    move-result v1

    .line 820
    if-nez v1, :cond_22

    .line 821
    .line 822
    new-instance v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 823
    .line 824
    invoke-direct {v1}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 825
    .line 826
    .line 827
    invoke-static {v1}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 828
    .line 829
    .line 830
    invoke-virtual {p1, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 831
    .line 832
    .line 833
    move-result p1

    .line 834
    if-nez p1, :cond_1a

    .line 835
    .line 836
    iget p1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 837
    .line 838
    const/16 v1, 0x64

    .line 839
    .line 840
    if-le p1, v1, :cond_1a

    .line 841
    .line 842
    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 843
    .line 844
    .line 845
    :cond_1a
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 846
    .line 847
    .line 848
    move-result p1

    .line 849
    if-nez p1, :cond_22

    .line 850
    .line 851
    iput-wide v2, p0, LK3/f;->G:J

    .line 852
    .line 853
    goto/16 :goto_f

    .line 854
    .line 855
    :goto_a
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 856
    throw p1

    .line 857
    :pswitch_c
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 858
    .line 859
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 860
    .line 861
    check-cast p1, LJ3/b;

    .line 862
    .line 863
    iget-object v1, p0, LK3/f;->P:Ljava/util/concurrent/ConcurrentHashMap;

    .line 864
    .line 865
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 866
    .line 867
    .line 868
    move-result-object v1

    .line 869
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 870
    .line 871
    .line 872
    move-result-object v1

    .line 873
    :cond_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 874
    .line 875
    .line 876
    move-result v2

    .line 877
    if-eqz v2, :cond_1c

    .line 878
    .line 879
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 880
    .line 881
    .line 882
    move-result-object v2

    .line 883
    check-cast v2, LK3/z;

    .line 884
    .line 885
    iget v3, v2, LK3/z;->M:I

    .line 886
    .line 887
    if-ne v3, v0, :cond_1b

    .line 888
    .line 889
    goto :goto_b

    .line 890
    :cond_1c
    move-object v2, v5

    .line 891
    :goto_b
    if-eqz v2, :cond_1e

    .line 892
    .line 893
    iget v0, p1, LJ3/b;->H:I

    .line 894
    .line 895
    const/16 v1, 0xd

    .line 896
    .line 897
    if-ne v0, v1, :cond_1d

    .line 898
    .line 899
    iget-object v1, p0, LK3/f;->L:LJ3/e;

    .line 900
    .line 901
    new-instance v3, Lcom/google/android/gms/common/api/Status;

    .line 902
    .line 903
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 904
    .line 905
    .line 906
    sget-object v1, LJ3/j;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 907
    .line 908
    invoke-static {v0}, LJ3/b;->i(I)Ljava/lang/String;

    .line 909
    .line 910
    .line 911
    move-result-object v0

    .line 912
    iget-object p1, p1, LJ3/b;->J:Ljava/lang/String;

    .line 913
    .line 914
    const-string v1, "Error resolution was canceled by the user, original error message: "

    .line 915
    .line 916
    const-string v6, ": "

    .line 917
    .line 918
    invoke-static {v1, v0, v6, p1}, Lcom/google/protobuf/U2;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 919
    .line 920
    .line 921
    move-result-object p1

    .line 922
    invoke-direct {v3, v4, p1, v5, v5}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;LJ3/b;)V

    .line 923
    .line 924
    .line 925
    invoke-virtual {v2, v3}, LK3/z;->c(Lcom/google/android/gms/common/api/Status;)V

    .line 926
    .line 927
    .line 928
    goto/16 :goto_f

    .line 929
    .line 930
    :cond_1d
    iget-object v0, v2, LK3/z;->I:LK3/a;

    .line 931
    .line 932
    invoke-static {v0, p1}, LK3/f;->c(LK3/a;LJ3/b;)Lcom/google/android/gms/common/api/Status;

    .line 933
    .line 934
    .line 935
    move-result-object p1

    .line 936
    invoke-virtual {v2, p1}, LK3/z;->c(Lcom/google/android/gms/common/api/Status;)V

    .line 937
    .line 938
    .line 939
    goto/16 :goto_f

    .line 940
    .line 941
    :cond_1e
    const-string p1, "Could not find API instance "

    .line 942
    .line 943
    const-string v1, " while trying to fail enqueued calls."

    .line 944
    .line 945
    invoke-static {p1, v0, v1}, LA0/O;->y(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 946
    .line 947
    .line 948
    move-result-object p1

    .line 949
    new-instance v0, Ljava/lang/Exception;

    .line 950
    .line 951
    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    .line 952
    .line 953
    .line 954
    const-string v1, "GoogleApiManager"

    .line 955
    .line 956
    invoke-static {v1, p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 957
    .line 958
    .line 959
    goto/16 :goto_f

    .line 960
    .line 961
    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 962
    .line 963
    check-cast p1, LK3/H;

    .line 964
    .line 965
    iget-object v0, p0, LK3/f;->P:Ljava/util/concurrent/ConcurrentHashMap;

    .line 966
    .line 967
    iget-object v1, p1, LK3/H;->c:Lcom/google/android/gms/common/api/j;

    .line 968
    .line 969
    invoke-virtual {v1}, Lcom/google/android/gms/common/api/j;->getApiKey()LK3/a;

    .line 970
    .line 971
    .line 972
    move-result-object v1

    .line 973
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 974
    .line 975
    .line 976
    move-result-object v0

    .line 977
    check-cast v0, LK3/z;

    .line 978
    .line 979
    if-nez v0, :cond_1f

    .line 980
    .line 981
    iget-object v0, p1, LK3/H;->c:Lcom/google/android/gms/common/api/j;

    .line 982
    .line 983
    invoke-virtual {p0, v0}, LK3/f;->d(Lcom/google/android/gms/common/api/j;)LK3/z;

    .line 984
    .line 985
    .line 986
    move-result-object v0

    .line 987
    :cond_1f
    iget-object v1, v0, LK3/z;->H:Lcom/google/android/gms/common/api/e;

    .line 988
    .line 989
    invoke-interface {v1}, Lcom/google/android/gms/common/api/e;->requiresSignIn()Z

    .line 990
    .line 991
    .line 992
    move-result v1

    .line 993
    if-eqz v1, :cond_20

    .line 994
    .line 995
    iget-object v1, p0, LK3/f;->O:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 996
    .line 997
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 998
    .line 999
    .line 1000
    move-result v1

    .line 1001
    iget v2, p1, LK3/H;->b:I

    .line 1002
    .line 1003
    if-eq v1, v2, :cond_20

    .line 1004
    .line 1005
    iget-object p1, p1, LK3/H;->a:LK3/T;

    .line 1006
    .line 1007
    sget-object v1, LK3/f;->U:Lcom/google/android/gms/common/api/Status;

    .line 1008
    .line 1009
    invoke-virtual {p1, v1}, LK3/T;->a(Lcom/google/android/gms/common/api/Status;)V

    .line 1010
    .line 1011
    .line 1012
    invoke-virtual {v0}, LK3/z;->p()V

    .line 1013
    .line 1014
    .line 1015
    goto :goto_f

    .line 1016
    :cond_20
    iget-object p1, p1, LK3/H;->a:LK3/T;

    .line 1017
    .line 1018
    invoke-virtual {v0, p1}, LK3/z;->m(LK3/T;)V

    .line 1019
    .line 1020
    .line 1021
    goto :goto_f

    .line 1022
    :pswitch_e
    iget-object p1, p0, LK3/f;->P:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1023
    .line 1024
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 1025
    .line 1026
    .line 1027
    move-result-object p1

    .line 1028
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 1029
    .line 1030
    .line 1031
    move-result-object p1

    .line 1032
    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 1033
    .line 1034
    .line 1035
    move-result v0

    .line 1036
    if-eqz v0, :cond_22

    .line 1037
    .line 1038
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v0

    .line 1042
    check-cast v0, LK3/z;

    .line 1043
    .line 1044
    iget-object v1, v0, LK3/z;->S:LK3/f;

    .line 1045
    .line 1046
    iget-object v1, v1, LK3/f;->S:LX3/d;

    .line 1047
    .line 1048
    invoke-static {v1}, Lcom/bumptech/glide/c;->c(LX3/d;)V

    .line 1049
    .line 1050
    .line 1051
    iput-object v5, v0, LK3/z;->Q:LJ3/b;

    .line 1052
    .line 1053
    invoke-virtual {v0}, LK3/z;->l()V

    .line 1054
    .line 1055
    .line 1056
    goto :goto_c

    .line 1057
    :pswitch_f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1058
    .line 1059
    invoke-static {p1}, LA0/O;->I(Ljava/lang/Object;)V

    .line 1060
    .line 1061
    .line 1062
    throw v5

    .line 1063
    :pswitch_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1064
    .line 1065
    check-cast p1, Ljava/lang/Boolean;

    .line 1066
    .line 1067
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 1068
    .line 1069
    .line 1070
    move-result p1

    .line 1071
    if-eq v7, p1, :cond_21

    .line 1072
    .line 1073
    goto :goto_d

    .line 1074
    :cond_21
    const-wide/16 v2, 0x2710

    .line 1075
    .line 1076
    :goto_d
    iput-wide v2, p0, LK3/f;->G:J

    .line 1077
    .line 1078
    iget-object p1, p0, LK3/f;->S:LX3/d;

    .line 1079
    .line 1080
    const/16 v0, 0xc

    .line 1081
    .line 1082
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1083
    .line 1084
    .line 1085
    iget-object p1, p0, LK3/f;->P:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1086
    .line 1087
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 1088
    .line 1089
    .line 1090
    move-result-object p1

    .line 1091
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1092
    .line 1093
    .line 1094
    move-result-object p1

    .line 1095
    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 1096
    .line 1097
    .line 1098
    move-result v1

    .line 1099
    if-eqz v1, :cond_22

    .line 1100
    .line 1101
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v1

    .line 1105
    check-cast v1, LK3/a;

    .line 1106
    .line 1107
    iget-object v2, p0, LK3/f;->S:LX3/d;

    .line 1108
    .line 1109
    invoke-virtual {v2, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v1

    .line 1113
    iget-wide v3, p0, LK3/f;->G:J

    .line 1114
    .line 1115
    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1116
    .line 1117
    .line 1118
    goto :goto_e

    .line 1119
    :cond_22
    :goto_f
    return v7

    .line 1120
    nop

    .line 1121
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_d
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_d
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
