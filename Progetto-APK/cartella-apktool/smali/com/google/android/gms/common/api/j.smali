.class public abstract Lcom/google/android/gms/common/api/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final zaa:LK3/f;

.field private final zab:Landroid/content/Context;

.field private final zac:Ljava/lang/String;

.field private final zad:Lcom/google/android/gms/common/api/g;

.field private final zae:Lcom/google/android/gms/common/api/c;

.field private final zaf:LK3/a;

.field private final zag:Landroid/os/Looper;

.field private final zah:I

.field private final zai:Lcom/google/android/gms/common/api/m;

.field private final zaj:LK3/q;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/api/c;Lcom/google/android/gms/common/api/i;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Null context is not permitted."

    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/bumptech/glide/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string v0, "Api must not be null."

    .line 10
    .line 11
    invoke-static {p2, v0}, Lcom/bumptech/glide/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead."

    .line 15
    .line 16
    invoke-static {p4, v0}, Lcom/bumptech/glide/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "The provided context did not have an application context."

    .line 24
    .line 25
    invoke-static {v0, v1}, Lcom/bumptech/glide/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/google/android/gms/common/api/j;->zab:Landroid/content/Context;

    .line 29
    .line 30
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 31
    .line 32
    const/16 v2, 0x1e

    .line 33
    .line 34
    if-lt v1, v2, :cond_0

    .line 35
    .line 36
    invoke-static {p1}, Lb7/Z;->n(Landroid/content/Context;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/j;->getApiFallbackAttributionTag(Landroid/content/Context;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/common/api/j;->zac:Ljava/lang/String;

    .line 46
    .line 47
    iput-object p2, p0, Lcom/google/android/gms/common/api/j;->zad:Lcom/google/android/gms/common/api/g;

    .line 48
    .line 49
    iput-object p3, p0, Lcom/google/android/gms/common/api/j;->zae:Lcom/google/android/gms/common/api/c;

    .line 50
    .line 51
    iget-object v1, p4, Lcom/google/android/gms/common/api/i;->b:Landroid/os/Looper;

    .line 52
    .line 53
    iput-object v1, p0, Lcom/google/android/gms/common/api/j;->zag:Landroid/os/Looper;

    .line 54
    .line 55
    new-instance v1, LK3/a;

    .line 56
    .line 57
    invoke-direct {v1, p2, p3, p1}, LK3/a;-><init>(Lcom/google/android/gms/common/api/g;Lcom/google/android/gms/common/api/c;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iput-object v1, p0, Lcom/google/android/gms/common/api/j;->zaf:LK3/a;

    .line 61
    .line 62
    new-instance p1, LK3/C;

    .line 63
    .line 64
    invoke-direct {p1, p0}, LK3/C;-><init>(Lcom/google/android/gms/common/api/j;)V

    .line 65
    .line 66
    .line 67
    iput-object p1, p0, Lcom/google/android/gms/common/api/j;->zai:Lcom/google/android/gms/common/api/m;

    .line 68
    .line 69
    invoke-static {v0}, LK3/f;->f(Landroid/content/Context;)LK3/f;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iput-object p1, p0, Lcom/google/android/gms/common/api/j;->zaa:LK3/f;

    .line 74
    .line 75
    iget-object p2, p1, LK3/f;->N:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 76
    .line 77
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 78
    .line 79
    .line 80
    move-result p2

    .line 81
    iput p2, p0, Lcom/google/android/gms/common/api/j;->zah:I

    .line 82
    .line 83
    iget-object p2, p4, Lcom/google/android/gms/common/api/i;->a:LK3/q;

    .line 84
    .line 85
    iput-object p2, p0, Lcom/google/android/gms/common/api/j;->zaj:LK3/q;

    .line 86
    .line 87
    iget-object p1, p1, LK3/f;->S:LX3/d;

    .line 88
    .line 89
    const/4 p2, 0x7

    .line 90
    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 95
    .line 96
    .line 97
    return-void
.end method


# virtual methods
.method public asGoogleApiClient()Lcom/google/android/gms/common/api/m;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/j;->zai:Lcom/google/android/gms/common/api/m;

    return-object v0
.end method

.method public final b(ILK3/s;)Lg4/r;
    .locals 4

    .line 1
    new-instance v0, Lg4/i;

    .line 2
    .line 3
    invoke-direct {v0}, Lg4/i;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/google/android/gms/common/api/j;->zaj:LK3/q;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/google/android/gms/common/api/j;->zaa:LK3/f;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    iget v3, p2, LK3/s;->c:I

    .line 14
    .line 15
    invoke-virtual {v2, v0, v3, p0}, LK3/f;->e(Lg4/i;ILcom/google/android/gms/common/api/j;)V

    .line 16
    .line 17
    .line 18
    new-instance v3, LK3/S;

    .line 19
    .line 20
    invoke-direct {v3, p1, p2, v0, v1}, LK3/S;-><init>(ILK3/s;Lg4/i;LK3/q;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, v2, LK3/f;->O:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 24
    .line 25
    new-instance p2, LK3/H;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-direct {p2, v3, p1, p0}, LK3/H;-><init>(LK3/E;ILcom/google/android/gms/common/api/j;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, v2, LK3/f;->S:LX3/d;

    .line 35
    .line 36
    const/4 v1, 0x4

    .line 37
    invoke-virtual {p1, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 42
    .line 43
    .line 44
    iget-object p1, v0, Lg4/i;->a:Lg4/r;

    .line 45
    .line 46
    return-object p1
.end method

.method public createClientSettingsBuilder()Lcom/google/android/gms/common/internal/h;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/common/internal/h;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    iput-object v1, v0, Lcom/google/android/gms/common/internal/h;->a:Landroid/accounts/Account;

    .line 8
    .line 9
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, v0, Lcom/google/android/gms/common/internal/h;->b:Lr/g;

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    new-instance v2, Lr/g;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-direct {v2, v3}, Lr/g;-><init>(I)V

    .line 21
    .line 22
    .line 23
    iput-object v2, v0, Lcom/google/android/gms/common/internal/h;->b:Lr/g;

    .line 24
    .line 25
    :cond_0
    iget-object v2, v0, Lcom/google/android/gms/common/internal/h;->b:Lr/g;

    .line 26
    .line 27
    invoke-virtual {v2, v1}, Lr/g;->addAll(Ljava/util/Collection;)Z

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/google/android/gms/common/api/j;->zab:Landroid/content/Context;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iput-object v1, v0, Lcom/google/android/gms/common/internal/h;->d:Ljava/lang/String;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/google/android/gms/common/api/j;->zab:Landroid/content/Context;

    .line 43
    .line 44
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iput-object v1, v0, Lcom/google/android/gms/common/internal/h;->c:Ljava/lang/String;

    .line 49
    .line 50
    return-object v0
.end method

.method public disconnectService()Lg4/h;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lg4/h;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/j;->zaa:LK3/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    new-instance v1, LK3/w;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/j;->getApiKey()LK3/a;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-direct {v1, v2}, LK3/w;-><init>(LK3/a;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, v0, LK3/f;->S:LX3/d;

    .line 16
    .line 17
    const/16 v2, 0xe

    .line 18
    .line 19
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 24
    .line 25
    .line 26
    iget-object v0, v1, LK3/w;->b:Lg4/i;

    .line 27
    .line 28
    iget-object v0, v0, Lg4/i;->a:Lg4/r;

    .line 29
    .line 30
    return-object v0
.end method

.method public doBestEffortWrite(LK3/c;)LK3/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/e;",
            "T:",
            "LK3/c;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public doBestEffortWrite(LK3/s;)Lg4/h;
    .locals 1
    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            "A::",
            "Lcom/google/android/gms/common/api/e;",
            ">(",
            "LK3/s;",
            ")",
            "Lg4/h;"
        }
    .end annotation

    .line 3
    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/common/api/j;->b(ILK3/s;)Lg4/r;

    move-result-object p1

    return-object p1
.end method

.method public doRead(LK3/c;)LK3/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/e;",
            "T:",
            "LK3/c;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public doRead(LK3/s;)Lg4/h;
    .locals 1
    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            "A::",
            "Lcom/google/android/gms/common/api/e;",
            ">(",
            "LK3/s;",
            ")",
            "Lg4/h;"
        }
    .end annotation

    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/common/api/j;->b(ILK3/s;)Lg4/r;

    move-result-object p1

    return-object p1
.end method

.method public doRegisterEventListener(LK3/m;LK3/t;)Lg4/h;
    .locals 2
    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/e;",
            "T:",
            "LK3/m;",
            "U:",
            "LK3/t;",
            ">(TT;TU;)",
            "Lg4/h;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 2
    invoke-static {p2}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p1, LK3/m;->a:LK3/j;

    .line 4
    iget-object v0, v0, LK3/j;->b:LK3/i;

    .line 5
    const-string v1, "Listener has already been released."

    invoke-static {v0, v1}, Lcom/bumptech/glide/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p2, LK3/t;->a:LK3/i;

    .line 7
    invoke-static {v0, v1}, Lcom/bumptech/glide/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v0, p1, LK3/m;->a:LK3/j;

    .line 9
    iget-object v0, v0, LK3/j;->b:LK3/i;

    .line 10
    iget-object v1, p2, LK3/t;->a:LK3/i;

    .line 11
    invoke-static {v0, v1}, LU4/a;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Listener registration and unregistration methods must be constructed with the same ListenerHolder."

    .line 12
    invoke-static {v1, v0}, Lcom/bumptech/glide/c;->a(Ljava/lang/String;Z)V

    sget-object v0, Lcom/google/android/gms/common/api/r;->G:Lcom/google/android/gms/common/api/r;

    iget-object v1, p0, Lcom/google/android/gms/common/api/j;->zaa:LK3/f;

    .line 13
    invoke-virtual {v1, p0, p1, p2, v0}, LK3/f;->g(Lcom/google/android/gms/common/api/j;LK3/m;LK3/t;Ljava/lang/Runnable;)Lg4/r;

    move-result-object p1

    return-object p1
.end method

.method public doRegisterEventListener(LK3/o;)Lg4/h;
    .locals 3
    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/e;",
            ">(",
            "LK3/o;",
            ")",
            "Lg4/h;"
        }
    .end annotation

    .line 14
    invoke-static {p1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 15
    iget-object v0, p1, LK3/o;->a:LK3/m;

    .line 16
    iget-object v0, v0, LK3/m;->a:LK3/j;

    .line 17
    iget-object v0, v0, LK3/j;->b:LK3/i;

    .line 18
    const-string v1, "Listener has already been released."

    invoke-static {v0, v1}, Lcom/bumptech/glide/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v0, p1, LK3/o;->b:LK3/t;

    .line 20
    iget-object v0, v0, LK3/t;->a:LK3/i;

    .line 21
    invoke-static {v0, v1}, Lcom/bumptech/glide/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iget-object v0, p1, LK3/o;->a:LK3/m;

    iget-object p1, p1, LK3/o;->b:LK3/t;

    sget-object v1, LK3/J;->G:LK3/J;

    iget-object v2, p0, Lcom/google/android/gms/common/api/j;->zaa:LK3/f;

    invoke-virtual {v2, p0, v0, p1, v1}, LK3/f;->g(Lcom/google/android/gms/common/api/j;LK3/m;LK3/t;Ljava/lang/Runnable;)Lg4/r;

    move-result-object p1

    return-object p1
.end method

.method public doUnregisterEventListener(LK3/i;)Lg4/h;
    .locals 1
    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LK3/i;",
            ")",
            "Lg4/h;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/api/j;->doUnregisterEventListener(LK3/i;I)Lg4/h;

    move-result-object p1

    return-object p1
.end method

.method public doUnregisterEventListener(LK3/i;I)Lg4/h;
    .locals 3
    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LK3/i;",
            "I)",
            "Lg4/h;"
        }
    .end annotation

    .line 3
    const-string v0, "Listener key cannot be null."

    invoke-static {p1, v0}, Lcom/bumptech/glide/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/j;->zaa:LK3/f;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    new-instance v1, Lg4/i;

    invoke-direct {v1}, Lg4/i;-><init>()V

    .line 6
    invoke-virtual {v0, v1, p2, p0}, LK3/f;->e(Lg4/i;ILcom/google/android/gms/common/api/j;)V

    new-instance p2, LK3/Q;

    .line 7
    invoke-direct {p2, p1, v1}, LK3/Q;-><init>(LK3/i;Lg4/i;)V

    iget-object p1, v0, LK3/f;->O:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v2, LK3/H;

    .line 8
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    invoke-direct {v2, p2, p1, p0}, LK3/H;-><init>(LK3/E;ILcom/google/android/gms/common/api/j;)V

    iget-object p1, v0, LK3/f;->S:LX3/d;

    const/16 p2, 0xd

    .line 9
    invoke-virtual {p1, p2, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 10
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 11
    iget-object p1, v1, Lg4/i;->a:Lg4/r;

    return-object p1
.end method

.method public doWrite(LK3/c;)LK3/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/e;",
            "T:",
            "LK3/c;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    .line 2
    throw p1
.end method

.method public doWrite(LK3/s;)Lg4/h;
    .locals 1
    .annotation runtime Lcom/google/errorprone/annotations/ResultIgnorabilityUnspecified;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            "A::",
            "Lcom/google/android/gms/common/api/e;",
            ">(",
            "LK3/s;",
            ")",
            "Lg4/h;"
        }
    .end annotation

    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/common/api/j;->b(ILK3/s;)Lg4/r;

    move-result-object p1

    return-object p1
.end method

.method public getApiFallbackAttributionTag(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final getApiKey()LK3/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LK3/a;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/j;->zaf:LK3/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public getApiOptions()Lcom/google/android/gms/common/api/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/c;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/j;->zae:Lcom/google/android/gms/common/api/c;

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/j;->zab:Landroid/content/Context;

    return-object v0
.end method

.method public getContextAttributionTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/j;->zac:Ljava/lang/String;

    return-object v0
.end method

.method public getContextFeatureId()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/j;->zac:Ljava/lang/String;

    return-object v0
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/j;->zag:Landroid/os/Looper;

    return-object v0
.end method

.method public registerListener(Ljava/lang/Object;Ljava/lang/String;)LK3/j;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(T",
            "L;",
            "Ljava/lang/String;",
            ")",
            "LK3/j;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/common/api/j;->zag:Landroid/os/Looper;

    .line 2
    .line 3
    const-string v1, "Listener must not be null"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lcom/bumptech/glide/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "Looper must not be null"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/bumptech/glide/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v1, "Listener type must not be null"

    .line 14
    .line 15
    invoke-static {p2, v1}, Lcom/bumptech/glide/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v1, LK3/j;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 21
    .line 22
    .line 23
    new-instance v2, LX3/d;

    .line 24
    .line 25
    const/4 v3, 0x2

    .line 26
    invoke-direct {v2, v0, v3}, LX3/d;-><init>(Landroid/os/Looper;I)V

    .line 27
    .line 28
    .line 29
    iput-object p1, v1, LK3/j;->a:Ljava/lang/Object;

    .line 30
    .line 31
    new-instance v0, LK3/i;

    .line 32
    .line 33
    invoke-static {p2}, Lcom/bumptech/glide/c;->e(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {v0, p1, p2}, LK3/i;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, v1, LK3/j;->b:LK3/i;

    .line 40
    .line 41
    return-object v1
.end method

.method public final zaa()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/api/j;->zah:I

    return v0
.end method

.method public final zab(Landroid/os/Looper;LK3/z;)Lcom/google/android/gms/common/api/e;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/j;->createClientSettingsBuilder()Lcom/google/android/gms/common/internal/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v4, Lcom/google/android/gms/common/internal/i;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/google/android/gms/common/internal/h;->a:Landroid/accounts/Account;

    .line 8
    .line 9
    iget-object v2, v0, Lcom/google/android/gms/common/internal/h;->b:Lr/g;

    .line 10
    .line 11
    iget-object v3, v0, Lcom/google/android/gms/common/internal/h;->c:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/google/android/gms/common/internal/h;->d:Ljava/lang/String;

    .line 14
    .line 15
    invoke-direct {v4, v1, v2, v3, v0}, Lcom/google/android/gms/common/internal/i;-><init>(Landroid/accounts/Account;Lr/g;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/android/gms/common/api/j;->zad:Lcom/google/android/gms/common/api/g;

    .line 19
    .line 20
    iget-object v1, v0, Lcom/google/android/gms/common/api/g;->a:Lcom/google/android/gms/common/api/a;

    .line 21
    .line 22
    invoke-static {v1}, Lcom/bumptech/glide/c;->h(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-object v5, p0, Lcom/google/android/gms/common/api/j;->zae:Lcom/google/android/gms/common/api/c;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/google/android/gms/common/api/j;->zab:Landroid/content/Context;

    .line 28
    .line 29
    move-object v3, p1

    .line 30
    move-object v6, p2

    .line 31
    move-object v7, p2

    .line 32
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/common/api/a;->buildClient(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/i;Ljava/lang/Object;Lcom/google/android/gms/common/api/k;Lcom/google/android/gms/common/api/l;)Lcom/google/android/gms/common/api/e;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/j;->getContextAttributionTag()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    if-eqz p2, :cond_0

    .line 41
    .line 42
    instance-of v0, p1, Lcom/google/android/gms/common/internal/g;

    .line 43
    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    move-object v0, p1

    .line 47
    check-cast v0, Lcom/google/android/gms/common/internal/g;

    .line 48
    .line 49
    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/internal/g;->setAttributionTag(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    if-eqz p2, :cond_2

    .line 53
    .line 54
    instance-of p2, p1, LK3/k;

    .line 55
    .line 56
    if-nez p2, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    check-cast p1, LK3/k;

    .line 60
    .line 61
    const/4 p1, 0x0

    .line 62
    throw p1

    .line 63
    :cond_2
    :goto_0
    return-object p1
.end method

.method public final zac(Landroid/content/Context;Landroid/os/Handler;)LK3/N;
    .locals 6

    .line 1
    new-instance v0, LK3/N;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/j;->createClientSettingsBuilder()Lcom/google/android/gms/common/internal/h;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Lcom/google/android/gms/common/internal/i;

    .line 8
    .line 9
    iget-object v3, v1, Lcom/google/android/gms/common/internal/h;->a:Landroid/accounts/Account;

    .line 10
    .line 11
    iget-object v4, v1, Lcom/google/android/gms/common/internal/h;->b:Lr/g;

    .line 12
    .line 13
    iget-object v5, v1, Lcom/google/android/gms/common/internal/h;->c:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/google/android/gms/common/internal/h;->d:Ljava/lang/String;

    .line 16
    .line 17
    invoke-direct {v2, v3, v4, v5, v1}, Lcom/google/android/gms/common/internal/i;-><init>(Landroid/accounts/Account;Lr/g;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, p1, p2, v2}, LK3/N;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/i;)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method
