.class public final LD0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:LD0/E;

.field public final c:Landroid/os/Handler;

.field public final d:LB0/r;

.field public final e:Lf/G;

.field public final f:LD0/e;

.field public g:LD0/d;

.field public h:Lf/S;

.field public i:Lm0/d;

.field public j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;LD0/E;Lm0/d;Lf/S;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, LD0/f;->a:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p2, p0, LD0/f;->b:LD0/E;

    .line 11
    .line 12
    iput-object p3, p0, LD0/f;->i:Lm0/d;

    .line 13
    .line 14
    iput-object p4, p0, LD0/f;->h:Lf/S;

    .line 15
    .line 16
    sget-object p2, Lp0/M;->a:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    :goto_0
    new-instance v2, Landroid/os/Handler;

    .line 30
    .line 31
    const/4 p3, 0x0

    .line 32
    invoke-direct {v2, p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 33
    .line 34
    .line 35
    iput-object v2, p0, LD0/f;->c:Landroid/os/Handler;

    .line 36
    .line 37
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 38
    .line 39
    const/16 p4, 0x17

    .line 40
    .line 41
    if-lt p2, p4, :cond_1

    .line 42
    .line 43
    new-instance p2, LB0/r;

    .line 44
    .line 45
    invoke-direct {p2, p0}, LB0/r;-><init>(LD0/f;)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    move-object p2, p3

    .line 50
    :goto_1
    iput-object p2, p0, LD0/f;->d:LB0/r;

    .line 51
    .line 52
    new-instance p2, Lf/G;

    .line 53
    .line 54
    invoke-direct {p2, p0}, Lf/G;-><init>(LD0/f;)V

    .line 55
    .line 56
    .line 57
    iput-object p2, p0, LD0/f;->e:Lf/G;

    .line 58
    .line 59
    sget-object p2, LD0/d;->c:LD0/d;

    .line 60
    .line 61
    sget-object p2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 62
    .line 63
    const-string p4, "Amazon"

    .line 64
    .line 65
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result p4

    .line 69
    if-nez p4, :cond_3

    .line 70
    .line 71
    const-string p4, "Xiaomi"

    .line 72
    .line 73
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    if-eqz p2, :cond_2

    .line 78
    .line 79
    goto :goto_2

    .line 80
    :cond_2
    move-object v4, p3

    .line 81
    goto :goto_3

    .line 82
    :cond_3
    :goto_2
    const-string p2, "external_surround_sound_enabled"

    .line 83
    .line 84
    invoke-static {p2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    move-object v4, p2

    .line 89
    :goto_3
    if-eqz v4, :cond_4

    .line 90
    .line 91
    new-instance p3, LD0/e;

    .line 92
    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    const/4 v5, 0x0

    .line 98
    move-object v0, p3

    .line 99
    move-object v1, p0

    .line 100
    invoke-direct/range {v0 .. v5}, LD0/e;-><init>(Ljava/lang/Object;Landroid/os/Handler;Landroid/content/ContentResolver;Landroid/net/Uri;I)V

    .line 101
    .line 102
    .line 103
    :cond_4
    iput-object p3, p0, LD0/f;->f:LD0/e;

    .line 104
    .line 105
    return-void
.end method


# virtual methods
.method public final a(LD0/d;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, LD0/f;->j:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, LD0/f;->g:LD0/d;

    .line 6
    .line 7
    invoke-virtual {p1, v0}, LD0/d;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_3

    .line 12
    .line 13
    iput-object p1, p0, LD0/f;->g:LD0/d;

    .line 14
    .line 15
    iget-object v0, p0, LD0/f;->b:LD0/E;

    .line 16
    .line 17
    iget-object v0, v0, LD0/E;->a:LD0/S;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v2, v0, LD0/S;->j0:Landroid/os/Looper;

    .line 27
    .line 28
    if-ne v2, v1, :cond_0

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v2, 0x0

    .line 33
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v4, "Current looper ("

    .line 36
    .line 37
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v4, "null"

    .line 41
    .line 42
    if-nez v1, :cond_1

    .line 43
    .line 44
    move-object v1, v4

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v1, ") is not the playback looper ("

    .line 58
    .line 59
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-object v1, v0, LD0/S;->j0:Landroid/os/Looper;

    .line 63
    .line 64
    if-nez v1, :cond_2

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_2
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    :goto_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v1, ")"

    .line 79
    .line 80
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/measurement/H1;->h(Ljava/lang/String;Z)V

    .line 88
    .line 89
    .line 90
    iget-object v1, v0, LD0/S;->z:LD0/d;

    .line 91
    .line 92
    if-eqz v1, :cond_3

    .line 93
    .line 94
    invoke-virtual {p1, v1}, LD0/d;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-nez v1, :cond_3

    .line 99
    .line 100
    iput-object p1, v0, LD0/S;->z:LD0/d;

    .line 101
    .line 102
    iget-object p1, v0, LD0/S;->u:LD0/s;

    .line 103
    .line 104
    if-eqz p1, :cond_3

    .line 105
    .line 106
    invoke-interface {p1}, LD0/s;->v()V

    .line 107
    .line 108
    .line 109
    :cond_3
    return-void
.end method

.method public final b(Landroid/media/AudioDeviceInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, LD0/f;->h:Lf/S;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move-object v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, v0, Lf/S;->H:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Landroid/media/AudioDeviceInfo;

    .line 11
    .line 12
    :goto_0
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    if-eqz p1, :cond_2

    .line 20
    .line 21
    new-instance v1, Lf/S;

    .line 22
    .line 23
    const/16 v0, 0x1c

    .line 24
    .line 25
    invoke-direct {v1, p1, v0}, Lf/S;-><init>(Ljava/lang/Object;I)V

    .line 26
    .line 27
    .line 28
    :cond_2
    iput-object v1, p0, LD0/f;->h:Lf/S;

    .line 29
    .line 30
    iget-object p1, p0, LD0/f;->a:Landroid/content/Context;

    .line 31
    .line 32
    iget-object v0, p0, LD0/f;->i:Lm0/d;

    .line 33
    .line 34
    invoke-static {p1, v0, v1}, LD0/d;->c(Landroid/content/Context;Lm0/d;Lf/S;)LD0/d;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p0, p1}, LD0/f;->a(LD0/d;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
