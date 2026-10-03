.class public final Lcom/google/android/gms/internal/ads/P4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public final synthetic G:I

.field public final H:Landroid/app/Application;

.field public final I:Ljava/lang/ref/WeakReference;

.field public J:Z


# direct methods
.method public constructor <init>(Landroid/app/Application;Landroid/app/Application$ActivityLifecycleCallbacks;I)V
    .locals 2

    .line 1
    iput p3, p0, Lcom/google/android/gms/internal/ads/P4;->G:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    if-eq p3, v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    if-eq p3, v0, :cond_0

    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/P4;->J:Z

    .line 14
    .line 15
    new-instance p3, Ljava/lang/ref/WeakReference;

    .line 16
    .line 17
    invoke-direct {p3, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/P4;->I:Ljava/lang/ref/WeakReference;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/P4;->H:Landroid/app/Application;

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/P4;->J:Z

    .line 29
    .line 30
    new-instance p3, Ljava/lang/ref/WeakReference;

    .line 31
    .line 32
    invoke-direct {p3, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/P4;->I:Ljava/lang/ref/WeakReference;

    .line 36
    .line 37
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/P4;->H:Landroid/app/Application;

    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    .line 42
    .line 43
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/P4;->J:Z

    .line 44
    .line 45
    new-instance p3, Ljava/lang/ref/WeakReference;

    .line 46
    .line 47
    invoke-direct {p3, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/P4;->I:Ljava/lang/ref/WeakReference;

    .line 51
    .line 52
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/P4;->H:Landroid/app/Application;

    .line 53
    .line 54
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/O4;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/P4;->I:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/O4;->zza(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/P4;->J:Z

    .line 16
    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/P4;->H:Landroid/app/Application;

    .line 20
    .line 21
    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/P4;->J:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    :catch_0
    :cond_1
    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/K5;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/P4;->I:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/K5;->zza(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catch_0
    move-exception p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/P4;->J:Z

    .line 18
    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/P4;->H:Landroid/app/Application;

    .line 22
    .line 23
    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/P4;->J:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    :cond_1
    return-void

    .line 30
    :goto_0
    const-string v0, "Error while dispatching lifecycle callback."

    .line 31
    .line 32
    invoke-static {v0, p1}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/P4;->I:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/ads/P4;->G:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/P4;->H:Landroid/app/Application;

    .line 7
    .line 8
    packed-switch v1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {v0, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/P4;->J:Z

    .line 24
    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    invoke-virtual {v3, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 28
    .line 29
    .line 30
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/P4;->J:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    :catch_0
    :cond_1
    :goto_0
    return-void

    .line 33
    :pswitch_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    invoke-interface {v0, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/P4;->J:Z

    .line 46
    .line 47
    if-nez p1, :cond_3

    .line 48
    .line 49
    invoke-virtual {v3, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 50
    .line 51
    .line 52
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/P4;->J:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :catch_1
    move-exception p1

    .line 56
    const-string p2, "Error while dispatching lifecycle callback."

    .line 57
    .line 58
    invoke-static {p2, p1}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    :cond_3
    :goto_1
    return-void

    .line 62
    :pswitch_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 67
    .line 68
    if-eqz v0, :cond_4

    .line 69
    .line 70
    invoke-interface {v0, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_4
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/P4;->J:Z

    .line 75
    .line 76
    if-nez p1, :cond_5

    .line 77
    .line 78
    invoke-virtual {v3, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 79
    .line 80
    .line 81
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/P4;->J:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 82
    .line 83
    :catch_2
    :cond_5
    :goto_2
    return-void

    .line 84
    nop

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/P4;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/P4;->I:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {v0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityDestroyed(Landroid/app/Activity;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/P4;->J:Z

    .line 21
    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/P4;->H:Landroid/app/Application;

    .line 25
    .line 26
    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 27
    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/P4;->J:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    :catch_0
    :cond_1
    :goto_0
    return-void

    .line 33
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/ads/O4;

    .line 34
    .line 35
    const/16 v1, 0x9

    .line 36
    .line 37
    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/O4;-><init>(Landroid/app/Activity;I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/P4;->b(Lcom/google/android/gms/internal/ads/K5;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/ads/O4;

    .line 45
    .line 46
    const/4 v1, 0x4

    .line 47
    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/O4;-><init>(Landroid/app/Activity;I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/P4;->a(Lcom/google/android/gms/internal/ads/O4;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/P4;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/P4;->I:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {v0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPaused(Landroid/app/Activity;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/P4;->J:Z

    .line 21
    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/P4;->H:Landroid/app/Application;

    .line 25
    .line 26
    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 27
    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/P4;->J:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    :catch_0
    :cond_1
    :goto_0
    return-void

    .line 33
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/ads/O4;

    .line 34
    .line 35
    const/4 v1, 0x7

    .line 36
    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/O4;-><init>(Landroid/app/Activity;I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/P4;->b(Lcom/google/android/gms/internal/ads/K5;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/ads/O4;

    .line 44
    .line 45
    const/4 v1, 0x2

    .line 46
    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/O4;-><init>(Landroid/app/Activity;I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/P4;->a(Lcom/google/android/gms/internal/ads/O4;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/P4;->G:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/P4;->I:Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-interface {v0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityResumed(Landroid/app/Activity;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/P4;->J:Z

    .line 22
    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/P4;->H:Landroid/app/Application;

    .line 26
    .line 27
    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 28
    .line 29
    .line 30
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/P4;->J:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    :catch_0
    :cond_1
    :goto_0
    return-void

    .line 33
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/ads/O4;

    .line 34
    .line 35
    const/4 v1, 0x6

    .line 36
    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/O4;-><init>(Landroid/app/Activity;I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/P4;->b(Lcom/google/android/gms/internal/ads/K5;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/ads/O4;

    .line 44
    .line 45
    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/O4;-><init>(Landroid/app/Activity;I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/P4;->a(Lcom/google/android/gms/internal/ads/O4;)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/P4;->I:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    iget v1, p0, Lcom/google/android/gms/internal/ads/P4;->G:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/P4;->H:Landroid/app/Application;

    .line 7
    .line 8
    packed-switch v1, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {v0, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/P4;->J:Z

    .line 24
    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    invoke-virtual {v3, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 28
    .line 29
    .line 30
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/P4;->J:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    :catch_0
    :cond_1
    :goto_0
    return-void

    .line 33
    :pswitch_0
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    invoke-interface {v0, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/P4;->J:Z

    .line 46
    .line 47
    if-nez p1, :cond_3

    .line 48
    .line 49
    invoke-virtual {v3, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 50
    .line 51
    .line 52
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/P4;->J:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :catch_1
    move-exception p1

    .line 56
    const-string p2, "Error while dispatching lifecycle callback."

    .line 57
    .line 58
    invoke-static {p2, p1}, Lp3/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    :cond_3
    :goto_1
    return-void

    .line 62
    :pswitch_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 67
    .line 68
    if-eqz v0, :cond_4

    .line 69
    .line 70
    invoke-interface {v0, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_4
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/P4;->J:Z

    .line 75
    .line 76
    if-nez p1, :cond_5

    .line 77
    .line 78
    invoke-virtual {v3, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 79
    .line 80
    .line 81
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/P4;->J:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 82
    .line 83
    :catch_2
    :cond_5
    :goto_2
    return-void

    .line 84
    nop

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/P4;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/P4;->I:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {v0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStarted(Landroid/app/Activity;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/P4;->J:Z

    .line 21
    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/P4;->H:Landroid/app/Application;

    .line 25
    .line 26
    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 27
    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/P4;->J:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    :catch_0
    :cond_1
    :goto_0
    return-void

    .line 33
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/ads/O4;

    .line 34
    .line 35
    const/4 v1, 0x5

    .line 36
    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/O4;-><init>(Landroid/app/Activity;I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/P4;->b(Lcom/google/android/gms/internal/ads/K5;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/ads/O4;

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/O4;-><init>(Landroid/app/Activity;I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/P4;->a(Lcom/google/android/gms/internal/ads/O4;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/P4;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/P4;->I:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {v0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStopped(Landroid/app/Activity;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/P4;->J:Z

    .line 21
    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/P4;->H:Landroid/app/Application;

    .line 25
    .line 26
    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 27
    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/P4;->J:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    :catch_0
    :cond_1
    :goto_0
    return-void

    .line 33
    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/ads/O4;

    .line 34
    .line 35
    const/16 v1, 0x8

    .line 36
    .line 37
    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/O4;-><init>(Landroid/app/Activity;I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/P4;->b(Lcom/google/android/gms/internal/ads/K5;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/ads/O4;

    .line 45
    .line 46
    const/4 v1, 0x3

    .line 47
    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/O4;-><init>(Landroid/app/Activity;I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/P4;->a(Lcom/google/android/gms/internal/ads/O4;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
