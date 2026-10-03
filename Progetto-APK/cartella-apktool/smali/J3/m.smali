.class public final LJ3/m;
.super LX3/d;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final synthetic b:LJ3/e;


# direct methods
.method public constructor <init>(LJ3/e;Landroid/content/Context;)V
    .locals 1

    .line 1
    iput-object p1, p0, LJ3/m;->b:LJ3/e;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    :goto_0
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, v0}, LX3/d;-><init>(Landroid/os/Looper;I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, LJ3/m;->a:Landroid/content/Context;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    const-string v1, "Don\'t know how to handle this message: "

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v0, "GoogleApiAvailability"

    .line 21
    .line 22
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    sget p1, LJ3/f;->a:I

    .line 27
    .line 28
    iget-object v1, p0, LJ3/m;->b:LJ3/e;

    .line 29
    .line 30
    iget-object v2, p0, LJ3/m;->a:Landroid/content/Context;

    .line 31
    .line 32
    invoke-virtual {v1, v2, p1}, LJ3/e;->c(Landroid/content/Context;I)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    sget-object v3, LJ3/j;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    .line 38
    if-eq p1, v0, :cond_1

    .line 39
    .line 40
    const/4 v0, 0x2

    .line 41
    if-eq p1, v0, :cond_1

    .line 42
    .line 43
    const/4 v0, 0x3

    .line 44
    if-eq p1, v0, :cond_1

    .line 45
    .line 46
    const/16 v0, 0x9

    .line 47
    .line 48
    if-eq p1, v0, :cond_1

    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    const-string v0, "n"

    .line 52
    .line 53
    invoke-virtual {v1, p1, v2, v0}, LJ3/e;->b(ILandroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-nez v0, :cond_2

    .line 58
    .line 59
    const/4 v0, 0x0

    .line 60
    goto :goto_1

    .line 61
    :cond_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 62
    .line 63
    const/16 v4, 0x17

    .line 64
    .line 65
    if-lt v3, v4, :cond_3

    .line 66
    .line 67
    const/high16 v3, 0xc000000

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    const/high16 v3, 0x8000000

    .line 71
    .line 72
    :goto_0
    const/4 v4, 0x0

    .line 73
    invoke-static {v2, v4, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    :goto_1
    invoke-virtual {v1, v2, p1, v0}, LJ3/e;->h(Landroid/content/Context;ILandroid/app/PendingIntent;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method
