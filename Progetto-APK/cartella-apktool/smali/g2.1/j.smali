.class public final Lg2/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le2/c;


# static fields
.field public static final P:Ljava/lang/String;


# instance fields
.field public final G:Landroid/content/Context;

.field public final H:Lp2/a;

.field public final I:Ln2/y;

.field public final J:Le2/n;

.field public final K:Le2/y;

.field public final L:Lg2/c;

.field public final M:Ljava/util/ArrayList;

.field public N:Landroid/content/Intent;

.field public O:Lg2/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "SystemAlarmDispatcher"

    .line 2
    .line 3
    invoke-static {v0}, Ld2/n;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lg2/j;->P:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lg2/j;->G:Landroid/content/Context;

    .line 9
    .line 10
    new-instance v1, Lcom/google/android/gms/internal/atv_ads_framework/x0;

    .line 11
    .line 12
    const/4 v2, 0x6

    .line 13
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/atv_ads_framework/x0;-><init>(I)V

    .line 14
    .line 15
    .line 16
    new-instance v2, Lg2/c;

    .line 17
    .line 18
    invoke-direct {v2, v0, v1}, Lg2/c;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/atv_ads_framework/x0;)V

    .line 19
    .line 20
    .line 21
    iput-object v2, p0, Lg2/j;->L:Lg2/c;

    .line 22
    .line 23
    invoke-static {p1}, Le2/y;->w(Landroid/content/Context;)Le2/y;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lg2/j;->K:Le2/y;

    .line 28
    .line 29
    new-instance v0, Ln2/y;

    .line 30
    .line 31
    iget-object v1, p1, Le2/y;->b:Ld2/b;

    .line 32
    .line 33
    iget-object v1, v1, Ld2/b;->e:LD0/U;

    .line 34
    .line 35
    invoke-direct {v0, v1}, Ln2/y;-><init>(LD0/U;)V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lg2/j;->I:Ln2/y;

    .line 39
    .line 40
    iget-object v0, p1, Le2/y;->f:Le2/n;

    .line 41
    .line 42
    iput-object v0, p0, Lg2/j;->J:Le2/n;

    .line 43
    .line 44
    iget-object p1, p1, Le2/y;->d:Lp2/a;

    .line 45
    .line 46
    iput-object p1, p0, Lg2/j;->H:Lp2/a;

    .line 47
    .line 48
    invoke-virtual {v0, p0}, Le2/n;->a(Le2/c;)V

    .line 49
    .line 50
    .line 51
    new-instance p1, Ljava/util/ArrayList;

    .line 52
    .line 53
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object p1, p0, Lg2/j;->M:Ljava/util/ArrayList;

    .line 57
    .line 58
    const/4 p1, 0x0

    .line 59
    iput-object p1, p0, Lg2/j;->N:Landroid/content/Intent;

    .line 60
    .line 61
    return-void
.end method

.method public static c()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v1, "Needs to be invoked on the main thread."

    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw v0
.end method


# virtual methods
.method public final a(ILandroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lg2/j;->P:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v3, "Adding command "

    .line 10
    .line 11
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v3, " ("

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v3, ")"

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v0, v1, v2}, Ld2/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lg2/j;->c()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_0

    .line 49
    .line 50
    invoke-static {}, Ld2/n;->d()Ld2/n;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const-string p2, "Unknown command. Ignoring"

    .line 55
    .line 56
    invoke-virtual {p1, v1, p2}, Ld2/n;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_0
    const-string v1, "ACTION_CONSTRAINTS_CHANGED"

    .line 61
    .line 62
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_1

    .line 67
    .line 68
    invoke-virtual {p0}, Lg2/j;->d()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_1

    .line 73
    .line 74
    return-void

    .line 75
    :cond_1
    const-string v0, "KEY_START_ID"

    .line 76
    .line 77
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lg2/j;->M:Ljava/util/ArrayList;

    .line 81
    .line 82
    monitor-enter p1

    .line 83
    :try_start_0
    iget-object v0, p0, Lg2/j;->M:Ljava/util/ArrayList;

    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    xor-int/lit8 v0, v0, 0x1

    .line 90
    .line 91
    iget-object v1, p0, Lg2/j;->M:Ljava/util/ArrayList;

    .line 92
    .line 93
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    if-nez v0, :cond_2

    .line 97
    .line 98
    invoke-virtual {p0}, Lg2/j;->e()V

    .line 99
    .line 100
    .line 101
    goto :goto_0

    .line 102
    :catchall_0
    move-exception p2

    .line 103
    goto :goto_1

    .line 104
    :cond_2
    :goto_0
    monitor-exit p1

    .line 105
    return-void

    .line 106
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    throw p2
.end method

.method public final b(Lm2/j;Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lg2/j;->H:Lp2/a;

    .line 2
    .line 3
    check-cast v0, Lm2/u;

    .line 4
    .line 5
    iget-object v0, v0, Lm2/u;->J:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    new-instance v1, La/g;

    .line 10
    .line 11
    sget-object v2, Lg2/c;->K:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v2, Landroid/content/Intent;

    .line 14
    .line 15
    const-class v3, Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    .line 16
    .line 17
    iget-object v4, p0, Lg2/j;->G:Landroid/content/Context;

    .line 18
    .line 19
    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 20
    .line 21
    .line 22
    const-string v3, "ACTION_EXECUTION_COMPLETED"

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    const-string v3, "KEY_NEEDS_RESCHEDULE"

    .line 28
    .line 29
    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    invoke-static {v2, p1}, Lg2/c;->e(Landroid/content/Intent;Lm2/j;)V

    .line 33
    .line 34
    .line 35
    const/4 p1, 0x0

    .line 36
    const/4 p2, 0x5

    .line 37
    invoke-direct {v1, p0, v2, p1, p2}, La/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 38
    .line 39
    .line 40
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final d()Z
    .locals 4

    .line 1
    const-string v0, "ACTION_CONSTRAINTS_CHANGED"

    .line 2
    .line 3
    invoke-static {}, Lg2/j;->c()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lg2/j;->M:Ljava/util/ArrayList;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v2, p0, Lg2/j;->M:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-eqz v3, :cond_1

    .line 20
    .line 21
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Landroid/content/Intent;

    .line 26
    .line 27
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_0

    .line 36
    .line 37
    monitor-exit v1

    .line 38
    const/4 v0, 0x1

    .line 39
    return v0

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    monitor-exit v1

    .line 43
    const/4 v0, 0x0

    .line 44
    return v0

    .line 45
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    throw v0
.end method

.method public final e()V
    .locals 4

    .line 1
    invoke-static {}, Lg2/j;->c()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lg2/j;->G:Landroid/content/Context;

    .line 5
    .line 6
    const-string v1, "ProcessCommand"

    .line 7
    .line 8
    invoke-static {v0, v1}, Ln2/q;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    :try_start_0
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lg2/j;->K:Le2/y;

    .line 16
    .line 17
    iget-object v1, v1, Le2/y;->d:Lp2/a;

    .line 18
    .line 19
    new-instance v2, Lg2/h;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-direct {v2, p0, v3}, Lg2/h;-><init>(Lg2/j;I)V

    .line 23
    .line 24
    .line 25
    check-cast v1, Lm2/u;

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Lm2/u;->m(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :catchall_0
    move-exception v1

    .line 35
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 36
    .line 37
    .line 38
    throw v1
.end method
