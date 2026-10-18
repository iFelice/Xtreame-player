.class public abstract Lo/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public a:Landroid/content/Context;


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lo/i;->a:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    new-instance v0, Lo/h;

    .line 6
    .line 7
    invoke-static {p2}, Landroid/support/customtabs/ICustomTabsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/support/customtabs/ICustomTabsService;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-direct {v0, p2, p1}, Lo/e;-><init>(Landroid/support/customtabs/ICustomTabsService;Landroid/content/ComponentName;)V

    .line 12
    .line 13
    .line 14
    move-object p1, p0

    .line 15
    check-cast p1, Lcom/google/android/gms/internal/ads/RJ;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/RJ;->b:Ljava/lang/ref/WeakReference;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lcom/google/android/gms/internal/ads/a8;

    .line 24
    .line 25
    if-eqz p1, :cond_3

    .line 26
    .line 27
    iput-object v0, p1, Lcom/google/android/gms/internal/ads/a8;->b:Lo/e;

    .line 28
    .line 29
    const-wide/16 v0, 0x0

    .line 30
    .line 31
    :try_start_0
    invoke-interface {p2, v0, v1}, Landroid/support/customtabs/ICustomTabsService;->warmup(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    nop

    .line 36
    :goto_0
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/a8;->d:La3/b;

    .line 37
    .line 38
    if-eqz p1, :cond_3

    .line 39
    .line 40
    iget-object p2, p1, La3/b;->H:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p2, Lcom/google/android/gms/internal/ads/a8;

    .line 43
    .line 44
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/a8;->b:Lo/e;

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    if-nez v0, :cond_0

    .line 48
    .line 49
    iput-object v1, p2, Lcom/google/android/gms/internal/ads/a8;->a:Lo/j;

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_0
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/a8;->a:Lo/j;

    .line 53
    .line 54
    if-nez v2, :cond_1

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Lo/e;->a(Lcom/google/android/gms/internal/ads/b8;)Lo/j;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iput-object v0, p2, Lcom/google/android/gms/internal/ads/a8;->a:Lo/j;

    .line 61
    .line 62
    :cond_1
    :goto_1
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/a8;->a:Lo/j;

    .line 63
    .line 64
    new-instance v0, Lo/g;

    .line 65
    .line 66
    invoke-direct {v0, p2}, Lo/g;-><init>(Lo/j;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Lo/g;->a()Lm2/l;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    iget-object v0, p2, Lm2/l;->H:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v0, Landroid/content/Intent;

    .line 76
    .line 77
    iget-object v2, p1, La3/b;->I:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v2, Landroid/content/Context;

    .line 80
    .line 81
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/Cw;->m0(Landroid/content/Context;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    .line 87
    .line 88
    iget-object v0, p1, La3/b;->I:Ljava/lang/Object;

    .line 89
    .line 90
    check-cast v0, Landroid/content/Context;

    .line 91
    .line 92
    iget-object v2, p1, La3/b;->J:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v2, Landroid/net/Uri;

    .line 95
    .line 96
    invoke-virtual {p2, v0, v2}, Lm2/l;->l(Landroid/content/Context;Landroid/net/Uri;)V

    .line 97
    .line 98
    .line 99
    iget-object p2, p1, La3/b;->I:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast p2, Landroid/content/Context;

    .line 102
    .line 103
    iget-object p1, p1, La3/b;->H:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast p1, Lcom/google/android/gms/internal/ads/a8;

    .line 106
    .line 107
    check-cast p2, Landroid/app/Activity;

    .line 108
    .line 109
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/a8;->c:Lcom/google/android/gms/internal/ads/RJ;

    .line 110
    .line 111
    if-nez v0, :cond_2

    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_2
    invoke-virtual {p2, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 115
    .line 116
    .line 117
    iput-object v1, p1, Lcom/google/android/gms/internal/ads/a8;->b:Lo/e;

    .line 118
    .line 119
    iput-object v1, p1, Lcom/google/android/gms/internal/ads/a8;->a:Lo/j;

    .line 120
    .line 121
    iput-object v1, p1, Lcom/google/android/gms/internal/ads/a8;->c:Lcom/google/android/gms/internal/ads/RJ;

    .line 122
    .line 123
    :cond_3
    :goto_2
    return-void

    .line 124
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 125
    .line 126
    const-string p2, "Custom Tabs Service connected before an applicationcontext has been provided."

    .line 127
    .line 128
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    throw p1
.end method
