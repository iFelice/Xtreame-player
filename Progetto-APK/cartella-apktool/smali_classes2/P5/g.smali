.class public final LP5/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# instance fields
.field public a:LZ3/o;

.field public b:LO5/t;

.field public final synthetic c:LP5/h;


# direct methods
.method public constructor <init>(LP5/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LP5/g;->c:LP5/h;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 8

    .line 1
    iget-object v0, p0, LP5/g;->b:LO5/t;

    .line 2
    .line 3
    iget-object v1, p0, LP5/g;->a:LZ3/o;

    .line 4
    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    if-eqz v1, :cond_3

    .line 8
    .line 9
    if-eqz p1, :cond_2

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    new-instance p2, LO5/u;

    .line 20
    .line 21
    iget v4, v0, LO5/t;->G:I

    .line 22
    .line 23
    iget v5, v0, LO5/t;->H:I

    .line 24
    .line 25
    iget-object v0, p0, LP5/g;->c:LP5/h;

    .line 26
    .line 27
    iget v7, v0, LP5/h;->k:I

    .line 28
    .line 29
    move-object v2, p2

    .line 30
    move-object v3, p1

    .line 31
    invoke-direct/range {v2 .. v7}, LO5/u;-><init>([BIIII)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, LP5/g;->c:LP5/h;

    .line 35
    .line 36
    iget-object p1, p1, LP5/h;->b:Landroid/hardware/Camera$CameraInfo;

    .line 37
    .line 38
    iget p1, p1, Landroid/hardware/Camera$CameraInfo;->facing:I

    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    if-ne p1, v0, :cond_0

    .line 42
    .line 43
    iput-boolean v0, p2, LO5/u;->e:Z

    .line 44
    .line 45
    :cond_0
    iget-object p1, v1, LZ3/o;->H:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p1, LO5/o;

    .line 48
    .line 49
    iget-object p1, p1, LO5/o;->h:Ljava/lang/Object;

    .line 50
    .line 51
    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :try_start_1
    iget-object v0, v1, LZ3/o;->H:Ljava/lang/Object;

    .line 53
    .line 54
    move-object v2, v0

    .line 55
    check-cast v2, LO5/o;

    .line 56
    .line 57
    iget-boolean v2, v2, LO5/o;->g:Z

    .line 58
    .line 59
    if-eqz v2, :cond_1

    .line 60
    .line 61
    check-cast v0, LO5/o;

    .line 62
    .line 63
    iget-object v0, v0, LO5/o;->c:Landroid/os/Handler;

    .line 64
    .line 65
    const v2, 0x7f0b05c2

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catchall_0
    move-exception p2

    .line 77
    goto :goto_1

    .line 78
    :cond_1
    :goto_0
    monitor-exit p1

    .line 79
    goto :goto_3

    .line 80
    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    :try_start_2
    throw p2

    .line 82
    :catch_0
    move-exception p1

    .line 83
    goto :goto_2

    .line 84
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    .line 85
    .line 86
    const-string p2, "No preview data received"

    .line 87
    .line 88
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 92
    :goto_2
    const-string p2, "h"

    .line 93
    .line 94
    const-string v0, "Camera preview failed"

    .line 95
    .line 96
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, LZ3/o;->g()V

    .line 100
    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_3
    const-string p1, "h"

    .line 104
    .line 105
    const-string p2, "Got preview callback, but no handler or resolution available"

    .line 106
    .line 107
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    if-eqz v1, :cond_4

    .line 111
    .line 112
    new-instance p1, Ljava/lang/Exception;

    .line 113
    .line 114
    const-string p2, "No resolution available"

    .line 115
    .line 116
    invoke-direct {p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1}, LZ3/o;->g()V

    .line 120
    .line 121
    .line 122
    :cond_4
    :goto_3
    return-void
.end method
