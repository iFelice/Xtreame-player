.class public final LJ2/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:LJ2/s;


# direct methods
.method public synthetic constructor <init>(LJ2/s;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, LJ2/r;->G:I

    .line 5
    .line 6
    iput-object p1, p0, LJ2/r;->H:LJ2/s;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, LJ2/r;->G:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "ConnectivityMonitor"

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, LJ2/r;->H:LJ2/s;

    .line 10
    .line 11
    iget-boolean v0, v0, LJ2/s;->J:Z

    .line 12
    .line 13
    iget-object v1, p0, LJ2/r;->H:LJ2/s;

    .line 14
    .line 15
    invoke-virtual {v1}, LJ2/s;->c()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    iput-boolean v3, v1, LJ2/s;->J:Z

    .line 20
    .line 21
    iget-object v1, p0, LJ2/r;->H:LJ2/s;

    .line 22
    .line 23
    iget-boolean v1, v1, LJ2/s;->J:Z

    .line 24
    .line 25
    if-eq v0, v1, :cond_1

    .line 26
    .line 27
    const/4 v0, 0x3

    .line 28
    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v1, "connectivity changed, isConnected: "

    .line 37
    .line 38
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, LJ2/r;->H:LJ2/s;

    .line 42
    .line 43
    iget-boolean v1, v1, LJ2/s;->J:Z

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    :cond_0
    iget-object v0, p0, LJ2/r;->H:LJ2/s;

    .line 56
    .line 57
    iget-boolean v1, v0, LJ2/s;->J:Z

    .line 58
    .line 59
    new-instance v2, Lc0/a;

    .line 60
    .line 61
    const/4 v3, 0x2

    .line 62
    invoke-direct {v2, v3, v0, v1}, Lc0/a;-><init>(ILjava/lang/Object;Z)V

    .line 63
    .line 64
    .line 65
    invoke-static {}, LP2/o;->f()Landroid/os/Handler;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 70
    .line 71
    .line 72
    :cond_1
    return-void

    .line 73
    :pswitch_0
    iget-object v0, p0, LJ2/r;->H:LJ2/s;

    .line 74
    .line 75
    iget-boolean v0, v0, LJ2/s;->K:Z

    .line 76
    .line 77
    if-nez v0, :cond_2

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    iget-object v0, p0, LJ2/r;->H:LJ2/s;

    .line 81
    .line 82
    iput-boolean v1, v0, LJ2/s;->K:Z

    .line 83
    .line 84
    iget-object v0, p0, LJ2/r;->H:LJ2/s;

    .line 85
    .line 86
    iget-object v1, v0, LJ2/s;->G:Landroid/content/Context;

    .line 87
    .line 88
    iget-object v0, v0, LJ2/s;->L:Lf/G;

    .line 89
    .line 90
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 91
    .line 92
    .line 93
    :goto_0
    return-void

    .line 94
    :pswitch_1
    iget-object v0, p0, LJ2/r;->H:LJ2/s;

    .line 95
    .line 96
    invoke-virtual {v0}, LJ2/s;->c()Z

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    iput-boolean v3, v0, LJ2/s;->J:Z

    .line 101
    .line 102
    :try_start_0
    iget-object v0, p0, LJ2/r;->H:LJ2/s;

    .line 103
    .line 104
    iget-object v3, v0, LJ2/s;->G:Landroid/content/Context;

    .line 105
    .line 106
    iget-object v0, v0, LJ2/s;->L:Lf/G;

    .line 107
    .line 108
    new-instance v4, Landroid/content/IntentFilter;

    .line 109
    .line 110
    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 111
    .line 112
    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, LJ2/r;->H:LJ2/s;

    .line 119
    .line 120
    const/4 v3, 0x1

    .line 121
    iput-boolean v3, v0, LJ2/s;->K:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :catch_0
    move-exception v0

    .line 125
    const/4 v3, 0x5

    .line 126
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    if-eqz v3, :cond_3

    .line 131
    .line 132
    const-string v3, "Failed to register"

    .line 133
    .line 134
    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    .line 136
    .line 137
    :cond_3
    iget-object v0, p0, LJ2/r;->H:LJ2/s;

    .line 138
    .line 139
    iput-boolean v1, v0, LJ2/s;->K:Z

    .line 140
    .line 141
    :goto_1
    return-void

    .line 142
    nop

    .line 143
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
