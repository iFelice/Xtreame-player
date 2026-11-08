.class public Lpe/hf/black20/services/RecordingServices;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field public static final synthetic T:I


# instance fields
.field public final G:Lpe/hf/black20/services/RecordingServices;

.field public H:Lorg/videolan/libvlc/MediaPlayer;

.field public I:Lc7/c;

.field public J:Landroid/content/SharedPreferences;

.field public K:Ljava/util/ArrayList;

.field public L:Ljava/util/ArrayList;

.field public M:Ljava/lang/String;

.field public final N:Landroid/os/Handler;

.field public O:Lcom/google/android/gms/internal/cast/X;

.field public final P:I

.field public Q:Ljava/lang/String;

.field public R:Ljava/lang/String;

.field public S:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p0, p0, Lpe/hf/black20/services/RecordingServices;->G:Lpe/hf/black20/services/RecordingServices;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lpe/hf/black20/services/RecordingServices;->H:Lorg/videolan/libvlc/MediaPlayer;

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lpe/hf/black20/services/RecordingServices;->K:Ljava/util/ArrayList;

    .line 15
    .line 16
    new-instance v0, Landroid/os/Handler;

    .line 17
    .line 18
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lpe/hf/black20/services/RecordingServices;->N:Landroid/os/Handler;

    .line 22
    .line 23
    const/16 v0, 0x3a98

    .line 24
    .line 25
    iput v0, p0, Lpe/hf/black20/services/RecordingServices;->P:I

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    iput-object v0, p0, Lpe/hf/black20/services/RecordingServices;->Q:Ljava/lang/String;

    .line 4
    .line 5
    iput-object v0, p0, Lpe/hf/black20/services/RecordingServices;->R:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lpe/hf/black20/services/RecordingServices;->S:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {}, Lz4/q0;->q()LQ5/a;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    const-string v2, "ORT_isRecordingRunning"

    .line 15
    .line 16
    invoke-virtual {v0, v2, v1}, LQ5/a;->e(Ljava/lang/String;Z)LQ5/a;

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lpe/hf/black20/services/RecordingServices;->H:Lorg/videolan/libvlc/MediaPlayer;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->release()V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lpe/hf/black20/services/RecordingServices;->N:Landroid/os/Handler;

    .line 5
    .line 6
    iget-object v1, p0, Lpe/hf/black20/services/RecordingServices;->O:Lcom/google/android/gms/internal/cast/X;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lpe/hf/black20/services/RecordingServices;->a()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    .line 1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 p2, 0x1a

    .line 4
    .line 5
    if-lt p1, p2, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/Hf;->f()Landroid/app/NotificationChannel;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-static {p0}, Lb7/u;->k(Lpe/hf/black20/services/RecordingServices;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p3

    .line 15
    check-cast p3, Landroid/app/NotificationManager;

    .line 16
    .line 17
    invoke-static {p3, p2}, Lcom/google/android/gms/internal/ads/Hf;->s(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    new-instance p2, Landroid/content/Intent;

    .line 21
    .line 22
    const-class p3, Lpe/hf/black20/RecordsActivity;

    .line 23
    .line 24
    invoke-direct {p2, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 25
    .line 26
    .line 27
    const/16 p3, 0x1f

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    if-lt p1, p3, :cond_1

    .line 31
    .line 32
    const/high16 p3, 0x4000000

    .line 33
    .line 34
    invoke-static {p0, v0, p2, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/high16 p3, 0x12000000

    .line 40
    .line 41
    invoke-static {p0, v0, p2, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    :goto_0
    new-instance p3, LD/o;

    .line 46
    .line 47
    const-string v0, "ForegroundServiceChannelForRecording"

    .line 48
    .line 49
    invoke-direct {p3, p0, v0}, LD/o;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const-string v0, "Foreground Service"

    .line 53
    .line 54
    invoke-static {v0}, LD/o;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iput-object v0, p3, LD/o;->e:Ljava/lang/CharSequence;

    .line 59
    .line 60
    const-string v0, "Schedule Recording"

    .line 61
    .line 62
    invoke-static {v0}, LD/o;->b(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iput-object v0, p3, LD/o;->f:Ljava/lang/CharSequence;

    .line 67
    .line 68
    iget-object v0, p3, LD/o;->q:Landroid/app/Notification;

    .line 69
    .line 70
    const/high16 v1, 0x7f100000

    .line 71
    .line 72
    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 73
    .line 74
    iput-object p2, p3, LD/o;->g:Landroid/app/PendingIntent;

    .line 75
    .line 76
    invoke-virtual {p3}, LD/o;->a()Landroid/app/Notification;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    const/16 p3, 0x22

    .line 81
    .line 82
    const/4 v0, 0x1

    .line 83
    if-lt p1, p3, :cond_2

    .line 84
    .line 85
    invoke-static {p0, p2}, Landroid/support/v4/media/session/a;->r(Lpe/hf/black20/services/RecordingServices;Landroid/app/Notification;)V

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_2
    invoke-virtual {p0, v0, p2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 90
    .line 91
    .line 92
    :goto_1
    iget-object p1, p0, Lpe/hf/black20/services/RecordingServices;->N:Landroid/os/Handler;

    .line 93
    .line 94
    new-instance p2, Lcom/google/android/gms/internal/cast/X;

    .line 95
    .line 96
    const/16 p3, 0x1d

    .line 97
    .line 98
    invoke-direct {p2, p0, p3}, Lcom/google/android/gms/internal/cast/X;-><init>(Ljava/lang/Object;I)V

    .line 99
    .line 100
    .line 101
    iput-object p2, p0, Lpe/hf/black20/services/RecordingServices;->O:Lcom/google/android/gms/internal/cast/X;

    .line 102
    .line 103
    iget p3, p0, Lpe/hf/black20/services/RecordingServices;->P:I

    .line 104
    .line 105
    int-to-long v1, p3

    .line 106
    invoke-virtual {p1, p2, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 107
    .line 108
    .line 109
    return v0
.end method
