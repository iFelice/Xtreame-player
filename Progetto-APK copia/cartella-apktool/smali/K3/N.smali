.class public final LK3/N;
.super Lf4/c;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/k;
.implements Lcom/google/android/gms/common/api/l;


# static fields
.field public static final N:LH3/r;


# instance fields
.field public final G:Landroid/content/Context;

.field public final H:Landroid/os/Handler;

.field public final I:LH3/r;

.field public final J:Ljava/util/Set;

.field public final K:Lcom/google/android/gms/common/internal/i;

.field public L:Le4/c;

.field public M:LK3/B;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Le4/b;->a:LH3/r;

    .line 2
    .line 3
    sput-object v0, LK3/N;->N:LH3/r;

    .line 4
    .line 5
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/i;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.google.android.gms.signin.internal.ISignInCallbacks"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, LK3/N;->G:Landroid/content/Context;

    .line 10
    .line 11
    iput-object p2, p0, LK3/N;->H:Landroid/os/Handler;

    .line 12
    .line 13
    iput-object p3, p0, LK3/N;->K:Lcom/google/android/gms/common/internal/i;

    .line 14
    .line 15
    iget-object p1, p3, Lcom/google/android/gms/common/internal/i;->b:Ljava/util/Set;

    .line 16
    .line 17
    iput-object p1, p0, LK3/N;->J:Ljava/util/Set;

    .line 18
    .line 19
    sget-object p1, LK3/N;->N:LH3/r;

    .line 20
    .line 21
    iput-object p1, p0, LK3/N;->I:LH3/r;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final onConnected()V
    .locals 1

    .line 1
    iget-object v0, p0, LK3/N;->L:Le4/c;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Le4/c;->a(Lf4/e;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onConnectionFailed(LJ3/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, LK3/N;->M:LK3/B;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, LK3/B;->b(LJ3/b;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onConnectionSuspended(I)V
    .locals 2

    .line 1
    iget-object v0, p0, LK3/N;->M:LK3/B;

    .line 2
    .line 3
    iget-object v1, v0, LK3/B;->f:LK3/f;

    .line 4
    .line 5
    iget-object v1, v1, LK3/f;->P:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    iget-object v0, v0, LK3/B;->b:LK3/a;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, LK3/z;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-boolean v1, v0, LK3/z;->O:Z

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    new-instance p1, LJ3/b;

    .line 22
    .line 23
    const/16 v1, 0x11

    .line 24
    .line 25
    invoke-direct {p1, v1}, LJ3/b;-><init>(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, LK3/z;->o(LJ3/b;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v0, p1}, LK3/z;->onConnectionSuspended(I)V

    .line 33
    .line 34
    .line 35
    :cond_1
    :goto_0
    return-void
.end method
