.class public final Lc4/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final a:Ljava/lang/String;

.field public final synthetic b:Lc4/b0;


# direct methods
.method public constructor <init>(Lc4/b0;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lc4/a0;->b:Lc4/b0;

    .line 5
    .line 6
    iput-object p2, p0, Lc4/a0;->a:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 9

    .line 1
    iget-object p1, p0, Lc4/a0;->b:Lc4/b0;

    .line 2
    .line 3
    if-eqz p2, :cond_2

    .line 4
    .line 5
    :try_start_0
    sget v0, Lcom/google/android/gms/internal/measurement/A;->G:I

    .line 6
    .line 7
    const-string v0, "com.google.android.finsky.externalreferrer.IGetInstallReferrerService"

    .line 8
    .line 9
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/B;

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    check-cast v1, Lcom/google/android/gms/internal/measurement/B;

    .line 18
    .line 19
    :goto_0
    move-object v5, v1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/measurement/z;

    .line 22
    .line 23
    const/4 v2, 0x4

    .line 24
    invoke-direct {v1, p2, v0, v2}, Lcom/google/android/gms/internal/ads/y5;-><init>(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :goto_1
    if-nez v5, :cond_1

    .line 29
    .line 30
    iget-object p2, p1, Lc4/b0;->a:Lc4/l0;

    .line 31
    .line 32
    iget-object p2, p2, Lc4/l0;->O:Lc4/T;

    .line 33
    .line 34
    invoke-static {p2}, Lc4/l0;->k(Lc4/s0;)V

    .line 35
    .line 36
    .line 37
    iget-object p2, p2, Lc4/T;->O:Lc4/Q;

    .line 38
    .line 39
    const-string v0, "Install Referrer Service implementation was not found"

    .line 40
    .line 41
    invoke-virtual {p2, v0}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :catch_0
    move-exception p2

    .line 46
    goto :goto_2

    .line 47
    :cond_1
    iget-object p2, p1, Lc4/b0;->a:Lc4/l0;

    .line 48
    .line 49
    iget-object v0, p2, Lc4/l0;->O:Lc4/T;

    .line 50
    .line 51
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, v0, Lc4/T;->T:Lc4/Q;

    .line 55
    .line 56
    const-string v1, "Install Referrer Service connected"

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object p2, p2, Lc4/l0;->P:Lc4/j0;

    .line 62
    .line 63
    invoke-static {p2}, Lc4/l0;->k(Lc4/s0;)V

    .line 64
    .line 65
    .line 66
    new-instance v0, LZ3/v;

    .line 67
    .line 68
    const/4 v7, 0x2

    .line 69
    const/4 v8, 0x0

    .line 70
    move-object v3, v0

    .line 71
    move-object v4, p0

    .line 72
    move-object v6, p0

    .line 73
    invoke-direct/range {v3 .. v8}, LZ3/v;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, v0}, Lc4/j0;->x(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :goto_2
    iget-object p1, p1, Lc4/b0;->a:Lc4/l0;

    .line 81
    .line 82
    iget-object p1, p1, Lc4/l0;->O:Lc4/T;

    .line 83
    .line 84
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 85
    .line 86
    .line 87
    const-string v0, "Exception occurred while calling Install Referrer API"

    .line 88
    .line 89
    iget-object p1, p1, Lc4/T;->O:Lc4/Q;

    .line 90
    .line 91
    invoke-virtual {p1, p2, v0}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :cond_2
    iget-object p1, p1, Lc4/b0;->a:Lc4/l0;

    .line 96
    .line 97
    iget-object p1, p1, Lc4/l0;->O:Lc4/T;

    .line 98
    .line 99
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 100
    .line 101
    .line 102
    const-string p2, "Install Referrer connection returned with null binder"

    .line 103
    .line 104
    iget-object p1, p1, Lc4/T;->O:Lc4/Q;

    .line 105
    .line 106
    invoke-virtual {p1, p2}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lc4/a0;->b:Lc4/b0;

    .line 2
    .line 3
    iget-object p1, p1, Lc4/b0;->a:Lc4/l0;

    .line 4
    .line 5
    iget-object p1, p1, Lc4/l0;->O:Lc4/T;

    .line 6
    .line 7
    invoke-static {p1}, Lc4/l0;->k(Lc4/s0;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "Install Referrer Service disconnected"

    .line 11
    .line 12
    iget-object p1, p1, Lc4/T;->T:Lc4/Q;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
